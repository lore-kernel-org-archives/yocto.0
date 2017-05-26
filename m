Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61253E00B01; Fri, 26 May 2017 01:09:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.43 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 162468 seconds by postgrey-1.32 at yocto-www;
	Fri, 26 May 2017 01:09:51 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0043.outbound.protection.outlook.com [104.47.34.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C2D1E00A39
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 01:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=0ZzdwG8rz8t97H7E67Rtklgh8fkhyIx49hNwTWSN25s=;
	b=nFwJnMzBlen7t9Ru8DD4PH4fLprJbH8g0MO7ClOzeF97FB9RQel+ZYX7V6LC/x4cEP/9QODCqN926tzrlR7IvA5JMIN4dnaNpKWQNfmo6g270zmk5HHeOgCZGbLUlR32dS+4aZh/LuWPdrNDo+8nSZuQGvnHoVV4AZ3fMvvTT90=
Received: from DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) by
	DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1124.9; Fri, 26 May 2017 08:09:49 +0000
Received: from DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) by
	DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) with mapi id
	15.01.1124.013; Fri, 26 May 2017 08:09:49 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] dynamic-layers?
Thread-Index: AQHS1Hi0bJGDBENMY0277BkegQdKAqIDiJOAgACzkFWAAFmA9YABr4XB
Date: Fri, 26 May 2017 08:09:48 +0000
Message-ID: <DM5PR0101MB2953F385C585BBDE4E224896B6FC0@DM5PR0101MB2953.prod.exchangelabs.com>
References: <DM5PR0101MB2953820AFBD0E9A6B212933BB6FE0@DM5PR0101MB2953.prod.exchangelabs.com>,
	<CAP71WjyDHzecX1UTEkHSgJDud3G-3g9D0RvsOBCZkoAvtxPy_w@mail.gmail.com>,
	<DM5PR0101MB29537BD8470B6C9CACBE0D92B6FF0@DM5PR0101MB2953.prod.exchangelabs.com>,
	<DM5PR0101MB2953B2020A29FE56D2DC4FBEB6FF0@DM5PR0101MB2953.prod.exchangelabs.com>
In-Reply-To: <DM5PR0101MB2953B2020A29FE56D2DC4FBEB6FF0@DM5PR0101MB2953.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
x-originating-ip: [118.238.252.194]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR0101MB2953;
	7:M+tSPXHq05SbRA+VSoidFFG38ni99FxJKcBqPyOoKFoCTNjXg0vnueV0uwFfxAha6dwDnMY8BU9IPRbavKGfOn1et5gcGM5ihT2xvLqgFE72ef+7IXpNzDCps0mNdvnt3JJv8LEpld7LcM5aZPlUm1K+RA6p9DCngfKJF1KC9qlAUU0r5sWQuLSgbENKHExamJO6+VIzaCcPKXVi2Vk5mb6sPJxtELyUaqjCoNHT72OOzg2Sao5m4WAfE4a4+Inm5liN8ZyBdm1SyyfCFtrcRLdfl0gYeUfczh3VDyqjVFuoXDmKnX6VnsmEBXvzMBT/zsWxXvyuQLJGrP9YUWMoCw==
x-ms-traffictypediagnostic: DM5PR0101MB2953:
x-ms-office365-filtering-correlation-id: 1f372f8f-3f43-44bf-76b1-08d4a40e944b
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075)(201703031133081);
	SRVR:DM5PR0101MB2953; 
x-microsoft-antispam-prvs: <DM5PR0101MB295324E3E167AAC52A90E799B6FC0@DM5PR0101MB2953.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(6041248)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123555025)(20161123564025)(20161123562025)(6072148);
	SRVR:DM5PR0101MB2953; BCL:0; PCL:0; RULEID:;
	SRVR:DM5PR0101MB2953; 
