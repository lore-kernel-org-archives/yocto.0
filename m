Return-Path: <Frank.Earl@flextronics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B75AE00F71; Fri, 14 Oct 2016 08:34:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_SPAM,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [216.82.243.200 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.82.243.200 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 398 seconds by postgrey-1.32 at yocto-www;
	Fri, 14 Oct 2016 08:33:38 PDT
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58F61E00C93
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 08:33:38 -0700 (PDT)
Received: from [216.82.241.131] by server-8.bemta-8.messagelabs.com id
	F2/40-17257-149F0085; Fri, 14 Oct 2016 15:26:57 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA2WTa0gUURTH9+7sjlM5Ma6v02JQU0GUu6kUqEQ
	vqfxQ9PwgUtRsTrsDu6vsrGHQQ9Js08iUtFJEbdHMQkjtacJi5WPdCDULUoktoawkFR8Epc14
	xzL69rvn/z//M+dyhyJ0xQF6is9w8g47Z2XJhZrNE55+w+YfqqSo2pqY2MKhu+QWlHih/TK5F
	yVrBbspNeOo1vL9cSZKG3iKMnztpWQmyn6ActFCSsfkq8H3s5TABw+Cjq9l0mEBRTIGeFPq1s
	ocwmyAz63jpMzBzE7oc48o9V3gb72AMBth+laO5KEoDbMKZhoPy2WaSYZb+Rdn7YgJgynvXbX
	MBBMO7wbLZxmYEPB3dZKYQ2Ho47TiPwRNBa4AXGdh+Hq/Vo4HZjfc+aCRPxmYcgI+NOYS2LMd
	qgaqNJgFqH9wR4s5HlwFbVrc4EXwKK9TMUVAb2+nYrpHwtvCfTLrGDM0No8F4H31MPD6IsIcA
	Z/7m7V4AQvcf5lN4CWDoOPGoJK5DNqeDSmZe8BVW61wDIx6fylLbgPfuQL1FcSWzLuLknmxJf
	Nicd0OfT2TAZgjoaJpjMS8FqorvxJz7PN8VP9fXwfl0z6FV8BoW4G2RLoLgrmNoNA9ogxYDlf
	z/MqAWJh4/lBqoGaHPalOwP56BLn+SjTfX4GYWrRa5B0neIchOs5ocghmi9PGCVZDdFSs0caL
	ImfmrZxJNB5LtdUj6b2eVanQI1TctLMFLaHUbCi9cUKVpFtsSk05aeFEyxFHupUXW1AERbFAZ
	01JWpCDN/MZxwWr9OjnZKAC2RC6SJZpMY2ziYIZS160XB9O75IFRhYs6fY/bXO/Szdaqg+mkU
	ql0gWm8Q6b4PxX/4LCKcQG0+VySqBgd/5J/yINVkuDR3JmBzu5v5I+E5UZRE9Ow3DDfue0YBo
	v+vTi26ZL1Mmsa68eFidWneJHwNbnubRoa03dTHa89+VQ6sTauFb/zbDk6IMHUnZMuVFQ0cyR
	mrC+lcYzVK2r7ND6it1Nne6GMep0z/W8rfruURsENyeet73fmzA8SfevqXOOurIzd2R1GbMi2
	VctoW2sRrRw0WsIh8j9BuNdnE0pBAAA
X-Env-Sender: Frank.Earl@flextronics.com
X-Msg-Ref: server-11.tower-54.messagelabs.com!1476458814!117911400!1
X-Originating-IP: [63.245.192.220]
X-StarScan-Received: 
X-StarScan-Version: 8.84; banners=flextronics.com,-,-
X-VirusChecked: Checked
Received: (qmail 39727 invoked from network); 14 Oct 2016 15:26:55 -0000
Received: from unknown (HELO NAM01-BY2-obe.outbound.protection.outlook.com)
	(63.245.192.220)
	by server-11.tower-54.messagelabs.com with AES256-SHA256 encrypted SMTP;
	14 Oct 2016 15:26:55 -0000
Received: from DM2PR08MB720.namprd08.prod.outlook.com (10.141.87.23) by
	DM2PR08MB717.namprd08.prod.outlook.com (10.141.86.25) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.669.16; Fri, 14 Oct 2016 15:26:53 +0000
Received: from DM2PR08MB720.namprd08.prod.outlook.com ([10.141.87.23]) by
	DM2PR08MB720.namprd08.prod.outlook.com ([10.141.87.23]) with mapi id
	15.01.0669.014; Fri, 14 Oct 2016 15:26:53 +0000
From: Frank Earl <Frank.Earl@flextronics.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-raspberrypi] Master doesn't seem to be building right...
Thread-Index: AdImLHglZDHPVtYETbW+Yqt1wvYtaA==
Date: Fri, 14 Oct 2016 15:26:53 +0000
Message-ID: <DM2PR08MB7209533987800927B4C9AAD98DF0@DM2PR08MB720.namprd08.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [158.116.144.13]
x-ms-office365-filtering-correlation-id: 36fcffdb-c817-4a68-2ecb-08d3f44686d8
x-microsoft-exchange-diagnostics: 1; DM2PR08MB717;
	7:vw9pPpsHrpps3LY7Yzcrdl5520qFd7wVxrWx3ZsL8AFB9Ci964MimgAn5PZ3jBOLeMI8wsKOJ3FCZL4FuNEC/NcntQfEpLZtrC/6UjCPe/SDBEfYIyAjpW0nuBFUElv8HlBcbFoATlRFRrbHtjpTcyf62tmM3AlLlZi63OwbuKywoussgaQ2e/1YWuEH2a9CAVVCPcM+Hxz8QJjZzhdrvhvaeYfc4vmGEA7P6pvf1lh8uagA/YoKTu7dufYPXYfm/rS/NVjHqKCJhYvieA45oJVaBt912VZHO4P6CScXH6OtieEnuWlaMuWngFS2vqo7fafdpmnvpaZGgSLDxAMHWKHZUsRlZCO+osQM7juyzs8=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM2PR08MB717;
x-microsoft-antispam-prvs: <DM2PR08MB71740A79AF803E5F2EC640498DF0@DM2PR08MB717.namprd08.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415321)(6040176)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6055026);
	SRVR:DM2PR08MB717; BCL:0; PCL:0; RULEID:; SRVR:DM2PR08MB717; 
