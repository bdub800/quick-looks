# lululemon athletica inc. (LULU)

Share price: $117.32 USD
Date: 2026-07-20

## Financials Table

| Metric (USD '000s)                        | Q1 FY2026 (13wk, ended 5/3/26) | Q1 FY2025 (13wk, ended 5/4/25) | FY2025 (52wk, ended 2/1/26) | FY2024 (53wk, ended 2/2/25) | FY2023 (52wk, ended 1/28/24) |
|--------------------------------------------|--------------------------------|---------------------------------|------------------------------|------------------------------|--------------------------------|
| **Revenue**                                | 2,471,603                      | 2,370,660                       | 11,102,600                   | 10,588,126                   | 9,619,278                      |
| **Gross Profit**                           | 1,338,818                      | 1,383,126                       | 6,284,132                    | 6,270,811                    | 5,609,405                      |
| **Operating Income (EBIT)**                | 276,946                        | 438,625                         | 2,210,615                    | 2,505,697                    | 2,132,676                      |
| **D&A (from cash flow stmt)**              | 135,335                        | 114,529                         | 496,228                      | 446,524                      | 379,384                        |
| **EBITDA (EBIT + D&A)**                    | 412,281                        | 553,154                         | 2,706,843                    | 2,952,221                    | 2,512,060                      |
| **Adjusted EBITDA**                        | n/a — not disclosed             | n/a — not disclosed              | n/a — not disclosed          | n/a — not disclosed          | n/a — not disclosed            |
| **Finance costs / interest expense**       | ~0 (see note)                  | ~0 (see note)                    | ~0 (see note)                | ~0 (see note)                | ~0 (see note)                  |
| **Other income (expense), net**            | 9,131                           | 11,786                          | 28,352                       | 70,380                       | 43,059                         |
| **Net Income**                             | 195,048                        | 314,572                         | 1,579,183                    | 1,814,616                    | 1,550,190                      |
| **Cash from Operating Activities**         | 214,440                        | (118,954)                       | 1,602,477                    | 2,272,713                    | 2,296,164                      |
| **Capital Expenditures**                   | 127,380                        | 152,263                         | 680,802                      | 689,232                      | 651,865                        |
| **Free Cash Flow (CFO − Capex)**           | 87,060                         | (271,217)                       | 921,675                      | 1,583,481                    | 1,644,299                      |
| **Stock-Based Compensation (GAAP expense)**| 29,186                         | 23,091                          | 62,203                       | 90,011                       | 93,560                         |
| **Cash used for share repurchases**        | 361,756                        | 434,439                         | 1,178,349                    | 1,636,879                    | 558,652                        |
| **True SBC cost (see methodology below)**  | 28,515                         | 59,206                          | 61,248                       | 81,428                       | 134,519                        |
| **Owners' Earnings (FCF − True SBC cost)** | 58,545                         | (330,423)                       | 860,427                      | 1,502,053                    | 1,509,780                      |
| **Comparable sales growth (co.-reported)** | n/a in Q1 filing excerpt        | n/a                              | +2%                          | +2%                          | n/a in excerpt                 |

Notes:

- All figures from `primary_sources/FY2025/financial_statements.md` (10-K for FY ended Feb 1, 2026, with FY2024 and FY2023 comparatives) and `primary_sources/1Q2026/financial_statements.md` (10-Q for quarter ended May 3, 2026, with Q1 FY2025 comparative).

- **Operating Income (EBIT)** = Gross Profit − SG&A − Amortization of intangible assets (− Impairment/restructuring costs in FY2023, which was $74,501k). This matches the company's reported "Income from operations" line item exactly.

- **Finance costs/interest expense**: lululemon carries no long-term debt or borrowings outstanding on its revolving credit facilities (confirmed in `primary_sources/1Q2026/financial_statements.md` Note 4 and `primary_sources/FY2025/financial_statements.md` Note 13). The "Other income (expense), net" line is, per MD&A, "primarily due to a decrease in interest income" (`primary_sources/FY2025/md_and_a.md`, `primary_sources/1Q2026/md_and_a.md`) — i.e., it is interest **income**, not expense. Finance costs are therefore treated as ~$0 for unlevering purposes.

- **Adjusted EBITDA**: lululemon does not disclose an adjusted EBITDA or similar non-GAAP earnings metric in its 10-K/10-Q MD&A (confirmed via search of `primary_sources` — no "EBITDA"/"Adjusted" earnings metric found in MD&A sections). GAAP-derived EBITDA (EBIT + D&A) is used instead throughout this analysis.

- **True SBC cost methodology** (per instructions): True SBC = I × P + C, where I = net shares issued due to SBC (S1 − S0 + W), P = average price paid per repurchased share (total repurchase cash incl. excise tax ÷ shares repurchased W), and C = net SBC-related tax cash cost (RSU tax withholding paid − proceeds from option exercise/ESPP settlement). Calculated in `work_products/lulu_financials_valuation_calc.py`:

    | Period    | I (shares, '000s) | P ($/sh, avg repurchase price) | C ($'000s, net SBC tax cost) | True SBC ($'000s) | Reported GAAP SBC ($'000s) |
    |-----------|--------------------|----------------------------------|-------------------------------|--------------------|------------------------------|
    | FY2023    | 383                | 376.96                           | (9,856)                       | 134,519            | 93,560                      |
    | FY2024    | 207                | 318.03                           | 15,597                        | 81,428             | 90,011                      |
    | FY2025    | 178                | 237.38                           | 18,995                        | 61,248             | 62,203                      |
    | Q1 FY2025 | 106                | 318.74                           | 25,420                        | 59,206             | 23,091                      |
    | Q1 FY2026 | 99                 | 166.63                           | 12,019                        | 28,515             | 29,186                      |

  True SBC cost tracks below reported GAAP SBC expense in FY2025 (because repurchase prices used to calculate I×P have fallen well below the grant-date fair values embedded in GAAP SBC expense, as LULU's stock price has declined substantially over the period), but well above GAAP SBC in FY2023–FY2024 and Q1 FY2025 when the stock traded at much higher prices. This confirms the economic dilution cost of SBC is highly sensitive to the price at which the company repurchases shares to offset dilution — a rough estimate, not a precise figure, per the "approximately right" principle.

- Q1 FY2025 (13 weeks ended May 4, 2025) shows negative CFO (−$118,954k) and negative FCF, mainly reflecting a large working-capital build (inventory +$174,319k use of cash) and a $160,295k reduction in income taxes payable — a seasonally low quarter, not indicative of run-rate FCF generation.

- Comparable sales, store counts, and other operating metrics are disclosed in `primary_sources/FY2025/md_and_a.md`: FY2025 net revenue grew 5% to $11.1B with comparable sales +2% (Americas −3%, China Mainland +20%, Rest of World +9%); the company added 44 net new company-operated stores in FY2025 (811 total stores as of 2/1/26, up from 767 a year earlier), and had 816 stores as of 5/3/26 (`primary_sources/1Q2026/financial_statements.md`, Note 1).

## Capitalization, Cash, Debt, and Enterprise Value

| Item                                | Value            |
|-------------------------------------|-------------------|
| Stock Price                         | $117.32           |
| Basic Shares                        | 113,553,918       |
| Fully Diluted Shares                | 113,620,822       |
| Implied Market Cap (Basic)          | $13,322.1M        |
| Implied Market Cap (Fully Diluted)  | $13,330.0M        |
| Cash and Cash Equivalents           | $1,514.7M         |
| Total Lease Liabilities (as debt)   | $2,136.0M         |
| Long-term Debt / Borrowings         | $0 (none outstanding) |
| Pension Shortfall                   | $0 (no defined-benefit plan disclosed) |
| EV (Basic)                          | $13,943.4M        |
| EV (Fully Diluted)                  | $13,951.3M        |

Notes:

- **Basic shares (113,553,918)** = 108,437,957 common shares + 5,115,961 exchangeable shares of Lulu Canadian Holding, Inc. (economically equivalent to common shares), both as of May 29, 2026 per the cover page of `primary_sources/1Q2026/cover_page.md`. This is the most recent share count disclosed (post-quarter-end, and it already reflects the 0.9 million shares repurchased between May 3–29, 2026 for $111.0 million per Note 9 of `primary_sources/1Q2026/financial_statements.md` — no separate pro-forma adjustment is needed). Special voting stock (also 5,115,961 shares) carries voting rights only, tied 1:1 to the exchangeable shares, and is excluded to avoid double-counting economic interest.

- **Fully diluted shares (113,620,822)** = basic shares grossed up by the dilution ratio observed in Q1 FY2026 (68,000 dilutive shares from stock options/awards ÷ 115,414,000 basic weighted-average shares = 0.0589%), per Note 9 (Earnings Per Share) of `primary_sources/1Q2026/financial_statements.md`. Calculation in `work_products/lulu_financials_valuation_calc.py`.

- **Cash ($1,514.7M)** = cash and cash equivalents as of May 3, 2026 (includes $292.2M of money market funds per Note 7, `primary_sources/1Q2026/financial_statements.md`). No separately disclosed short- or long-term marketable securities/investments exist on the balance sheet.

- **Debt**: LULU has no long-term debt and no borrowings outstanding under either its $600.0M Americas or ~$43.9M China Mainland revolving credit facilities as of May 3, 2026 (Note 4, `primary_sources/1Q2026/financial_statements.md`). Per instructions, lease liabilities are included as a debt-like item: current lease liabilities of $357.2M + non-current lease liabilities of $1,778.8M = $2,136.0M total (balance sheet, `primary_sources/1Q2026/financial_statements.md`). No pension shortfall exists — the company only offers defined-contribution plans (Note 6, `primary_sources/1Q2026/financial_statements.md`).

## Valuation

| Metric                        | Basic  | Fully Diluted |
|--------------------------------|--------|----------------|
| EV/EBIT (LTM)                  | 6.81x  | 6.81x          |
| EV/EBITDA (LTM)                | 5.43x  | 5.44x          |
| EV/Unlevered FCF (LTM)         | 10.89x | 10.90x         |
| EV/Unlevered Owners' Earnings (LTM) | 11.16x | 11.17x    |

Notes:

- LTM (twelve months ended May 3, 2026) figures are computed as FY2025 (ended 2/1/26) + Q1 FY2026 (ended 5/3/26) − Q1 FY2025 (ended 5/4/25), per `work_products/lulu_financials_valuation_calc.py`:

    | Metric                  | LTM value ('000s) |
    |--------------------------|---------------------|
    | Revenue                  | 11,203,543          |
    | EBIT                     | 2,048,936            |
    | D&A                      | 517,034               |
    | EBITDA                   | 2,565,970            |
    | Net income               | 1,459,659            |
    | CFO                      | 1,935,871            |
    | Capex                    | 655,919                |
    | FCF                      | 1,279,952            |
    | True SBC cost            | 30,558                |
    | Owners' Earnings         | 1,249,394            |

- **Unlevered FCF = Unlevered Owners' Earnings basis**: since finance costs/interest expense are ~$0 (no debt outstanding; see Financials Table notes), Unlevered FCF = FCF and Unlevered Owners' Earnings = Owners' Earnings — no adjustment is required.

- The LTM True SBC cost figure ($30.6M) is notably below the LTM GAAP SBC expense ($68.3M, = FY2025 $62.2M + Q1 FY2026 $29.2M − Q1 FY2025 $23.1M) because the rolling-LTM subtraction removes Q1 FY2025 (when LULU repurchased stock at a much higher average price of ~$319/share) and adds Q1 FY2026 (repurchases at ~$167/share). This makes the LTM Owners' Earnings figure somewhat sensitive to the specific quarter mix; investors should treat this as a rough estimate of the true economic dilution cost rather than a precise figure — consistent with the "approximately right" principle for uncertain estimates.

- No debt outstanding means EV is only modestly above market cap, driven entirely by capitalized lease liabilities ($2,136.0M) net of cash ($1,514.7M), a net addition of ~$621M to market cap to arrive at EV.

- At $117.32/share, LULU trades at a substantial discount to its 3-year-ago valuation levels — the stock price implied a market cap of ~$17.6B as of August 1, 2025 (per the FY2025 10-K cover page, aggregate market value of voting stock held by non-affiliates), versus ~$13.3B basic market cap today, despite revenue and EBITDA both being higher on an LTM basis than in FY2023. This reflects significant multiple compression, likely related to the securities class action and CEO transition disclosed in `primary_sources/1Q2026/financial_statements.md` Note 12, and the Americas segment's -3% comparable sales in FY2025 (`primary_sources/FY2025/md_and_a.md`) — flagged here as context, not as a causal claim (inference).

- EV/EBIT and EV/EBITDA multiples (~6.8x and ~5.4x) are low relative to LULU's historical multiples and to apparel/athletic peers, consistent with the market pricing in the risks noted above (leadership transition, litigation overhang, Americas segment deceleration). This is a market-observed fact (the multiple itself), with the interpretation flagged as inference.
