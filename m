Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 366B2E00CC3; Thu,  8 Sep 2016 03:51:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.40.73 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 98985 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Sep 2016 03:51:40 PDT
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0073.outbound.protection.outlook.com [104.47.40.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCA53E00CB0
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2016 03:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=BaghIihxG8rzjMO9ELo8oKSHrK8gDCmbq/L5Ed4RV/g=;
	b=a7QZlmUpTRwtTyxQ6sEVLcH3FQ04AwEQuDv3DWyHmnprGbwa21Vk2Tl80Fc+Bar/uukxq7DX5Ls8POxz9micfMg/HWRiRFGv/Fl2i9ksa6xy8tYeP7IPS/RjpAAVRdxIQWFWI0TLAtKQaYdYnqkjgqgvw0DO4dKb6PeSZJM3B0U=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1593.prod.exchangelabs.com (10.163.139.12) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.599.9; Thu, 8 Sep 2016 10:51:38 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0599.016; Thu, 8 Sep 2016 10:51:38 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: vlc experience?
Thread-Index: AQHSCb75nPX2hcV5kUyyCNWDXYS1jA==
Date: Thu, 8 Sep 2016 10:51:38 +0000
Message-ID: <CY1PR0101MB15943FABD42241DC208DAF88D7FB0@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: b17c5c56-5a2c-4e9b-934d-08d3d7d61c52
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1593;
	6:/7bO/5qotP+DncNlFhITnng3G6khxDv9GZltx6shgGUcKOR+ho6IdEM3e18XxjGJBw7mgP93X4BmVkncF5zXF5uC0lne/5m11BzoL9QKmo/IpjaKuiOCJnAS28/j5Ywf9t6g925qb2e63DbCxPaX7zbyPPMkD0ssQeXQPje5ZeQI1bmSvixfgnreCjEAGv6A4dyn/Hux9EmMUagTZQ41/ehYIvKurri9jBf4k4QwHXEcaA1V3z+u+tahzEzzlVhIACNnXN046AZDFO8p9Nz9iandK7TeMh7bxGIO9zg4V/E=;
	5:B7FNvki86QpuH5LpoLQ7go6QScyODrRJ9SwPsYAuTqNSsE6aIRL6ktoXKXHa52G+C0Qe5ZOSP8xChKd5e6q3AlOBm9P4JFM9uV4sP2qmarqpdUbNxtIe6VIqjJtiql1e7fLJ2sETWfXPrFbO3sDjjQ==;
	24:uJ7Dgao6TFVILUBIqJ1SeqbSoDIcAomeL1ZZDEKiOzGWGkaDlxvxVhRmyHV/66XB91qnjc0KZqmU6uag56zNcafFsi71jPUzxfhcsP0arrs=;
	7:eRUUn6rBjCl+OQcsiy0iaRxA1koP3f29t1y6/4dL+9oP856Yf2weO6ly7ISgNqlDvk59LZJsa5x09bAhBYLcRaZMFAPikx/YcNQouy3uBfLUmBi5OEphHVHGkFRWz79Jhhk7KpAz+ZVrmLzXsw/mIOLc2CXfyx4oh1YITWbHsc49Uld0a+vvbnf35susiav6FPPGji9Crmy7R233Kg30LVQStby1x1wAnnTNSMgUlLvfEHnuS8WVS6HoERT36u5v
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1593;
x-microsoft-antispam-prvs: <CY1PR0101MB1593C3DF83E7A1DF3BBBCD50D7FB0@CY1PR0101MB1593.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:CY1PR0101MB1593; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1593; 
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(189002)(199003)(1730700003)(87936001)(86362001)(8936002)(16236675004)(19580395003)(110136002)(9686002)(5640700001)(50986999)(11100500001)(107886002)(5002640100001)(54356999)(8676002)(2501003)(68736007)(450100001)(189998001)(3846002)(2906002)(74316002)(7736002)(3660700001)(3280700002)(101416001)(92566002)(7846002)(15975445007)(33656002)(19627405001)(77096005)(586003)(102836003)(2900100001)(105586002)(7696003)(3480700004)(6116002)(10400500002)(7116003)(66066001)(5660300001)(106116001)(229853001)(122556002)(2351001)(19625215002)(106356001)(97736004)(81166006)(81156014)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1593;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2016 10:51:38.6367 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1593
Subject: vlc experience?
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
X-List-Received-Date: Thu, 08 Sep 2016 10:51:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB15943FABD42241DC208DAF88D7FB0CY1PR0101MB1594_"

--_000_CY1PR0101MB15943FABD42241DC208DAF88D7FB0CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Yocto.

I am trying to build and run vlc on my fido based environment (genericx86 m=
achine), but so far failing to play most of the multimedia files.
I just wonder any of you have similar experience and hopefully has a clue.

vlc player build OK without problem, by just adding vlc by IMAGE_INSTALL_ap=
pend, vlc recipe version is vlc_2.1.4, and I can launch it from sat desktop=
, and select files to be played.

But, When I tried the following multimedia samples, I cannot play most of t=
hem.

xxx.mp3 - NG (mega not support)
http://www.gomplayer.jp/img/sample/mp4_h264_aac.mp4 - NG (h264 not support)
http://www.gomplayer.jp/img/sample/mp4_mpeg4_aac.mp4 - NG (mp4v not support=
)
http://www.gomplayer.jp/img/sample/mpeg2_mpeg2_ac3.mpg - NG (video only, a5=
2 not support)
http://www.gomplayer.jp/img/sample/mpeg2_mpeg2_lpcm.mpg - OK (mpg and llcm =
supported)

