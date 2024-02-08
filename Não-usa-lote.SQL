select pd.codprod, pd.descricao, pd.estoqueporlote, es.qtest, ppf.filialgestaowms

from pcprodut pd

inner join pcest es0
on pd.CODPROD = es.CODPROD

inner join pcprodfilial ppf
on pd.CODPROD = ppf.CODPROD


where pd.estoqueporlote = 'N' and es.qtest >= '1' and ppf.filialgestaowms = (:filial)
