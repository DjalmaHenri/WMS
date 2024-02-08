select pe.numped, pe.numnota, pe.numcar, pe.codcli, pc.cliente, pe.data, pp.rota, pnf.transportadora

from pcpedc pe

inner join pcclient pc
on pe.codcli = pc.codcli

inner join pcpraca pp
on pc.codpraca = pp.codpraca

inner join pcnfsaid pnf
on pe.numnota = pnf.numnota

where pe.numnota = (:nota) and pp.rota = (:rota) and pe.data >= (:datainit) and pe.data <= (:dataend)