The error message I get is the following.

"No suitable decoder module:
VLC does not support the audio or video format "mpga". Unfortunately there =
is no way for you to fix this."

I googled for this and a few suggestions on various forums are that you may=
 need additional codecs installed.
But as I inspect by vlc --list-verbose, and also look into /usr/lib/vlc/plu=
gins folder, I believe modules corresponding to mega, h264, mp4v, a52 are t=
here.
(At least, these names are listed in the list and corresponding module file=
s are there.)

I have looked into the vlc source, and I think its codec selection mechanis=
m is related to its own var_xxxx variable database, but may need more time =
to learn (and compare) how it should be working.

Well, in case if there is any known information related this, I highly appr=
eciated.
I want a media player that I can use for my apps's testing (as a reference)=
.




--_000_CY1PR0101MB15943FABD42241DC208DAF88D7FB0CY1PR0101MB1594_
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
<p></p>
<div><span style=3D"font-size: 12pt;">Hello Yocto.</span><br>
</div>
<div><br>
</div>
<div>I am trying to build and run vlc on my fido based environment (generic=
x86 machine), but so far failing to play most of the multimedia files.</div=
>
<div>I just wonder any of you have similar experience and hopefully has a c=
lue.</div>
<div><br>
</div>
<div>vlc player build OK without problem, by just adding vlc by IMAGE_INSTA=
LL_append, vlc recipe version is vlc_2.1.4, and I can launch it from sat de=
sktop, and select files to be played.</div>
<div><br>
</div>
<div>But, When I tried the following multimedia samples, I cannot play most=
 of them.</div>
<div><br>
</div>
<div>xxx.mp3 - NG (mega not support)</div>
<div>http://www.gomplayer.jp/img/sample/mp4_h264_aac.mp4 - NG (h264 not sup=
port)</div>
<div>http://www.gomplayer.jp/img/sample/mp4_mpeg4_aac.mp4 - NG (mp4v not su=
pport)</div>
<div>http://www.gomplayer.jp/img/sample/mpeg2_mpeg2_ac3.mpg - NG (video onl=
y, a52 not support)</div>
<div>http://www.gomplayer.jp/img/sample/mpeg2_mpeg2_lpcm.mpg - OK (mpg and =
llcm supported)</div>
<div><br>
</div>
<div>The error message I get is the following.</div>
<div><br>
</div>
<div>&quot;No suitable decoder module:</div>
<div>VLC does not support the audio or video format &quot;mpga&quot;. Unfor=
tunately there is no way for you to fix this.&quot;</div>
<div><br>
</div>
<div>I googled for this and a few suggestions on various forums are that yo=
u may need additional codecs installed.</div>
<div>But as I inspect by vlc --list-verbose, and also look into /usr/lib/vl=
c/plugins folder, I believe modules corresponding to mega, h264, mp4v, a52 =
are there.</div>
<div>(At least, these names are listed in the list and corresponding module=
 files are there.)</div>
<div><br>
</div>
<div>I have looked into the vlc source, and I think its codec selection mec=
hanism is related to its own var_xxxx variable database, but may need more =
time to learn (and compare) how it should be working.</div>
<div><br>
</div>
<div>Well, in case if there is any known information related this, I highly=
 appreciated.</div>
<div>I want a media player that I can use for my apps's testing (as a refer=
ence).</div>
<div><br>
</div>
<div><br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_CY1PR0101MB15943FABD42241DC208DAF88D7FB0CY1PR0101MB1594_--