x-forefront-prvs: 0095BCF226
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(189002)(199003)(110136003)(7696004)(11100500001)(107886002)(5660300001)(5002640100001)(189998001)(76576001)(5630700001)(5640700001)(2906002)(97736004)(6916009)(10400500002)(2900100001)(1730700003)(81156014)(81166006)(8676002)(74316002)(7846002)(7736002)(92566002)(87936001)(86362001)(77096005)(15975445007)(450100001)(122556002)(3846002)(790700001)(586003)(102836003)(6116002)(19300405004)(3280700002)(3660700001)(2351001)(66066001)(229853001)(33656002)(54356999)(19625215002)(106356001)(105586002)(50986999)(99286002)(16236675004)(99936001)(68736007)(19580395003)(8936002)(5890100001)(2501003)(101416001)(9686002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR08MB717;
	H:DM2PR08MB720.namprd08.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: flextronics.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: flextronics.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2016 15:26:53.3532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f0e69e0-eb38-4eb2-b4ee-52919719d31e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR08MB717
X-CFilter-Loop: Reflected
Subject: [meta-raspberrypi] Master doesn't seem to be building right...
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
X-List-Received-Date: Fri, 14 Oct 2016 15:34:43 -0000
X-Groupsio-MsgNum: 32409
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_005_DM2PR08MB7209533987800927B4C9AAD98DF0DM2PR08MB720namprd_"

--_005_DM2PR08MB7209533987800927B4C9AAD98DF0DM2PR08MB720namprd_
Content-Type: multipart/alternative;
	boundary="_000_DM2PR08MB7209533987800927B4C9AAD98DF0DM2PR08MB720namprd_"

--_000_DM2PR08MB7209533987800927B4C9AAD98DF0DM2PR08MB720namprd_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

It's boggling on the sd card image build.  Attached is the console output =
from the build (Don't need the log, this one's clear from the build fail o=
utput.) and a dump of the directory structures in tmp/deploy/images/raspbe=
rrypi2 from my setup.

It's choking on trying to put the overlays onto the sd card image:

/home/frank/git_repos/guardhat/build/tmp/deploy/images/raspberrypi2/Image-=
hifiberry-amp.dtbo: No such file or directory
| WARNING: /home/frank/git_repos/guardhat/build/tmp/work/raspberrypi2-poky=
-linux-gnueabi/gh-base-image/1.0-r0/temp/run.do_image_rpi_sdimg.26079:1 ex=
it 1 from 'mcopy -i /home/frank/git_repos/guardhat/build/tmp/work/raspberr=
ypi2-poky-linux-gnueabi/gh-base-image/1.0-r0/boot.img -s /home/frank/git_r=
epos/guardhat/build/tmp/deploy/images/raspberrypi2/Image-${DTB_BASE_NAME}.=
${DTB_EXT} ::overlays/${DTB_BASE_NAME}.${DTB_EXT}'


Directory path:

  4 -rw-r--r-- 2 frank frank      779 Oct 13 20:27 /home/frank/git_repos/g=
uardhat/build/tmp/deploy/images/raspberrypi2/Image-1-4.4.23+git0+c2a1d9755=
3-r0-hifiberry-amp.dtbo-20161014012231.dtb

So, the backing file seems to be there...but...

    4 lrwxrwxrwx 1 frank frank       71 Oct 13 20:45 /home/frank/git_repos=
/guardhat/build/tmp/deploy/images/raspberrypi2/Image-hifiberry-amp.dtbo.dt=
b -> Image-1-4.4.23+git0+c2a1d97553-r0-hifiberry-amp.dtbo-20161014012231.d=
tb


Heh...  Something's not QUITE right there.  The packager is looking for .d=
tbo's and we're symlinking .dtb's...    I'm looking through the path tryin=
g to understand how it's setting the 'latest-build' symlinks, but if someo=
ne actually has a hint for me, it'd be appreciated.  :-D



Frank Earl



Frank Earl



Legal Disclaimer:
The information contained in this message may be privileged and confidenti=
al. It is intended to be read only by the individual or entity to whom it =
is addressed or by their designee. If the reader of this message is not th=
e intended recipient, you are on notice that any distribution of this mess=
age, in any form, is strictly prohibited. If you have received this messag=
e in error, please immediately notify the sender and delete or destroy any=
 copy of this message!

--_000_DM2PR08MB7209533987800927B4C9AAD98DF0DM2PR08MB720namprd_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-mic=
rosoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word=
" xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"ht=
tp://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii=
">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
=09{font-family:Calibri;
=09panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
=09{margin:0in;
=09margin-bottom:.0001pt;
=09font-size:11.0pt;
=09font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
=09{mso-style-priority:99;
=09color:blue;
=09text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
=09{mso-style-priority:99;
=09color:purple;
=09text-decoration:underline;}
span.EmailStyle17
=09{mso-style-type:personal-compose;
=09font-family:"Calibri","sans-serif";
=09color:windowtext;}
.MsoChpDefault
=09{mso-style-type:export-only;
=09font-family:"Calibri","sans-serif";}
@page WordSection1
=09{size:8.5in 11.0in;
=09margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
=09{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"text-autospace:none">It&#8217;s boggling o=
n the sd card image build.&nbsp; Attached is the console output from the b=
uild (Don&#8217;t need the log, this one&#8217;s clear from the build fail=
 output.) and a dump of the directory structures in tmp/deploy/images/rasp=
berrypi2
 from my setup.<br>
<br>
It&#8217;s choking on trying to put the overlays onto the sd card image:<b=
r>
<br>
<span style=3D"font-family:&quot;Courier New&quot;">/home/frank/git_repos/=
guardhat/build/tmp/deploy/images/raspberrypi2/Image-hifiberry-amp.dtbo: No=
 such file or directory</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-f=
amily:&quot;Courier New&quot;">| WARNING: /home/frank/git_repos/guardhat/b=
uild/tmp/work/raspberrypi2-poky-linux-gnueabi/gh-base-image/1.0-r0/temp/ru=
n.do_image_rpi_sdimg.26079:1 exit 1 from 'mcopy -i
 /home/frank/git_repos/guardhat/build/tmp/work/raspberrypi2-poky-linux-gnu=
eabi/gh-base-image/1.0-r0/boot.img -s /home/frank/git_repos/guardhat/build=
/tmp/deploy/images/raspberrypi2/Image-${DTB_BASE_NAME}.${DTB_EXT} ::overla=
ys/${DTB_BASE_NAME}.${DTB_EXT}'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><o:p>&nbsp;</o:p></p>=

<p class=3D"MsoNormal" style=3D"text-autospace:none"><br>
Directory path:<br>
<br>
<span style=3D"font-family:&quot;Courier New&quot;">&nbsp; 4 -rw-r--r-- 2 =
frank frank&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 779 Oct 13 20:27 /home/frank/git=
_repos/guardhat/build/tmp/deploy/images/raspberrypi2/Image-1-4.4.23&#43;gi=
t0&#43;c2a1d97553-r0-hifiberry-amp.dtbo-20161014012231.dtb</span><o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">So, the backing file =
seems to be there&#8230;but&#8230;<br>
<br>
<span style=3D"font-family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp; 4 l=
rwxrwxrwx 1 frank frank&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 71 Oct 13 20:4=
5 /home/frank/git_repos/guardhat/build/tmp/deploy/images/raspberrypi2/Imag=
e-hifiberry-amp.dtbo.dtb -&gt; Image-1-4.4.23&#43;git0&#43;c2a1d97553-r0-h=
ifiberry-amp.dtbo-20161014012231.dtb</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><br>
Heh&#8230;&nbsp; Something&#8217;s not QUITE right there.&nbsp; The packag=
er is looking for .dtbo&#8217;s and we&#8217;re symlinking .dtb&#8217;s&#8=
230;&nbsp;&nbsp;&nbsp; I&#8217;m looking through the path trying to unders=
tand how it&#8217;s setting the &#8216;latest-build&#8217; symlinks, but i=
f someone actually has a hint for me, it&#8217;d be
 appreciated.&nbsp; :-D<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Frank Earl<br>
<br>
<o:p></o:p></p>
<p class=3D"MsoNormal"><br>
<br>
Frank Earl<br>
<br>
<br>
<o:p></o:p></p>
</div>
<br clear=3D"both">
Legal Disclaimer:<BR>
The information contained in this message may be privileged and confidenti=
al. It is intended to be read only by the individual or entity to whom it =
is addressed or by their designee. If the reader of this message is not th=
e intended recipient, you are on notice that any distribution of this mess=
age, in any form, is strictly prohibited. If you have received this messag=
e in error, please immediately notify the sender and delete or destroy any=
 copy of this message!<BR>
</body>
</html>

--_000_DM2PR08MB7209533987800927B4C9AAD98DF0DM2PR08MB720namprd_--

--_005_DM2PR08MB7209533987800927B4C9AAD98DF0DM2PR08MB720namprd_
Content-Type: text/plain; name="build_fail.txt"
Content-Description: build_fail.txt
Content-Disposition: attachment; filename="build_fail.txt"; size=3516;
	creation-date="Fri, 14 Oct 2016 15:06:50 GMT";
	modification-date="Fri, 14 Oct 2016 19:19:50 GMT"
Content-Transfer-Encoding: base64

TG9hZGluZyBjYWNoZS4uLmRvbmUuCkxvYWRlZCAyNzQxIGVudHJpZXMgZnJvbSBkZXBlbmRlbmN5
IGNhY2hlLgpXQVJOSU5HOiBObyByZWNpcGVzIGF2YWlsYWJsZSBmb3I6CiAgL2hvbWUvZnJhbmsv
Z2l0X3JlcG9zL2d1YXJkaGF0L2J1aWxkLy4uL21ldGEtZ2gvcmVjaXBlcy1ic3AvdS1ib290L3Ut
Ym9vdC10aS1zdGFnaW5nXzIwMTUuMDcuYmJhcHBlbmQKTk9URTogUmVzb2x2aW5nIGFueSBtaXNz
aW5nIHRhc2sgcXVldWUgZGVwZW5kZW5jaWVzCgpCdWlsZCBDb25maWd1cmF0aW9uOgpCQl9WRVJT
SU9OICAgICAgICA9ICIxLjMwLjAiCkJVSUxEX1NZUyAgICAgICAgID0gIng4Nl82NC1saW51eCIK
TkFUSVZFTFNCU1RSSU5HICAgPSAidW5pdmVyc2FsIgpUQVJHRVRfU1lTICAgICAgICA9ICJhcm0t
cG9reS1saW51eC1nbnVlYWJpIgpNQUNISU5FICAgICAgICAgICA9ICJyYXNwYmVycnlwaTIiCkRJ
U1RSTyAgICAgICAgICAgID0gInBva3kiCkRJU1RST19WRVJTSU9OICAgID0gIjIuMS4xIgpUVU5F
X0ZFQVRVUkVTICAgICA9ICJhcm0gYXJtdjd2ZSB2ZnAgdGh1bWIgbmVvbiB2ZnB2NCBjYWxsY29u
dmVudGlvbi1oYXJkIGNvcnRleGE3IgpUQVJHRVRfRlBVICAgICAgICA9ICJoYXJkIgptZXRhICAg
ICAgICAgICAgICAKbWV0YS1wb2t5ICAgICAgICAgCm1ldGEteW9jdG8tYnNwICAgID0gImtyb2dv
dGg6ZTkzNTk2ZmU3NDkyN2UyZTJmNGRkN2Y2NzE5OTRjY2I5NzQ0Y2ZmOCIKbWV0YS1saW5hcm8t
dG9vbGNoYWluID0gImtyb2dvdGg6ODVmYWY2YzY4MjQ1OTdlN2ZkOWUyZDM1ZmM5ZDhkYTJlOWY5
MGJjNyIKbWV0YS1vZSAgICAgICAgICAgCm1ldGEtZmlsZXN5c3RlbXMgIAptZXRhLW5ldHdvcmtp
bmcgICAKbWV0YS1tdWx0aW1lZGlhICAgCm1ldGEtaW5pdHJhbWZzICAgIAptZXRhLXN5c3RlbWQg
ICAgICAKbWV0YS1weXRob24gICAgICAgPSAia3JvZ290aDo4NTFhMDY0YjUzZGNhM2IxNGRkMzNl
YWFhY2E5NTczYjFhMzZiZjBlIgptZXRhLXRlbGVwaG9ueSAgICA9ICJIRUFEOjhjZjVhNjc4NTBh
ZGYyNzBiYzJmZGI0YzBlZDcwOGIwYmEwMzc2NzAiCm1ldGEtZ2ggICAgICAgICAgID0gIm1hc3Rl
cjoxMmRjMTI0NTZlN2Y2ZjQ4NmNhMjgxNTYwM2M1ZjIxZjc0YzJkMmMyIgptZXRhLXRpICAgICAg
ICAgICA9ICJtYXN0ZXI6NmNiNzc5YTZiYTFiMDY5M2Y2YmY4Mjc3N2UxYTMzM2VmZmU2ZmNhNSIK
bWV0YS1yYXNwYmVycnlwaSAgPSAibWFzdGVyOjA1YmU5NDdhMzFkZjg3MzQwNWNkZDcwYWRhMjEw
YzlmN2Y3YjEzMmYiCgpOT1RFOiBQcmVwYXJpbmcgUnVuUXVldWUKTk9URTogRXhlY3V0aW5nIFNl
dFNjZW5lIFRhc2tzCk5PVEU6IEV4ZWN1dGluZyBSdW5RdWV1ZSBUYXNrcwpOT1RFOiBSdW5uaW5n
IHRhc2sgMzAzNCBvZiAzMzIwIChJRDogMTYsIC9ob21lL2ZyYW5rL2dpdF9yZXBvcy9ndWFyZGhh
dC9idWlsZC8uLi9tZXRhLWdoL3JlY2lwZXMtY29yZS9pbWFnZXMvZ2gtYmFzZS1pbWFnZS5iYiwg
ZG9faW1hZ2VfcnBpX3NkaW1nKQpOT1RFOiByZWNpcGUgZ2gtYmFzZS1pbWFnZS0xLjAtcjA6IHRh
c2sgZG9faW1hZ2VfcnBpX3NkaW1nOiBTdGFydGVkCkxvZyBkYXRhIGZvbGxvd3M6CnwgREVCVUc6
IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gc2V0X2ltYWdlX3NpemUKfCBERUJVRzogUHl0aG9u
IGZ1bmN0aW9uIHNldF9pbWFnZV9zaXplIGZpbmlzaGVkCnwgREVCVUc6IEV4ZWN1dGluZyBzaGVs
bCBmdW5jdGlvbiBkb19pbWFnZV9ycGlfc2RpbWcKfCBDcmVhdGluZyBmaWxlc3lzdGVtIHdpdGgg
Qm9vdCBwYXJ0aXRpb24gNDA5NjAgS2lCIGFuZCBSb290RlMgMjUzOTUyIEtpQgp8IDArMCByZWNv
cmRzIGluCnwgMCswIHJlY29yZHMgb3V0CnwgMCBieXRlcyAoMCBCKSBjb3BpZWQsIDEuMTI1ZS0w
NSBzLCAwLjAga0Ivcwp8IE1vZGVsOiAgKGZpbGUpCnwgRGlzayAvZ2gtYmFzZS1pbWFnZS1yYXNw
YmVycnlwaTItMjAxNjEwMTQxNDE5NDUucm9vdGZzLnJwaS1zZGltZzogMzA2TUIKfCBTZWN0b3Ig
c2l6ZSAobG9naWNhbC9waHlzaWNhbCk6IDUxMkIvNTEyQgp8IFBhcnRpdGlvbiBUYWJsZTogbXNk
b3MKfCBEaXNrIEZsYWdzOgp8IAp8IE51bWJlciAgU3RhcnQgICBFbmQgICAgIFNpemUgICAgVHlw
ZSAgICAgRmlsZSBzeXN0ZW0gIEZsYWdzCnwgIDEgICAgICA0MTk0a0IgIDQ2LjFNQiAgNDEuOU1C
ICBwcmltYXJ5ICAgICAgICAgICAgICAgYm9vdCwgbGJhCnwgIDIgICAgICA0Ni4xTUIgIDMwNk1C
ICAgMjYwTUIgICBwcmltYXJ5CnwgCnwgbWtmcy5mYXQ6IHdhcm5pbmcgLSBsb3dlcmNhc2UgbGFi
ZWxzIG1pZ2h0IG5vdCB3b3JrIHByb3Blcmx5IHdpdGggRE9TIG9yIFdpbmRvd3MKfCBta2ZzLmZh
dCAzLjAuMjggKDIwMTUtMDUtMTYpCnwgL2hvbWUvZnJhbmsvZ2l0X3JlcG9zL2d1YXJkaGF0L2J1
aWxkL3RtcC9kZXBsb3kvaW1hZ2VzL3Jhc3BiZXJyeXBpMi9JbWFnZS1oaWZpYmVycnktYW1wLmR0
Ym86IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKfCBXQVJOSU5HOiAvaG9tZS9mcmFuay9naXRf
cmVwb3MvZ3VhcmRoYXQvYnVpbGQvdG1wL3dvcmsvcmFzcGJlcnJ5cGkyLXBva3ktbGludXgtZ251
ZWFiaS9naC1iYXNlLWltYWdlLzEuMC1yMC90ZW1wL3J1bi5kb19pbWFnZV9ycGlfc2RpbWcuMjYw
Nzk6MSBleGl0IDEgZnJvbSAnbWNvcHkgLWkgL2hvbWUvZnJhbmsvZ2l0X3JlcG9zL2d1YXJkaGF0
L2J1aWxkL3RtcC93b3JrL3Jhc3BiZXJyeXBpMi1wb2t5LWxpbnV4LWdudWVhYmkvZ2gtYmFzZS1p
bWFnZS8xLjAtcjAvYm9vdC5pbWcgLXMgL2hvbWUvZnJhbmsvZ2l0X3JlcG9zL2d1YXJkaGF0L2J1
aWxkL3RtcC9kZXBsb3kvaW1hZ2VzL3Jhc3BiZXJyeXBpMi9JbWFnZS0ke0RUQl9CQVNFX05BTUV9
LiR7RFRCX0VYVH0gOjpvdmVybGF5cy8ke0RUQl9CQVNFX05BTUV9LiR7RFRCX0VYVH0nCnwgRVJS
T1I6IEZ1bmN0aW9uIGZhaWxlZDogZG9faW1hZ2VfcnBpX3NkaW1nIChsb2cgZmlsZSBpcyBsb2Nh
dGVkIGF0IC9ob21lL2ZyYW5rL2dpdF9yZXBvcy9ndWFyZGhhdC9idWlsZC90bXAvd29yay9yYXNw
YmVycnlwaTItcG9reS1saW51eC1nbnVlYWJpL2doLWJhc2UtaW1hZ2UvMS4wLXIwL3RlbXAvbG9n
LmRvX2ltYWdlX3JwaV9zZGltZy4yNjA3OSkKTk9URTogcmVjaXBlIGdoLWJhc2UtaW1hZ2UtMS4w
LXIwOiB0YXNrIGRvX2ltYWdlX3JwaV9zZGltZzogRmFpbGVkCk5PVEU6IFRhc2tzIFN1bW1hcnk6
IEF0dGVtcHRlZCAzMzE4IHRhc2tzIG9mIHdoaWNoIDMzMTcgZGlkbid0IG5lZWQgdG8gYmUgcmVy
dW4gYW5kIDEgZmFpbGVkLgoKU3VtbWFyeTogMSB0YXNrIGZhaWxlZDoKICAvaG9tZS9mcmFuay9n
aXRfcmVwb3MvZ3VhcmRoYXQvYnVpbGQvLi4vbWV0YS1naC9yZWNpcGVzLWNvcmUvaW1hZ2VzL2do
LWJhc2UtaW1hZ2UuYmIsIGRvX2ltYWdlX3JwaV9zZGltZwpTdW1tYXJ5OiBUaGVyZSB3YXMgMSBX
QVJOSU5HIG1lc3NhZ2Ugc2hvd24uClN1bW1hcnk6IFRoZXJlIHdhcyAxIEVSUk9SIG1lc3NhZ2Ug
c2hvd24sIHJldHVybmluZyBhIG5vbi16ZXJvIGV4aXQgY29kZS4K

--_005_DM2PR08MB7209533987800927B4C9AAD98DF0DM2PR08MB720namprd_
Content-Type: text/plain; name="directory-dtbo-dump.txt"
Content-Description: directory-dtbo-dump.txt
Content-Disposition: attachment; filename="directory-dtbo-dump.txt";
	size=8825; creation-date="Fri, 14 Oct 2016 15:06:50 GMT";
	modification-date="Fri, 14 Oct 2016 19:31:20 GMT"
Content-Transfer-Encoding: base64

ICAgMTYgLXJ3LXItLXItLSAyIGZyYW5rIGZyYW5rICAgIDE0MDEwIE9jdCAxMyAyMDoyNyAvaG9t
ZS9mcmFuay9naXRfcmVwb3MvZ3VhcmRoYXQvYnVpbGQvdG1wL2RlcGxveS9pbWFnZXMvcmFzcGJl
cnJ5cGkyL0ltYWdlLTEtNC40LjIzK2dpdDArYzJhMWQ5NzU1My1yMC1iY20yNzA4LXJwaS1iLTIw
MTYxMDE0MDEyMjMxLmR0YgogICAxNiAtcnctci0tci0tIDIgZnJhbmsgZnJhbmsgICAgMTQyNzMg
T2N0IDEzIDIwOjI3IC9ob21lL2ZyYW5rL2dpdF9yZXBvcy9ndWFyZGhhdC9idWlsZC90bXAvZGVw
bG95L2ltYWdlcy9yYXNwYmVycnlwaTIvSW1hZ2UtMS00LjQuMjMrZ2l0MCtjMmExZDk3NTUzLXIw
LWJjbTI3MDgtcnBpLWItcGx1cy0yMDE2MTAxNDAxMjIzMS5kdGIKICAgMTYgLXJ3LXItLXItLSAy
IGZyYW5rIGZyYW5rICAgIDE1MzU2IE9jdCAxMyAyMDoyNyAvaG9tZS9mcmFuay9naXRfcmVwb3Mv
Z3VhcmRoYXQvYnVpbGQvdG1wL2RlcGxveS9pbWFnZXMvcmFzcGJlcnJ5cGkyL0ltYWdlLTEtNC40
LjIzK2dpdDArYzJhMWQ5NzU1My1yMC1iY20yNzA5LXJwaS0yLWItMjAxNjEwMTQwMTIyMzEuZHRi
CiAgIDE2IC1ydy1yLS1yLS0gMiBmcmFuayBmcmFuayAgICAxNTk5MiBPY3QgMTMgMjA6MjcgL2hv
bWUvZnJhbmsvZ2l0X3JlcG9zL2d1YXJkaGF0L2J1aWxkL3RtcC9kZXBsb3kvaW1hZ2VzL3Jhc3Bi
ZXJyeXBpMi9JbWFnZS0xLTQuNC4yMytnaXQwK2MyYTFkOTc1NTMtcjAtYmNtMjcxMC1ycGktMy1i
LTIwMTYxMDE0MDEyMjMxLmR0YgogICAgNCAtcnctci0tci0tIDIgZnJhbmsgZnJhbmsgICAgICA3
NzkgT2N0IDEzIDIwOjI3IC9ob21lL2ZyYW5rL2dpdF9yZXBvcy9ndWFyZGhhdC9idWlsZC90bXAv
ZGVwbG95L2ltYWdlcy9yYXNwYmVycnlwaTIvSW1hZ2UtMS00LjQuMjMrZ2l0MCtjMmExZDk3NTUz
LXIwLWhpZmliZXJyeS1hbXAuZHRiby0yMDE2MTAxNDAxMjIzMS5kdGIKICAgIDQgLXJ3LXItLXIt
LSAyIGZyYW5rIGZyYW5rICAgICAgNjU1IE9jdCAxMyAyMDoyNyAvaG9tZS9mcmFuay9naXRfcmVw
b3MvZ3VhcmRoYXQvYnVpbGQvdG1wL2RlcGxveS9pbWFnZXMvcmFzcGJlcnJ5cGkyL0ltYWdlLTEt
NC40LjIzK2dpdDArYzJhMWQ5NzU1My1yMC1oaWZpYmVycnktZGFjLmR0Ym8tMjAxNjEwMTQwMTIy
MzEuZHRiCiAgICA0IC1ydy1yLS1yLS0gMiBmcmFuayBmcmFuayAgICAgMTQzNiBPY3QgMTMgMjA6
MjcgL2hvbWUvZnJhbmsvZ2l0X3JlcG9zL2d1YXJkaGF0L2J1aWxkL3RtcC9kZXBsb3kvaW1hZ2Vz
L3Jhc3BiZXJyeXBpMi9JbWFnZS0xLTQuNC4yMytnaXQwK2MyYTFkOTc1NTMtcjAtaGlmaWJlcnJ5
LWRhY3BsdXMuZHRiby0yMDE2MTAxNDAxMjIzMS5kdGIKICAgIDQgLXJ3LXItLXItLSAyIGZyYW5r
IGZyYW5rICAgICAgNzgzIE9jdCAxMyAyMDoyNyAvaG9tZS9mcmFuay9naXRfcmVwb3MvZ3VhcmRo
YXQvYnVpbGQvdG1wL2RlcGxveS9pbWFnZXMvcmFzcGJlcnJ5cGkyL0ltYWdlLTEtNC40LjIzK2dp
dDArYzJhMWQ5NzU1My1yMC1oaWZpYmVycnktZGlnaS5kdGJvLTIwMTYxMDE0MDEyMjMxLmR0Ygog
ICAgNCAtcnctci0tci0tIDIgZnJhbmsgZnJhbmsgICAgIDIyMTkgT2N0IDEzIDIwOjI3IC9ob21l
L2ZyYW5rL2dpdF9yZXBvcy9ndWFyZGhhdC9idWlsZC90bXAvZGVwbG95L2ltYWdlcy9yYXNwYmVy
cnlwaTIvSW1hZ2UtMS00LjQuMjMrZ2l0MCtjMmExZDk3NTUzLXIwLWkyYy1ydGMuZHRiby0yMDE2
MTAxNDAxMjIzMS5kdGIKICAgIDQgLXJ3LXItLXItLSAyIGZyYW5rIGZyYW5rICAgICAxMDE1IE9j
dCAxMyAyMDoyNyAvaG9tZS9mcmFuay9naXRfcmVwb3MvZ3VhcmRoYXQvYnVpbGQvdG1wL2RlcGxv
eS9pbWFnZXMvcmFzcGJlcnJ5cGkyL0ltYWdlLTEtNC40LjIzK2dpdDArYzJhMWQ5NzU1My1yMC1p
cWF1ZGlvLWRhYy5kdGJvLTIwMTYxMDE0MDEyMjMxLmR0YgogICAgNCAtcnctci0tci0tIDIgZnJh
bmsgZnJhbmsgICAgIDEyNTQgT2N0IDEzIDIwOjI3IC9ob21lL2ZyYW5rL2dpdF9yZXBvcy9ndWFy
ZGhhdC9idWlsZC90bXAvZGVwbG95L2ltYWdlcy9yYXNwYmVycnlwaTIvSW1hZ2UtMS00LjQuMjMr
Z2l0MCtjMmExZDk3NTUzLXIwLWlxYXVkaW8tZGFjcGx1cy5kdGJvLTIwMTYxMDE0MDEyMjMxLmR0
YgogICAgNCAtcnctci0tci0tIDIgZnJhbmsgZnJhbmsgICAgIDEzNDggT2N0IDEzIDIwOjI3IC9o
b21lL2ZyYW5rL2dpdF9yZXBvcy9ndWFyZGhhdC9idWlsZC90bXAvZGVwbG95L2ltYWdlcy9yYXNw
YmVycnlwaTIvSW1hZ2UtMS00LjQuMjMrZ2l0MCtjMmExZDk3NTUzLXIwLWxpcmMtcnBpLmR0Ym8t
MjAxNjEwMTQwMTIyMzEuZHRiCiAgICA0IC1ydy1yLS1yLS0gMiBmcmFuayBmcmFuayAgICAgMTA5
NyBPY3QgMTMgMjA6MjcgL2hvbWUvZnJhbmsvZ2l0X3JlcG9zL2d1YXJkaGF0L2J1aWxkL3RtcC9k
ZXBsb3kvaW1hZ2VzL3Jhc3BiZXJyeXBpMi9JbWFnZS0xLTQuNC4yMytnaXQwK2MyYTFkOTc1NTMt
cjAtcGkzLW1pbml1YXJ0LWJ0LmR0Ym8tMjAxNjEwMTQwMTIyMzEuZHRiCiAgICA0IC1ydy1yLS1y
LS0gMiBmcmFuayBmcmFuayAgICAgMTU0NCBPY3QgMTMgMjA6MjcgL2hvbWUvZnJhbmsvZ2l0X3Jl
cG9zL2d1YXJkaGF0L2J1aWxkL3RtcC9kZXBsb3kvaW1hZ2VzL3Jhc3BiZXJyeXBpMi9JbWFnZS0x
LTQuNC4yMytnaXQwK2MyYTFkOTc1NTMtcjAtcGl0ZnQyMi5kdGJvLTIwMTYxMDE0MDEyMjMxLmR0
YgogICAgNCAtcnctci0tci0tIDIgZnJhbmsgZnJhbmsgICAgIDI4MDIgT2N0IDEzIDIwOjI3IC9o
b21lL2ZyYW5rL2dpdF9yZXBvcy9ndWFyZGhhdC9idWlsZC90bXAvZGVwbG95L2ltYWdlcy9yYXNw
YmVycnlwaTIvSW1hZ2UtMS00LjQuMjMrZ2l0MCtjMmExZDk3NTUzLXIwLXBpdGZ0MjgtcmVzaXN0
aXZlLmR0Ym8tMjAxNjEwMTQwMTIyMzEuZHRiCiAgICA0IC1ydy1yLS1yLS0gMiBmcmFuayBmcmFu
ayAgICAgMTA0MyBPY3QgMTMgMjA6MjcgL2hvbWUvZnJhbmsvZ2l0X3JlcG9zL2d1YXJkaGF0L2J1
aWxkL3RtcC9kZXBsb3kvaW1hZ2VzL3Jhc3BiZXJyeXBpMi9JbWFnZS0xLTQuNC4yMytnaXQwK2My
YTFkOTc1NTMtcjAtcHBzLWdwaW8uZHRiby0yMDE2MTAxNDAxMjIzMS5kdGIKIDkwNDQgLXJ3LXIt
LXItLSAyIGZyYW5rIGZyYW5rICA5MjYxMDU2IE9jdCAxMyAyMDoyNyAvaG9tZS9mcmFuay9naXRf
cmVwb3MvZ3VhcmRoYXQvYnVpbGQvdG1wL2RlcGxveS9pbWFnZXMvcmFzcGJlcnJ5cGkyL0ltYWdl
LTEtNC40LjIzK2dpdDArYzJhMWQ5NzU1My1yMC1yYXNwYmVycnlwaTItMjAxNjEwMTQwMTIyMzEu
YmluCiAgICA0IC1ydy1yLS1yLS0gMiBmcmFuayBmcmFuayAgICAgIDQ2MiBPY3QgMTMgMjA6Mjcg
L2hvbWUvZnJhbmsvZ2l0X3JlcG9zL2d1YXJkaGF0L2J1aWxkL3RtcC9kZXBsb3kvaW1hZ2VzL3Jh
c3BiZXJyeXBpMi9JbWFnZS0xLTQuNC4yMytnaXQwK2MyYTFkOTc1NTMtcjAtcnBpLWZ0NTQwNi5k
dGJvLTIwMTYxMDE0MDEyMjMxLmR0YgogICAgNCAtcnctci0tci0tIDIgZnJhbmsgZnJhbmsgICAg
IDI3MjIgT2N0IDEzIDIwOjI3IC9ob21lL2ZyYW5rL2dpdF9yZXBvcy9ndWFyZGhhdC9idWlsZC90
bXAvZGVwbG95L2ltYWdlcy9yYXNwYmVycnlwaTIvSW1hZ2UtMS00LjQuMjMrZ2l0MCtjMmExZDk3
NTUzLXIwLXZjNC1rbXMtdjNkLmR0Ym8tMjAxNjEwMTQwMTIyMzEuZHRiCiAgICA0IC1ydy1yLS1y
LS0gMiBmcmFuayBmcmFuayAgICAgMTA4MCBPY3QgMTMgMjA6MjcgL2hvbWUvZnJhbmsvZ2l0X3Jl
cG9zL2d1YXJkaGF0L2J1aWxkL3RtcC9kZXBsb3kvaW1hZ2VzL3Jhc3BiZXJyeXBpMi9JbWFnZS0x
LTQuNC4yMytnaXQwK2MyYTFkOTc1NTMtcjAtdzEtZ3Bpby5kdGJvLTIwMTYxMDE0MDEyMjMxLmR0
YgogICAgNCAtcnctci0tci0tIDIgZnJhbmsgZnJhbmsgICAgIDEyMTUgT2N0IDEzIDIwOjI3IC9o
b21lL2ZyYW5rL2dpdF9yZXBvcy9ndWFyZGhhdC9idWlsZC90bXAvZGVwbG95L2ltYWdlcy9yYXNw
YmVycnlwaTIvSW1hZ2UtMS00LjQuMjMrZ2l0MCtjMmExZDk3NTUzLXIwLXcxLWdwaW8tcHVsbHVw
LmR0Ym8tMjAxNjEwMTQwMTIyMzEuZHRiCiAgICA0IGxyd3hyd3hyd3ggMSBmcmFuayBmcmFuayAg
ICAgICA2NiBPY3QgMTMgMjA6NDUgL2hvbWUvZnJhbmsvZ2l0X3JlcG9zL2d1YXJkaGF0L2J1aWxk
L3RtcC9kZXBsb3kvaW1hZ2VzL3Jhc3BiZXJyeXBpMi9JbWFnZS1iY20yNzA4LXJwaS1iLmR0YiAt
PiBJbWFnZS0xLTQuNC4yMytnaXQwK2MyYTFkOTc1NTMtcjAtYmNtMjcwOC1ycGktYi0yMDE2MTAx
NDAxMjIzMS5kdGIKICAgIDQgbHJ3eHJ3eHJ3eCAxIGZyYW5rIGZyYW5rICAgICAgIDcxIE9jdCAx
MyAyMDo0NSAvaG9tZS9mcmFuay9naXRfcmVwb3MvZ3VhcmRoYXQvYnVpbGQvdG1wL2RlcGxveS9p
bWFnZXMvcmFzcGJlcnJ5cGkyL0ltYWdlLWJjbTI3MDgtcnBpLWItcGx1cy5kdGIgLT4gSW1hZ2Ut
MS00LjQuMjMrZ2l0MCtjMmExZDk3NTUzLXIwLWJjbTI3MDgtcnBpLWItcGx1cy0yMDE2MTAxNDAx
MjIzMS5kdGIKICAgIDQgbHJ3eHJ3eHJ3eCAxIGZyYW5rIGZyYW5rICAgICAgIDY4IE9jdCAxMyAy
MDo0NSAvaG9tZS9mcmFuay9naXRfcmVwb3MvZ3VhcmRoYXQvYnVpbGQvdG1wL2RlcGxveS9pbWFn
ZXMvcmFzcGJlcnJ5cGkyL0ltYWdlLWJjbTI3MDktcnBpLTItYi5kdGIgLT4gSW1hZ2UtMS00LjQu
MjMrZ2l0MCtjMmExZDk3NTUzLXIwLWJjbTI3MDktcnBpLTItYi0yMDE2MTAxNDAxMjIzMS5kdGIK
ICAgIDQgbHJ3eHJ3eHJ3eCAxIGZyYW5rIGZyYW5rICAgICAgIDY4IE9jdCAxMyAyMDo0NSAvaG9t
ZS9mcmFuay9naXRfcmVwb3MvZ3VhcmRoYXQvYnVpbGQvdG1wL2RlcGxveS9pbWFnZXMvcmFzcGJl
cnJ5cGkyL0ltYWdlLWJjbTI3MTAtcnBpLTMtYi5kdGIgLT4gSW1hZ2UtMS00LjQuMjMrZ2l0MCtj
MmExZDk3NTUzLXIwLWJjbTI3MTAtcnBpLTMtYi0yMDE2MTAxNDAxMjIzMS5kdGIKICAgIDQgbHJ3
eHJ3eHJ3eCAxIGZyYW5rIGZyYW5rICAgICAgIDcxIE9jdCAxMyAyMDo0NSAvaG9tZS9mcmFuay9n
aXRfcmVwb3MvZ3VhcmRoYXQvYnVpbGQvdG1wL2RlcGxveS9pbWFnZXMvcmFzcGJlcnJ5cGkyL0lt
YWdlLWhpZmliZXJyeS1hbXAuZHRiby5kdGIgLT4gSW1hZ2UtMS00LjQuMjMrZ2l0MCtjMmExZDk3
NTUzLXIwLWhpZmliZXJyeS1hbXAuZHRiby0yMDE2MTAxNDAxMjIzMS5kdGIKICAgIDQgbHJ3eHJ3
eHJ3eCAxIGZyYW5rIGZyYW5rICAgICAgIDcxIE9jdCAxMyAyMDo0NSAvaG9tZS9mcmFuay9naXRf
cmVwb3MvZ3VhcmRoYXQvYnVpbGQvdG1wL2RlcGxveS9pbWFnZXMvcmFzcGJlcnJ5cGkyL0ltYWdl
LWhpZmliZXJyeS1kYWMuZHRiby5kdGIgLT4gSW1hZ2UtMS00LjQuMjMrZ2l0MCtjMmExZDk3NTUz
LXIwLWhpZmliZXJyeS1kYWMuZHRiby0yMDE2MTAxNDAxMjIzMS5kdGIKICAgIDQgbHJ3eHJ3eHJ3
eCAxIGZyYW5rIGZyYW5rICAgICAgIDc1IE9jdCAxMyAyMDo0NSAvaG9tZS9mcmFuay9naXRfcmVw
b3MvZ3VhcmRoYXQvYnVpbGQvdG1wL2RlcGxveS9pbWFnZXMvcmFzcGJlcnJ5cGkyL0ltYWdlLWhp
ZmliZXJyeS1kYWNwbHVzLmR0Ym8uZHRiIC0+IEltYWdlLTEtNC40LjIzK2dpdDArYzJhMWQ5NzU1
My1yMC1oaWZpYmVycnktZGFjcGx1cy5kdGJvLTIwMTYxMDE0MDEyMjMxLmR0YgogICAgNCBscnd4
cnd4cnd4IDEgZnJhbmsgZnJhbmsgICAgICAgNzIgT2N0IDEzIDIwOjQ1IC9ob21lL2ZyYW5rL2dp
dF9yZXBvcy9ndWFyZGhhdC9idWlsZC90bXAvZGVwbG95L2ltYWdlcy9yYXNwYmVycnlwaTIvSW1h
Z2UtaGlmaWJlcnJ5LWRpZ2kuZHRiby5kdGIgLT4gSW1hZ2UtMS00LjQuMjMrZ2l0MCtjMmExZDk3
NTUzLXIwLWhpZmliZXJyeS1kaWdpLmR0Ym8tMjAxNjEwMTQwMTIyMzEuZHRiCiAgICA0IGxyd3hy
d3hyd3ggMSBmcmFuayBmcmFuayAgICAgICA2NSBPY3QgMTMgMjA6NDUgL2hvbWUvZnJhbmsvZ2l0
X3JlcG9zL2d1YXJkaGF0L2J1aWxkL3RtcC9kZXBsb3kvaW1hZ2VzL3Jhc3BiZXJyeXBpMi9JbWFn
ZS1pMmMtcnRjLmR0Ym8uZHRiIC0+IEltYWdlLTEtNC40LjIzK2dpdDArYzJhMWQ5NzU1My1yMC1p
MmMtcnRjLmR0Ym8tMjAxNjEwMTQwMTIyMzEuZHRiCiAgICA0IGxyd3hyd3hyd3ggMSBmcmFuayBm
cmFuayAgICAgICA2OSBPY3QgMTMgMjA6NDUgL2hvbWUvZnJhbmsvZ2l0X3JlcG9zL2d1YXJkaGF0
L2J1aWxkL3RtcC9kZXBsb3kvaW1hZ2VzL3Jhc3BiZXJyeXBpMi9JbWFnZS1pcWF1ZGlvLWRhYy5k
dGJvLmR0YiAtPiBJbWFnZS0xLTQuNC4yMytnaXQwK2MyYTFkOTc1NTMtcjAtaXFhdWRpby1kYWMu
ZHRiby0yMDE2MTAxNDAxMjIzMS5kdGIKICAgIDQgbHJ3eHJ3eHJ3eCAxIGZyYW5rIGZyYW5rICAg
ICAgIDczIE9jdCAxMyAyMDo0NSAvaG9tZS9mcmFuay9naXRfcmVwb3MvZ3VhcmRoYXQvYnVpbGQv
dG1wL2RlcGxveS9pbWFnZXMvcmFzcGJlcnJ5cGkyL0ltYWdlLWlxYXVkaW8tZGFjcGx1cy5kdGJv
LmR0YiAtPiBJbWFnZS0xLTQuNC4yMytnaXQwK2MyYTFkOTc1NTMtcjAtaXFhdWRpby1kYWNwbHVz
LmR0Ym8tMjAxNjEwMTQwMTIyMzEuZHRiCiAgICA0IGxyd3hyd3hyd3ggMSBmcmFuayBmcmFuayAg
ICAgICA2NiBPY3QgMTMgMjA6NDUgL2hvbWUvZnJhbmsvZ2l0X3JlcG9zL2d1YXJkaGF0L2J1aWxk
L3RtcC9kZXBsb3kvaW1hZ2VzL3Jhc3BiZXJyeXBpMi9JbWFnZS1saXJjLXJwaS5kdGJvLmR0YiAt
PiBJbWFnZS0xLTQuNC4yMytnaXQwK2MyYTFkOTc1NTMtcjAtbGlyYy1ycGkuZHRiby0yMDE2MTAx
NDAxMjIzMS5kdGIKICAgIDQgbHJ3eHJ3eHJ3eCAxIGZyYW5rIGZyYW5rICAgICAgIDczIE9jdCAx
MyAyMDo0NSAvaG9tZS9mcmFuay9naXRfcmVwb3MvZ3VhcmRoYXQvYnVpbGQvdG1wL2RlcGxveS9p
bWFnZXMvcmFzcGJlcnJ5cGkyL0ltYWdlLXBpMy1taW5pdWFydC1idC5kdGJvLmR0YiAtPiBJbWFn
ZS0xLTQuNC4yMytnaXQwK2MyYTFkOTc1NTMtcjAtcGkzLW1pbml1YXJ0LWJ0LmR0Ym8tMjAxNjEw
MTQwMTIyMzEuZHRiCiAgICA0IGxyd3hyd3hyd3ggMSBmcmFuayBmcmFuayAgICAgICA2NSBPY3Qg
MTMgMjA6NDUgL2hvbWUvZnJhbmsvZ2l0X3JlcG9zL2d1YXJkaGF0L2J1aWxkL3RtcC9kZXBsb3kv
aW1hZ2VzL3Jhc3BiZXJyeXBpMi9JbWFnZS1waXRmdDIyLmR0Ym8uZHRiIC0+IEltYWdlLTEtNC40
LjIzK2dpdDArYzJhMWQ5NzU1My1yMC1waXRmdDIyLmR0Ym8tMjAxNjEwMTQwMTIyMzEuZHRiCiAg
ICA0IGxyd3hyd3hyd3ggMSBmcmFuayBmcmFuayAgICAgICA3NSBPY3QgMTMgMjA6NDUgL2hvbWUv
ZnJhbmsvZ2l0X3JlcG9zL2d1YXJkaGF0L2J1aWxkL3RtcC9kZXBsb3kvaW1hZ2VzL3Jhc3BiZXJy
eXBpMi9JbWFnZS1waXRmdDI4LXJlc2lzdGl2ZS5kdGJvLmR0YiAtPiBJbWFnZS0xLTQuNC4yMytn
aXQwK2MyYTFkOTc1NTMtcjAtcGl0ZnQyOC1yZXNpc3RpdmUuZHRiby0yMDE2MTAxNDAxMjIzMS5k
dGIKICAgIDQgbHJ3eHJ3eHJ3eCAxIGZyYW5rIGZyYW5rICAgICAgIDY2IE9jdCAxMyAyMDo0NSAv
aG9tZS9mcmFuay9naXRfcmVwb3MvZ3VhcmRoYXQvYnVpbGQvdG1wL2RlcGxveS9pbWFnZXMvcmFz
cGJlcnJ5cGkyL0ltYWdlLXBwcy1ncGlvLmR0Ym8uZHRiIC0+IEltYWdlLTEtNC40LjIzK2dpdDAr
YzJhMWQ5NzU1My1yMC1wcHMtZ3Bpby5kdGJvLTIwMTYxMDE0MDEyMjMxLmR0YgogICAgNCBscnd4
cnd4cnd4IDEgZnJhbmsgZnJhbmsgICAgICAgNjUgT2N0IDEzIDIwOjQ1IC9ob21lL2ZyYW5rL2dp
dF9yZXBvcy9ndWFyZGhhdC9idWlsZC90bXAvZGVwbG95L2ltYWdlcy9yYXNwYmVycnlwaTIvSW1h
Z2UtcmFzcGJlcnJ5cGkyLmJpbiAtPiBJbWFnZS0xLTQuNC4yMytnaXQwK2MyYTFkOTc1NTMtcjAt
cmFzcGJlcnJ5cGkyLTIwMTYxMDE0MDEyMjMxLmJpbgogICAgNCBscnd4cnd4cnd4IDEgZnJhbmsg
ZnJhbmsgICAgICAgNjggT2N0IDEzIDIwOjQ1IC9ob21lL2ZyYW5rL2dpdF9yZXBvcy9ndWFyZGhh
dC9idWlsZC90bXAvZGVwbG95L2ltYWdlcy9yYXNwYmVycnlwaTIvSW1hZ2UtcnBpLWZ0NTQwNi5k
dGJvLmR0YiAtPiBJbWFnZS0xLTQuNC4yMytnaXQwK2MyYTFkOTc1NTMtcjAtcnBpLWZ0NTQwNi5k
dGJvLTIwMTYxMDE0MDEyMjMxLmR0YgogICAgNCBscnd4cnd4cnd4IDEgZnJhbmsgZnJhbmsgICAg
ICAgNjkgT2N0IDEzIDIwOjQ1IC9ob21lL2ZyYW5rL2dpdF9yZXBvcy9ndWFyZGhhdC9idWlsZC90
bXAvZGVwbG95L2ltYWdlcy9yYXNwYmVycnlwaTIvSW1hZ2UtdmM0LWttcy12M2QuZHRiby5kdGIg
LT4gSW1hZ2UtMS00LjQuMjMrZ2l0MCtjMmExZDk3NTUzLXIwLXZjNC1rbXMtdjNkLmR0Ym8tMjAx
NjEwMTQwMTIyMzEuZHRiCiAgICA0IGxyd3hyd3hyd3ggMSBmcmFuayBmcmFuayAgICAgICA2NSBP
Y3QgMTMgMjA6NDUgL2hvbWUvZnJhbmsvZ2l0X3JlcG9zL2d1YXJkaGF0L2J1aWxkL3RtcC9kZXBs
b3kvaW1hZ2VzL3Jhc3BiZXJyeXBpMi9JbWFnZS13MS1ncGlvLmR0Ym8uZHRiIC0+IEltYWdlLTEt
NC40LjIzK2dpdDArYzJhMWQ5NzU1My1yMC13MS1ncGlvLmR0Ym8tMjAxNjEwMTQwMTIyMzEuZHRi
CiAgICA0IGxyd3hyd3hyd3ggMSBmcmFuayBmcmFuayAgICAgICA3MiBPY3QgMTMgMjA6NDUgL2hv
bWUvZnJhbmsvZ2l0X3JlcG9zL2d1YXJkaGF0L2J1aWxkL3RtcC9kZXBsb3kvaW1hZ2VzL3Jhc3Bi
ZXJyeXBpMi9JbWFnZS13MS1ncGlvLXB1bGx1cC5kdGJvLmR0YiAtPiBJbWFnZS0xLTQuNC4yMytn
aXQwK2MyYTFkOTc1NTMtcjAtdzEtZ3Bpby1wdWxsdXAuZHRiby0yMDE2MTAxNDAxMjIzMS5kdGIK
MTIyMDQgLXJ3LXItLXItLSAxIGZyYW5rIGZyYW5rIDQxOTQzMDQwIE9jdCAxNCAwOToxOSAvaG9t
ZS9mcmFuay9naXRfcmVwb3MvZ3VhcmRoYXQvYnVpbGQvdG1wL3dvcmsvcmFzcGJlcnJ5cGkyLXBv
a3ktbGludXgtZ251ZWFiaS9naC1iYXNlLWltYWdlLzEuMC1yMC9ib290LmltZwo=

--_005_DM2PR08MB7209533987800927B4C9AAD98DF0DM2PR08MB720namprd_--
