(* ::Package:: *)

(* ::Input::Initialization:: *)
replaceId={P1**id1->P1,P2**id2->P2,P3**id3->P3,P4**id4->P4,
		id1**P1->P1,id2**P2->P2,id3**P3->P3,id4**P4->P4,
		Q1**id1->Q1,Q2**id2->Q2,Q3**id3->Q3,Q4**id4->Q4,
		id1**Q1->Q1,id2**Q2->Q2,id3**Q3->Q3,id4**Q4->Q4};

replaceProj={P1**Q1->0,P2**Q2->0,P3**Q3->0,P4**Q4->0,
			Q1**P1->0,Q2**P2->0,Q3**P3->0,Q4**P4->0};

repeatProj={P1->P1**P1,P2->P2**P2,P3->P3**P3,P4->P4**P4};

replacePJP={P1**J1z**P1->j1*\[Sigma]1z,P1**J1p**P1->0,P1**J1m**P1->0,
			P2**J2z**P2->j1*\[Sigma]2z,P2**J2p**P2->0,P2**J2m**P2->0,
			P3**J3z**P3->j1*\[Sigma]3z,P3**J3p**P3->0,P3**J3m**P3->0,
			P4**J4z**P4->j1*\[Sigma]4z,P4**J4p**P4->0,P4**J4m**P4->0};

replacePJJP={P1**O2n2[1]**P1->I*j4*(\[Sigma]1p-\[Sigma]1m),
			P2**O2n2[2]**P2->I*j4*(\[Sigma]2p-\[Sigma]2m),
			P3**O2n2[3]**P3->I*j4*(\[Sigma]3p-\[Sigma]3m),
			P4**O2n2[4]**P4->I*j4*(\[Sigma]4p-\[Sigma]4m),

			P1**O2n1[1]**P1->I*j6*(\[Sigma]1p-\[Sigma]1m),
			P2**O2n1[2]**P2->I*j6*(\[Sigma]2p-\[Sigma]2m),
			P3**O2n1[3]**P3->I*j6*(\[Sigma]3p-\[Sigma]3m),
			P4**O2n1[4]**P4->I*j6*(\[Sigma]4p-\[Sigma]4m),

			P1**O20[1]**P1->j8,
			P2**O20[2]**P2->j8,
			P3**O20[3]**P3->j8,
			P4**O20[4]**P4->j8,

			P1**O21[1]**P1->-j6*(\[Sigma]1p+\[Sigma]1m),
			P2**O21[2]**P2->-j6*(\[Sigma]2p+\[Sigma]2m),
			P3**O21[3]**P3->-j6*(\[Sigma]3p+\[Sigma]3m),
			P4**O21[4]**P4->-j6*(\[Sigma]4p+\[Sigma]4m),

			P1**O22[1]**P1->j4*(\[Sigma]1p+\[Sigma]1m),
			P2**O22[2]**P2->j4*(\[Sigma]2p+\[Sigma]2m),
			P3**O22[3]**P3->j4*(\[Sigma]3p+\[Sigma]3m),
			P4**O22[4]**P4->j4*(\[Sigma]4p+\[Sigma]4m)
};

replacePJQJP={P1**J1z**Q1**J1z**P1->j3^2,
			P2**J2z**Q2**J2z**P2->j3^2,
			P3**J3z**Q3**J3z**P3->j3^2,
			P4**J4z**Q4**J4z**P4->j3^2,

			P1**J1z**Q1**J1p**P1->t*j3*\[Sigma]1p,
			P2**J2z**Q2**J2p**P2->t*j3*\[Sigma]2p,
			P3**J3z**Q3**J3p**P3->t*j3*\[Sigma]3p,
			P4**J4z**Q4**J4p**P4->t*j3*\[Sigma]4p,

			P1**J1z**Q1**J1m**P1->t*j3*\[Sigma]1m,
			P2**J2z**Q2**J2m**P2->t*j3*\[Sigma]2m,
			P3**J3z**Q3**J3m**P3->t*j3*\[Sigma]3m,
			P4**J4z**Q4**J4m**P4->t*j3*\[Sigma]4m,

			P1**J1p**Q1**J1z**P1->t*j3*\[Sigma]1p,
			P2**J2p**Q2**J2z**P2->t*j3*\[Sigma]2p,
			P3**J3p**Q3**J3z**P3->t*j3*\[Sigma]3p,
			P4**J4p**Q4**J4z**P4->t*j3*\[Sigma]4p,

			P1**J1p**Q1**J1p**P1->0,
			P2**J2p**Q2**J2p**P2->0,
			P3**J3p**Q3**J3p**P3->0,
			P4**J4p**Q4**J4p**P4->0,

			P1**J1p**Q1**J1m**P1->1/2*t^2*(1+\[Sigma]1z),
			P2**J2p**Q2**J2m**P2->1/2*t^2*(1+\[Sigma]2z),
			P3**J3p**Q3**J3m**P3->1/2*t^2*(1+\[Sigma]3z),
			P4**J4p**Q4**J4m**P4->1/2*t^2*(1+\[Sigma]4z),

			P1**J1m**Q1**J1z**P1->t*j3*\[Sigma]1m,
			P2**J2m**Q2**J2z**P2->t*j3*\[Sigma]2m,
			P3**J3m**Q3**J3z**P3->t*j3*\[Sigma]3m,
			P4**J4m**Q4**J4z**P4->t*j3*\[Sigma]4m,

			P1**J1m**Q1**J1p**P1->1/2*t^2*(1-\[Sigma]1z),
			P2**J2m**Q2**J2p**P2->1/2*t^2*(1-\[Sigma]2z),
			P3**J3m**Q3**J3p**P3->1/2*t^2*(1-\[Sigma]3z),
			P4**J4m**Q4**J4p**P4->1/2*t^2*(1-\[Sigma]4z),

			P1**J1m**Q1**J1m**P1->0,
			P2**J2m**Q2**J2m**P2->0,
			P3**J3m**Q3**J3m**P3->0,
			P4**J4m**Q4**J4m**P4->0
};

