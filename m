Return-Path: <jonathan.vervaeke@basalte.be>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43B0AE00756; Mon, 19 Sep 2016 15:30:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.113 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 28642 seconds by postgrey-1.32 at yocto-www;
	Mon, 19 Sep 2016 15:30:42 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0113.outbound.protection.outlook.com [104.47.2.113])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1FD5E00724
	for <yocto@yoctoproject.org>; Mon, 19 Sep 2016 15:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=basalte.onmicrosoft.com; s=selector1-basalte-be;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=RmD8oV1YKUVW+0LQyb/99ifiXFbr5O4GTCOjNzMEB7U=;
	b=Yrms2mKMYc/R+sOHBb6TUNWsEBKPz30BKkpGNImpJiRA4PLrq9n9s+eOrux5WVtSiXIOtghkDnMrv0DBYa7qAe/Hgd3K8YmJSWRzCmDwO8/cCJNqiGaH7yM/SceisaR7gGdxP/Ri6yjXU4whOItM4eRl/dLY958eMnUyndsBTF8=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=jonathan.vervaeke@basalte.be; 
Received: from [10.0.11.100] (213.119.96.58) by
	HE1PR0401MB1708.eurprd04.prod.outlook.com (10.169.118.26) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.639.2; Mon, 19 Sep 2016 10:01:40 +0000
To: <yocto@yoctoproject.org>
From: Jonathan Vervaeke <jonathan.vervaeke@basalte.be>
Message-ID: <8cfd94f9-00a0-7c26-a7d9-8e84c53cf8b3@basalte.be>
Date: Mon, 19 Sep 2016 12:01:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
X-Originating-IP: [213.119.96.58]
X-ClientProxiedBy: DB5PR0401CA0004.eurprd04.prod.outlook.com (10.164.176.142)
	To HE1PR0401MB1708.eurprd04.prod.outlook.com (10.169.118.26)
X-MS-Office365-Filtering-Correlation-Id: d838f532-7f14-495f-c2b8-08d3e073f3f5
X-Microsoft-Exchange-Diagnostics: 1; HE1PR0401MB1708;
	2:Xb11/CTdGjqhSStHvLveEFb0m57+pXLQGiSiaaefzddHxXAPpEqYc8i/S0Z5vjlnzG+yC8VPkJjUSOErDMrigtJaSoxwr8kzirZpSsYK8Mu0Ded+ByEGqK+Q+ek9CM3pEegPc+pZqd6OEPl/f6mdW2b559xiWoUq0r3nXNEWmXsMokCO9I9eI1D/U5pVyhaH;
	3:A+iTtkVt/jtNY1JJqlhk5Zt28QWSA8+pfPQSvotpm4/wplrw4k1xM/rYcPrAVAr6IuvIsabyApDEa31zLfTodJ+FyZFpEa2zl+6YT9W4HibbJ8R5KGI0RfBmFqYe3YQt;
	25:SN68kOh/TVoy+roOtZHZ/MYtE6IhFJN13W+auJbMpKkUx44JxO6xomADhH1fQH50Azr1hWSmGLS01+tP/VOZf6SeTXXEuxu/Mu4g0vVUryidWkrON8fuwY7hiyaVeYTHKfTMaxufAdqh42yvhSh4x9+IwC5KLfD45m397zJoXOr+Lel57HPMIs6S0l5AXardMQypdRn7cfOErTzMRLCDiRKASmu3dgzFCjTvlXo3S36MXugPKugF/kX1kzZ+NaPF289djxRBYvz4nks/mBY8G7Y0/ViQEXuJWDcwZCIuWYZVr1sDqROXHtqHuNpdIFL+OgapC53QXhY4cjwRI+EwXZDtQXBvuvsEq9zl9yYlEzRGd22+K6XTj49LEHul09oaxg5VsCfuQOABboGuAINHG7Kz/J1eipxRLBR2s55W9AI=
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:HE1PR0401MB1708;
X-Microsoft-Exchange-Diagnostics: 1; HE1PR0401MB1708;
	31:5Q8+dU2SEf0rbLI3ktrzn+inttzonZMKiwkzwO5DZrT4FTKkI8A3L3NRTVkFY8AFNTBgNXFQ61qtoGtyvmxBhQbDBRTg802Uk3Z4PO/geIXXnaxmOPQYc9AHFoJDFFjRhchYncBNEbrwnW80VM1OHXCNOqc8fi+rnNH0gR2Y2dIxWXg3MTUw7JBoXCFnnJ+3F4rPKlFROu8+xx34PUchxRRS9CRDnwoQDqWxQlJkID4=;
	4:OhbD+56yJuFAoO9z9G1+1BZ8KvuLEAH7zpkqXbIVj0itrB+j1sb0h8fT2by9TGCJd1Rlhy6ukdFjbK5hOKG52yYlbYiGS2w5+4gvvUc70OLaaZ42OHhhr2h+RJC+qu7/cQn/On+pzTrkj1yChBILufZE+ZkM+b5k/hcmw7xa10YxGYbn4tD+JOqq70MHrAEsQi39vYeNekSOFoeI5sDevIBZ25rHcE0dWBOIClmy63ahK5MwiP+RdTXXKg1UgOVRh3qk+1+wmGEbUChIw97pNntSBqVoDG6tt67SaHMjl8+tf5kwiTqH3Nc8Y8mDZTDQUhsdG4BqUyi9b11AjSPXpM/+ZCMdk7vQLYGcBlh499uU6lzARGlj8J8ieo2oT2TWwVf8Mqg3Qa/m7AYTxQRTx9dV5xuXNztIuQTjFRu27UM=
