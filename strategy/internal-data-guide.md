---
title: Internal Data Guide
parent: Strategy
---

# Internal Data Guide

This is a collection of data and equations which are thought to be useful for strategic purposes.

**The details recorded here are verified by volunteers, so it is possible that there are errors.**

## CD Sales Amounts

Sales = ((((buying power ÷ 2) + (high score × 4) rounded down) × sales bonus × sales coefficient) rounded down.

Buying power: total of the fan count × attention rate for each area.  Attention rate: pink: 0.95; amber: 0.90; green: 0.85; blue: 0.80 

High score: the high score for that song

Sales bonus: a bonus for the 2nd and subsequent songs.  2nd: 1.05; 3rd:1.10; 4th: 1.15; 5th: 1.20 

Sales coefficient: decay in sales as weeks pass after release.  Sales coefficient = (1 - (weeks after release - keep count) × 0.25)

### A worked example

week 25, 3rd song high score 45297 1st week of release

| Area | Fan Count | Attention Rate | Buying Power |
|------|-----------|----------------|--------------|
| North East Area | 8602 | Amber | 7741 |
| Capital Area | 8626 | Amber | 7763 |
| Central Area | 61710 | Pink | 58624 |
| Kyoto Area | 62452 | Pink | 59329 |
| West Area | 120525 | Pink | 114498 |
| South Area | 93552 | Pink | 88874 |

(7741 + 7763 + 58624 + 59329 + 114498 + 88874) / 2 = 168414.5

45297 * 4 = 181188

168414.5 + 181188 = 349602.5 → 349602

349602 * 1.10 * 1 = 384562.2

Actual sales were 384,564, so it's fairly consistent.

I tried making a calculator (Japanese, could be nice to have but we can't do JavaScript here so we would have to link off-site too...)

http://dl.dropbox.com/u/7334525/tools/imas2/cd_sales_calc.html

### Sales during Break or Revival

The sales coefficient equation above changes to fixed amounts after a break or revival 

Break: 1.2→1.0→0.6→0.3 

Super Break: 2.5→1.5→1.0→0.5 

Revival: 0.8→0.6→0.4→0.2

## Attention Rate

### Attention Rate Summary

From the information in >>883's post on thread 7

> I don't really know if this is applicable to transitions in the early stages of the game.
> I think it's only really useful as a reference, but it's useful information so I have copied and incorporated it into the information above.

Attention rate changes:

- on completion of activity (increases in response to the activity);
- at the end of the week (always -1)
- fan count decay takes place each week after these occur.
- Changes of attention rate depending on the activity:

| Activity | Attention rate change |
|----------|-----------------------|
| Publicity (Paid Promotion) | +6.5 |
| Area Audition | +6.0 |
| Quintet Live | +3.5 |
| National Audition | All Areas +3.0 |
| Normal Live | +3.0 |
| Festival | +2.0 |
| Promotion (normal work) | +2.0 |

- Displayed icon and fan decay depending on the attention rate

<table>
  <tbody>
    <tr>
      <td>Attention rate icon</td>
      <td colspan="3">S (Pink)</td>
      <td colspan="4">A (Amber)</td>
      <td colspan="3">B (Green)</td>
      <td colspan="4">C (Blue)</td>
    </tr>
    <tr>
      <td>Attention rate (internal value)</td>
      <td>6.5</td><td>6.0</td><td>5.5</td>
      <td>5.0</td><td>4.5</td><td>4.0</td><td>3.5</td>
      <td>3.0</td><td>2.5</td><td>2.0</td>
      <td>1.5</td><td>1.0</td><td>0.5</td><td>0.0</td>
    </tr>
    <tr>
      <td>Fan decay</td>
      <td colspan="3">-0%</td>
      <td colspan="4">-2%</td>
      <td colspan="3">-3%</td>
      <td colspan="4">-5%</td>
    </tr>
  </tbody>
</table>

For S→A and B→C the decay rate is quite heavy, but A→B becomes a point of control.

Consequently, you could say the following:

- from the middle stages onwards when the fan count becomes high, not letting it decay is of high importance
- don't let attention rate fall too far in areas with a high fan count
- after hitting attention rate B, it is effective to hold a live or similar
- the move from S to A does decay somewhat more in comparison, so with lives, keep every area at S... profit?

### Attention Rate Summary (Revised)

Attention rate changes:

- on completion of activity (increases in response to the activity), however, the limit is 80;
- when there is a reporter with you, it is increased to (base increase × reporter effect) rounded down;
- at the end of the week (always -12)
- fan count decay takes place each week after these occur. the remainder becomes sales;
- the attention rate at start of play is 54.
- Changes of attention rate depending on the activity:

| Activity | Attention Rate Increase | Remarks |
|----------|-------------------------|---------|
| Publicity (Paid Promotion) | 80 |  |
| IA Grand Prix Nomination | 72 | All areas |
| Audition | 70 |  |
| Quintet Live | 40 |  |
| Normal Live | 38 |  |
| Promotion (Normal Work) | 36 |  |
| National Audition | 34 | All areas |
| Festival | 25 | If you lose, 15 (25 × 0.6) |

- Reporter effects (fan count / attention rate increase multiplier)
    - Yamahara (山原) : 1.2 
    - Ariake (有明) : 1.4
- Fan count increase equation

(basic fan count increase × reporter effect), fractions rounded down.

If you lose at a festival, this is multiplied by 0.6 and rounded down.  This is a digression, but even if you lose at a festival, the amount of money you receive will not change.

- Displayed icon and fan decay depending on the attention rate

| Attention Rate Icon | S (Pink) | A (Amber) | B (Green) | C (Blue) |
| Attention Rate (range of values) | 80 ~ 61 | 60 ~ 41 | 40 ~ 21 | 20 ~ 0 |
| Fan Decrease Rate | -0% | -2% | -3% | -5% |