replacePJQJJP={P1**J1z**Q1**O2n2[1]**P1->I*j3*j5*(\[Sigma]1p+\[Sigma]1m),
			P2**J2z**Q2**O2n2[2]**P2->I*j3*j5*(\[Sigma]2p+\[Sigma]2m),
			P3**J3z**Q3**O2n2[3]**P3->I*j3*j5*(\[Sigma]3p+\[Sigma]3m),
			P4**J4z**Q4**O2n2[4]**P4->I*j3*j5*(\[Sigma]4p+\[Sigma]4m),

			P1**J1z**Q1**O2n1[1]**P1->I*j3*j7*(\[Sigma]1p+\[Sigma]1m),
			P2**J2z**Q2**O2n1[2]**P2->I*j3*j7*(\[Sigma]2p+\[Sigma]2m),
			P3**J3z**Q3**O2n1[3]**P3->I*j3*j7*(\[Sigma]3p+\[Sigma]3m),
			P4**J4z**Q4**O2n1[4]**P4->I*j3*j7*(\[Sigma]4p+\[Sigma]4m),

			P1**J1z**Q1**O20[1]**P1->j3*j9*\[Sigma]1z,
			P2**J2z**Q2**O20[2]**P2->j3*j9*\[Sigma]2z,
			P3**J3z**Q3**O20[3]**P3->j3*j9*\[Sigma]3z,
			P4**J4z**Q4**O20[4]**P4->j3*j9*\[Sigma]4z,

			P1**J1z**Q1**O21[1]**P1->j3*j7*(-\[Sigma]1p+\[Sigma]1m),
			P2**J2z**Q2**O21[2]**P2->j3*j7*(-\[Sigma]2p+\[Sigma]2m),
			P3**J3z**Q3**O21[3]**P3->j3*j7*(-\[Sigma]3p+\[Sigma]3m),
			P4**J4z**Q4**O21[4]**P4->j3*j7*(-\[Sigma]4p+\[Sigma]4m),

			P1**J1z**Q1**O22[1]**P1->j3*j5*(\[Sigma]1p-\[Sigma]1m),
			P2**J2z**Q2**O22[2]**P2->j3*j5*(\[Sigma]2p-\[Sigma]2m),
			P3**J3z**Q3**O22[3]**P3->j3*j5*(\[Sigma]3p-\[Sigma]3m),
			P4**J4z**Q4**O22[4]**P4->j3*j5*(\[Sigma]4p-\[Sigma]4m),

			P1**J1p**Q1**O2n2[1]**P1->1/2*I*j5*t*(1+\[Sigma]1z),
			P2**J2p**Q2**O2n2[2]**P2->1/2*I*j5*t*(1+\[Sigma]2z),
			P3**J3p**Q3**O2n2[3]**P3->1/2*I*j5*t*(1+\[Sigma]3z),
			P4**J4p**Q4**O2n2[4]**P4->1/2*I*j5*t*(1+\[Sigma]4z),

			P1**J1p**Q1**O2n1[1]**P1->1/2*I*j7*t*(1+\[Sigma]1z),
			P2**J2p**Q2**O2n1[2]**P2->1/2*I*j7*t*(1+\[Sigma]2z),
			P3**J3p**Q3**O2n1[3]**P3->1/2*I*j7*t*(1+\[Sigma]3z),
			P4**J4p**Q4**O2n1[4]**P4->1/2*I*j7*t*(1+\[Sigma]4z),

			P1**J1p**Q1**O20[1]**P1->-j9*t*\[Sigma]1p,
			P2**J2p**Q2**O20[2]**P2->-j9*t*\[Sigma]2p,
			P3**J3p**Q3**O20[3]**P3->-j9*t*\[Sigma]3p,
			P4**J4p**Q4**O20[4]**P4->-j9*t*\[Sigma]4p,

			P1**J1p**Q1**O21[1]**P1->1/2*j7*t*(1+\[Sigma]1z),
			P2**J2p**Q2**O21[2]**P2->1/2*j7*t*(1+\[Sigma]2z),
			P3**J3p**Q3**O21[3]**P3->1/2*j7*t*(1+\[Sigma]3z),
			P4**J4p**Q4**O21[4]**P4->1/2*j7*t*(1+\[Sigma]4z),

			P1**J1p**Q1**O22[1]**P1->-1/2*j5*t*(1+\[Sigma]1z),
			P2**J2p**Q2**O22[2]**P2->-1/2*j5*t*(1+\[Sigma]2z),
			P3**J3p**Q3**O22[3]**P3->-1/2*j5*t*(1+\[Sigma]3z),
			P4**J4p**Q4**O22[4]**P4->-1/2*j5*t*(1+\[Sigma]4z),

			P1**J1m**Q1**O2n2[1]**P1->1/2*I*j5*t*(1-\[Sigma]1z),
			P2**J2m**Q2**O2n2[2]**P2->1/2*I*j5*t*(1-\[Sigma]2z),
			P3**J3m**Q3**O2n2[3]**P3->1/2*I*j5*t*(1-\[Sigma]3z),
			P4**J4m**Q4**O2n2[4]**P4->1/2*I*j5*t*(1-\[Sigma]4z),

			P1**J1m**Q1**O2n1[1]**P1->1/2*I*j7*t*(1-\[Sigma]1z),
			P2**J2m**Q2**O2n1[2]**P2->1/2*I*j7*t*(1-\[Sigma]2z),
			P3**J3m**Q3**O2n1[3]**P3->1/2*I*j7*t*(1-\[Sigma]3z),
			P4**J4m**Q4**O2n1[4]**P4->1/2*I*j7*t*(1-\[Sigma]4z),

			P1**J1m**Q1**O20[1]**P1->j9*t*\[Sigma]1m,
			P2**J2m**Q2**O20[2]**P2->j9*t*\[Sigma]2m,
			P3**J3m**Q3**O20[3]**P3->j9*t*\[Sigma]3m,
			P4**J4m**Q4**O20[4]**P4->j9*t*\[Sigma]4m,

			P1**J1m**Q1**O21[1]**P1->-1/2*j7*t*(1-\[Sigma]1z),
			P2**J2m**Q2**O21[2]**P2->-1/2*j7*t*(1-\[Sigma]2z),
			P3**J3m**Q3**O21[3]**P3->-1/2*j7*t*(1-\[Sigma]3z),
			P4**J4m**Q4**O21[4]**P4->-1/2*j7*t*(1-\[Sigma]4z),

			P1**J1m**Q1**O22[1]**P1->1/2*j5*t*(1-\[Sigma]1z),
			P2**J2m**Q2**O22[2]**P2->1/2*j5*t*(1-\[Sigma]2z),
			P3**J3m**Q3**O22[3]**P3->1/2*j5*t*(1-\[Sigma]3z),
			P4**J4m**Q4**O22[4]**P4->1/2*j5*t*(1-\[Sigma]4z)
};