X-Microsoft-Antispam-PRVS: <HE1PR0401MB1708E1DFF29E499413A479E295F40@HE1PR0401MB1708.eurprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6043046)(6042046);
	SRVR:HE1PR0401MB1708; BCL:0; PCL:0; RULEID:;
	SRVR:HE1PR0401MB1708; 
X-Forefront-PRVS: 0070A8666B
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6049001)(6009001)(7916002)(199003)(189002)(6116002)(3846002)(101416001)(450100001)(7116003)(7846002)(5660300001)(33646002)(586003)(77096005)(8676002)(270700001)(54356999)(50986999)(31696002)(81166006)(36756003)(81156014)(64126003)(2906002)(512874002)(110136003)(86362001)(2351001)(16236675004)(221733001)(84326002)(3480700004)(42186005)(31686004)(4001350100001)(83506001)(106356001)(92566002)(65826007)(7736002)(107886002)(229853001)(68736007)(65806001)(105586002)(66066001)(65956001)(97736004)(189998001)(74482002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0401MB1708; H:[10.0.11.100];
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: basalte.be does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; HE1PR0401MB1708;
	23:nt9ljbmtoD6u5LCmA31SEDzeD6mEbd5BaDPNJF5?=
	=?us-ascii?Q?6csgHmhe/+CWs7UlqmsH0PQ9Rwe3GedmkwxJFz/yXQGimPid2m1TPw5ycidd?=
	=?us-ascii?Q?4+EeE970p5eAcoYF/aBXAtHE0kixTPdH8oEYZvnPeqQLZxsHroH+ioQv6H0m?=
	=?us-ascii?Q?qBFaZabvgZnbS8yhApfxtB/FcU0sMPEksCQ3bfz6pMKsVO8FISCB22VWuB+w?=
	=?us-ascii?Q?9xW6dphm1jJdi8Apm4Dgq5ngSJ1RTHudydpUSEkn3tYjKDA9+qD1J2QLdDV7?=
	=?us-ascii?Q?Gg93r6csoTIji6B7DdSvQPAefoSs3TZS3BRdTe73GTT9847272grxGr+ET0i?=
	=?us-ascii?Q?v2HIiQCgOSKit0RsR8yWdxQdNVt7ceImzfYftymvzgmRAt61VrX1sMOBsm9l?=
	=?us-ascii?Q?m3nC5Bjg1atguHIrhi/NZstvLe5RToI6nhdywpV+qt1Sr8ARXbkyJ8lXe3DO?=
	=?us-ascii?Q?T8UCplnRBe+/ycxZsUWJHGV/Anw5YULUPN92LT+7INMd6bDsvcR9vVmxnDmC?=
	=?us-ascii?Q?wkxkOPFjQSFzNG4gxfJv6UAinHnAr+Hld5iA+LNiAjHMD0Zes8lRvFwK355b?=
	=?us-ascii?Q?XNK5HUFFGUvFaK4dAH0yVNVcwOGsRaFluVCRNfY2Us7SlzELB/jh1rHyFSOa?=
	=?us-ascii?Q?6xJDLjjyDfNwXb0X3TfnDJmGqLkxxviw4y+9t+hR0/EOxhuyosWXrLsQwC/i?=
	=?us-ascii?Q?vv9AlWgU3Al0qjltbKrUH6DpdzqFruCScaS54Cqd2dyYc2MUTBiXnqxshm+4?=
	=?us-ascii?Q?s6sf8DRhec8mTqglCghtCiPqYtmfynp1efp+UG451Q6SuMo3YPiwgrzPUS47?=
	=?us-ascii?Q?e+D9lGdVhKvL0q3hRD49KjZbAkxmXfCt5CJB6lMxdjTD6+TY4AMbBzHqu5bE?=
	=?us-ascii?Q?oqel1KKe52xPp7K9lyXryBXD57mzwzTd4jfWYv7i669BRsVVY1agpuuEuULl?=
	=?us-ascii?Q?u38alRv5Tw92rpq0fDtr66/44eKRphpgm/SjPr8hShZ5FzK4m2bvqTZxHOwC?=
	=?us-ascii?Q?a6G1+JD5QZB4EECKo3AyPkmo9rZI9mOiIxmnZB6J+dWyubZZDRhJoS77ElV1?=
	=?us-ascii?Q?F8bAvV62M8BVWLk6BD8WJFarqWs7udXw6NZ+bPGYD89mzAp5lhsIl8nLYV66?=
	=?us-ascii?Q?oPz5SdAwXZgqmciwKs2z7v3IOxkNGHGWzAce0/clGELSQvYzl5A48UGxKByF?=
	=?us-ascii?Q?JdKb+kE1Zc/sVoV+Qh9Pf7RuJ5KqECTx8oK9WaU5B3mxh+7Anl7wUWYDDzWK?=
	=?us-ascii?Q?gFFuKI0AaLAiS2cHtr/ZGzw0ce8oFgumVThM0OyRosEaMVktwnBgWeFCq5pF?=
	=?us-ascii?Q?OfQ=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; HE1PR0401MB1708;
	6:Dkuicr5T3NHXb1d5egzuAVb1KBL8h3u7wyYu6Rs0mAZ5AICNiVmDvWiyDnEBne1fpMu9+UdhyW8kjdzG0bkhzf3U4I3FOyY5iKF9B3KNs1rESB5xr90zNqbqe2yenWM8w6sVmmtPJwnan/RpbXXo7rVGf5gnediBfw4f+vS7k1xdejeHBLjfDr1XqGGaSyZgf4myTcdEaebD+7tgsMw/oMwuTA+l3JrQXBMuj4OXOycsDdHtmkVAVdYQ96c0jVGS1Jk6JJo45qreaKrhH2cib/gTlp8GB8aFS1FMOskOhqaTdSPup4IE6iPksI5fXP6k;
	5:Ux50wORicSW0C2rw7qWzuey+klAwhLxBaMdA6PZq4kiugOvZMzYBt0aiyhHcEehW3L9wTX/cDKlNh2GoFvKE3yuyiPkBXbeCTEoKfqCNzhGSquQ5vcBX5Q4BiOx3qSRpe4DWxFIdcenO3QZy9oBf3A==;
	24:cVWmr2oTBU3OCX3P5KvqIcgf5q/egiuBDdAwIKaYD86FVEbMP0sxMlqjWYTrq+Heprph9uaU6ur/3kMJfCM6F02eNys0rxAZTokKRoYYxhU=;
	7:dyZMpMjlmGs4XgBanEv3LbZqv/l53Ls/aDZ7adYSoAJUkRE9OI/CTx7YH8fCiQXh2rURmnptO7LciB7DDwjYFahtVuWxBJLl2Fv6NH4DcUgV7gvMjh4GQDliaPdRxVVBrB3O4Hiu9NhcnaiwPKYyv1bYel72q1Uz3bp/BvYwkmboA6fVzr24f5+eb1mHpkQ76D5RNgVFHjD9LhrGOIaEFOHuHfr5Ow7TYrAEtiIAtj9aJzsMy0sL/q4TQ2haPigYPyBSWkVerkBwt7h9yDlXOSmBSoYmg87rs3P5BlOzGPhoCfVXsM59EGT7MsaeP9Vt
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: basalte.be
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2016 10:01:40.5580 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0401MB1708
X-Mailman-Approved-At: Wed, 21 Sep 2016 07:54:27 -0700
Subject: FrameBuffer support
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 19 Sep 2016 22:30:48 -0000
Content-Type: multipart/alternative;
	boundary="------------E5EEC648A544F3EA5B630824"

--------------E5EEC648A544F3EA5B630824
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to make framebuffers work on imx6(ul) using yocto.

I suppose I need to make changes in the following:

1) Kernel modules

