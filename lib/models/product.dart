class Product {
  // late int id;
  // late int userId;
  // late int title;
  // late String body;
  // late String image;
  // late String price;
  // late DateTime createdAt;
  // late DateTime updatedAt;

  late String id;
  late String userId;
  late String title;
  late String body;
  late String image;
  late String price;
  late String createdAt;
  late String updatedAt;

  Product.fromJson(Map<String, dynamic> parsedJson) {
    // id= parsedJson['id'];
    // userId= parsedJson['userId'];
    // title= parsedJson['title'];
    // body= parsedJson['body'];
    // image= parsedJson['image'];
    // price= parsedJson['price'];
    // createdAt= parsedJson['createdAt'];
    // updatedAt= parsedJson['updatedAt'];


    id= parsedJson['id'];
    userId= parsedJson['blur_hash'];
    title= parsedJson['color'];
    body= parsedJson['color'];
    image= parsedJson['color'];
    price= parsedJson['color'];
    createdAt= parsedJson['color'];
    updatedAt= parsedJson['color'];
  }
}


// "id":"FV3GConVSss",
// "created_at":"2018-04-26T12:07:35-04:00",
// "updated_at":"2021-10-19T07:04:44-04:00",
// "promoted_at":"2018-04-27T08:24:09-04:00",
// "width":3762,
// "height":2508,
// "color":"#d9d9d9",
// "blur_hash":"LFLqe8QlM|x]~W4TtSVrpd.9DiW;",
// "description":"workspace",
// "alt_description":"black floor lamp on living room sofa",
// "urls":{
// "raw":"https://images.unsplash.com/photo-1524758631624-e2822e304c36?ixid=MnwyNjg3ODJ8MXwxfGFsbHwxfHx8fHx8Mnx8MTYzNDcwNzE5Ng\u0026ixlib=rb-1.2.1",
// "full":"https://images.unsplash.com/photo-1524758631624-e2822e304c36?crop=entropy\u0026cs=srgb\u0026fm=jpg\u0026ixid=MnwyNjg3ODJ8MXwxfGFsbHwxfHx8fHx8Mnx8MTYzNDcwNzE5Ng\u0026ixlib=rb-1.2.1\u0026q=85",
// "regular":"https://images.unsplash.com/photo-1524758631624-e2822e304c36?crop=entropy\u0026cs=tinysrgb\u0026fit=max\u0026fm=jpg\u0026ixid=MnwyNjg3ODJ8MXwxfGFsbHwxfHx8fHx8Mnx8MTYzNDcwNzE5Ng\u0026ixlib=rb-1.2.1\u0026q=80\u0026w=1080",
// "small":"https://images.unsplash.com/photo-1524758631624-e2822e304c36?crop=entropy\u0026cs=tinysrgb\u0026fit=max\u0026fm=jpg\u0026ixid=MnwyNjg3ODJ8MXwxfGFsbHwxfHx8fHx8Mnx8MTYzNDcwNzE5Ng\u0026ixlib=rb-1.2.1\u0026q=80\u0026w=400",
// "thumb":"https://images.unsplash.com/photo-1524758631624-e2822e304c36?crop=entropy\u0026cs=tinysrgb\u0026fit=max\u0026fm=jpg\u0026ixid=MnwyNjg3ODJ8MXwxfGFsbHwxfHx8fHx8Mnx8MTYzNDcwNzE5Ng\u0026ixlib=rb-1.2.1\u0026q=80\u0026w=200"
// },
// "links":{
// "self":"https://api.unsplash.com/photos/FV3GConVSss",
// "html":"https://unsplash.com/photos/FV3GConVSss",
// "download":"https://unsplash.com/photos/FV3GConVSss/download?ixid=MnwyNjg3ODJ8MXwxfGFsbHwxfHx8fHx8Mnx8MTYzNDcwNzE5Ng",
// "download_location":"https://api.unsplash.com/photos/FV3GConVSss/download?ixid=MnwyNjg3ODJ8MXwxfGFsbHwxfHx8fHx8Mnx8MTYzNDcwNzE5Ng"
// },
// "categories":[
//
// ],
// "likes":2704,
// "liked_by_user":false,
// "current_user_collections":[
//
// ],
// "sponsorship":{
// "impression_urls":[
// "https://ad.doubleclick.net/ddm/trackimp/N1224323.3286893UNSPLASH/B25600467.313516386;dc_trk_aid=506408943;dc_trk_cid=157730382;ord=[timestamp];dc_lat=;dc_rdid=;tag_for_child_directed_treatment=;tfua=;ltd=?",
// "https://tag.researchnow.com/t/beacon?pr=285833\u0026adn=1\u0026ca=25600467\u0026si=6303199\u0026pl=313516386\u0026cr=506408943\u0026did=176\u0026ord=[timestamp]\u0026gdpr=${GDPR}\u0026gdpr_consent=${GDPR_CONSENT_110}\u0026us_privacy=${US_PRIVACY}",
// "https://secure.insightexpressai.com/adServer/adServerESI.aspx?script=false\u0026bannerID=8967585\u0026rnd=[timestamp]\u0026redir=https://secure.insightexpressai.com/adserver/1pixel.gif"
// ],
// "tagline":"For Growing Businesses",
// "tagline_url":"https://ad.doubleclick.net/ddm/trackclk/N1224323.3286893UNSPLASH/B25600467.313516386;dc_trk_aid=506408943;dc_trk_cid=157730382;dc_lat=;dc_rdid=;tag_for_child_directed_treatment=;tfua=;ltd=",
// "sponsor":{
// "id":"D-bxv1Imc-o",
// "updated_at":"2021-10-19T21:16:39-04:00",
// "username":"mailchimp",
// "name":"Mailchimp",
// "first_name":"Mailchimp",
// "last_name":null,
// "twitter_username":"Mailchimp",
// "portfolio_url":"https://mailchimp.com/",
// "bio":"The all-in-one Marketing Platform built for growing businesses.",
// "location":null,
// "links":{
// "self":"https://api.unsplash.com/users/mailchimp",
// "html":"https://unsplash.com/@mailchimp",
// "photos":"https://api.unsplash.com/users/mailchimp/photos",
// "likes":"https://api.unsplash.com/users/mailchimp/likes",
// "portfolio":"https://api.unsplash.com/users/mailchimp/portfolio",
// "following":"https://api.unsplash.com/users/mailchimp/following",
// "followers":"https://api.unsplash.com/users/mailchimp/followers"
// },
// "profile_image":{
// "small":"https://images.unsplash.com/profile-1609545740442-928866556c38image?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=faces\u0026cs=tinysrgb\u0026fit=crop\u0026h=32\u0026w=32",
// "medium":"https://images.unsplash.com/profile-1609545740442-928866556c38image?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=faces\u0026cs=tinysrgb\u0026fit=crop\u0026h=64\u0026w=64",
// "large":"https://images.unsplash.com/profile-1609545740442-928866556c38image?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=faces\u0026cs=tinysrgb\u0026fit=crop\u0026h=128\u0026w=128"
// },
// "instagram_username":"mailchimp",
// "total_collections":0,
// "total_likes":19,
// "total_photos":0,
// "accepted_tos":false,
// "for_hire":false,
// "social":{
// "instagram_username":"mailchimp",
// "portfolio_url":"https://mailchimp.com/",
// "twitter_username":"Mailchimp",
// "paypal_email":null
// }
// }
// },
// "topic_submissions":{
// "architecture-interior":{
// "status":"approved",
// "approved_on":"2021-09-24T06:49:44-04:00"
// },
// "interiors":{
// "status":"approved",
// "approved_on":"2020-06-03T09:49:17-04:00"
// },
// "business-work":{
// "status":"approved",
// "approved_on":"2020-04-06T10:20:15-04:00"
// }
// },
// "user":{
// "id":"zYw2OJ152h8",
// "updated_at":"2021-10-20T00:41:57-04:00",
// "username":"heftiba",
// "name":"Toa Heftiba",
// "first_name":"Toa",
// "last_name":"Heftiba",
// "twitter_username":"toaheftiba",
// "portfolio_url":"http://heftiba.co.uk/",
// "bio":"ᴘʀᴏᴅᴜᴄᴛ | ꜰᴏᴏᴅ | ʟɪꜰᴇꜱᴛʏʟᴇ ᴘʜᴏᴛᴏɢʀᴀᴘʜᴇʀ • ᴀ ꜰᴀɴ ᴏꜰ ᴏᴅᴅ ᴛʜɪɴɢꜱ ᴀɴᴅ ɢᴏᴏᴅ ʜᴜᴍᴏᴜʀ. 🙂\r\n👉🏻ᴄʟɪᴄᴋ ᴛʜᴇ 'ᴄᴏʟʟᴇᴄᴛɪᴏɴꜱ' ᴛᴀʙ ʙᴇʟᴏᴡ ᴛᴏ ᴠɪᴇᴡ ᴍʏ ɪᴍᴀɢᴇꜱ ɪɴ ᴏʀɢᴀɴɪꜱᴇᴅ ꜰᴏʟᴅᴇʀꜱ.  ᴡʜʏ ɴᴏᴛ ꜱᴀʏ ʜᴇʟʟᴏ ⚡️ ɪɢ: @ʜᴇꜰᴛɪʙᴀ.ᴄᴏ.ᴜᴋ ",
// "location":"UK",
// "links":{
// "self":"https://api.unsplash.com/users/heftiba",
// "html":"https://unsplash.com/@heftiba",
// "photos":"https://api.unsplash.com/users/heftiba/photos",
// "likes":"https://api.unsplash.com/users/heftiba/likes",
// "portfolio":"https://api.unsplash.com/users/heftiba/portfolio",
// "following":"https://api.unsplash.com/users/heftiba/following",
// "followers":"https://api.unsplash.com/users/heftiba/followers"
// },
// "profile_image":{
// "small":"https://images.unsplash.com/profile-1605780274397-200ea3604d6fimage?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=faces\u0026cs=tinysrgb\u0026fit=crop\u0026h=32\u0026w=32",
// "medium":"https://images.unsplash.com/profile-1605780274397-200ea3604d6fimage?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=faces\u0026cs=tinysrgb\u0026fit=crop\u0026h=64\u0026w=64",
// "large":"https://images.unsplash.com/profile-1605780274397-200ea3604d6fimage?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=faces\u0026cs=tinysrgb\u0026fit=crop\u0026h=128\u0026w=128"
// },
// "instagram_username":"heftiba.co.uk",
// "total_collections":39,
// "total_likes":2451,
// "total_photos":2665,
// "accepted_tos":true,
// "for_hire":true,
// "social":{
// "instagram_username":"heftiba.co.uk",
// "portfolio_url":"http://heftiba.co.uk/",
// "twitter_username":"toaheftiba",
// "paypal_email":null
// }
// }