replacePJJQJP={P1**O2n2[1]**Q1**J1z**P1->-I*j3*j5*(\[Sigma]1p+\[Sigma]1m),
			P2**O2n2[2]**Q2**J2z**P2->-I*j3*j5*(\[Sigma]2p+\[Sigma]2m),
			P3**O2n2[3]**Q3**J3z**P3->-I*j3*j5*(\[Sigma]3p+\[Sigma]3m),
			P4**O2n2[4]**Q4**J4z**P4->-I*j3*j5*(\[Sigma]4p+\[Sigma]4m),

			P1**O2n1[1]**Q1**J1z**P1->-I*j3*j7*(\[Sigma]1p+\[Sigma]1m),
			P2**O2n1[2]**Q2**J2z**P2->-I*j3*j7*(\[Sigma]2p+\[Sigma]2m),
			P3**O2n1[3]**Q3**J3z**P3->-I*j3*j7*(\[Sigma]3p+\[Sigma]3m),
			P4**O2n1[4]**Q4**J4z**P4->-I*j3*j7*(\[Sigma]4p+\[Sigma]4m),

			P1**O20[1]**Q1**J1z**P1->j3*j9*\[Sigma]1z,
			P2**O20[2]**Q2**J2z**P2->j3*j9*\[Sigma]2z,
			P3**O20[3]**Q3**J3z**P3->j3*j9*\[Sigma]3z,
			P4**O20[4]**Q4**J4z**P4->j3*j9*\[Sigma]4z,

			P1**O21[1]**Q1**J1z**P1->j3*j7*(\[Sigma]1p-\[Sigma]1m),
			P2**O21[2]**Q2**J2z**P2->j3*j7*(\[Sigma]2p-\[Sigma]2m),
			P3**O21[3]**Q3**J3z**P3->j3*j7*(\[Sigma]3p-\[Sigma]3m),
			P4**O21[4]**Q4**J4z**P4->j3*j7*(\[Sigma]4p-\[Sigma]4m),

			P1**O22[1]**Q1**J1z**P1->j3*j5*(-\[Sigma]1p+\[Sigma]1m),
			P2**O22[2]**Q2**J2z**P2->j3*j5*(-\[Sigma]2p+\[Sigma]2m),
			P3**O22[3]**Q3**J3z**P3->j3*j5*(-\[Sigma]3p+\[Sigma]3m),
			P4**O22[4]**Q4**J4z**P4->j3*j5*(-\[Sigma]4p+\[Sigma]4m),

			P1**O2n2[1]**Q1**J1p**P1->-1/2*I*j5*t*(1-\[Sigma]1z),
			P2**O2n2[2]**Q2**J2p**P2->-1/2*I*j5*t*(1-\[Sigma]2z),
			P3**O2n2[3]**Q3**J3p**P3->-1/2*I*j5*t*(1-\[Sigma]3z),
			P4**O2n2[4]**Q4**J4p**P4->-1/2*I*j5*t*(1-\[Sigma]4z),

			P1**O2n1[1]**Q1**J1p**P1->-1/2*I*j7*t*(1-\[Sigma]1z),
			P2**O2n1[2]**Q2**J2p**P2->-1/2*I*j7*t*(1-\[Sigma]2z),
			P3**O2n1[3]**Q3**J3p**P3->-1/2*I*j7*t*(1-\[Sigma]3z),
			P4**O2n1[4]**Q4**J4p**P4->-1/2*I*j7*t*(1-\[Sigma]4z),

			P1**O20[1]**Q1**J1p**P1->j9*t*\[Sigma]1p,
			P2**O20[2]**Q2**J2p**P2->j9*t*\[Sigma]2p,
			P3**O20[3]**Q3**J3p**P3->j9*t*\[Sigma]3p,
			P4**O20[4]**Q4**J4p**P4->j9*t*\[Sigma]4p,

			P1**O21[1]**Q1**J1p**P1->-1/2*j7*t*(1-\[Sigma]1z),
			P2**O21[2]**Q2**J2p**P2->-1/2*j7*t*(1-\[Sigma]2z),
			P3**O21[3]**Q3**J3p**P3->-1/2*j7*t*(1-\[Sigma]3z),
			P4**O21[4]**Q4**J4p**P4->-1/2*j7*t*(1-\[Sigma]4z),

			P1**O22[1]**Q1**J1p**P1->1/2*j5*t*(1-\[Sigma]1z),
			P2**O22[2]**Q2**J2p**P2->1/2*j5*t*(1-\[Sigma]2z),
			P3**O22[3]**Q3**J3p**P3->1/2*j5*t*(1-\[Sigma]3z),
			P4**O22[4]**Q4**J4p**P4->1/2*j5*t*(1-\[Sigma]4z),

			P1**O2n2[1]**Q1**J1m**P1->-1/2*I*j5*t*(1+\[Sigma]1z),
			P2**O2n2[2]**Q2**J2m**P2->-1/2*I*j5*t*(1+\[Sigma]2z),
			P3**O2n2[3]**Q3**J3m**P3->-1/2*I*j5*t*(1+\[Sigma]3z),
			P4**O2n2[4]**Q4**J4m**P4->-1/2*I*j5*t*(1+\[Sigma]4z),

			P1**O2n1[1]**Q1**J1m**P1->-1/2*I*j7*t*(1+\[Sigma]1z),
			P2**O2n1[2]**Q2**J2m**P2->-1/2*I*j7*t*(1+\[Sigma]2z),
			P3**O2n1[3]**Q3**J3m**P3->-1/2*I*j7*t*(1+\[Sigma]3z),
			P4**O2n1[4]**Q4**J4m**P4->-1/2*I*j7*t*(1+\[Sigma]4z),

			P1**O20[1]**Q1**J1m**P1->-j9*t*\[Sigma]1m,
			P2**O20[2]**Q2**J2m**P2->-j9*t*\[Sigma]2m,
			P3**O20[3]**Q3**J3m**P3->-j9*t*\[Sigma]3m,
			P4**O20[4]**Q4**J4m**P4->-j9*t*\[Sigma]4m,

			P1**O21[1]**Q1**J1m**P1->1/2*j7*t*(1+\[Sigma]1z),
			P2**O21[2]**Q2**J2m**P2->1/2*j7*t*(1+\[Sigma]2z),
			P3**O21[3]**Q3**J3m**P3->1/2*j7*t*(1+\[Sigma]3z),
			P4**O21[4]**Q4**J4m**P4->1/2*j7*t*(1+\[Sigma]4z),

			P1**O22[1]**Q1**J1m**P1->-1/2*j5*t*(1+\[Sigma]1z),
			P2**O22[2]**Q2**J2m**P2->-1/2*j5*t*(1+\[Sigma]2z),
			P3**O22[3]**Q3**J3m**P3->-1/2*j5*t*(1+\[Sigma]3z),
			P4**O22[4]**Q4**J4m**P4->-1/2*j5*t*(1+\[Sigma]4z)
};