2) Device tree

3) U-Boot bootargs

I've build my kernel with the following modules


********************************************

FB_TFT=y

CONFIG_FB_TFT_ILI9325=m

********************************************


I added the following to the device tree

********************************************

/ {
      itdb28 {
         compatible = "ilitek,ili9325";
         status = "okay";

         rotate = <0>;
         bgr;
         buswidth = <8>;
         reset-gpios = <&gpio3 23 0>;
         dc-gpios = <&gpio3  5 0>;
         cs-gpios = <&gpio3  1 0>;
         wr-gpios = <&gpio3  0 0>;
         db-gpios = <&gpio3  7 0>,
                <&gpio3  8 0>,
                <&gpio3  9 0>,
                <&gpio3 10 0>,
                <&gpio3 11 0>,
                <&gpio3 15 0>,
                <&gpio3 16 0>,
                <&gpio3 17 0>;
         /* LED pin drives backlight directly. Use transistor (50mA) */
         /* led-gpios = <&gpio 4 1>; */
         debug = <7>;
     };


     framebuffer {
         compatible = "simple-framebuffer";
         reg = <0x1d385000 (240 * 320 * 2)>;
         width = <240>;
         height = <320>;
         stride = <(240 * 2)>;
         format = "r5g6b5";
     };
};