x-forefront-prvs: 031996B7EF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39400400002)(39410400002)(43544003)(24454002)(377454003)(8936002)(1730700003)(8676002)(81166006)(2351001)(966005)(3280700002)(7736002)(3660700001)(74316002)(7906003)(53546009)(5660300001)(122556002)(33656002)(25786009)(5640700003)(6436002)(6506006)(606005)(53936002)(99286003)(2906002)(77096006)(54896002)(55016002)(9686003)(236005)(6306002)(478600001)(93886004)(2900100001)(189998001)(6916009)(19627405001)(2950100002)(6606003)(7696004)(38730400002)(6246003)(110136004)(229853002)(86362001)(54356999)(50986999)(76176999)(6116002)(2501003)(14454004)(3846002)(102836003)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0101MB2953;
	H:DM5PR0101MB2953.prod.exchangelabs.com; FPR:; SPF:None; MLV:sfv;
	LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2017 08:09:48.7931 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB2953
Subject: Re: dynamic-layers?
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
X-List-Received-Date: Fri, 26 May 2017 08:09:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR0101MB2953F385C585BBDE4E224896B6FC0DM5PR0101MB2953_"

--_000_DM5PR0101MB2953F385C585BBDE4E224896B6FC0DM5PR0101MB2953_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello.


So, this is the case I have to be careful about the order of conf files lis=
ted in BBLAYERS list?

i.e. if I have dynamic-layers line in my layer X and expansion need to take=
 care of layer A, B, C, then, A, B, C needs to be apper before X within BBL=
AYERS list.

________________________________
From: Takashi Matsuzawa
Sent: Thursday, May 25, 2017 3:26 PM
To: yocto@yoctoproject.org
Cc: Nicolas Dechesne
Subject: Re: [yocto] dynamic-layers?


Hello.


I further did some debugging and BBFOLE_COLLECTION when used in the followi=
ng 'for' expansion contains only subset of what is avilable finally in BBFI=
LE_COLLECTION (as appears in '-e' log).


>BBFILES +=3D "${@'  '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bba=
ppend' % layer \
>               for layer in BBFILE_COLLECTIONS.split())}"

I am confused if this is a normal behavior.

________________________________
From: Takashi Matsuzawa
Sent: Thursday, May 25, 2017 10:03 AM
To: Nicolas Dechesne
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] dynamic-layers?


Hello.

>e.g. if you have meta-qt5 in BBLAYERS in <build>/conf/bblayers.conf, then =
the recipes from "dynamic-layers/qt5-layer" are used as well.

Thanks now I can see how it is expected to work.
My issue here now is that some dynamyc-layers/<layer> not being added to BB=
FILES list.

I tried '-e' switch with my build tree and here is what I can see.
I think this is caused by BBFILE_COLLECTIONS evaluation timing? - but I am =
still looking into to find the cause.

1) .conf files read

I think these are the conf files recognized by the build sytem.
I cansee meta-qt5 there.

#
# INCLUDE HISTORY:
#
# /home/xxx/build-root/build/conf/bblayers.conf
# /home/xxx/build-root/meta-freescale/conf/layer.conf
# /home/xxx/build-root/meta-freescale-3rdparty/conf/layer.conf
# /home/xxx/build-root/meta-freescale-distro/conf/layer.conf
# /home/xxx/build-root/meta-agl/meta-netboot/conf/layer.conf
# /home/xxx/build-root/meta-intel-iot-security/meta-security-smack/conf/lay=
er.conf
# /home/xxx/build-root/meta-intel-iot-security/meta-security-framework/conf=
/layer.conf
# /home/xxx/build-root/meta-agl/meta-app-framework/conf/layer.conf
# /home/xxx/build-root/meta-qt5/conf/layer.conf
...

2) BBFILE_COLLECTIONS

And I can see 'qt5-layer' is being added to BBFILE_COLLECTIONS, so it 'qt5-=
layer' folder in every dynamic-layers should be picked into BBFILE list.

BBFILE_COLLECTIONS=3D" freescale-layer fsl-arm-extra fsl-demos
meta-netboot security-smack security-framework app-framework qt5-layer
agl-demo openembedded-layer multimedia-layer efl-layer
networking-layer meta-python ivi-common agl agl-distro aglbsp core
yocto"

3) BBFILES

But I cannot find it in BBFILES list.
Only the first 4 layers (freescale-layer/fsl-arm-extra/fsl-demos/meta-netbo=
ot) in BBFILE_COLLECTIONS are used in wildecard parameter.