replacePJJQJJP={P1**O2n2[1]**Q1**O2n2[1]**P1->j5^2,
			P2**O2n2[2]**Q2**O2n2[2]**P2->j5^2,
			P3**O2n2[3]**Q3**O2n2[3]**P3->j5^2,
			P4**O2n2[4]**Q4**O2n2[4]**P4->j5^2,

			P1**O2n2[1]**Q1**O2n1[1]**P1->j5*j7,
			P2**O2n2[2]**Q2**O2n1[2]**P2->j5*j7,
			P3**O2n2[3]**Q3**O2n1[3]**P3->j5*j7,
			P4**O2n2[4]**Q4**O2n1[4]**P4->j5*j7,

			P1**O2n2[1]**Q1**O20[1]**P1->I*j5*j9*(\[Sigma]1p-\[Sigma]1m),
			P2**O2n2[2]**Q2**O20[2]**P2->I*j5*j9*(\[Sigma]2p-\[Sigma]2m),
			P3**O2n2[3]**Q3**O20[3]**P3->I*j5*j9*(\[Sigma]3p-\[Sigma]3m),
			P4**O2n2[4]**Q4**O20[4]**P4->I*j5*j9*(\[Sigma]4p-\[Sigma]4m),

			P1**O2n2[1]**Q1**O21[1]**P1->-I*j5*j7*\[Sigma]1z,
			P2**O2n2[2]**Q2**O21[2]**P2->-I*j5*j7*\[Sigma]2z,
			P3**O2n2[3]**Q3**O21[3]**P3->-I*j5*j7*\[Sigma]3z,
			P4**O2n2[4]**Q4**O21[4]**P4->-I*j5*j7*\[Sigma]4z,

			P1**O2n2[1]**Q1**O22[1]**P1->I*j5^2*\[Sigma]1z,
			P2**O2n2[2]**Q2**O22[2]**P2->I*j5^2*\[Sigma]2z,
			P3**O2n2[3]**Q3**O22[3]**P3->I*j5^2*\[Sigma]3z,
			P4**O2n2[4]**Q4**O22[4]**P4->I*j5^2*\[Sigma]4z,

			P1**O2n1[1]**Q1**O2n2[1]**P1->j5*j7,
			P2**O2n1[2]**Q2**O2n2[2]**P2->j5*j7,
			P3**O2n1[3]**Q3**O2n2[3]**P3->j5*j7,
			P4**O2n1[4]**Q4**O2n2[4]**P4->j5*j7,

			P1**O2n1[1]**Q1**O2n1[1]**P1->j7^2,
			P2**O2n1[2]**Q2**O2n1[2]**P2->j7^2,
			P3**O2n1[3]**Q3**O2n1[3]**P3->j7^2,
			P4**O2n1[4]**Q4**O2n1[4]**P4->j7^2,

			P1**O2n1[1]**Q1**O20[1]**P1->I*j7*j9*(\[Sigma]1p-\[Sigma]1m),
			P2**O2n1[2]**Q2**O20[2]**P2->I*j7*j9*(\[Sigma]2p-\[Sigma]2m),
			P3**O2n1[3]**Q3**O20[3]**P3->I*j7*j9*(\[Sigma]3p-\[Sigma]3m),
			P4**O2n1[4]**Q4**O20[4]**P4->I*j7*j9*(\[Sigma]4p-\[Sigma]4m),

			P1**O2n1[1]**Q1**O21[1]**P1->-I*j7^2*\[Sigma]1z,
			P2**O2n1[2]**Q2**O21[2]**P2->-I*j7^2*\[Sigma]2z,
			P3**O2n1[3]**Q3**O21[3]**P3->-I*j7^2*\[Sigma]3z,
			P4**O2n1[4]**Q4**O21[4]**P4->-I*j7^2*\[Sigma]4z,

			P1**O2n1[1]**Q1**O22[1]**P1->I*j5*j7*\[Sigma]1z,
			P2**O2n1[2]**Q2**O22[2]**P2->I*j5*j7*\[Sigma]2z,
			P3**O2n1[3]**Q3**O22[3]**P3->I*j5*j7*\[Sigma]3z,
			P4**O2n1[4]**Q4**O22[4]**P4->I*j5*j7*\[Sigma]4z,

			P1**O20[1]**Q1**O2n2[1]**P1->I*j5*j9*(\[Sigma]1p-\[Sigma]1m),
			P2**O20[2]**Q2**O2n2[2]**P2->I*j5*j9*(\[Sigma]2p-\[Sigma]2m),
			P3**O20[3]**Q3**O2n2[3]**P3->I*j5*j9*(\[Sigma]3p-\[Sigma]3m),
			P4**O20[4]**Q4**O2n2[4]**P4->I*j5*j9*(\[Sigma]4p-\[Sigma]4m),

			P1**O20[1]**Q1**O2n1[1]**P1->I*j7*j9*(\[Sigma]1p-\[Sigma]1m),
			P2**O20[2]**Q2**O2n1[2]**P2->I*j7*j9*(\[Sigma]2p-\[Sigma]2m),
			P3**O20[3]**Q3**O2n1[3]**P3->I*j7*j9*(\[Sigma]3p-\[Sigma]3m),
			P4**O20[4]**Q4**O2n1[4]**P4->I*j7*j9*(\[Sigma]4p-\[Sigma]4m),

			P1**O20[1]**Q1**O20[1]**P1->j9^2,
			P2**O20[2]**Q2**O20[2]**P2->j9^2,
			P3**O20[3]**Q3**O20[3]**P3->j9^2,
			P4**O20[4]**Q4**O20[4]**P4->j9^2,

			P1**O20[1]**Q1**O21[1]**P1->-j7*j9*(\[Sigma]1p+\[Sigma]1m),
			P2**O20[2]**Q2**O21[2]**P2->-j7*j9*(\[Sigma]2p+\[Sigma]2m),
			P3**O20[3]**Q3**O21[3]**P3->-j7*j9*(\[Sigma]3p+\[Sigma]3m),
			P4**O20[4]**Q4**O21[4]**P4->-j7*j9*(\[Sigma]4p+\[Sigma]4m),

			P1**O20[1]**Q1**O22[1]**P1->j5*j9*(\[Sigma]1p+\[Sigma]1m),
			P2**O20[2]**Q2**O22[2]**P2->j5*j9*(\[Sigma]2p+\[Sigma]2m),
			P3**O20[3]**Q3**O22[3]**P3->j5*j9*(\[Sigma]3p+\[Sigma]3m),
			P4**O20[4]**Q4**O22[4]**P4->j5*j9*(\[Sigma]4p+\[Sigma]4m),

			P1**O21[1]**Q1**O2n2[1]**P1->I*j5*j7*\[Sigma]1z,
			P2**O21[2]**Q2**O2n2[2]**P2->I*j5*j7*\[Sigma]2z,
			P3**O21[3]**Q3**O2n2[3]**P3->I*j5*j7*\[Sigma]3z,
			P4**O21[4]**Q4**O2n2[4]**P4->I*j5*j7*\[Sigma]4z,

			P1**O21[1]**Q1**O2n1[1]**P1->I*j7^2*\[Sigma]1z,
			P2**O21[2]**Q2**O2n1[2]**P2->I*j7^2*\[Sigma]2z,
			P3**O21[3]**Q3**O2n1[3]**P3->I*j7^2*\[Sigma]3z,
			P4**O21[4]**Q4**O2n1[4]**P4->I*j7^2*\[Sigma]4z,

			P1**O21[1]**Q1**O20[1]**P1->-j7*j9*(\[Sigma]1p+\[Sigma]1m),
			P2**O21[2]**Q2**O20[2]**P2->-j7*j9*(\[Sigma]2p+\[Sigma]2m),
			P3**O21[3]**Q3**O20[3]**P3->-j7*j9*(\[Sigma]3p+\[Sigma]3m),
			P4**O21[4]**Q4**O20[4]**P4->-j7*j9*(\[Sigma]4p+\[Sigma]4m),

			P1**O21[1]**Q1**O21[1]**P1->j7^2,
			P2**O21[2]**Q2**O21[2]**P2->j7^2,
			P3**O21[3]**Q3**O21[3]**P3->j7^2,
			P4**O21[4]**Q4**O21[4]**P4->j7^2,

			P1**O21[1]**Q1**O22[1]**P1->-j5*j7,
			P2**O21[2]**Q2**O22[2]**P2->-j5*j7,
			P3**O21[3]**Q3**O22[3]**P3->-j5*j7,
			P4**O21[4]**Q4**O22[4]**P4->-j5*j7,

			P1**O22[1]**Q1**O2n2[1]**P1->-I*j5^2*\[Sigma]1z,
			P2**O22[2]**Q2**O2n2[2]**P2->-I*j5^2*\[Sigma]2z,
			P3**O22[3]**Q3**O2n2[3]**P3->-I*j5^2*\[Sigma]3z,
			P4**O22[4]**Q4**O2n2[4]**P4->-I*j5^2*\[Sigma]4z,

			P1**O22[1]**Q1**O2n1[1]**P1->-I*j5*j7*\[Sigma]1z,
			P2**O22[2]**Q2**O2n1[2]**P2->-I*j5*j7*\[Sigma]2z,
			P3**O22[3]**Q3**O2n1[3]**P3->-I*j5*j7*\[Sigma]3z,
			P4**O22[4]**Q4**O2n1[4]**P4->-I*j5*j7*\[Sigma]4z,

			P1**O22[1]**Q1**O20[1]**P1->j5*j9*(\[Sigma]1p+\[Sigma]1m),
			P2**O22[2]**Q2**O20[2]**P2->j5*j9*(\[Sigma]2p+\[Sigma]2m),
			P3**O22[3]**Q3**O20[3]**P3->j5*j9*(\[Sigma]3p+\[Sigma]3m),
			P4**O22[4]**Q4**O20[4]**P4->j5*j9*(\[Sigma]4p+\[Sigma]4m),

			P1**O22[1]**Q1**O21[1]**P1->-j5*j7,
			P2**O22[2]**Q2**O21[2]**P2->-j5*j7,
			P3**O22[3]**Q3**O21[3]**P3->-j5*j7,
			P4**O22[4]**Q4**O21[4]**P4->-j5*j7,

			P1**O22[1]**Q1**O22[1]**P1->j5^2,
			P2**O22[2]**Q2**O22[2]**P2->j5^2,
			P3**O22[3]**Q3**O22[3]**P3->j5^2,
			P4**O22[4]**Q4**O22[4]**P4->j5^2
};

