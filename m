Return-Path: <hongxu.jia@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 844E4C433EF
	for <webhook@archiver.kernel.org>; Mon, 24 Jan 2022 02:07:41 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.17969.1642990059373385987
 for <yocto@lists.yoctoproject.org>;
 Sun, 23 Jan 2022 18:07:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Dj6k5npT;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=8023d7b6bd=hongxu.jia@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 20O1r0BH030941;
	Sun, 23 Jan 2022 18:07:35 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=PPS06212021;
 bh=KIfZ30Gvp4J+/eCf8tUNeRAXfNT2t9S2TOuq8/lMgFw=;
 b=Dj6k5npTTZEiqdVt9Wzg1nx7/3ZuL7SXSBGeznoTPpYENVGeTCsy7EI+fWhqEIjluMQW
 vRfUzjsl51eJY4vPB5LBR1faK41+RunLPTC/LJjkw965GWSbKwsRDOthlqZCC+wL+yhn
 uZNEv2OdmbfyFwLDX7pLxK+bBaPMpwZ2cBDRq+CFE6u3xn3f+lHtCQaRTAnNz1Dtqxbx
 5MmxfP/hL35cNjwRR068gdX3bItAMX9ZEuGUHwCBXNrz+PNOwyDyKjtNXjF4tM3rZXhU
 WVHLKfOjfVym3whPyAtYipWHs8R50Awbu7hK3hXRtQGGWilWHKi1vuOLk1jkChSypG8U Vw==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2173.outbound.protection.outlook.com [104.47.58.173])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3dre390u0p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 23 Jan 2022 18:07:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EE+isbD0yj7oIifs05ofcUnUsUwzo7o0Yp5id5s3P3OzUdV9KjPKQexDDMCx1zkojWb2umhhIxt6z7tSCGlY2TOssEMmT72UfFUZtLaQADUwxjvUPnClFui/O0eNAjDahLyfA37H58kJBGiZo8p+piCQPLrWmSbOFsO1fKfVNbovir6VrzcMhYziBETLTM6BRw/I8TbYEBWoKjRNdqUuWfjWj0WuybLl6bSopgs7Z+kcg7zHk/lDPPHTiZZ/cIGpWUlecPGssSU2+I8nd5j4Sm2jDFF7/yQUTxeADF2f9aWS5789De6ZGIZIl9uqPkGWZdZOJ9CH3SsqKgFFmWlBNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KIfZ30Gvp4J+/eCf8tUNeRAXfNT2t9S2TOuq8/lMgFw=;
 b=FqJ+W+yx/dtM7Kw0o9dSZ0eXCu7uv/Jkjj2IMk3k7CjBMd9flMr7MObAFhibnXuSn2OPZi/yXJn/pphtQ7+5xuuOc5+qul3tgC1FirDvAsuJH/CB+keIlPZyjBaqKZ1FpJRNv86I0QjBNWkB0gTiQwR+5gZAapXC57MR3DAG7J6QSDPF75siaxUCdLbWydCOiyK31w2xkHZeRto0S1iPqxkl5UR4v6Kbz5UIs653FwktaNcPM+lCoww8OlNpDbtmzhclH6pzygbKYXtBB8+eqkAJGiZZd7ncvwc1NOmM0DKWn/coI2ufWdiq1NMxT+ZdfLrj37sMfONcY78b+LM8Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MW3PR11MB4633.namprd11.prod.outlook.com (2603:10b6:303:5b::9)
 by DM5PR11MB2060.namprd11.prod.outlook.com (2603:10b6:3:13::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.10; Mon, 24 Jan
 2022 02:07:31 +0000
Received: from MW3PR11MB4633.namprd11.prod.outlook.com
 ([fe80::e8dc:b06e:73c8:d95e]) by MW3PR11MB4633.namprd11.prod.outlook.com
 ([fe80::e8dc:b06e:73c8:d95e%6]) with mapi id 15.20.4909.017; Mon, 24 Jan 2022
 02:07:31 +0000
From: "Jia, Hongxu" <Hongxu.Jia@windriver.com>
To: Julien Stephan <jstephan@baylibre.com>,
        "MacLeod, Randy"
	<Randy.MacLeod@windriver.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-tensorflow][PATCH 3/3] tensorflow-lite: add recipe
Thread-Topic: [yocto] [meta-tensorflow][PATCH 3/3] tensorflow-lite: add recipe
Thread-Index: AQHYEMcMs3a5Evuz/USG7BnUhwz4LA==
Date: Mon, 24 Jan 2022 02:07:31 +0000
Message-ID: <3bf20205-dcf6-6199-591a-a24ca289b9cf@windriver.com>
References: <20211221084222.1442456-1-jstephan@baylibre.com>
 <20211221084222.1442456-3-jstephan@baylibre.com>
 <9bf97639-b046-435a-434f-739f393f11b7@windriver.com>
 <CAEHHSvZQN6enHGznE7mAHErwUPb1yZVH6eXtLinqSG-emPnQeA@mail.gmail.com>