BBFILES=3D"/home/xxx/build-root/meta-freescale/recipes-*/*/*.bb
/home/xxx/build-root/meta-freescale/recipes-*/*/*.bbappend
/home/xxx/build-root/meta-freescale/dynamic-layers/freescale-layer/recipes*=
/*/*.bbappend
/home/xxx/build-root/meta-freescale/dynamic-layers/fsl-arm-extra/recipes*/*=
/*.bbappend
/home/xxx/build-root/meta-freescale/dynamic-layers/fsl-demos/recipes*/*/*.b=
bappend
/home/xxx/build-root/meta-freescale/dynamic-layers/meta-netboot/recipes*/*/=
*.bbappend
/home/xxx/build-root/meta-freescale/dynamic-layers/freescale-layer/recipes*=
/*/*.bb
/home/xxx/build-root/meta-freescale/dynamic-layers/fsl-arm-extra/recipes*/*=
/*.bb
/home/xxx/build-root/meta-freescale/dynamic-layers/fsl-demos/recipes*/*/*.b=
b
/home/xxx/build-root/meta-freescale/dynamic-layers/meta-netboot/recipes*/*/=
*.bb
/home/xxx/build-root/meta-freescale-3rdparty/recipes-*/*/*.bb
/home/xxx/build-root/meta-freescale-3rdparty/recipes-*/*/*.bbappend
...


________________________________
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Sent: Wednesday, May 24, 2017 11:19 PM
To: Takashi Matsuzawa
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] dynamic-layers?

On Wed, May 24, 2017 at 12:30 PM, Takashi Matsuzawa <tmatsuzawa@xevo.com> w=
rote:
> Hello, Yocto.
> I am a bit confused with dynamic-layers included in some of the recent
> layers in various BSPs.
>
> e.g.
>
> https://github.com/Freescale/meta-freescale/blob/master/conf/layer.conf

>
>># The .bbappend and .bb files are included if the respective layer
>># collection is available.
>>BBFILES +=3D "${@'
>> '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bbappend' % layer \
>>               for layer in BBFILE_COLLECTIONS.split())}"
>>BBFILES +=3D "${@' '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bb'=
 %
>> layer \
>>               for layer in BBFILE_COLLECTIONS.split())}"
>
> In meta-freescale/dynamic-layers, there are browser-layer, efi-layer, etc=
.
> for conditional inclusion.
> And I think they are included only their names (browser-layer, etc.) are
> BBFILE_COLLECIONS.
>
> Question here is, who will be adding 'browser-layer' to BBFILE_COLLECTION=
S
> when I want to include browser-layer in my build.
>
> Is it something to be done in my local.conf or customized distro conf fil=
e?

what that means is that recipe from the dynamic-layers/<layer> will be
parsed/added *only if* <layer> is already added in your build
environment. e.g. if you have meta-qt5 in BBLAYERS in
<build>/conf/bblayers.conf, then the recipes from
"dynamic-layers/qt5-layer" are used as well.

This is mostly to allow a BSP layer to be used with as many
combinations of layers as possible.

--_000_DM5PR0101MB2953F385C585BBDE4E224896B6FC0DM5PR0101MB2953_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hello.</p>
<p><br>
</p>
<p>So, this is the case I have to be careful about the order of conf files =
listed in BBLAYERS list?</p>
<p>i.e. if I have dynamic-layers line in my layer X and&nbsp;expansion need=
 to take care of layer A, B, C, then, A, B, C needs to be apper before X wi=
thin BBLAYERS list.</p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Takashi Matsuzawa<br>
<b>Sent:</b> Thursday, May 25, 2017 3:26 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Cc:</b> Nicolas Dechesne<br>
<b>Subject:</b> Re: [yocto] dynamic-layers?</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hello.</p>
<p><br>
</p>
<p>I further did some debugging and BBFOLE_COLLECTION when used in the foll=
owing 'for' expansion contains only subset of what is avilable finally in B=
BFILE_COLLECTION (as appears in '-e' log).</p>
<p><br>
</p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,serif,Emoj=
iFont; font-size:13.3333px">&gt;BBFILES &#43;=3D &quot;${@'&nbsp;</span><sp=
an style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;=
 font-size:13.3333px">&nbsp;'.join('${LAYERDIR}/dynamic-layers/%s/recipes*/=