removeProj={P1->1,P2->1,P3->1,P4->1};

replacePseudoId={\[Sigma]1z**\[Sigma]1z->1,\[Sigma]1p**\[Sigma]1p->0,\[Sigma]1m**\[Sigma]1m->0,
				\[Sigma]2z**\[Sigma]2z->1,\[Sigma]2p**\[Sigma]2p->0,\[Sigma]2m**\[Sigma]2m->0,
				\[Sigma]3z**\[Sigma]3z->1,\[Sigma]3p**\[Sigma]3p->0,\[Sigma]3m**\[Sigma]3m->0,
				\[Sigma]4z**\[Sigma]4z->1,\[Sigma]4p**\[Sigma]4p->0,\[Sigma]4m**\[Sigma]4m->0
};

replacePseudoId2={\[Sigma]1z**\[Sigma]1p->\[Sigma]1p,
				\[Sigma]2z**\[Sigma]2p->\[Sigma]2p,
				\[Sigma]3z**\[Sigma]3p->\[Sigma]3p,
				\[Sigma]4z**\[Sigma]4p->\[Sigma]4p,

				\[Sigma]1p**\[Sigma]1z->-\[Sigma]1p,
				\[Sigma]2p**\[Sigma]2z->-\[Sigma]2p,
				\[Sigma]3p**\[Sigma]3z->-\[Sigma]3p,
				\[Sigma]4p**\[Sigma]4z->-\[Sigma]4p,

				\[Sigma]1z**\[Sigma]1m->-\[Sigma]1m,
				\[Sigma]2z**\[Sigma]2m->-\[Sigma]2m,
				\[Sigma]3z**\[Sigma]3m->-\[Sigma]3m,
				\[Sigma]4z**\[Sigma]4m->-\[Sigma]4m,

				\[Sigma]1m**\[Sigma]1z->\[Sigma]1m,
				\[Sigma]2m**\[Sigma]2z->\[Sigma]2m,
				\[Sigma]3m**\[Sigma]3z->\[Sigma]3m,
				\[Sigma]4m**\[Sigma]4z->\[Sigma]4m,

				\[Sigma]1p**\[Sigma]1m->1/2*(1+\[Sigma]1z),
				\[Sigma]2p**\[Sigma]2m->1/2*(1+\[Sigma]2z),
				\[Sigma]3p**\[Sigma]3m->1/2*(1+\[Sigma]3z),
				\[Sigma]4p**\[Sigma]4m->1/2*(1+\[Sigma]4z),

				\[Sigma]1m**\[Sigma]1p->1/2*(1-\[Sigma]1z),
				\[Sigma]2m**\[Sigma]2p->1/2*(1-\[Sigma]2z),
				\[Sigma]3m**\[Sigma]3p->1/2*(1-\[Sigma]3z),
				\[Sigma]4m**\[Sigma]4p->1/2*(1-\[Sigma]4z)
};