In-Reply-To: 
 <CAEHHSvZQN6enHGznE7mAHErwUPb1yZVH6eXtLinqSG-emPnQeA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-imapappendstamp: MW3PR11MB4633.namprd11.prod.outlook.com
 (15.20.4909.017)
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
suggested_attachment_session_id: 9182c9de-036a-fa5c-bf8e-cc673c336636
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8632c84a-7167-435d-1c34-08d9dede4774
x-ms-traffictypediagnostic: DM5PR11MB2060:EE_
x-microsoft-antispam-prvs: 
 <DM5PR11MB2060CE51970D229A89D0B9C0945E9@DM5PR11MB2060.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1148;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 GXtgT/iB7HZ+PsoZ0NwBvp2NMJ0fkdtCh72DulF96lMJ9gVj4BaaZU8xdDF2PumIRMxKPJFM66z7kEA5yghVR91Br4bxQmoalvYG9gC2vk/R3YwU89I2GlwwjjPLkciDmKD1XjIPeUkCZqS5myuEmH5FuaUywKGrCDsjQffVH+izWfy8/vUXn+1yfZ0R2+VPeeI10Pmj4O2L1EWgGVQQemSuM6652nUhjdk7kZ3FeWwlhdE7+iWN8JFlcJCRkphL58SsIBK4+5YqODFQC8G3wgFcbA+8KeQVTiIlTxFoq6uAC8cqVbe3VTGa9OGnPEqUypXXcUY5PHHFgWFEzDr/gf2elhEv+6iBGTZ3IioUNymm2HthmE45kjdkWpAuyiSXu7D6K7oWkCmWK3FDkplJrn44NqiHbyeMs4woKSqVDawjPGCwMRNBG0Tk5xKH68/W25VhKTXss0gwaoqbUma150HfBlXURnXbxLyG/uTm8Une2CxVFPBMzff9y/yifxrLzrf3Ly2QA5JyLLWDsi6OdvVq/X1jx98+sWpTfr31jdNI8FJrdxPzmd8WKVXAgET5Hb9wNZVetYX40Mfo82dBhwZ70wPYjkE1dqX/28c74WaEfGWdE62l62IqpIqoLKiUyI6xQhCYyAjdmRhQsTZjuVBmR0kNxFpaJq+4u045dy76RUrs9HiVKG9w5Ohh7MJoDTJ2RjttXehCbA6VaMCoIp4F4Tws9M1jxsYnPgej+HFnehQuPSRtJXA2QhUDjlh76etxdKtML7J7vOX8VqCUgS4pCPI4j8yviq0AGX9dnbSqtS5l042GzpKZnsxkSr9D+ZKl6HblsfN6P0J3gRQ6vdemm9NcQXLBzw8eYo0aXLRMZCqj7kD5aK3dqdXMwa+doPx9kBrI+u+vByhE6xEPAe8SjmcIDpoKG1XveW73LbM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW3PR11MB4633.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(38100700002)(36756003)(6512007)(122000001)(19627405001)(31696002)(4001150100001)(53546011)(2616005)(6506007)(166002)(8936002)(316002)(110136005)(26005)(66476007)(66946007)(83380400001)(66556008)(64756008)(66446008)(2906002)(5660300002)(186003)(91956017)(8676002)(31686004)(508600001)(6636002)(966005)(4326008)(38070700005)(86362001)(66574015)(71200400001)(76116006)(6486002)(43740500002)(45980500001)(134885004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?pHAhVZ4VOh6EngkfXotcWgKCA0bqnnmE06ThGoxUlr+xXYpmmCZaNTn++p?=
 =?iso-8859-1?Q?dFPMn1xJBE0Nfw4M8bPCzl1etSqt6YSjQfc21VcsInbKlGmKUmCz1/Bqun?=
 =?iso-8859-1?Q?hFKceA54x5UWlyiYOoCCkoB84WQGAsntSKh04WmUFT8vW6T6B79ccN1x6r?=
 =?iso-8859-1?Q?zKw1dDf7XTES5fudx8vQ7e3lbmRF0zKVfPXQafj73kLiKbxYKo0NDLZCc7?=
 =?iso-8859-1?Q?ddoMJ/sSwsyVjssztutpMOooDmy5n0NSkc6ZUUyMeVwntPQ7XsSp8bwabG?=
 =?iso-8859-1?Q?rVCJbsmTBRMO4tfow4AyJ9iuL2F1h5g8PHJW4FUV/wW7BxqzYIeH0xlVAW?=
 =?iso-8859-1?Q?twYpzsHBKW1UZBULxqokdR7yRinhURDDZSzP9lRpF2sJcwZfo4VtJtIh76?=
 =?iso-8859-1?Q?sm/FcywZvfu0wa829mfuYMoDHdE8w9ZPuvhpstzJiocwUA8srNLNoGKJr6?=
 =?iso-8859-1?Q?UKKVxKSlyLLSHG1ulj3n1/+JfqOuyO9OuUv/QTi4o5ulMv/+12MQDbS6JE?=
 =?iso-8859-1?Q?THMFTR18pkOt/XccE2Hr9kT0aCGIExi4h/IC4ko5fn8E0xmsxBckk9XPCI?=
 =?iso-8859-1?Q?QjG24q+plTDmbvwmELFOFB2/K/IQNhpJSiC4IFjdiopD7GxCCSl8pdhnI3?=
 =?iso-8859-1?Q?CGBG5DnOVyo2ZXBPzlyWkxfcDnsdtyLxPTKvlyCA8sIfOLiuzLJqx/VqCN?=
 =?iso-8859-1?Q?Qy32eeOTD+91rX88m4OmxrDFtNW4SuZK3W62FdlFNH1Oa7/hrZz3V0eJm5?=
 =?iso-8859-1?Q?o5ZVe/tiUHmCRT5up6JcDcTnJWDCG3fZN+XO820oRMk/7QJ6JTeKRMQscn?=
 =?iso-8859-1?Q?6HBiSvjHybVrTit4VXoz0hmRtHCBrbu7CVdTdsoMfUcHN2fQaMzdm/BxNh?=
 =?iso-8859-1?Q?sRC3zqmktFgos0rbGmtbE/GsiRt6PKNPf0XLDj7H8MDAdPQnUzUyzzs+V9?=
 =?iso-8859-1?Q?84DikZ+5Ou8p9nZWFi8sBJ0mFAXRlkxIe9zPybl5NdD53X/D0XFy4Ek8u4?=
 =?iso-8859-1?Q?BOe0LG32htGdq8eKHmbV+RnVXTKwI+Vn/A9U0cUcMnu3iwsh6T49kNwvnD?=
 =?iso-8859-1?Q?26KrKTZbD6HLFb82oRBglqfXiDj5gDNXqY8r60NyU3Jsn0IsYNklcl2SqR?=
 =?iso-8859-1?Q?vA/8VRz88K2EfPVNusLWzvghCIgQj3L97HAH+Ngiv+hmYGpd3mxjPV4ivw?=
 =?iso-8859-1?Q?wtN17qEfbxKtUtM80+/Tv5fwGwIBhro/+CBbIvhG28CBUfED+K1fFqPuQb?=
 =?iso-8859-1?Q?OrkZkSVsCLvHnEu5wdoK7tIbNKCIPiz1fuNoi3ntWS1WUX3uK4DUNSOykG?=
 =?iso-8859-1?Q?jAustoKy7L31mvoD6pwdf2ZZnbtA/VuGjPBUUEEapyzW1OxpPPh/9/uHnI?=
 =?iso-8859-1?Q?pctXIVbgYVvpCVdvN9YBimjCW1LGMETHOZ8YCfrHGNAFIxXY2NoXnwTF1w?=
 =?iso-8859-1?Q?gPWSWnjq3jwERtKp87IZK1y5exhsnGEH5Y//SYUC9yqd2S1ptIs5xeFaMf?=
 =?iso-8859-1?Q?e4iUjxyEkZ09MJVOs9R1o9dx+ab20scrH7Szb9ogn+ExawHQDwJ5naA1p9?=
 =?iso-8859-1?Q?RqHHvREMYdjlINduSVarNr5l+6fSE1LowXVvFY9Xdj8Knp5RWcLbXYXO4g?=
 =?iso-8859-1?Q?HG2/xi+vWppzoU/2nGf428ODnka2XTvVhfCJku60sYBPc8rByfFmDa6SXB?=
 =?iso-8859-1?Q?gjDYoz1PUWC+1vEU8xe94JopL+vdDklvzw24CUdgKXZskWDJdoZBrmxGqw?=
 =?iso-8859-1?Q?p9tg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_3bf20205dcf66199591aa24ca289b9cfwindrivercom_"
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4633.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 8632c84a-7167-435d-1c34-08d9dede4774
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2022 02:07:31.1127
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 VctmVYZ3YV2JV03nq7ZjYqNNo609oypQrOdO9Kf1lVS25e5KKzaxI5qKmfvCA6ak6sk8HcuJsQ/0QlHtmW6Tgron2Lwl1xyW8fw6NROEHpE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2060
X-Proofpoint-GUID: ycwe4qZwazT0mwf1OrPW0B9CB1n17-B8
X-Proofpoint-ORIG-GUID: ycwe4qZwazT0mwf1OrPW0B9CB1n17-B8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-23_05,2022-01-21_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 spamscore=0 malwarescore=0 suspectscore=0 adultscore=0 mlxlogscore=999
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0 clxscore=1011
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2201240012
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Jan 2022 02:07:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55950

--_000_3bf20205dcf66199591aa24ca289b9cfwindrivercom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On 1/14/22 18:19, Julien Stephan wrote:
[Please note: This e-mail is from an EXTERNAL e-mail address]
Hi Hongxu

Did you have a chance to take a look at it?


Sorry for replying late, thanks for your contribution, merged

//Hongxu

Best
Julien

Le ven. 24 d=E9c. 2021 =E0 19:48, Randy MacLeod <randy.macleod@windriver.co=
m<mailto:randy.macleod@windriver.com>> a =E9crit :
Thanks Stephan.

Hongxu, did you miss this?

../Randy

On 2021-12-21 3:42 a.m., Julien STEPHAN wrote:
> Adding 2.6.1 tensorflow-lite recipe.
> This recipe is directly based on the corresponding 2.6.1 tensorflow
> recipe.
>
> It has been build tested with latest honister and tested on
> several mediatek soc using benchmark_model and label_image (C++ and
> python)
>
> Signed-off-by: Julien STEPHAN <jstephan@baylibre.com<mailto:jstephan@bayl=
ibre.com>>
> ---
>   .../tensorflow/tensorflow-lite_2.6.1.bb<https://urldefense.com/v3/__htt=
p://tensorflow-lite_2.6.1.bb__;!!AjveYdw8EvQ!OefygVvkNPmaP3BVhhQxru8NW9j-Gv=
UBIhd_NjvaFiUyqWtLct0UIc5WUzHnaoV9UJIs$>       | 156 ++++++++++++++++++
>   1 file changed, 156 insertions(+)
>   create mode 100644 recipes-framework/tensorflow/tensorflow-lite_2.6.1.b=
b<https://urldefense.com/v3/__http://tensorflow-lite_2.6.1.bb__;!!AjveYdw8E=
vQ!OefygVvkNPmaP3BVhhQxru8NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHnaoV9UJIs$>
>
> diff --git a/recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb<https:=
//urldefense.com/v3/__http://tensorflow-lite_2.6.1.bb__;!!AjveYdw8EvQ!Oefyg=
VvkNPmaP3BVhhQxru8NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHnaoV9UJIs$> b/recipes=
-framework/tensorflow/tensorflow-lite_2.6.1.bb<https://urldefense.com/v3/__=
http://tensorflow-lite_2.6.1.bb__;!!AjveYdw8EvQ!OefygVvkNPmaP3BVhhQxru8NW9j=
-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHnaoV9UJIs$>
> new file mode 100644
> index 0000000..104e5a3
> --- /dev/null
> +++ b/recipes-framework/tensorflow/tensorflow-lite_2.6.1.bb<https://urlde=
fense.com/v3/__http://tensorflow-lite_2.6.1.bb__;!!AjveYdw8EvQ!OefygVvkNPma=
P3BVhhQxru8NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHnaoV9UJIs$>
> @@ -0,0 +1,156 @@
> +include tensorflow.inc
> +
> +SRC_URI +=3D " \
> +           file://0001-add-yocto-toolchain-to-support-cross-compiling.pa=
tch \
> +           file://0001-fix-build-tensorflow-lite-examples-label_image-la=
bel.patch \
> +           file://0001-label_image-tweak-default-model-location.patch \
> +           file://0001-label_image.lite-tweak-default-model-location.pat=
ch \
> +           file://0001-CheckFeatureOrDie-use-warning-to-avoid-die.patch =
\
> +           file://0001-support-32-bit-x64-and-arm-for-yocto.patch \
> +           file://0001-Revert-set-distinct_host_configuration-false-by-d=
efa.patch \
> +           file://0001-fix-default-Bazel-toolchain-not-work.patch \
> +           file://0001-distutils-is-deprecated-in-Python-3.10-cross.patc=
h \
> +           file://BUILD.in \
> +           file://BUILD.yocto_compiler \
> +           file://cc_config.bzl.tpl \
> +           file://yocto_compiler_configure.bzl \
> +          "
> +
> +SRC_URI +=3D "https://storage.googleapis.com/download.tensorflow.org/mod=
els/inception_v3_2016_08_28_frozen.pb.tar.gz;name=3Dmodel-inv3<https://urld=
efense.com/v3/__https://storage.googleapis.com/download.tensorflow.org/mode=
ls/inception_v3_2016_08_28_frozen.pb.tar.gz;name=3Dmodel-inv3__;!!AjveYdw8E=
vQ!OefygVvkNPmaP3BVhhQxru8NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHnasT5egS_$>"
> +SRC_URI[model-inv3.md5sum] =3D "a904ddf15593d03c7dd786d552e22d73"
> +SRC_URI[model-inv3.sha256sum] =3D "7045b72a954af4dce36346f478610acdccbf1=
49168fa25c78e54e32f0c723d6d"
> +
> +SRC_URI +=3D "https://storage.googleapis.com/download.tensorflow.org/mod=
els/tflite/mobilenet_v1_1.0_224_quant_and_labels.zip;name=3Dmodel-mobv1<htt=
ps://urldefense.com/v3/__https://storage.googleapis.com/download.tensorflow=
.org/models/tflite/mobilenet_v1_1.0_224_quant_and_labels.zip;name=3Dmodel-m=
obv1__;!!AjveYdw8EvQ!OefygVvkNPmaP3BVhhQxru8NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc=
5WUzHnahpbuVO2$>"
> +SRC_URI[model-mobv1.md5sum] =3D "38ac0c626947875bd311ef96c8baab62"
> +SRC_URI[model-mobv1.sha256sum] =3D "2f8054076cf655e1a73778a49bd8fd0306d3=
2b290b7e576dda9574f00f186c0f"
> +
> +RDEPENDS:${PN} +=3D " \
> +    python3 \
> +    python3-core \
> +    python3-numpy \
> +"
> +
> +export PYTHON_BIN_PATH=3D"${PYTHON}"
> +export PYTHON_LIB_PATH=3D"${STAGING_LIBDIR_NATIVE}/${PYTHON_DIR}/site-pa=
ckages"
> +
> +export CROSSTOOL_PYTHON_INCLUDE_PATH=3D"${STAGING_INCDIR}/python${PYTHON=
_BASEVERSION}${PYTHON_ABI}"
> +
> +do_configure:append () {
> +    if [ ! -e ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-target.h ];then
> +        mv ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig.h ${CROSSTOOL_PYTHO=
N_INCLUDE_PATH}/pyconfig-target.h
> +    fi
> +
> +    install -m 644 ${STAGING_INCDIR_NATIVE}/python${PYTHON_BASEVERSION}$=
{PYTHON_ABI}/pyconfig.h \
> +       ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-native.h
> +
> +    cat > ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig.h <<ENDOF
> +#if defined (_PYTHON_INCLUDE_TARGET)
> +#include "pyconfig-target.h"
> +#elif defined (_PYTHON_INCLUDE_NATIVE)
> +#include "pyconfig-native.h"
> +#else
> +#error "_PYTHON_INCLUDE_TARGET or _PYTHON_INCLUDE_NATIVE is not defined"
> +#endif // End of #if defined (_PYTHON_INCLUDE_TARGET)
> +
> +ENDOF
> +
> +    mkdir -p ${S}/third_party/toolchains/yocto/
> +    sed "s#%%CPU%%#${BAZEL_TARGET_CPU}#g" ${WORKDIR}/BUILD.in  > ${S}/th=
ird_party/toolchains/yocto/BUILD
> +    chmod 644 ${S}/third_party/toolchains/yocto/BUILD
> +    install -m 644 ${WORKDIR}/cc_config.bzl.tpl ${S}/third_party/toolcha=
ins/yocto/
> +    install -m 644 ${WORKDIR}/yocto_compiler_configure.bzl ${S}/third_pa=
rty/toolchains/yocto/
> +    install -m 644 ${WORKDIR}/BUILD.yocto_compiler ${S}
> +
> +    CT_NAME=3D$(echo ${HOST_PREFIX} | rev | cut -c 2- | rev)
> +    SED_COMMAND=3D"s#%%CT_NAME%%#${CT_NAME}#g"
> +    SED_COMMAND=3D"${SED_COMMAND}; s#%%WORKDIR%%#${WORKDIR}#g"
> +    SED_COMMAND=3D"${SED_COMMAND}; s#%%YOCTO_COMPILER_PATH%%#${BAZEL_OUT=
PUTBASE_DIR}/external/yocto_compiler#g"
> +
> +    sed -i "${SED_COMMAND}" ${S}/BUILD.yocto_compiler \
> +                            ${S}/WORKSPACE
> +
> +    ${TF_CONFIG} \
> +    ./configure
> +}
> +
> +TF_TARGET_EXTRA ??=3D ""
> +
> +export CUSTOM_BAZEL_FLAGS =3D " \
> +    ${TF_ARGS_EXTRA} \
> +    --jobs=3Dauto \
> +    -c opt \
> +    --cpu=3D${BAZEL_TARGET_CPU} \
> +    --crosstool_top=3D@local_config_yocto_compiler//:toolchain \
> +    --host_crosstool_top=3D@bazel_tools//tools/cpp:toolchain \
> +"
> +
> +do_compile () {
> +    export CT_NAME=3D$(echo ${HOST_PREFIX} | rev | cut -c 2- | rev)
> +    unset CC
> +
> +    ${BAZEL} build \
> +        ${CUSTOM_BAZEL_FLAGS} \
> +        --copt -DTF_LITE_DISABLE_X86_NEON --copt -DMESA_EGL_NO_X11_HEADE=
RS \
> +        tensorflow/lite:libtensorflowlite.so \
> +        tensorflow/lite/tools/benchmark:benchmark_model \
> +        //tensorflow/lite/examples/label_image:label_image \
> +        ${TF_TARGET_EXTRA}
> +
> +    # build pip package
> +    ${S}/tensorflow/lite/tools/pip_package/build_pip_package_with_bazel.=
sh<https://urldefense.com/v3/__http://build_pip_package_with_bazel.sh__;!!A=
jveYdw8EvQ!OefygVvkNPmaP3BVhhQxru8NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHnau8o=
zYeY$>
> +
> +}
> +
> +do_install() {
> +    install -d ${D}${libdir}
> +    install -m 644 ${S}/bazel-bin/tensorflow/lite/libtensorflowlite.so<h=
ttps://urldefense.com/v3/__http://libtensorflowlite.so__;!!AjveYdw8EvQ!Oefy=
gVvkNPmaP3BVhhQxru8NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHnatMEYuz0$> \
> +        ${D}${libdir}
> +
> +    install -d ${D}${sbindir}
> +    install -m 755 ${S}/bazel-bin/tensorflow/lite/tools/benchmark/benchm=
ark_model \
> +        ${D}${sbindir}
> +
> +    install -m 755 ${S}/bazel-bin/tensorflow/lite/examples/label_image/l=
abel_image \
> +        ${D}${sbindir}/label_image
> +
> +    install -d ${D}${datadir}/label_image
> +    install -m 644 ${WORKDIR}/imagenet_slim_labels.txt ${D}${datadir}/la=
bel_image
> +    install -m 644 ${WORKDIR}/inception_v3_2016_08_28_frozen.pb \
> +        ${D}${datadir}/label_image
> +    install -m 644 ${S}/tensorflow/examples/label_image/data/grace_hoppe=
r.jpg \
> +        ${D}${datadir}/label_image
> +
> +    install -m 644 ${WORKDIR}/labels_mobilenet_quant_v1_224.txt ${D}${da=
tadir}/label_image
> +    install -m 644 ${WORKDIR}/mobilenet_v1_1.0_224_quant.tflite \
> +        ${D}${datadir}/label_image
> +    install -m 644 ${S}/tensorflow/lite/examples/label_image/testdata/gr=
ace_hopper.bmp \
> +        ${D}${datadir}/label_image
> +
> +
> +    #echo "Installing pip package"
> +    install -d ${D}/${PYTHON_SITEPACKAGES_DIR}
> +    ${STAGING_BINDIR_NATIVE}/pip3 install --disable-pip-version-check -v=
 \
> +        -t ${D}/${PYTHON_SITEPACKAGES_DIR} --no-cache-dir --no-deps \
> +        ${S}/tensorflow/lite/tools/pip_package/gen/tflite_pip/python3/di=
st/tflite_runtime-${PV}-*.whl
> +
> +}
> +
> +FILES:${PN} +=3D "${libdir} ${sbindir} ${datadir}/*"
> +INSANE_SKIP:${PN} +=3D "dev-so \
> +                      already-stripped \
> +                     "
> +
> +SOLIBS =3D ".so"
> +FILES_SOLIBSDEV =3D ""
> +ALLOW_EMPTY:${PN} =3D "1"
> +
> +FILES:${PN} +=3D "${libdir} /home/root/*"
> +
> +inherit siteinfo unsupportarch
> +python __anonymous() {
> +    if d.getVar("SITEINFO_ENDIANNESS") =3D=3D 'be':
> +        msg =3D  "\nIt failed to use pre-build model to do predict/infer=
ence on big-endian platform"
> +        msg +=3D "\n(such as qemumips), since upstream does not support =
big-endian very well."
> +        msg +=3D "\nDetails: https://github.com/tensorflow/tensorflow/is=
sues/16364<https://urldefense.com/v3/__https://github.com/tensorflow/tensor=
flow/issues/16364__;!!AjveYdw8EvQ!OefygVvkNPmaP3BVhhQxru8NW9j-GvUBIhd_NjvaF=
iUyqWtLct0UIc5WUzHnalR6VAA5$>"
> +        bb.warn(msg)
> +}
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55634): https://lists.yoctoproject.org/g/yocto/messag=
e/55634<https://urldefense.com/v3/__https://lists.yoctoproject.org/g/yocto/=
message/55634__;!!AjveYdw8EvQ!OefygVvkNPmaP3BVhhQxru8NW9j-GvUBIhd_NjvaFiUyq=
WtLct0UIc5WUzHnai4psPZ7$>
> Mute This Topic: https://lists.yoctoproject.org/mt/87873857/3616765<https=
://urldefense.com/v3/__https://lists.yoctoproject.org/mt/87873857/3616765__=
;!!AjveYdw8EvQ!OefygVvkNPmaP3BVhhQxru8NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHn=
amvPFhzF$>
> Group Owner: yocto+owner@lists.yoctoproject.org<mailto:yocto%2Bowner@list=
s.yoctoproject.org>
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub<https://urldefe=
nse.com/v3/__https://lists.yoctoproject.org/g/yocto/unsub__;!!AjveYdw8EvQ!O=
efygVvkNPmaP3BVhhQxru8NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHnahyGNgKZ$> [rand=
y.macleod@windriver.com<mailto:randy.macleod@windriver.com>]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--
# Randy MacLeod
# Wind River Linux



