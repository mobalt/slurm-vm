#!/bin/sh
#SBATCH --job-name=Sleeping_Baby
#SBATCH -o /home/vagrant/sleep.out

echo "One second nap..."
sleep 1
echo "...Two second nap..."
sleep 2
echo "...Three second nap..."
sleep 3
echo "...Four second nap..."
sleep 4
echo "One second nap..."
sleep 1
echo "...Two second nap..."
sleep 2
echo "...Three second nap..."
sleep 3
echo "...Four second nap..."
sleep 4
echo "Finished. Nothing else to see here."
echo "(Hit Ctrl+C to exit)"