simplifyPhases={\[CapitalLambda]12+\[CapitalLambda]13+\[CapitalLambda]14->0,
			\[CapitalLambda]12+\[CapitalLambda]23+\[CapitalLambda]24->0,
			\[CapitalLambda]13+\[CapitalLambda]23+\[CapitalLambda]34->0,
			\[CapitalLambda]14+\[CapitalLambda]24+\[CapitalLambda]34->0,

			Conjugate[\[CapitalLambda]12]+Conjugate[\[CapitalLambda]13]+Conjugate[\[CapitalLambda]14]->0,
			Conjugate[\[CapitalLambda]12]+Conjugate[\[CapitalLambda]23]+Conjugate[\[CapitalLambda]24]->0,
			Conjugate[\[CapitalLambda]13]+Conjugate[\[CapitalLambda]23]+Conjugate[\[CapitalLambda]34]->0,
			Conjugate[\[CapitalLambda]14]+Conjugate[\[CapitalLambda]24]+Conjugate[\[CapitalLambda]34]->0,

			(*\[CapitalLambda]12+\[CapitalLambda]13\[Rule]-\[CapitalLambda]23,
			\[CapitalLambda]12+\[CapitalLambda]14\[Rule]-\[CapitalLambda]24,
			\[CapitalLambda]12+\[CapitalLambda]23\[Rule]-\[CapitalLambda]13,
			\[CapitalLambda]12+\[CapitalLambda]24\[Rule]-\[CapitalLambda]14,
			\[CapitalLambda]13+\[CapitalLambda]14\[Rule]-\[CapitalLambda]34,
			\[CapitalLambda]13+\[CapitalLambda]23\[Rule]-\[CapitalLambda]12,
			\[CapitalLambda]13+\[CapitalLambda]34\[Rule]-\[CapitalLambda]14,
			\[CapitalLambda]14+\[CapitalLambda]24\[Rule]-\[CapitalLambda]12,
			\[CapitalLambda]14+\[CapitalLambda]34\[Rule]-\[CapitalLambda]13,
			\[CapitalLambda]23+\[CapitalLambda]24\[Rule]-\[CapitalLambda]34,
			\[CapitalLambda]23+\[CapitalLambda]34\[Rule]-\[CapitalLambda]24,
			\[CapitalLambda]24+\[CapitalLambda]34\[Rule]-\[CapitalLambda]23,

			Conjugate[\[CapitalLambda]12]+Conjugate[\[CapitalLambda]13]\[Rule]-Conjugate[\[CapitalLambda]23],
			Conjugate[\[CapitalLambda]12]+Conjugate[\[CapitalLambda]14]\[Rule]-Conjugate[\[CapitalLambda]24],
			Conjugate[\[CapitalLambda]12]+Conjugate[\[CapitalLambda]23]\[Rule]-Conjugate[\[CapitalLambda]13],
			Conjugate[\[CapitalLambda]12]+Conjugate[\[CapitalLambda]24]\[Rule]-Conjugate[\[CapitalLambda]14],
			Conjugate[\[CapitalLambda]13]+Conjugate[\[CapitalLambda]14]\[Rule]-Conjugate[\[CapitalLambda]34],
			Conjugate[\[CapitalLambda]13]+Conjugate[\[CapitalLambda]23]\[Rule]-Conjugate[\[CapitalLambda]12],
			Conjugate[\[CapitalLambda]13]+Conjugate[\[CapitalLambda]34]\[Rule]-Conjugate[\[CapitalLambda]14],
			Conjugate[\[CapitalLambda]14]+Conjugate[\[CapitalLambda]24]\[Rule]-Conjugate[\[CapitalLambda]12],
			Conjugate[\[CapitalLambda]14]+Conjugate[\[CapitalLambda]34]\[Rule]-Conjugate[\[CapitalLambda]13],
			Conjugate[\[CapitalLambda]23]+Conjugate[\[CapitalLambda]24]\[Rule]-Conjugate[\[CapitalLambda]34],
			Conjugate[\[CapitalLambda]23]+Conjugate[\[CapitalLambda]34]\[Rule]-Conjugate[\[CapitalLambda]24],
			Conjugate[\[CapitalLambda]24]+Conjugate[\[CapitalLambda]34]\[Rule]-Conjugate[\[CapitalLambda]23],*)

			\[CapitalLambda]12*Conjugate[\[CapitalLambda]12]->1,
			\[CapitalLambda]13*Conjugate[\[CapitalLambda]13]->1,
			\[CapitalLambda]14*Conjugate[\[CapitalLambda]14]->1,
			\[CapitalLambda]23*Conjugate[\[CapitalLambda]23]->1,
			\[CapitalLambda]24*Conjugate[\[CapitalLambda]24]->1,
			\[CapitalLambda]34*Conjugate[\[CapitalLambda]34]->1,

			\[CapitalLambda]23 Conjugate[\[CapitalLambda]13]+\[CapitalLambda]24 Conjugate[\[CapitalLambda]14]+\[CapitalLambda]13 Conjugate[\[CapitalLambda]23]+\[CapitalLambda]14 Conjugate[\[CapitalLambda]24]->-2,
			\[CapitalLambda]14 Conjugate[\[CapitalLambda]13]+\[CapitalLambda]13 Conjugate[\[CapitalLambda]14]+\[CapitalLambda]24 Conjugate[\[CapitalLambda]23]+\[CapitalLambda]23 Conjugate[\[CapitalLambda]24]->-2,
			\[CapitalLambda]24 Conjugate[\[CapitalLambda]12]+\[CapitalLambda]34 Conjugate[\[CapitalLambda]13]+\[CapitalLambda]12 Conjugate[\[CapitalLambda]24]+\[CapitalLambda]13 Conjugate[\[CapitalLambda]34]->-2,
			\[CapitalLambda]23 Conjugate[\[CapitalLambda]12]+\[CapitalLambda]34 Conjugate[\[CapitalLambda]14]+\[CapitalLambda]12 Conjugate[\[CapitalLambda]23]+\[CapitalLambda]14 Conjugate[\[CapitalLambda]34]->-2,
			\[CapitalLambda]14 Conjugate[\[CapitalLambda]12]+\[CapitalLambda]12 Conjugate[\[CapitalLambda]14]+\[CapitalLambda]34 Conjugate[\[CapitalLambda]23]+\[CapitalLambda]23 Conjugate[\[CapitalLambda]34]->-2,
			\[CapitalLambda]13 Conjugate[\[CapitalLambda]12]+\[CapitalLambda]12 Conjugate[\[CapitalLambda]13]+\[CapitalLambda]34 Conjugate[\[CapitalLambda]24]+\[CapitalLambda]24 Conjugate[\[CapitalLambda]34]->-2,

			\[CapitalLambda]12^2->Conjugate[\[CapitalLambda]12],
			\[CapitalLambda]13^2->Conjugate[\[CapitalLambda]13],
			\[CapitalLambda]14^2->Conjugate[\[CapitalLambda]14],
			\[CapitalLambda]23^2->Conjugate[\[CapitalLambda]23],
			\[CapitalLambda]24^2->Conjugate[\[CapitalLambda]24],
			\[CapitalLambda]34^2->Conjugate[\[CapitalLambda]34],

			Conjugate[\[CapitalLambda]12]^2->\[CapitalLambda]12,
			Conjugate[\[CapitalLambda]13]^2->\[CapitalLambda]13,
			Conjugate[\[CapitalLambda]14]^2->\[CapitalLambda]14,
			Conjugate[\[CapitalLambda]23]^2->\[CapitalLambda]23,
			Conjugate[\[CapitalLambda]24]^2->\[CapitalLambda]24,
			Conjugate[\[CapitalLambda]34]^2->\[CapitalLambda]34
};