--_000_3bf20205dcf66199591aa24ca289b9cfwindrivercom_
Content-Type: text/html; charset="iso-8859-1"
Content-ID: 
 <642D44CE480D674E9F10AD81D6987763@windriversystems.onmicrosoft.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"moz-cite-prefix">On 1/14/22 18:19, Julien Stephan wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"border:solid #9C6500 1.0pt; padding:2.0pt 2.0pt 2.0pt=0A=
        2.0pt">
<p class=3D"MsoNormal" style=3D"line-height:12.0pt; background:#FFEB9C"><b>=
<span style=3D"font-size:10.0pt; color:#9C6500"></span></b><span style=3D"f=
ont-size:10.0pt; color:red">[Please note: This e-mail is from an EXTERNAL e=
-mail address]</span></p>
</div>
<div>
<div dir=3D"ltr">
<div>Hi Hongxu</div>
<div><br>
</div>
<div>Did you have a chance to take a look at it? <br>
</div>
<div><br>
</div>
</div>
</div>
</blockquote>
<p>Sorry for replying late, thanks for your contribution, merged</p>
<p>//Hongxu<br>
</p>
<blockquote type=3D"cite">
<div>
<div dir=3D"ltr">
<div></div>
<div>Best</div>
<div>Julien<br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">Le&nbsp;ven. 24 d=E9c. 2021 =E0&nbsp;=
19:48, Randy MacLeod &lt;<a href=3D"mailto:randy.macleod@windriver.com" cla=
ss=3D"moz-txt-link-freetext">randy.macleod@windriver.com</a>&gt; a =E9crit&=
nbsp;:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=0A=
            0.8ex; border-left:1px solid=0A=
            rgb(204,204,204); padding-left:1ex">
