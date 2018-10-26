.PHONY=base poe dubs usd
base=ledger --strict -f prices.db -f accounts.dat -f ledger.dat
base:
	$(base) -V bal not Equity
cleared:
	$(base) -V cleared not Equity
poe:
	$(base) -X PoE -V bal not Equity
dubs:
	$(base) -X D -V bal not Equity

usd:
	$(base) -X USD -V bal not Equity