replaceRijCurnoe={x12->-(1/Sqrt[2]),
				y12->-(1/Sqrt[2]),
				z12->0,


				x13->-(1/Sqrt[2]),
				y13->0,
				z13->-(1/Sqrt[2]),


				x14->0,
				y14->-(1/Sqrt[2]),
				z14->-(1/Sqrt[2]),


				x23->0,
				y23->1/Sqrt[2],
				z23->-(1/Sqrt[2]),


				x24->1/Sqrt[2],
				y24->0,
				z24->-(1/Sqrt[2]),


				x34->1/Sqrt[2],
				y34->-(1/Sqrt[2]),
				z34->0
};

replaceRijRoss={x12->0,
				y12->-(1/Sqrt[2]),
				z12->-(1/Sqrt[2]),



				x13->-(1/Sqrt[2]),
				y13->0,
				z13->-(1/Sqrt[2]),


				x14->-(1/Sqrt[2]),
				y14->-(1/Sqrt[2]),
				z14->0,


				x23->-(1/Sqrt[2]),
				y23->1/Sqrt[2],
				z23->0,



				x24->-(1/Sqrt[2]),
				y24->0,
				z24->1/Sqrt[2],



				x34->0,
				y34->-(1/Sqrt[2]),
				z34->1/Sqrt[2]
};
replaceQijCurnoe={Qxx[1]->Sqrt[2] O21[1]-O22[1]/2-Sqrt[6] O2n1[1]-(Sqrt[3] O2n2[1])/2,
				Qxy[1]->O20[1]/2+Sqrt[2] O21[1]+O22[1],
				Qxz[1]->O20[1]/2-O21[1]/Sqrt[2]-O22[1]/2-Sqrt[3/2] O2n1[1]+(Sqrt[3] O2n2[1])/2,
				Qyx[1]->O20[1]/2+Sqrt[2] O21[1]+O22[1],
				Qyy[1]->Sqrt[2] O21[1]-O22[1]/2+Sqrt[6] O2n1[1]+(Sqrt[3] O2n2[1])/2,
				Qyz[1]->O20[1]/2-O21[1]/Sqrt[2]-O22[1]/2+Sqrt[3/2] O2n1[1]-(Sqrt[3] O2n2[1])/2,
				Qzx[1]->O20[1]/2-O21[1]/Sqrt[2]-O22[1]/2-Sqrt[3/2] O2n1[1]+(Sqrt[3] O2n2[1])/2,
				Qzy[1]->O20[1]/2-O21[1]/Sqrt[2]-O22[1]/2+Sqrt[3/2] O2n1[1]-(Sqrt[3] O2n2[1])/2,
				Qzz[1]->-2 Sqrt[2] O21[1]+O22[1],



				Qxx[2]->Sqrt[2] O21[2]-O22[2]/2-Sqrt[6] O2n1[2]-(Sqrt[3] O2n2[2])/2,
				Qxy[2]->O20[2]/2+Sqrt[2] O21[2]+O22[2],
				Qxz[2]->-(O20[2]/2)+O21[2]/Sqrt[2]+O22[2]/2+Sqrt[3/2] O2n1[2]-(Sqrt[3] O2n2[2])/2,
				Qyx[2]->O20[2]/2+Sqrt[2] O21[2]+O22[2],
				Qyy[2]->Sqrt[2] O21[2]-O22[2]/2+Sqrt[6] O2n1[2]+(Sqrt[3] O2n2[2])/2,
				Qyz[2]->-(O20[2]/2)+O21[2]/Sqrt[2]+O22[2]/2-Sqrt[3/2] O2n1[2]+(Sqrt[3] O2n2[2])/2,
				Qzx[2]->-(O20[2]/2)+O21[2]/Sqrt[2]+O22[2]/2+Sqrt[3/2] O2n1[2]-(Sqrt[3] O2n2[2])/2,
				Qzy[2]->-(O20[2]/2)+O21[2]/Sqrt[2]+O22[2]/2-Sqrt[3/2] O2n1[2]+(Sqrt[3] O2n2[2])/2,
				Qzz[2]->-2 Sqrt[2] O21[2]+O22[2],



				Qxx[3]->Sqrt[2] O21[3]-O22[3]/2-Sqrt[6] O2n1[3]-(Sqrt[3] O2n2[3])/2,
				Qxy[3]->-(O20[3]/2)-Sqrt[2] O21[3]-O22[3],
				Qxz[3]->O20[3]/2-O21[3]/Sqrt[2]-O22[3]/2-Sqrt[3/2] O2n1[3]+(Sqrt[3] O2n2[3])/2,
				Qyx[3]->-(O20[3]/2)-Sqrt[2] O21[3]-O22[3],
				Qyy[3]->Sqrt[2] O21[3]-O22[3]/2+Sqrt[6] O2n1[3]+(Sqrt[3] O2n2[3])/2,
				Qyz[3]->-(O20[3]/2)+O21[3]/Sqrt[2]+O22[3]/2-Sqrt[3/2] O2n1[3]+(Sqrt[3] O2n2[3])/2,
				Qzx[3]->O20[3]/2-O21[3]/Sqrt[2]-O22[3]/2-Sqrt[3/2] O2n1[3]+(Sqrt[3] O2n2[3])/2,
				Qzy[3]->-(O20[3]/2)+O21[3]/Sqrt[2]+O22[3]/2-Sqrt[3/2] O2n1[3]+(Sqrt[3] O2n2[3])/2,
				Qzz[3]->-2 Sqrt[2] O21[3]+O22[3],



				Qxx[4]->Sqrt[2] O21[4]-O22[4]/2-Sqrt[6] O2n1[4]-(Sqrt[3] O2n2[4])/2,
				Qxy[4]->-(O20[4]/2)-Sqrt[2] O21[4]-O22[4],
				Qxz[4]->-(O20[4]/2)+O21[4]/Sqrt[2]+O22[4]/2+Sqrt[3/2] O2n1[4]-(Sqrt[3] O2n2[4])/2,
				Qyx[4]->-(O20[4]/2)-Sqrt[2] O21[4]-O22[4],
				Qyy[4]->Sqrt[2] O21[4]-O22[4]/2+Sqrt[6] O2n1[4]+(Sqrt[3] O2n2[4])/2,
				Qyz[4]->O20[4]/2-O21[4]/Sqrt[2]-O22[4]/2+Sqrt[3/2] O2n1[4]-(Sqrt[3] O2n2[4])/2,
				Qzx[4]->-(O20[4]/2)+O21[4]/Sqrt[2]+O22[4]/2+Sqrt[3/2] O2n1[4]-(Sqrt[3] O2n2[4])/2,
				Qzy[4]->O20[4]/2-O21[4]/Sqrt[2]-O22[4]/2+Sqrt[3/2] O2n1[4]-(Sqrt[3] O2n2[4])/2,
				Qzz[4]->-2 Sqrt[2] O21[4]+O22[4]
};