********************************************


When I boot, I get the following error:

********************************************

Error opening /dev/fb0: No such file or directory

********************************************


Did I forget something or is there a decent manual available?

Thanks!

Jonathan.


--------------E5EEC648A544F3EA5B630824
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
    </p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">Hi,</p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); min-height: 8pt;"> </p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">I'm trying to make framebuffers work on imx6(ul) using
      yocto.<br>
    </p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); min-height: 8pt;"> </p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">I suppose I need to make changes in the following:</p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">1) Kernel modules</p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">2) Device tree</p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">3) U-Boot bootargs</p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); min-height: 8pt;"> </p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">I've build my kernel with the following modules</p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);"><br>
    </p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">********************************************</p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">FB_TFT=y</p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">CONFIG_FB_TFT_ILI9325=m</p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">********************************************</p>
    <br>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">I added the following to the device tree</p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); min-height: 8pt;"> </p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); min-height: 8pt;">********************************************</p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); min-height: 8pt;">/ {<br>
           itdb28 {<br>
              compatible = "ilitek,ili9325";<br>
              status = "okay";<br>
      <br>
              rotate = &lt;0&gt;;<br>
              bgr;<br>
              buswidth = &lt;8&gt;;<br>
              reset-gpios = &lt;&amp;gpio3 23 0&gt;;<br>
              dc-gpios = &lt;&amp;gpio3  5 0&gt;;<br>
              cs-gpios = &lt;&amp;gpio3  1 0&gt;;<br>
              wr-gpios = &lt;&amp;gpio3  0 0&gt;;<br>
              db-gpios = &lt;&amp;gpio3  7 0&gt;,<br>
                     &lt;&amp;gpio3  8 0&gt;,<br>
                     &lt;&amp;gpio3  9 0&gt;,<br>
                     &lt;&amp;gpio3 10 0&gt;,<br>
                     &lt;&amp;gpio3 11 0&gt;,<br>
                     &lt;&amp;gpio3 15 0&gt;,<br>
                     &lt;&amp;gpio3 16 0&gt;,<br>
                     &lt;&amp;gpio3 17 0&gt;;<br>
              /* LED pin drives backlight directly. Use transistor
      (50mA) */<br>
              /* led-gpios = &lt;&amp;gpio 4 1&gt;; */<br>
              debug = &lt;7&gt;;<br>
          };<br>
      <br>
      <br>
          framebuffer {<br>
              compatible = "simple-framebuffer";<br>
              reg = &lt;0x1d385000 (240 * 320 * 2)&gt;;<br>
              width = &lt;240&gt;;<br>
              height = &lt;320&gt;;<br>
              stride = &lt;(240 * 2)&gt;;<br>
              format = "r5g6b5";<br>
          };<br>
      };</p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); min-height: 8pt;">********************************************</p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); min-height: 8pt;"><br>
    </p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">When I boot, I get the following error:</p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); min-height: 8pt;"> </p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); min-height: 8pt;">********************************************</p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); min-height: 8pt;">Error opening /dev/fb0: No such file or
      directory</p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); min-height: 8pt;">********************************************</p>
    <br>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); min-height: 8pt;">Did I forget something or is there a
      decent manual available?<br>
    </p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">Thanks!</p>
    <p style="margin: 0px; padding: 0px; border: 0px; font-weight:
      normal; font-style: normal; font-size: 15px; font-family:
      &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida
      Grande&quot;, sans-serif; vertical-align: baseline; word-wrap:
      break-word; color: rgb(81, 98, 111); font-variant-ligatures:
      normal; font-variant-caps: normal; letter-spacing: normal;
      orphans: 2; text-align: start; text-indent: 0px; text-transform:
      none; white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">Jonathan.<br>
    </p>
  </body>
</html>

--------------E5EEC648A544F3EA5B630824--
