Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64B19E00D34; Wed, 13 Jul 2016 03:51:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.33.88 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0088.outbound.protection.outlook.com [104.47.33.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D87F2E00D15
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 03:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=avsauf3jXrtZW4xoV2LUX9tTHpzJe9C83MPIz/Hob3I=;
	b=geFDTIWQyr8A6YMGea4Y5xmlgTCisw3GFvntCB3UM0VKNXIfKADZYX3j7cImRM2E//90cxCm43tZNOdJ8BnyVRj2371uQ8SMsHR+v7JBqy9p7SbH3lLGpZRcE0NrJndwE7HLvH9y1Rr5bOta2uXv8I9u5vkvIMRQUnCH33eypjY=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1596.prod.exchangelabs.com (10.163.139.14) with Microsoft
	SMTP Server (TLS) id 15.1.539.14; Wed, 13 Jul 2016 10:51:35 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0534.023; Wed, 13 Jul 2016 10:51:35 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: image-vmdk with genericx86
Thread-Index: AQHR3PORhGVbgABKl0GCaRhP5tboYQ==
Date: Wed, 13 Jul 2016 10:51:34 +0000
Message-ID: <CY1PR0101MB15949FCDF452F57DF16C5374D7310@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: 60f66ae8-32d7-458b-2021-08d3ab0ba8a7
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1596;
	6:M2WxPNAAYtqsg1dFt3SDrNxqiRNX3LB8fThWKu7JjxHKeLknPJptXBaIWLPbO6n4jYBDs6P9CNs5UeP81sy6qE669n4VysaIA7wZnBcdRkmXzFCi1/e60FpKjl9MOUSd+UovFICuRimlLx3wYTf4Tk9J4pSb4mcevhmoS0U/QpGWY36xO9EOyIhy4RXfPl+101il537amONE63kTqrath5MtwsJ3S/+Ym5vemqNl+tcC7zEcrXM6HGOA3k8WvZDVNTfRVr8GLcz7EpigJC9wQLao7QpQdJbQECg+O4Ows/E=;
	5:x/ZGoCMSAKyCQqd/ghA8cDvx/k+l+a85ALIsrwVWbbIce7EK43htDbp0+/CHP2wPjLn6RHb8b3f31Z9ECUSvJVLUWXRli0/Zx8q2208twmrW3OjInqvQmmSML4Xg0xCr+sQA1quVmPThYjIFfIEwSQ==;
	24:u1I7gOVrFnd14d9/VGQAIkgu9uO37Ja4xl30uSHyE+lD1xSYP2SLKYoMIMjnAJi+DzYjdtU2wwWvBkCStuJSy1JpDgwPRBSyo+0o16+NIY0=;
	7:AUuJsfr2eK84UX2Yc3uV+5vdxXbUv7TXB1IHb22964tQ0zqSTGcTQTpDK7R3QFhtg2noCzfS5czZdi0QlOWOS/dVa3WP2Qon3K/m6doOujfz8Hk9x+uT749NWwc/9Bljg2hC67yqMEH8d2IZ7Yjyw4hwcE6dIwVN7Hheu44g9bKpkYeTl3xW/+Qlu61VyqiGOkw1XTR5Ba9IuxJkbVa8JElhJ689CNX+DRjkepbFE4Yc7mHTvZeXdo+NAR5FrYpr
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1596;
x-microsoft-antispam-prvs: <CY1PR0101MB15968A54D34C4AC4E8F678AFD7310@CY1PR0101MB1596.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(73312121905874)(211936372134217);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(5005006)(8121501046)(10201501046)(3002001);
	SRVR:CY1PR0101MB1596; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1596; 
x-forefront-prvs: 000227DA0C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(7916002)(189002)(199003)(52314003)(122556002)(106116001)(2501003)(5640700001)(19580395003)(105586002)(2906002)(68736007)(16236675004)(33656002)(3846002)(10400500002)(86362001)(106356001)(19625215002)(7906003)(7846002)(7736002)(7696003)(5003600100003)(586003)(77096005)(9686002)(1730700003)(8676002)(31430400001)(81166006)(66066001)(81156014)(6116002)(102836003)(8936002)(2900100001)(15975445007)(74316002)(97736004)(54356999)(229853001)(5002640100001)(2351001)(11100500001)(3280700002)(87936001)(19627405001)(50986999)(101416001)(450100001)(92566002)(19617315012)(189998001)(3660700001)(107886002)(110136002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1596;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2016 10:51:34.8854 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1596
Subject: image-vmdk with genericx86
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
X-List-Received-Date: Wed, 13 Jul 2016 10:51:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB15949FCDF452F57DF16C5374D7310CY1PR0101MB1594_"

--_000_CY1PR0101MB15949FCDF452F57DF16C5374D7310CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, Yocto.


Should it be possible to simply change image class of genericx86 from xxxx.=
hddimg to xxxx.hdddirect?


I have been successfully building genericx86 image (that is image-live.bbcl=
ass based), and now trying to build it with directdisk (xxxx.hdddirect).

I thought it would be simpler to use pre-existing imageclass, so I tried fo=
llowing after finding image-vmdk.bbclass inherits boot-directdisk.

Currently my build is based on Yocto 1.8 (fido).


(in my local.conf)

IMAGE_FSTYPES_remove =3D " live"

IMAGE_FSTYPES_append =3D " vmdk"

But this caused following error.

I am currently looking into the class files to find the cause of error, but=
 anyway, this should work?


>ERROR: No IMAGE_CMD defined for IMAGE_FSTYPES entry 'vmdk' - possibly inva=
lid type name or missing support class
> ERROR: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
/mnt/ssd2/yocto/dev/tmp/x86-wk3/work/genericx86-poky-linux/core-image-minim=
al-initramfs/1.0-r0/temp/log.do_rootfs.20432
> ERROR: Task 229
(/mnt/ssd2/yocto/dev/wk/x86/wk3/build-root/sources/poky/meta/recipes-core/i=
mages/core-image-minimal-initramfs.bb<http://core-image-minimal-initramfs.b=
b/>, do_rootfs) failed with exit code '1'


--_000_CY1PR0101MB15949FCDF452F57DF16C5374D7310CY1PR0101MB1594_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hello, Yocto.</p>
<p><br>
</p>
<p></p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
Should it be possible to simply change image class of genericx86 from xxxx.=
hddimg to xxxx.hdddirect?</p>
<div><br>
</div>
<p></p>
<p>I have been successfully building genericx86 image (that is image-live.b=
bclass based), and now trying to build it with directdisk (xxxx.hdddirect).=
</p>
<p>I thought it would be simpler to use pre-existing imageclass, so I tried=
 following after finding image-vmdk.bbclass inherits boot-directdisk.</p>
<p>Currently my build is based on Yocto 1.8 (fido).</p>
<p><br>
</p>
<p>(in my local.conf)</p>
<p>IMAGE_FSTYPES_remove =3D &quot; live&quot;</p>
<p></p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
IMAGE_FSTYPES_append =3D &quot; vmdk&quot;</p>
<div><br>
</div>
<div>But this caused following error.</div>
<p></p>
<p><span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; f=
ont-size: 14px;">I am currently looking into the class files to find the ca=
use of error, but anyway, this should work?</span></p>
<p><span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; f=
ont-size: 14px;"><br>
</span></p>
<p><span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; f=
ont-size: 14px;">&gt;ERROR: No IMAGE_CMD defined for IMAGE_FSTYPES entry 'v=
mdk' - possibly&nbsp;</span><span style=3D"color: rgb(34, 34, 34); font-fam=
ily: arial, sans-serif; font-size: 14px;">invalid
 type name or missing support class</span><br style=3D"color: rgb(34, 34, 3=
4); font-family: arial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">&gt;&nbsp;ERROR: Function failed: do_rootfs</span><br style=
=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px=
;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">&gt;&nbsp;ERROR: Logfile of failure stored in:</span><br styl=
e=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14p=
x;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">/mnt/ssd2/yocto/dev/tmp/x86-</span><wbr style=3D"color: rgb(3=
4, 34, 34); font-family: arial, sans-serif; font-size: 14px;"><span style=
=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px=
;">wk3/work/genericx86-poky-</span><wbr style=3D"color: rgb(34, 34, 34); fo=
nt-family: arial, sans-serif; font-size: 14px;"><span style=3D"color: rgb(3=
4, 34, 34); font-family: arial, sans-serif; font-size: 14px;">linux/core-im=
age-minimal-</span><wbr style=3D"color: rgb(34, 34, 34); font-family: arial=
, sans-serif; font-size: 14px;"><span style=3D"color: rgb(34, 34, 34); font=
-family: arial, sans-serif; font-size: 14px;">initramfs/1.0-r0/temp/log.do_=
</span><wbr style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif=
; font-size: 14px;"><span style=3D"color: rgb(34, 34, 34); font-family: ari=
al, sans-serif; font-size: 14px;">rootfs.20432</span><br style=3D"color: rg=
b(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">&gt;&nbsp;ERROR: Task 229</span><br style=3D"color: rgb(34, 3=
4, 34); font-family: arial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">(/mnt/ssd2/yocto/dev/wk/x86/</span><wbr style=3D"color: rgb(3=
4, 34, 34); font-family: arial, sans-serif; font-size: 14px;"><span style=
=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px=
;">wk3/build-root/sources/poky/</span><wbr style=3D"color: rgb(34, 34, 34);=
 font-family: arial, sans-serif; font-size: 14px;"><span style=3D"color: rg=
b(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;">meta/recip=
es-core/images/</span><a href=3D"http://core-image-minimal-initramfs.bb/" d=
ata-saferedirecturl=3D"https://www.google.com/url?hl=3Dja&amp;q=3Dhttp://co=
re-image-minimal-initramfs.bb&amp;source=3Dgmail&amp;ust=3D1468492997958000=
&amp;usg=3DAFQjCNGxRdRMqrH3DRgHolq8TMrYx7pgMw" rel=3D"noreferrer" target=3D=
"_blank" style=3D"color: rgb(17, 85, 204); font-family: arial, sans-serif; =
font-size: 14px;">core-<wbr>image-minimal-initramfs.bb</a><span style=3D"co=
lor: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;">,&n=
bsp;</span><span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-=
serif; font-size: 14px;">do_rootfs)
 failed with exit code '1'</span><br>
</p>
<p><span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; f=
ont-size: 14px;"><br>
</span></p>
</div>
</body>
</html>

--_000_CY1PR0101MB15949FCDF452F57DF16C5374D7310CY1PR0101MB1594_--