Thanks Stephan.<br>
<br>
Hongxu, did you miss this?<br>
<br>
../Randy<br>
<br>
On 2021-12-21 3:42 a.m., Julien STEPHAN wrote:<br>
&gt; Adding 2.6.1 tensorflow-lite recipe.<br>
&gt; This recipe is directly based on the corresponding 2.6.1 tensorflow<br=
>
&gt; recipe.<br>
&gt; <br>
&gt; It has been build tested with latest honister and tested on<br>
&gt; several mediatek soc using benchmark_model and label_image (C++ and<br=
>
&gt; python)<br>
&gt; <br>
&gt; Signed-off-by: Julien STEPHAN &lt;<a href=3D"mailto:jstephan@baylibre.=
com" target=3D"_blank" class=3D"moz-txt-link-freetext">jstephan@baylibre.co=
m</a>&gt;<br>
&gt; ---<br>
&gt;&nbsp; &nbsp;.../tensorflow/<a href=3D"https://urldefense.com/v3/__http=
://tensorflow-lite_2.6.1.bb__;!!AjveYdw8EvQ!OefygVvkNPmaP3BVhhQxru8NW9j-GvU=
BIhd_NjvaFiUyqWtLct0UIc5WUzHnaoV9UJIs$" rel=3D"noreferrer" target=3D"_blank=
">tensorflow-lite_2.6.1.bb</a>&nbsp; &nbsp; &nbsp; &nbsp;| 156 ++++++++++++=
++++++<br>
&gt;&nbsp; &nbsp;1 file changed, 156 insertions(+)<br>
&gt;&nbsp; &nbsp;create mode 100644 recipes-framework/tensorflow/<a href=3D=
"https://urldefense.com/v3/__http://tensorflow-lite_2.6.1.bb__;!!AjveYdw8Ev=
Q!OefygVvkNPmaP3BVhhQxru8NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHnaoV9UJIs$" re=
l=3D"noreferrer" target=3D"_blank">tensorflow-lite_2.6.1.bb</a><br>
&gt; <br>
&gt; diff --git a/recipes-framework/tensorflow/<a href=3D"https://urldefens=
e.com/v3/__http://tensorflow-lite_2.6.1.bb__;!!AjveYdw8EvQ!OefygVvkNPmaP3BV=
hhQxru8NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHnaoV9UJIs$" rel=3D"noreferrer" t=
arget=3D"_blank">tensorflow-lite_2.6.1.bb</a>
 b/recipes-framework/tensorflow/<a href=3D"https://urldefense.com/v3/__http=
