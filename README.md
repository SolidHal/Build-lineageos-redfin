# Build lineageos 18.1 for redfin


### Setup build enviroment
```
git checkout https://github.com/SolidHal/docker-lineage-cicd-18.1.git
cd docker-lineage-cicd-18.1
docker build --tag solidhal/docker-lineage-cicd-18-1 .
```

now checkout this repo and run `./build_redfin.sh`

after quite some time you will have a `boot.img` and `lineage-...-.zip` in the `zips` directory



You can then root by using https://github.com/topjohnwu/Magisk/


LINEAGE_18_1/kernel/google/redbull/arch
lito-redbull-display.dtsi

sde_dp


  <project name="SolidHal/android" path="android" remote="github" />
  <!-- <project name="SolidHal/android_kernel_google_redbull" path="kernel/google/redbull" remote="github" /> -->

  <project name="SolidHal/android" path="android" remote="github" />
  <!-- <project name="SolidHal/android_kernel_google_redbull" path="kernel/google/redbull" remote="github" /> -->

	  <project name="SolidHal/android_prebuilts_solidhal" path="prebuilts/solidhal" remote="github" revision="master" />
      
      
  <project name="LineageOS/android_vendor_lineage" path="vendor/lineage" remote="github" />
