

import 'package:twptest/shared/models.dart';



String cData='''[
  {
    "image": "https://firebasestorage.googleapis.com/v0/b/privilee-sta.appspot.com/o/categories%2Fpool.png?alt=media&token=088a0ee1-7b00-43b3-8106-4aa57c2347c4",
    "type": "hotel"
  },
  {
    "image": "https://firebasestorage.googleapis.com/v0/b/privilee-sta.appspot.com/o/categories%2Fgym.png?alt=media&token=a0614d88-8ec7-4607-9be5-51c10dcb0f5e",
    "type": "gym"
  },
  {
    "image": "https://firebasestorage.googleapis.com/v0/b/privilee-sta.appspot.com/o/categories%2Fbar.png?alt=media&token=53aa1d81-4162-485b-83e3-f4228e762fe7",
    "type": "bar"
  },
   {
    "image": "https://firebasestorage.googleapis.com/v0/b/privilee-sta.appspot.com/o/categories%2Frestaurant.png?alt=media&token=6ce79388-6abe-4a17-9a9a-55688658dba9",
    "type": "restaurant"
  },
   {
    "image": "https://firebasestorage.googleapis.com/v0/b/privilee-sta.appspot.com/o/categories%2Fspa.png?alt=media&token=40a9aa7e-47ca-4904-a1e4-4fdad42b8419",
    "type": "spa"
  },
  {
    "image": "https://firebasestorage.googleapis.com/v0/b/privilee-sta.appspot.com/o/categories%2Fkids_club.png?alt=media&token=d0e61af0-7df2-4fb4-b97e-d34d433913e8",
    "type": "kids_club"
  },
  {
    "image": "https://firebasestorage.googleapis.com/v0/b/privilee-sta.appspot.com/o/categories%2Ftennis_squash_court.png?alt=media&token=b9252006-f677-41ce-a403-f31a8a3c8bb1",
    "type": "tennis_squash_court"
  },
  {
    "image": "https://firebasestorage.googleapis.com/v0/b/privilee-sta.appspot.com/o/categories%2Fwaterpark.jpg?alt=media&token=73f28847-b4bf-432f-92da-c016e6bb43ca",
    "type": "waterpark"
  }
]''';