://tensorflow-lite_2.6.1.bb__;!!AjveYdw8EvQ!OefygVvkNPmaP3BVhhQxru8NW9j-GvU=
BIhd_NjvaFiUyqWtLct0UIc5WUzHnaoV9UJIs$" rel=3D"noreferrer" target=3D"_blank=
">tensorflow-lite_2.6.1.bb</a><br>
&gt; new file mode 100644<br>
&gt; index 0000000..104e5a3<br>
&gt; --- /dev/null<br>
&gt; +++ b/recipes-framework/tensorflow/<a href=3D"https://urldefense.com/v=
3/__http://tensorflow-lite_2.6.1.bb__;!!AjveYdw8EvQ!OefygVvkNPmaP3BVhhQxru8=
NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHnaoV9UJIs$" rel=3D"noreferrer" target=
=3D"_blank">tensorflow-lite_2.6.1.bb</a><br>
&gt; @@ -0,0 +1,156 @@<br>
&gt; +include tensorflow.inc<br>
&gt; +<br>
&gt; +SRC_URI +=3D &quot; \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a class=3D"moz-txt-link-fre=
etext" href=3D"file://0001-add-yocto-toolchain-to-support-cross-compiling.p=
atch">file://0001-add-yocto-toolchain-to-support-cross-compiling.patch</a> =
\<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a class=3D"moz-txt-link-fre=
etext" href=3D"file://0001-fix-build-tensorflow-lite-examples-label_image-l=
abel.patch">file://0001-fix-build-tensorflow-lite-examples-label_image-labe=
l.patch</a> \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a class=3D"moz-txt-link-fre=
etext" href=3D"file://0001-label_image-tweak-default-model-location.patch">=
file://0001-label_image-tweak-default-model-location.patch</a> \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a class=3D"moz-txt-link-fre=
etext" href=3D"file://0001-label_image.lite-tweak-default-model-location.pa=
tch">file://0001-label_image.lite-tweak-default-model-location.patch</a> \<=
br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a class=3D"moz-txt-link-fre=
etext" href=3D"file://0001-CheckFeatureOrDie-use-warning-to-avoid-die.patch=
">file://0001-CheckFeatureOrDie-use-warning-to-avoid-die.patch</a> \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a class=3D"moz-txt-link-fre=
etext" href=3D"file://0001-support-32-bit-x64-and-arm-for-yocto.patch">file=
://0001-support-32-bit-x64-and-arm-for-yocto.patch</a> \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a class=3D"moz-txt-link-fre=
etext" href=3D"file://0001-Revert-set-distinct_host_configuration-false-by-=
defa.patch">file://0001-Revert-set-distinct_host_configuration-false-by-def=
a.patch</a> \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a class=3D"moz-txt-link-fre=
etext" href=3D"file://0001-fix-default-Bazel-toolchain-not-work.patch">file=
://0001-fix-default-Bazel-toolchain-not-work.patch</a> \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a class=3D"moz-txt-link-fre=
etext" href=3D"file://0001-distutils-is-deprecated-in-Python-3.10-cross.pat=
ch">file://0001-distutils-is-deprecated-in-Python-3.10-cross.patch</a> \<br=
>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a class=3D"moz-txt-link-fre=
etext" href=3D"file://BUILD.in">file://BUILD.in</a> \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a class=3D"moz-txt-link-fre=
etext" href=3D"file://BUILD.yocto_compiler">file://BUILD.yocto_compiler</a>=
 \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a class=3D"moz-txt-link-fre=
