(define (problem depotprob7654) (:domain Depot)
(:objects
	depot0 depot1 depot2 - Depot
	distributor0 distributor1 distributor2 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate4)
	(at pallet1 depot1)
	(clear crate8)
	(at pallet2 depot2)
	(clear pallet2)
	(at pallet3 distributor0)
	(clear crate9)
	(at pallet4 distributor1)
	(clear crate7)
	(at pallet5 distributor2)
	(clear pallet5)
	(at pallet6 distributor2)
	(clear crate3)
	(at pallet7 depot1)
	(clear pallet7)
	(at pallet8 distributor1)
	(clear crate0)
	(at pallet9 depot0)
	(clear crate5)
	(at truck0 depot1)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 361)
	(at truck1 depot2)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 287)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 depot1)
	(available hoist1)
	(at hoist2 depot2)
	(available hoist2)
	(at hoist3 distributor0)
	(available hoist3)
	(at hoist4 distributor1)
	(available hoist4)
	(at hoist5 distributor2)
	(available hoist5)
	(at crate0 distributor1)
	(on crate0 pallet8)
	(= (weight crate0) 74)
	(at crate1 depot0)
	(on crate1 pallet9)
	(= (weight crate1) 16)
	(at crate2 distributor0)
	(on crate2 pallet3)
	(= (weight crate2) 23)
	(at crate3 distributor2)
	(on crate3 pallet6)
	(= (weight crate3) 42)
	(at crate4 depot0)
	(on crate4 pallet0)
	(= (weight crate4) 52)
	(at crate5 depot0)
	(on crate5 crate1)
	(= (weight crate5) 74)
	(at crate6 distributor1)
	(on crate6 pallet4)
	(= (weight crate6) 60)
	(at crate7 distributor1)
	(on crate7 crate6)
	(= (weight crate7) 56)
	(at crate8 depot1)
	(on crate8 pallet1)
	(= (weight crate8) 48)
	(at crate9 distributor0)
	(on crate9 crate2)
	(= (weight crate9) 87)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate1 pallet8)
		(on crate2 pallet3)
		(on crate4 pallet0)
		(on crate5 pallet5)
		(on crate6 pallet1)
		(on crate7 crate6)
		(on crate9 crate7)
	)
)

(:metric minimize (total-time)))
