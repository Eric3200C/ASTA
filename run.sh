mv saved_models/Final-Thin.pth saved_models/asta.pth
python test.py --dataset Haze1k-thin
mv saved_models/asta.pth saved_models/asta-thin.pth
mv results/Haze1k-thin results/asta-thin

mv saved_models/Final-Moderate.pth saved_models/asta.pth
python test.py --dataset Haze1k-moderate
mv saved_models/asta.pth saved_models/asta-moderate.pth
mv results/Haze1k-moderate results/asta-moderate

mv saved_models/Final-Thick.pth saved_models/asta.pth
python test.py --dataset Haze1k-thick
mv saved_models/asta.pth saved_models/asta-thick.pth
mv results/Haze1k-thick results/asta-thick