String cDetailData='''[
  {
    "type": "hotel",
    "name": "Privilee Hotel",
    "short_name": "Privilee Hotel",
    "location_name": "Jumeirah Lake Towers",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/106a6f1f17df5591c990048e324de9f61904d843_fairmont-the-palm-pool-01.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/5f561b464bb5b7de7e509c270ab25a9715185089_fairmont-the-palm-beach-01.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/c5e4081ce3147ca2d167293726a31c9814191ac9_fairmont-the-palm-pool-02.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/557619264b604c503c26bdab8b467d22781c7f5e_fairmont-the-palm-01.jpg?auto=compress,format"
    ]
  },
  {
    "type": "water_park",
    "name": "Privilee WaterPark",
    "short_name": "Privilee WaterPark",
    "location_name": "Jumeirah Lake Towers",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/15cd8e00-cf2f-4bcf-aafa-19f88c619117_waterpark.jpg?auto=compress,format"
    ]
  },
  {
    "type": "hotel",
    "name": "Habtoor Grand Resort, Autograph Collection",
    "short_name": "Habtoor Grand",
    "location_name": "Jumeirah Beach Residence",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/97c5a8e7e31a7fca8c7f0d41981d71687607d9a4_habtoor-grand-beach-and-pool-03.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/cac0d833d678e87b03ce4458893509f73c86c261_habtoor-grand-beach-and-pool-04.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/b44186d92535decd80508f50ff50d30ab694e523_habtoor-grand-beach-and-pool-02.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/91b11d3330c5407d6bbdd46bd2a0f2d11ed36817_habtoorgrand-jumeirah-beach-01.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/66a5a6a908c6e386e671e496ebdd442808eb697f_habtoor-grand-beach-and-pool-01.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/c3b6d1e6353e3e4dd2e0756cccb8ff29a1a310f1_habtoorgrand-jumeairah-beach-04.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/254a164b574a2a6f16be1db4e961eac635f4d46b_habtoorgrand-jumeirah-beach-05.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/2640c333347e61ba19f010779b3b792cd376a40e_habtoorgrand-jumeirah-beach-06.jpg?auto=compress,format"
    ]
  },
  {
    "type": "restaurant",
    "name": "WaveBreaker Beach and Grill",
    "short_name": "WaveBreaker",
    "location_name": "Jumeirah Beach Residence",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/756f246f-3feb-44e0-ad22-3e640973fe0b_Wavebreaker.jpg?auto=compress,format"
    ]
  },
  {
    "type": "water_park",
    "name": "Jungle Bay Waterpark",
    "short_name": "Jungle Bay",
    "location_name": "Dubai Marina",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/ea2526b3-a4bf-45da-aa0b-4a63a7b79da0_jungle-bay_1.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/171f6258-3410-4f8c-9515-25921d8beaaf_jungle-bay_2.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/6ca9126d-2ee2-48dd-8977-9de74e61dd20_jungle-bay_3.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/2872a71e-f32e-401c-9192-663f0c889595_jungle-bay-5.jpg?auto=compress,format"
    ]
  },
  {
    "type": "hotel",
    "name": "The Westin Dubai & Le Meridien Mina Seyahi Beach Resort & Marina",
    "short_name": "The Westin and Le Meridien Dubai",
    "location_name": "Dubai Marina",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/b3bcd64792b33cf62de982ed54967ef82fc03cfe_westin-club-mina-pool-01.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/a2f19cee798b815a6ae2d7da449299863185ccaa_westin-mina-club-pool-02.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/17fa8b1a11ebb54830f8b1aa3c4eca62b8db109b_westin-mina-club-beach-01.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/711ac744e882aea1787f0ac6d769f08b6ab4b726_westin-mina-club-04.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/8579e61a66c0f5ac787a5dbee68f0c483903d9d1_westin-mina-club-pool-03.jpg?auto=compress,format"
    ]
  },
  {
    "type": "hotel",
    "name": "Fairmont The Palm",
    "short_name": "Fairmont The Palm",
    "location_name": "The Palm",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/02d7c71d-e943-4ab5-bcc5-b14dfcae99c3_Fairmont-the-palm_Beach.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/d80400a1-6250-4b89-a51d-b7b8b24ba18f_Fairmont-the-palm_pool.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/26e94de4-1336-4637-afde-cd2e095c4793_Fairmont-the-palm_Adults.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/8af5cc1d-79ef-4599-8fb2-8281268fddaa_Fairmont-the-palm_Beach1.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/0d1d89b7-b165-4ba4-a956-1a40c7f85a44_Fairmont-the-palm_Splash-pad-1.jpg?auto=compress,format"
    ]
  },
  {
    "type": "gym",
    "name": "Warehouse Gym - Jumeirah Park",
    "short_name": "Warehouse - Jumeirah Park",
    "location_name": "Jumeirah Park",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/20fc1b03-16c4-4466-8509-74ec7ce337e6_Jumeirah_Park-04.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/4fb8cbdf-ccff-4171-bd04-f9ec51b757e8_Jumeirah_Park-03.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/bfb4d3a5-b5eb-4d38-b805-2adfab85ca14_Jumeirah_Park-01.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/c2c9a224-d892-4336-8491-9f1bd6f19e6d_Jumeirah_Park-02.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/f6b3ad95-7325-4374-bb09-c7a95f38a5d0_Jumeirah_Park-05.jpg?auto=compress,format"
    ]
  },
  {
    "type": "gym",
    "name": "Warehouse Gym - Springs Souk",
    "short_name": "Warehouse - Springs",
    "location_name": "Springs",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/5dcd1bb5-2448-465b-92e6-dc5307664e16_Springs_Warehouse_Gym5.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/cdc67841-ca31-45b9-9571-a25adc9bdcd1_Springs_Warehouse_Gym3.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/df9889e0-1e7d-479b-a726-613dce85a180_Springs_Warehouse_Gym4.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/4a54d8f2-3a9e-4615-a8a3-52e780dae918_Springs_Warehouse_Gym.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/cdc67841-ca31-45b9-9571-a25adc9bdcd1_Springs_Warehouse_Gym3.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/4c629bed-be6c-4e84-91ca-cdf14df82294_Springs_Warehouse_Gym1.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/9c0a30ac-c2b3-4cfa-b1e2-ae7b474b92ac_Springs_Warehouse_Gym2.jpg?auto=compress,format"
    ]
  },
  {
    "type": "gym",
    "name": "Warehouse Gym - Ibn Battuta Mall",
    "short_name": "Warehouse - Ibn Battuta",
    "location_name": "Ibn Battuta Mall",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/0152886b-e5db-4753-8e02-75abba2065a8_Ibn-Battuta_Warehouse_Gym2.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/92644e0a-db6c-41d0-b716-eae71da7cd37_Ibn-Battuta_Warehouse_Gym1.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/b66b15e5-5cb5-4963-8364-d4443f9f7316_Ibn-Battuta_Warehouse_Gym3.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/1af380c7-447c-444c-942a-cb21e83bf2b3_Ibn-Battuta_Warehouse_Gym.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/bcb7add2-a726-4bf8-b4a7-f3bd07a7e8db_Ibn-Battuta_Warehouse_Gym4.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/32625ad7-6ef9-48b1-8033-d358fea67bc8_Ibn-Battuta_Warehouse_Gym6.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/8169a21a-dfa6-46a0-b022-ebfa3db59a0a_Ibn-Battuta_Warehouse_Gym5.jpg?auto=compress,format"
    ]
  },
  {
    "type": "hotel",
    "name": "Waldorf Astoria Dubai Palm Jumeirah",
    "short_name": "Waldorf Astoria",
    "location_name": "The Palm",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/4ad9519ede0e0df7fc957bed61da81b2508dce5d_waldorf-pool-04.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/5b9f81da732ab949d4cdc9acadc7ed2c72c00005_waldorf-pool-01.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/df9d20212b643d00ce72d51ed007a717f0175671_waldorf-beach-02.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/dcdd22a93ca47ebae5d54e63b142c871c9e84c48_waldorf-pool-02.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/bd01ab4bc5c01388aff76f3c7c5af79319117ee8_waldorf-pool-03.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/ff586e4b8e7d2bd7aaa8e099bd604b33d644ad32_waldorf-pool-05.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/d5fb84f8-c6d4-4620-8109-d42d39f00e92_kids-club.jpg?auto=compress,format"
    ]
  },
  {
    "type": "gym",
    "name": "Waldorf Astoria Gym",
    "short_name": "Waldorf Astoria Gym",
    "location_name": "The Palm",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/b7aafdf4dd278d7b263fa8f286263d003cf6896c_waldorf-astoria-gym-02.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/3ce7d2588169ebea17d8da0a11976718a241ca85_waldorf-astoria-gym-01.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/6de827ec0978195fd054becc0984c5b778b17bd7_waldorf-gym-04.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/ccce71a9e81c59c0ba14a2d3a642de7d9304ecc7_waldorf-gym-05.jpg?auto=compress,format"
    ]
  },
  {
    "type": "tennis_squash_court",
    "name": "Tennis at Waldorf The Palm",
    "short_name": "Tennis",
    "location_name": "The Palm",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/1973ba1c23623f9a4cc8f603b43a98e94ec8f5e0_waldorf-tennis.jpg?auto=compress,format"
    ]
  },
  {
    "type": "spa",
    "name": "Waldorf Astoria Spa",
    "short_name": "Waldorf Astoria Spa",
    "location_name": "The Palm",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee%2F96ed14f7-bfb2-40f2-a02b-2ca5d506e7f5_waldorf-astoria-spa-01.jpg?auto=compress,format"
    ]
  },
  {
    "type": "hotel",
    "name": "Atlantis The Palm",
    "short_name": "Atlantis The Palm",
    "location_name": "The Palm",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/0f258d96f8a312d74925ca705d37b06894ad867d_atlantis-pool-02.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/b6829a57292ba691eb18dd5c09c3ad9edeb4a7b0_atlantis-pool-01.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/f7e1ea3615694834c55708212df02050da1e631a_atlantis-pool-03.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/f8551a82c62d1b221e0213dea97f3104bf5409ef_atlantis-beach-03.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/f6d83e4fe944fd635e85e7b27c272f61c3256ce2_atlantis-beach-01.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/f59f44b996598322dad5499cb9963b09387fa535_atlantis-pool-04.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/a8c1216d42d81d3695647601a739702cf0c48207_atlantis-pool-05.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/249a818450d354e25c49c32c2138e45073eb7d35_atlantis-beach-02.jpg?auto=compress,format"
    ]
  },
  {
    "type": "hotel",
    "name": "Sofitel Dubai The Palm",
    "short_name": "Sofitel The Palm",
    "location_name": "The Palm",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/f63d70ee-2e63-429a-a8c9-f7a0951ad377_Sofitel-main-pool_1.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/d814e386-9a00-4807-a64a-bc742c5b175e_Sofitel-main-pool_2.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/ff069e83-c318-4ad2-93e5-ee0a73642fcb_Sofitel-resident_pool_1.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/df11a9a9-04b3-485f-b572-5e8a0e87b7e4_Sofitel-slides.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/fc6b0284-58b9-46a8-8b33-320998c0d720_Sofitel-beach_1.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/00ee49eb-2f8a-4846-a843-1223a42b9f14_Sofitel-beach_2.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/be48d34a-4ceb-43b3-8383-3eda7fd62840_Sofitel-resident_pool_2.jpg?auto=compress,format"
    ]
  },
  {
    "type": "gym",
    "name": "Warehouse Gym - Al Quoz",
    "short_name": "Warehouse - Al Quoz",
    "location_name": "Al Quoz",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/fce1aa2f-4b0f-48bc-96cc-cb87abfa9072_Al_Quoz_Warehouse_Gym1.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/6fd5ca79-85f6-4586-b269-a13adcb96415_Al_Quoz_Warehouse_Gym2.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/d5aa962b-3776-468f-b93d-ce4730e0ba18_Al_Quoz_Warehouse_Gym0.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/a725ba5a-6c23-4ad4-b7ef-16f9ed20f7a9_Al_Quoz_Warehouse_Gym3.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/9b54da87-0908-484b-9157-2beb6b758277_Al_Quoz_Ladies_Only_Warehouse_Gym3.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/aacbfd20-1174-4a0b-8b07-bc8447cb9244_Al_Quoz_Ladies_Only_Warehouse_Gym.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/6204f7fa-2b92-4117-9f8e-161bbd4a2960_Al_Quoz_Ladies_Only_Warehouse_Gym2.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/b957718d-2dd7-4d0c-9891-c5c5e286d57f_Al_Quoz_Warehouse_Gym5.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/997dc9e2-188d-4c09-aa75-d15fc952e0e8_Al_Quoz_Warehouse_Gym4.jpg?auto=compress,format"
    ]
  },
  {
    "type": "water_park",
    "name": "Wild Wadi Waterpark",
    "short_name": "Wild Wadi",
    "location_name": "Jumeirah",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/fb0a36db-74a3-4d0c-8d92-41fe7744a4f2_Wild-Wadi-1.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/7bf7a13c-4c32-42cc-b3f5-aceadcc44e8f_Wild-Wadi-2.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/05e26d37-e8fd-420d-87e1-4006c1675b42_Wild-Wadi-3.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/04b47747-2663-4f22-827a-ae60422b8e5f_Wild-Wadi-4.jpg?auto=compress,format"
    ]
  },
  {
    "type": "gym",
    "name": "9Round Al Wasl Rd",
    "short_name": "9Round Al Wasl Rd",
    "location_name": "Al Wasl Road",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee%2F63fbe99f-17fa-464c-bb7e-22cc0a859a90_1.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee%2Fa4bfc33d-7635-4048-85a4-dff7955f0d1a_2.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee%2F2169aa5e-4290-4c99-ab6f-1dc9d7a97ad2_4.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee%2F771b1c54-9dec-4ff5-a57a-f5ed08e2f305_5.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee%2F1c25b649-400d-4e10-a70e-77389036c238_6.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee%2F8eb33abb-07b3-48ce-852c-647743e275de_7.jpg?auto=compress,format"
    ]
  },
  {
    "type": "gym",
    "name": "Warehouse Gym - Business Bay",
    "short_name": "Warehouse - Business Bay",
    "location_name": "Business Bay",
    "emirate": "Dubai",
    "images": [
      "https://privilee-media.imgix.net/privilee/d4c03ca9-3d2d-4f1a-b6d8-f3b4cdcea228_Business_Bay_Warehouse_Gym3.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/efbed931-3c36-4dca-96dc-0fa7525c1838_Business_Bay_Warehouse_Gym2.jpg?auto=compress,format",
      "https://privilee-media.imgix.net/privilee/176fd166-853b-4dc2-9ab4-97ea4e4e9081_Business_Bay_Warehouse_Gym.jpg?auto=compress,format"
    ]
  }
]''';