etext" href=3D"file://cc_config.bzl.tpl">file://cc_config.bzl.tpl</a> \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a class=3D"moz-txt-link-fre=
etext" href=3D"file://yocto_compiler_configure.bzl">file://yocto_compiler_c=
onfigure.bzl</a> \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;<br>
&gt; +<br>
&gt; +SRC_URI +=3D &quot;<a href=3D"https://urldefense.com/v3/__https://sto=
rage.googleapis.com/download.tensorflow.org/models/inception_v3_2016_08_28_=
frozen.pb.tar.gz;name=3Dmodel-inv3__;!!AjveYdw8EvQ!OefygVvkNPmaP3BVhhQxru8N=
W9j-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHnasT5egS_$" rel=3D"noreferrer" target=3D=
"_blank">https://storage.googleapis.com/download.tensorflow.org/models/ince=
ption_v3_2016_08_28_frozen.pb.tar.gz;name=3Dmodel-inv3</a>&quot;<br>
&gt; +SRC_URI[model-inv3.md5sum] =3D &quot;a904ddf15593d03c7dd786d552e22d73=
&quot;<br>
&gt; +SRC_URI[model-inv3.sha256sum] =3D &quot;7045b72a954af4dce36346f478610=
acdccbf149168fa25c78e54e32f0c723d6d&quot;<br>
&gt; +<br>
&gt; +SRC_URI +=3D &quot;<a href=3D"https://urldefense.com/v3/__https://sto=
rage.googleapis.com/download.tensorflow.org/models/tflite/mobilenet_v1_1.0_=
224_quant_and_labels.zip;name=3Dmodel-mobv1__;!!AjveYdw8EvQ!OefygVvkNPmaP3B=
VhhQxru8NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHnahpbuVO2$" rel=3D"noreferrer" =
target=3D"_blank">https://storage.googleapis.com/download.tensorflow.org/mo=
dels/tflite/mobilenet_v1_1.0_224_quant_and_labels.zip;name=3Dmodel-mobv1</a=
>&quot;<br>
&gt; +SRC_URI[model-mobv1.md5sum] =3D &quot;38ac0c626947875bd311ef96c8baab6=
2&quot;<br>
&gt; +SRC_URI[model-mobv1.sha256sum] =3D &quot;2f8054076cf655e1a73778a49bd8=
fd0306d32b290b7e576dda9574f00f186c0f&quot;<br>
&gt; +<br>
&gt; +RDEPENDS:${PN} +=3D &quot; \<br>
&gt; +&nbsp; &nbsp; python3 \<br>
&gt; +&nbsp; &nbsp; python3-core \<br>
&gt; +&nbsp; &nbsp; python3-numpy \<br>
&gt; +&quot;<br>
&gt; +<br>
&gt; +export PYTHON_BIN_PATH=3D&quot;${PYTHON}&quot;<br>
&gt; +export PYTHON_LIB_PATH=3D&quot;${STAGING_LIBDIR_NATIVE}/${PYTHON_DIR}=
/site-packages&quot;<br>
&gt; +<br>
&gt; +export CROSSTOOL_PYTHON_INCLUDE_PATH=3D&quot;${STAGING_INCDIR}/python=
${PYTHON_BASEVERSION}${PYTHON_ABI}&quot;<br>
&gt; +<br>
&gt; +do_configure:append () {<br>
&gt; +&nbsp; &nbsp; if [ ! -e ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-tar=
get.h ];then<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; mv ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pycon=
fig.h ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-target.h<br>
&gt; +&nbsp; &nbsp; fi<br>
&gt; +<br>
&gt; +&nbsp; &nbsp; install -m 644 ${STAGING_INCDIR_NATIVE}/python${PYTHON_=
BASEVERSION}${PYTHON_ABI}/pyconfig.h \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp;${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-=
native.h<br>
&gt; +<br>
&gt; +&nbsp; &nbsp; cat &gt; ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig.h &l=
t;&lt;ENDOF<br>
&gt; +#if defined (_PYTHON_INCLUDE_TARGET)<br>
&gt; +#include &quot;pyconfig-target.h&quot;<br>
&gt; +#elif defined (_PYTHON_INCLUDE_NATIVE)<br>
&gt; +#include &quot;pyconfig-native.h&quot;<br>
&gt; +#else<br>
&gt; +#error &quot;_PYTHON_INCLUDE_TARGET or _PYTHON_INCLUDE_NATIVE is not =
defined&quot;<br>
&gt; +#endif // End of #if defined (_PYTHON_INCLUDE_TARGET)<br>
&gt; +<br>
&gt; +ENDOF<br>
&gt; +<br>
&gt; +&nbsp; &nbsp; mkdir -p ${S}/third_party/toolchains/yocto/<br>
&gt; +&nbsp; &nbsp; sed &quot;s#%%CPU%%#${BAZEL_TARGET_CPU}#g&quot; ${WORKD=
IR}/BUILD.in&nbsp; &gt; ${S}/third_party/toolchains/yocto/BUILD<br>
&gt; +&nbsp; &nbsp; chmod 644 ${S}/third_party/toolchains/yocto/BUILD<br>
&gt; +&nbsp; &nbsp; install -m 644 ${WORKDIR}/cc_config.bzl.tpl ${S}/third_=
party/toolchains/yocto/<br>
&gt; +&nbsp; &nbsp; install -m 644 ${WORKDIR}/yocto_compiler_configure.bzl =
${S}/third_party/toolchains/yocto/<br>
&gt; +&nbsp; &nbsp; install -m 644 ${WORKDIR}/BUILD.yocto_compiler ${S}<br>
&gt; +<br>
&gt; +&nbsp; &nbsp; CT_NAME=3D$(echo ${HOST_PREFIX} | rev | cut -c 2- | rev=
)<br>
&gt; +&nbsp; &nbsp; SED_COMMAND=3D&quot;s#%%CT_NAME%%#${CT_NAME}#g&quot;<br=
>
&gt; +&nbsp; &nbsp; SED_COMMAND=3D&quot;${SED_COMMAND}; s#%%WORKDIR%%#${WOR=
KDIR}#g&quot;<br>
&gt; +&nbsp; &nbsp; SED_COMMAND=3D&quot;${SED_COMMAND}; s#%%YOCTO_COMPILER_=
PATH%%#${BAZEL_OUTPUTBASE_DIR}/external/yocto_compiler#g&quot;<br>
&gt; +<br>
&gt; +&nbsp; &nbsp; sed -i &quot;${SED_COMMAND}&quot; ${S}/BUILD.yocto_comp=
iler \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; ${S}/WORKSPACE<br>
&gt; +<br>
&gt; +&nbsp; &nbsp; ${TF_CONFIG} \<br>
&gt; +&nbsp; &nbsp; ./configure<br>
&gt; +}<br>
&gt; +<br>
&gt; +TF_TARGET_EXTRA ??=3D &quot;&quot;<br>
&gt; +<br>
&gt; +export CUSTOM_BAZEL_FLAGS =3D &quot; \<br>
&gt; +&nbsp; &nbsp; ${TF_ARGS_EXTRA} \<br>
&gt; +&nbsp; &nbsp; --jobs=3Dauto \<br>
&gt; +&nbsp; &nbsp; -c opt \<br>
&gt; +&nbsp; &nbsp; --cpu=3D${BAZEL_TARGET_CPU} \<br>
&gt; +&nbsp; &nbsp; --crosstool_top=3D@local_config_yocto_compiler//:toolch=
ain \<br>
&gt; +&nbsp; &nbsp; --host_crosstool_top=3D@bazel_tools//tools/cpp:toolchai=
n \<br>
&gt; +&quot;<br>
&gt; +<br>
&gt; +do_compile () {<br>
&gt; +&nbsp; &nbsp; export CT_NAME=3D$(echo ${HOST_PREFIX} | rev | cut -c 2=
- | rev)<br>
&gt; +&nbsp; &nbsp; unset CC<br>
&gt; +<br>
&gt; +&nbsp; &nbsp; ${BAZEL} build \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; ${CUSTOM_BAZEL_FLAGS} \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; --copt -DTF_LITE_DISABLE_X86_NEON --copt =
-DMESA_EGL_NO_X11_HEADERS \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; tensorflow/lite:libtensorflowlite.so \<br=
>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; tensorflow/lite/tools/benchmark:benchmark=
_model \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; //tensorflow/lite/examples/label_image:la=
bel_image \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; ${TF_TARGET_EXTRA}<br>
&gt; +<br>
&gt; +&nbsp; &nbsp; # build pip package<br>
&gt; +&nbsp; &nbsp; ${S}/tensorflow/lite/tools/pip_package/<a href=3D"https=
://urldefense.com/v3/__http://build_pip_package_with_bazel.sh__;!!AjveYdw8E=
vQ!OefygVvkNPmaP3BVhhQxru8NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHnau8ozYeY$">b=
uild_pip_package_with_bazel.sh</a><br>
&gt; +<br>
&gt; +}<br>
&gt; +<br>
&gt; +do_install() {<br>
&gt; +&nbsp; &nbsp; install -d ${D}${libdir}<br>
&gt; +&nbsp; &nbsp; install -m 644 ${S}/bazel-bin/tensorflow/lite/<a href=
=3D"https://urldefense.com/v3/__http://libtensorflowlite.so__;!!AjveYdw8EvQ=
!OefygVvkNPmaP3BVhhQxru8NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHnatMEYuz0$">lib=
tensorflowlite.so</a> \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; ${D}${libdir}<br>
&gt; +<br>
&gt; +&nbsp; &nbsp; install -d ${D}${sbindir}<br>
&gt; +&nbsp; &nbsp; install -m 755 ${S}/bazel-bin/tensorflow/lite/tools/ben=
chmark/benchmark_model \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; ${D}${sbindir}<br>
&gt; +<br>
&gt; +&nbsp; &nbsp; install -m 755 ${S}/bazel-bin/tensorflow/lite/examples/=
label_image/label_image \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; ${D}${sbindir}/label_image<br>
&gt; +<br>
&gt; +&nbsp; &nbsp; install -d ${D}${datadir}/label_image<br>
&gt; +&nbsp; &nbsp; install -m 644 ${WORKDIR}/imagenet_slim_labels.txt ${D}=
${datadir}/label_image<br>
&gt; +&nbsp; &nbsp; install -m 644 ${WORKDIR}/inception_v3_2016_08_28_froze=
n.pb \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; ${D}${datadir}/label_image<br>
&gt; +&nbsp; &nbsp; install -m 644 ${S}/tensorflow/examples/label_image/dat=
a/grace_hopper.jpg \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; ${D}${datadir}/label_image<br>
&gt; +<br>
&gt; +&nbsp; &nbsp; install -m 644 ${WORKDIR}/labels_mobilenet_quant_v1_224=
.txt ${D}${datadir}/label_image<br>
&gt; +&nbsp; &nbsp; install -m 644 ${WORKDIR}/mobilenet_v1_1.0_224_quant.tf=
lite \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; ${D}${datadir}/label_image<br>
&gt; +&nbsp; &nbsp; install -m 644 ${S}/tensorflow/lite/examples/label_imag=
e/testdata/grace_hopper.bmp \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; ${D}${datadir}/label_image<br>
&gt; +<br>
&gt; +<br>
&gt; +&nbsp; &nbsp; #echo &quot;Installing pip package&quot;<br>
&gt; +&nbsp; &nbsp; install -d ${D}/${PYTHON_SITEPACKAGES_DIR}<br>
&gt; +&nbsp; &nbsp; ${STAGING_BINDIR_NATIVE}/pip3 install --disable-pip-ver=
sion-check -v \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; -t ${D}/${PYTHON_SITEPACKAGES_DIR} --no-c=
ache-dir --no-deps \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; ${S}/tensorflow/lite/tools/pip_package/ge=
n/tflite_pip/python3/dist/tflite_runtime-${PV}-*.whl<br>
&gt; +<br>
&gt; +}<br>
&gt; +<br>
&gt; +FILES:${PN} +=3D &quot;${libdir} ${sbindir} ${datadir}/*&quot;<br>
&gt; +INSANE_SKIP:${PN} +=3D &quot;dev-so \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; already-stripped \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;&quot;<br>
&gt; +<br>
&gt; +SOLIBS =3D &quot;.so&quot;<br>
&gt; +FILES_SOLIBSDEV =3D &quot;&quot;<br>
&gt; +ALLOW_EMPTY:${PN} =3D &quot;1&quot;<br>
&gt; +<br>
&gt; +FILES:${PN} +=3D &quot;${libdir} /home/root/*&quot;<br>
&gt; +<br>
&gt; +inherit siteinfo unsupportarch<br>
&gt; +python __anonymous() {<br>
&gt; +&nbsp; &nbsp; if d.getVar(&quot;SITEINFO_ENDIANNESS&quot;) =3D=3D 'be=
':<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; msg =3D&nbsp; &quot;\nIt failed to use pr=
e-build model to do predict/inference on big-endian platform&quot;<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; msg +=3D &quot;\n(such as qemumips), sinc=
e upstream does not support big-endian very well.&quot;<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; msg +=3D &quot;\nDetails: <a href=3D"http=
s://urldefense.com/v3/__https://github.com/tensorflow/tensorflow/issues/163=
64__;!!AjveYdw8EvQ!OefygVvkNPmaP3BVhhQxru8NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc5W=
UzHnalR6VAA5$" rel=3D"noreferrer" target=3D"_blank">
https://github.com/tensorflow/tensorflow/issues/16364</a>&quot;<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; bb.warn(msg)<br>
&gt; +}<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#55634): <a href=3D"https://urldefense.com/v3/__htt=
ps://lists.yoctoproject.org/g/yocto/message/55634__;!!AjveYdw8EvQ!OefygVvkN=
PmaP3BVhhQxru8NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHnai4psPZ7$" rel=3D"norefe=
rrer" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/message/55634</a><br>
&gt; Mute This Topic: <a href=3D"https://urldefense.com/v3/__https://lists.=
yoctoproject.org/mt/87873857/3616765__;!!AjveYdw8EvQ!OefygVvkNPmaP3BVhhQxru=
8NW9j-GvUBIhd_NjvaFiUyqWtLct0UIc5WUzHnamvPFhzF$" rel=3D"noreferrer" target=
=3D"_blank">
https://lists.yoctoproject.org/mt/87873857/3616765</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">
yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://urldefense.com/v3/__https://lists.yoct=
oproject.org/g/yocto/unsub__;!!AjveYdw8EvQ!OefygVvkNPmaP3BVhhQxru8NW9j-GvUB=
Ihd_NjvaFiUyqWtLct0UIc5WUzHnahyGNgKZ$" rel=3D"noreferrer" target=3D"_blank"=
>
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:randy.m=
acleod@windriver.com" target=3D"_blank" class=3D"moz-txt-link-freetext">ran=
dy.macleod@windriver.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; <br>
<br>
<br>
-- <br>
# Randy MacLeod<br>
# Wind River Linux<br>
<br>
</blockquote>
</div>
</div>
</blockquote>
<p><br>
</p>
</body>
</html>

--_000_3bf20205dcf66199591aa24ca289b9cfwindrivercom_--