*/*.bbappend'
 % layer \</span><br style=3D"font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont; font-size:13.3333px">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFo=
nt; font-size:13.3333px">&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; for layer in BBFILE_COLLECTIONS.split())}&quot;</span><br>
</p>
<div><br>
</div>
<div>I am confused if this is a normal behavior.</div>
<div><br>
</div>
<div style=3D"color:rgb(0,0,0)">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Takashi Matsuzawa<br>
<b>Sent:</b> Thursday, May 25, 2017 10:03 AM<br>
<b>To:</b> Nicolas Dechesne<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] dynamic-layers?</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p></p>
<div>Hello.</div>
<div><br>
</div>
<div>&gt;e.g. if you have meta-qt5 in BBLAYERS in &lt;build&gt;/conf/bblaye=
rs.conf, then the recipes from &quot;dynamic-layers/qt5-layer&quot; are use=
d as well.</div>
<div><br>
</div>
<div>Thanks now I can see how it is expected to work.</div>
<div>My issue here now is that some dynamyc-layers/&lt;layer&gt; not being =
added to BBFILES list.</div>
<div><br>
</div>
<div>I tried '-e' switch with my build tree and here is what I can see.</di=
v>
<div>I think this is caused by BBFILE_COLLECTIONS evaluation timing? - but =
I am still looking into to find the cause.</div>
<div><br>
</div>
<div>1) .conf files read</div>
<div><br>
</div>
<div>I think these are the conf files recognized by the build sytem.</div>
<div>I cansee meta-qt5 there.</div>
<div><br>
</div>
<div>#</div>
<div># INCLUDE HISTORY:</div>
<div>#</div>
<div># /home/xxx/build-root/build/conf/bblayers.conf</div>
<div># /home/xxx/build-root/meta-freescale/conf/layer.conf</div>
<div># /home/xxx/build-root/meta-freescale-3rdparty/conf/layer.conf</div>
<div># /home/xxx/build-root/meta-freescale-distro/conf/layer.conf</div>
<div># /home/xxx/build-root/meta-agl/meta-netboot/conf/layer.conf</div>
<div># /home/xxx/build-root/meta-intel-iot-security/meta-security-smack/con=
f/layer.conf</div>
<div># /home/xxx/build-root/meta-intel-iot-security/meta-security-framework=
/conf/layer.conf</div>
<div># /home/xxx/build-root/meta-agl/meta-app-framework/conf/layer.conf</di=
v>
<div># /home/xxx/build-root/meta-qt5/conf/layer.conf</div>
<div>...</div>
<div><br>
</div>
<div>2) BBFILE_COLLECTIONS</div>
<div><br>
</div>
<div>And I can see 'qt5-layer' is being added to BBFILE_COLLECTIONS, so it =
'qt5-layer' folder in every dynamic-layers should be picked into BBFILE lis=
t.</div>
<div><br>
</div>
<div>BBFILE_COLLECTIONS=3D&quot; freescale-layer fsl-arm-extra fsl-demos</d=
iv>
<div>meta-netboot security-smack security-framework app-framework qt5-layer=
</div>
<div>agl-demo openembedded-layer multimedia-layer efl-layer</div>
<div>networking-layer meta-python ivi-common agl agl-distro aglbsp core</di=
v>
<div>yocto&quot;</div>
<div><br>
</div>
<div>3) BBFILES</div>
<div><br>
</div>
<div>But I cannot find it in BBFILES list.</div>
<div>Only the first 4 layers (freescale-layer/fsl-arm-extra/fsl-demos/meta-=
netboot) in BBFILE_COLLECTIONS are used in wildecard parameter.</div>
<div><br>
</div>
<div>BBFILES=3D&quot;/home/xxx/build-root/meta-freescale/recipes-*/*/*.bb</=
div>
<div>/home/xxx/build-root/meta-freescale/recipes-*/*/*.bbappend</div>
<div>/home/xxx/build-root/meta-freescale/dynamic-layers/freescale-layer/rec=
ipes*/*/*.bbappend</div>
<div>/home/xxx/build-root/meta-freescale/dynamic-layers/fsl-arm-extra/recip=
es*/*/*.bbappend</div>
<div>/home/xxx/build-root/meta-freescale/dynamic-layers/fsl-demos/recipes*/=
*/*.bbappend</div>
<div>/home/xxx/build-root/meta-freescale/dynamic-layers/meta-netboot/recipe=
s*/*/*.bbappend</div>
<div>/home/xxx/build-root/meta-freescale/dynamic-layers/freescale-layer/rec=
ipes*/*/*.bb</div>
<div>/home/xxx/build-root/meta-freescale/dynamic-layers/fsl-arm-extra/recip=
es*/*/*.bb</div>
<div>/home/xxx/build-root/meta-freescale/dynamic-layers/fsl-demos/recipes*/=
*/*.bb</div>
<div>/home/xxx/build-root/meta-freescale/dynamic-layers/meta-netboot/recipe=
s*/*/*.bb</div>
<div>/home/xxx/build-root/meta-freescale-3rdparty/recipes-*/*/*.bb</div>
<div>/home/xxx/build-root/meta-freescale-3rdparty/recipes-*/*/*.bbappend</d=
iv>
<div>...</div>
<div><br>
</div>
<p></p>
<br>
<div style=3D"color:rgb(0,0,0)">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Nicolas Dechesne &l=
t;nicolas.dechesne@linaro.org&gt;<br>
<b>Sent:</b> Wednesday, May 24, 2017 11:19 PM<br>
<b>To:</b> Takashi Matsuzawa<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] dynamic-layers?</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div class=3D"PlainText">On Wed, May 24, 2017 at 12:30 PM, Takashi Matsuzaw=
a &lt;tmatsuzawa@xevo.com&gt; wrote:<br>
&gt; Hello, Yocto.<br>
&gt; I am a bit confused with dynamic-layers included in some of the recent=
<br>
&gt; layers in various BSPs.<br>
&gt;<br>
&gt; e.g.<br>
&gt;<br>
&gt; <a href=3D"https://github.com/Freescale/meta-freescale/blob/master/con=
f/layer.conf" id=3D"LPlnk998740" previewremoved=3D"true">
https://github.com/Freescale/meta-freescale/blob/master/conf/layer.conf</a>=
<br>
<br>
&gt;<br>
&gt;&gt;# The .bbappend and .bb files are included if the respective layer<=
br>
&gt;&gt;# collection is available.<br>
&gt;&gt;BBFILES &#43;=3D &quot;${@'<br>
&gt;&gt; '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bbappend' % lay=
er \<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; for layer in BBFILE_COLLECTIONS.split())}&quot;<br>
&gt;&gt;BBFILES &#43;=3D &quot;${@' '.join('${LAYERDIR}/dynamic-layers/%s/r=
ecipes*/*/*.bb' %<br>
&gt;&gt; layer \<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; for layer in BBFILE_COLLECTIONS.split())}&quot;<br>
&gt;<br>
&gt; In meta-freescale/dynamic-layers, there are browser-layer, efi-layer, =
etc.<br>
&gt; for conditional inclusion.<br>
&gt; And I think they are included only their names (browser-layer, etc.) a=
re<br>
&gt; BBFILE_COLLECIONS.<br>
&gt;<br>
&gt; Question here is, who will be adding 'browser-layer' to BBFILE_COLLECT=
IONS<br>
&gt; when I want to include browser-layer in my build.<br>
&gt;<br>
&gt; Is it something to be done in my local.conf or customized distro conf =
file?<br>
<br>
what that means is that recipe from the dynamic-layers/&lt;layer&gt; will b=
e<br>
parsed/added *only if* &lt;layer&gt; is already added in your build<br>
environment. e.g. if you have meta-qt5 in BBLAYERS in<br>
&lt;build&gt;/conf/bblayers.conf, then the recipes from<br>
&quot;dynamic-layers/qt5-layer&quot; are used as well.<br>
<br>
This is mostly to allow a BSP layer to be used with as many<br>
combinations of layers as possible.<br>
</div>
</span></font></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DM5PR0101MB2953F385C585BBDE4E224896B6FC0DM5PR0101MB2953_--