replaceQijRoss={Qxx[1]->-2 Sqrt[2] O21[1]+O22[1],
				Qxy[1]->O20[1]/2-O21[1]/Sqrt[2]-O22[1]/2-Sqrt[3/2] O2n1[1]+(Sqrt[3] O2n2[1])/2,
				Qxz[1]->O20[1]/2-O21[1]/Sqrt[2]-O22[1]/2+Sqrt[3/2] O2n1[1]-(Sqrt[3] O2n2[1])/2,
				Qyx[1]->O20[1]/2-O21[1]/Sqrt[2]-O22[1]/2-Sqrt[3/2] O2n1[1]+(Sqrt[3] O2n2[1])/2,
				Qyy[1]->Sqrt[2] O21[1]-O22[1]/2-Sqrt[6] O2n1[1]-(Sqrt[3] O2n2[1])/2,
				Qyz[1]->O20[1]/2+Sqrt[2] O21[1]+O22[1],
				Qzx[1]->O20[1]/2-O21[1]/Sqrt[2]-O22[1]/2+Sqrt[3/2] O2n1[1]-(Sqrt[3] O2n2[1])/2,
				Qzy[1]->O20[1]/2+Sqrt[2] O21[1]+O22[1],
				Qzz[1]->Sqrt[2] O21[1]-O22[1]/2+Sqrt[6] O2n1[1]+(Sqrt[3] O2n2[1])/2,



				Qxx[2]->-2 Sqrt[2] O21[2]+O22[2],
				Qxy[2]->-(O20[2]/2)+O21[2]/Sqrt[2]+O22[2]/2+Sqrt[3/2] O2n1[2]-(Sqrt[3] O2n2[2])/2,
				Qxz[2]->-(O20[2]/2)+O21[2]/Sqrt[2]+O22[2]/2-Sqrt[3/2] O2n1[2]+(Sqrt[3] O2n2[2])/2,
				Qyx[2]->-(O20[2]/2)+O21[2]/Sqrt[2]+O22[2]/2+Sqrt[3/2] O2n1[2]-(Sqrt[3] O2n2[2])/2,
				Qyy[2]->Sqrt[2] O21[2]-O22[2]/2-Sqrt[6] O2n1[2]-(Sqrt[3] O2n2[2])/2,
				Qyz[2]->O20[2]/2+Sqrt[2] O21[2]+O22[2],
				Qzx[2]->-(O20[2]/2)+O21[2]/Sqrt[2]+O22[2]/2-Sqrt[3/2] O2n1[2]+(Sqrt[3] O2n2[2])/2,
				Qzy[2]->O20[2]/2+Sqrt[2] O21[2]+O22[2],
				Qzz[2]->Sqrt[2] O21[2]-O22[2]/2+Sqrt[6] O2n1[2]+(Sqrt[3] O2n2[2])/2,



				Qxx[3]->-2 Sqrt[2] O21[3]+O22[3],
				Qxy[3]->-(O20[3]/2)+O21[3]/Sqrt[2]+O22[3]/2+Sqrt[3/2] O2n1[3]-(Sqrt[3] O2n2[3])/2,
				Qxz[3]->O20[3]/2-O21[3]/Sqrt[2]-O22[3]/2+Sqrt[3/2] O2n1[3]-(Sqrt[3] O2n2[3])/2,
				Qyx[3]->-(O20[3]/2)+O21[3]/Sqrt[2]+O22[3]/2+Sqrt[3/2] O2n1[3]-(Sqrt[3] O2n2[3])/2,
				Qyy[3]->Sqrt[2] O21[3]-O22[3]/2-Sqrt[6] O2n1[3]-(Sqrt[3] O2n2[3])/2,
				Qyz[3]->-(O20[3]/2)-Sqrt[2] O21[3]-O22[3],
				Qzx[3]->O20[3]/2-O21[3]/Sqrt[2]-O22[3]/2+Sqrt[3/2] O2n1[3]-(Sqrt[3] O2n2[3])/2,
				Qzy[3]->-(O20[3]/2)-Sqrt[2] O21[3]-O22[3],
				Qzz[3]->Sqrt[2] O21[3]-O22[3]/2+Sqrt[6] O2n1[3]+(Sqrt[3] O2n2[3])/2,



				Qxx[4]->-2 Sqrt[2] O21[4]+O22[4],
				Qxy[4]->O20[4]/2-O21[4]/Sqrt[2]-O22[4]/2-Sqrt[3/2] O2n1[4]+(Sqrt[3] O2n2[4])/2,
				Qxz[4]->-(O20[4]/2)+O21[4]/Sqrt[2]+O22[4]/2-Sqrt[3/2] O2n1[4]+(Sqrt[3] O2n2[4])/2,
				Qyx[4]->O20[4]/2-O21[4]/Sqrt[2]-O22[4]/2-Sqrt[3/2] O2n1[4]+(Sqrt[3] O2n2[4])/2,
				Qyy[4]->Sqrt[2] O21[4]-O22[4]/2-Sqrt[6] O2n1[4]-(Sqrt[3] O2n2[4])/2,
				Qyz[4]->-(O20[4]/2)-Sqrt[2] O21[4]-O22[4],
				Qzx[4]->-(O20[4]/2)+O21[4]/Sqrt[2]+O22[4]/2-Sqrt[3/2] O2n1[4]+(Sqrt[3] O2n2[4])/2,
				Qzy[4]->-(O20[4]/2)-Sqrt[2] O21[4]-O22[4],
				Qzz[4]->Sqrt[2] O21[4]-O22[4]/2+Sqrt[6] O2n1[4]+(Sqrt[3] O2n2[4])/2
};
