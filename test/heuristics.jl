@testset "Heuristics" begin

# Load domains and problems
path = joinpath(dirname(pathof(SymbolicPlanners)), "..", "domains", "gridworld")
gridworld = load_domain(joinpath(path, "domain.pddl"))
gw_problem = load_problem(joinpath(path, "problem-1.pddl"))
gw_state = initstate(gridworld, gw_problem)

path = joinpath(dirname(pathof(SymbolicPlanners)), "..", "domains", "doors-keys-gems")
doors_keys_gems = load_domain(joinpath(path, "domain.pddl"))
dkg_problem = load_problem(joinpath(path, "problem-1.pddl"))
dkg_state = initstate(doors_keys_gems, dkg_problem)

path = joinpath(dirname(pathof(SymbolicPlanners)), "..", "domains", "blocksworld")
blocksworld = load_domain(joinpath(path, "domain.pddl"))
bw_problem = load_problem(joinpath(path, "problem-0.pddl"))
bw_state = initstate(blocksworld, bw_problem)

@testset "Goal Count Heuristic" begin

goal_count = GoalCountHeuristic()
@test goal_count(gridworld, gw_state, gw_problem.goal) == 1
@test goal_count(doors_keys_gems, dkg_state, dkg_problem.goal) == 1
@test goal_count(blocksworld, bw_state, bw_problem.goal) == 2

end

@testset "Manhattan Heuristic" begin

manhattan = ManhattanHeuristic(@pddl("xpos", "ypos"))
@test manhattan(gridworld, gw_state, gw_problem.goal) == 2

end

@testset "HSP Heuristics" begin

@test HAdd()(blocksworld, bw_state, bw_problem.goal) == 4
@test HMax()(blocksworld, bw_state, bw_problem.goal) == 2

end

@testset "HSPr Heuristics" begin

bw_init = initstate(blocksworld, bw_problem)
bw_goal = goalstate(blocksworld, bw_problem)
h_add_r = precompute!(HAddR(), blocksworld, bw_init, bw_problem.goal)
h_max_r = precompute!(HMaxR(), blocksworld, bw_init, bw_problem.goal)

@test h_add_r(blocksworld, bw_goal, bw_problem.goal) == 4
@test h_max_r(blocksworld, bw_goal, bw_problem.goal) == 2

end

@testset "FF Heuristic" begin

# ff = precompute!(FFHeuristic(), blocksworld, bw_state, bw_problem.goal)
# @test ff(blocksworld, bw_state, bw_problem.goal) == 4

end

end
