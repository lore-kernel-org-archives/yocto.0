Return-Path: <kzertsekel@mrv.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15D0DE00BA2; Mon,  5 Jun 2017 10:38:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, NORMAL_HTTP_TO_IP, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS, T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.107.2.93 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* 0.0 NORMAL_HTTP_TO_IP URI: URI host has a public dotted-decimal IPv4
	*      address
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
X-Greylist: delayed 7133 seconds by postgrey-1.32 at yocto-www;
	Mon, 05 Jun 2017 10:38:33 PDT
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr20093.outbound.protection.outlook.com [40.107.2.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A00E9E00B21
	for <yocto@yoctoproject.org>; Mon,  5 Jun 2017 10:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mrvil.onmicrosoft.com; 
	s=selector1-mrv-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=DDyIhyeR+alEWYAM0QjLSod7SYRH9rXEbd7a5JqqQjs=;
	b=TmYBZ5K2E8IYAkMsm32vj1hlGxrQH0cjcRRT2qfmsY66EFhJu8D3Bmx5btrEZjjlgO+6aqZDgYXQ5oz1TwemKvKPrl0basIydaYbsukjXJ2NrCVNUVYHt+DKcuvXG7jr2elkzt/iynaAT1CuVIyml2NxOLLOrq4D6onIxSD1Yt0=
Received: from AM4PR0301MB2129.eurprd03.prod.outlook.com (10.165.39.142) by
	HE1PR03MB3033.eurprd03.prod.outlook.com (10.160.49.10) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1143.10; Mon, 5 Jun 2017 13:06:29 +0000
Received: from AM4PR0301MB2129.eurprd03.prod.outlook.com
	([fe80::b5d2:dd74:5bd:c49b]) by
	AM4PR0301MB2129.eurprd03.prod.outlook.com
	([fe80::b5d2:dd74:5bd:c49b%14]) with mapi id 15.01.1143.018;
	Mon, 5 Jun 2017 13:06:28 +0000
From: "Kosta  Zertsekel" <kzertsekel@mrv.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Yocto for NFS/SDN networking product
Thread-Index: AQHRXCGPRLGQAM1iZU+g/woRY0EIe58Vx7MAgwN3CKQ=
Date: Mon, 5 Jun 2017 13:06:28 +0000
Message-ID: <AM4PR0301MB2129EF29B593C97E075ADFF9DACA0@AM4PR0301MB2129.eurprd03.prod.outlook.com>
References: <VI1PR03MB15676A1DE3EB2E80783D2D79DADD0@VI1PR03MB1567.eurprd03.prod.outlook.com>,
	<CAMKF1srExY59jqjN5LNxsiHsH7P+wuuGKSVp8D+hQoMqmupJbw@mail.gmail.com>
In-Reply-To: <CAMKF1srExY59jqjN5LNxsiHsH7P+wuuGKSVp8D+hQoMqmupJbw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=mrv.com; 
x-originating-ip: [2603:10a6:206:14:cafe::be]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR03MB3033;
	7:07MSkqe4GzkOsrnaEd3ng9iH66w8fuUigBYnFxUtPPLJtvESvGTch+1+RTqBYF2ciVDkHXQnCB8cwBGSECRT6WlvJaHFnYqINAzwkE2RqHMoN+20Tw6CgvFURks8fN4u5gD7vZYqJmgKd566RPEYZ/IMBkprT85zVxtPLKCXysqfkMoVjCx5lqYteM3ey+K+BaaXn4vWP1Yp405XFIpIItKT/g+GObOS6llEBMqMoSFQQ5VC7VP8zucw8uL6xVkulY74p/pCP4hmrqwRc6gv0gwZ3KYxPKnnpgnMGQ7gA4eFmN+nsF3JznGl1vXn1s59CpukYUc4Zfos1P2NCILUMQ==
x-ms-traffictypediagnostic: HE1PR03MB3033:
x-ms-office365-filtering-correlation-id: 9beeb531-2367-4aa3-ab07-08d4ac13adf3
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075)(201703031133081);
	SRVR:HE1PR03MB3033; 
x-microsoft-antispam-prvs: <HE1PR03MB30331846CAF7D37F11DDED60DACA0@HE1PR03MB3033.eurprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(203790808753936)(266611908612381)(67741619275850); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(8121501046)(5005006)(100000703101)(100105400095)(3002001)(10201501046)(93006095)(93001095)(6041248)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123564025)(20161123558100)(20161123555025)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HE1PR03MB3033; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HE1PR03MB3033; 
x-forefront-prvs: 0329B15C8A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6019001)(39410400002)(39400400002)(39830400002)(39450400003)(269900001)(174874002)(13624006)(24454002)(377454003)(6606003)(33656002)(25786009)(53546009)(5250100002)(4326008)(102836003)(6116002)(5890100001)(54896002)(9686003)(236005)(2906002)(19618635001)(39060400002)(189998001)(86362001)(54906002)(6306002)(38730400002)(53386004)(110136004)(478600001)(6246003)(8936002)(53936002)(2900100001)(5660300001)(11609785009)(7066003)(606005)(733005)(8676002)(6436002)(81166006)(6506006)(7906003)(74316002)(3660700001)(7736002)(3280700002)(55016002)(99286003)(2950100002)(229853002)(6916009)(14454004)(7696004)(966005)(50986999)(76176999)(19627405001)(54356999)(10721665003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR03MB3033;
	H:AM4PR0301MB2129.eurprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: mrv.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2017 13:06:28.7928 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3324ef19-dd38-46a1-8379-2a2bdaace805
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR03MB3033
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Ran Wainstein <rwainstein@mrv.com>
Subject: Re: Yocto for NFS/SDN networking product
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
X-List-Received-Date: Mon, 05 Jun 2017 17:38:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM4PR0301MB2129EF29B593C97E075ADFF9DACA0AM4PR0301MB2129_"

--_000_AM4PR0301MB2129EF29B593C97E075ADFF9DACA0AM4PR0301MB2129_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Khem,


Fully agree that Yocto has is good, 'cause it supports cross-build, has a w=
ide

industry support and actually it has **the version** (meaning, all the pack=
ages

are taken with specific git commit id unlike debian/ubuntu binaries).


But then, I'm confused in the other respect...


I'm looking at the OpenSwitch build system (part of Open Compute project

under Linux Foundation) and I see that is uses yocto as a subsystem. It's r=
eally

confusing because yocto is supposed to have "meta-XYZ" for OpenSwitch

support.


So, when choosing a build system for OpenSwitch-based products - do one

still has to use yocto or just go with the build system provided by OpenSwi=
tch?


Thanks,

--- KostaZ

________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Sunday, January 31, 2016 5:56 PM
To: Kosta Zertsekel
Cc: yocto@yoctoproject.org; Ran Wainstein
Subject: Re: [yocto] Yocto for NFS/SDN networking product

Kosta

Yocto project is developed by many volunteers and people sponsored by corpo=
rations,
all development happens in opensource. The community supports the project. =
There
are also lot of commercial OS vendors which use Yocto project to build thei=
r products,
so you can always go to them if you are looking for commercial support.

For advantages, it can build a small footprint since it builds bottom up. S=
o you can really get only needed
packages for your custom image. It will create a source based distribution =
for you where you have control
over every part of the OSS stack. You can really tailor your solution to yo=
ur needs.

It builds in cross-build environment, supports many CPU architectures and m=
achines

The community is very welcoming and helpful. You can easily contribute to t=
he project
and fulfill your needs by doing so. The learning curve might be a bit steep=
er. But then
you do have trainings available offerred by professionals.

Thanks
-Khem
On Sun, Jan 31, 2016 at 4:22 AM, Kosta Zertsekel <kzertsekel@mrv.com<mailto=
:kzertsekel@mrv.com>> wrote:

Hi dear Yocto community,


I'm trying to evaluate Yocto as the candidate to create Linux distro

for NFS/SDN networking product. Through Google I get an impression

that there is a race between Yocto, CentOS (RedHat) and 6WIND

Linux distributions to get most of NFV/SDN Linux distro market.


Can you please help to find cons and pros of using Yocto for

NFV/SDN networking product?


I google over NFV/SDN part of www.etsi.org<http://www.etsi.org> but couldn'=
t make up

my mind what specific distro got the traction.


I see that Yocto has NFV/SDN layers (reference<http://events.linuxfoundatio=
n.org/sites/events/files/slides/YP_and_OpenStack_LinuxCon2014.pdf>):

```
git clone git://git.yoctoproject.org/meta-cloud-services<http://git.yoctopr=
oject.org/meta-cloud-services>
git clone git://git.openembedded.org/meta-openembedded<http://git.openembed=
ded.org/meta-openembedded>
git clone --branch icehouse git://git.yoctoproject.org/meta-virtualization<=
http://git.yoctoproject.org/meta-virtualization>
git clone git://git.openembedded.org/openembedded-core<http://git.openembed=
ded.org/openembedded-core> oe-core
```


Are these layers officially supported by Intel?

Does Intel provide the NFV/SDN support?


Thanks,

--- KostaZ

[E-Banner]<http://www.mrv.com/blog>


MRV Communications is a global supplier of packet and optical solutions tha=
t power the world=92s largest networks. Our products combine innovative har=
dware with intelligent software to make networks smarter, faster and more e=
fficient.



The contents of this message, together with any attachments, are intended o=
nly for the use of the person(s) to whom they are addressed and may contain=
 confidential and/or privileged information. If you are not the intended re=
cipient, immediately advise the sender, delete this message and any attachm=
ents and note that any distribution, or copying of this message, or any att=
achment, is prohibited.

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto


[http://50.57.127.206/images/Banner.jpg]<https://goo.gl/0NNSWr>


MRV Communications is a global supplier of packet and optical solutions tha=
t power the world=92s largest networks. Our products combine innovative har=
dware with intelligent software to make networks smarter, faster and more e=
fficient.



The contents of this message, together with any attachments, are intended o=
nly for the use of the person(s) to whom they are addressed and may contain=
 confidential and/or privileged information. If you are not the intended re=
cipient, immediately advise the sender, delete this message and any attachm=
ents and note that any distribution, or copying of this message, or any att=
achment, is prohibited.

--_000_AM4PR0301MB2129EF29B593C97E075ADFF9DACA0AM4PR0301MB2129_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Arial, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols, EmojiFont, &=
quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &=
quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=
=3D"ltr">
<p>Khem, </p>
<p><br>
</p>
<p>Fully agree that Yocto has is good, 'cause it supports cross-build, has =
a wide</p>
<p>industry support and actually it has **the version** (meaning, all the p=
ackages</p>
<p>are taken with specific git commit id unlike debian/ubuntu binaries).</p=
>
<p><br>
</p>
<p>But then, I'm confused in the other respect...</p>
<p><br>
</p>
<p>I'm looking at the OpenSwitch build system (part of Open Compute project=
</p>
<p>under Linux Foundation)&nbsp;and I see that is uses yocto as a subsystem=
. It's really</p>
<p>confusing because yocto is supposed to have &quot;meta-XYZ&quot; for Ope=
nSwitch</p>
<p>support.</p>
<p><br>
</p>
<p>So, when choosing a build system for OpenSwitch-based products - do one<=
/p>
<p>still has to use yocto or just go with the build system provided by&nbsp=
;OpenSwitch?</p>
<p><br>
</p>
<p>Thanks,</p>
<p>--- KostaZ</p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Khem Raj &lt;raj.khem=
@gmail.com&gt;<br>
<b>Sent:</b> Sunday, January 31, 2016 5:56 PM<br>
<b>To:</b> Kosta Zertsekel<br>
<b>Cc:</b> yocto@yoctoproject.org; Ran Wainstein<br>
<b>Subject:</b> Re: [yocto] Yocto for NFS/SDN networking product</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_default" style=3D"font-family:georgia,serif">Kosta</div=
>
<div class=3D"gmail_default" style=3D"font-family:georgia,serif"><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:georgia,serif">Yocto proj=
ect is developed by many volunteers and people sponsored by corporations,</=
div>
<div class=3D"gmail_default" style=3D"font-family:georgia,serif">all develo=
pment happens in opensource. The community supports the project. There</div=
>
<div class=3D"gmail_default" style=3D"font-family:georgia,serif">are also l=
ot of commercial OS vendors&nbsp;<span style=3D"font-size: 12pt;">which use=
 Yocto project to build their products,</span></div>
<div class=3D"gmail_default" style=3D"font-family:georgia,serif"><span styl=
e=3D"font-size: 12pt;">so you can always go to them if you are looking for =
commercial support.&nbsp;</span></div>
<div class=3D"gmail_default" style=3D"font-family:georgia,serif"><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:georgia,serif">For advant=
ages, it can build a small footprint since it builds bottom up. So you can =
really get only needed</div>
<div class=3D"gmail_default" style=3D"font-family:georgia,serif">packages f=
or your custom image. It will create a source based distribution for you wh=
ere you have control</div>
<div class=3D"gmail_default" style=3D"font-family:georgia,serif">over every=
 part of the OSS stack. You can really tailor your solution to your needs.<=
/div>
<div class=3D"gmail_default" style=3D"font-family:georgia,serif"><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:georgia,serif">It builds =
in cross-build environment, supports many CPU architectures and machines</d=
iv>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">
<div class=3D"gmail_default" style=3D"font-family:georgia,serif">The commun=
ity is very welcoming and helpful. You can easily contribute to the project=
</div>
<div class=3D"gmail_default" style=3D"font-family:georgia,serif">and fulfil=
l your needs by doing so.&nbsp;<span style=3D"font-size: 12pt;">The learnin=
g curve might be a bit steeper. But then</span></div>
<div class=3D"gmail_default" style=3D"font-family:georgia,serif"><span styl=
e=3D"font-size: 12pt;">you do have trainings available offerred by professi=
onals.</span></div>
<div class=3D"gmail_default" style=3D"font-family:georgia,serif"><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:georgia,serif">Thanks</di=
v>
<div class=3D"gmail_default" style=3D"font-family:georgia,serif">-Khem &nbs=
p;</div>
<div class=3D"gmail_default" style=3D"font-family:georgia,serif"></div>
</div>
<div class=3D"gmail_extra">
<div class=3D"gmail_quote">On Sun, Jan 31, 2016 at 4:22 AM, Kosta Zertsekel=
 <span dir=3D"ltr">
&lt;<a href=3D"mailto:kzertsekel@mrv.com" target=3D"_blank">kzertsekel@mrv.=
com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-size:12pt; color:#000000; background-color:#ffffff; font=
-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi dear Yocto community,</p>
<p><br>
</p>
<p>I'm trying to evaluate Yocto as the candidate to create&nbsp;Linux distr=
o</p>
<p>for NFS/SDN networking product. Through Google I get an impression</p>
<p>that there is a race between Yocto, CentOS (RedHat) and 6WIND</p>
<p>Linux distributions&nbsp;<span style=3D"font-size:12pt">to get most of N=
FV/SDN Linux distro&nbsp;market.</span></p>
<p><br>
</p>
<p>Can you please help to find cons and pros of using Yocto for</p>
<p>NFV/SDN networking product?</p>
<p><br>
</p>
<p>I google over NFV/SDN part of&nbsp;<a href=3D"http://www.etsi.org" title=
=3D"http://www.etsi.org=0A=
Ctrl&#43;Click or tap to follow the link" target=3D"_blank">www.etsi.org</a=
>&nbsp;but couldn't make up</p>
<p>my mind what specific&nbsp;distro got the&nbsp;traction.</p>
<p><br>
</p>
<p>I see that Yocto has NFV/SDN layers (<a href=3D"http://events.linuxfound=
ation.org/sites/events/files/slides/YP_and_OpenStack_LinuxCon2014.pdf" titl=
e=3D"http://events.linuxfoundation.org/sites/events/files/slides/YP_and_Ope=
nStack_LinuxCon2014.pdf=0A=
Ctrl&#43;Click or tap to follow the link" target=3D"_blank">reference</a>):=
</p>
<p></p>
<div>```<br>
</div>
<div>git clone git://<a href=3D"http://git.yoctoproject.org/meta-cloud-serv=
ices" target=3D"_blank">git.yoctoproject.org/meta-cloud-services</a><br>
</div>
<div>git clone git://<a href=3D"http://git.openembedded.org/meta-openembedd=
ed" target=3D"_blank">git.openembedded.org/meta-openembedded</a></div>
<div>git clone --branch icehouse git://<a href=3D"http://git.yoctoproject.o=
rg/meta-virtualization" target=3D"_blank">git.yoctoproject.org/meta-virtual=
ization</a><br>
</div>
<div>git clone git://<a href=3D"http://git.openembedded.org/openembedded-co=
re" target=3D"_blank">git.openembedded.org/openembedded-core</a> oe-core<br=
>
</div>
<div>```<br>
</div>
<br>
<p></p>
<p>Are these layers officially supported by Intel?<br>
</p>
<p>Does Intel provide the NFV/SDN support?<br>
</p>
<p><br>
</p>
<p>Thanks,</p>
<p>--- KostaZ</p>
</div>
<a href=3D"http://www.mrv.com/blog" target=3D"_blank"><img alt=3D"E-Banner"=
 style=3D"user-select: none;" src=3D"https://outlook.office.com/owa/?realm=
=3Dmrv.com&amp;exch=3D1&amp;path=3D/mail/search"></a><br>
&nbsp;<br>
<div style=3D"background-color:#ffffff; padding:.8em">
<p style=3D"font-size:10pt; color:#b8b9c8; line-height:8pt; font-family:'ar=
ial','times roman',serif">
MRV Communications is a global supplier of packet and optical solutions tha=
t power the world=92s largest networks. Our products combine innovative har=
dware with intelligent software to make networks smarter, faster and more e=
fficient.</p>
</div>
&nbsp;<br>
<div style=3D"background-color:#ffffff; padding:.8em">
<p style=3D"font-size:8pt; color:#b8b9c8; line-height:8pt; font-family:'ari=
al','times roman',serif">
The contents of this message, together with any attachments, are intended o=
nly for the use of the person(s) to whom they are addressed and may contain=
 confidential and/or privileged information. If you are not the intended re=
cipient, immediately advise the
 sender, delete this message and any attachments and note that any distribu=
tion, or copying of this message, or any attachment, is prohibited.</p>
</div>
</div>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
</blockquote>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
<a href=3D"https://goo.gl/0NNSWr"><img src=3D"http://50.57.127.206/images/B=
anner.jpg" at=3D"E-Banner"></a><br>
&nbsp;<br>
<div style=3D"background-color:#FFFFFF; padding:.8em; ">
<p style=3D"font-size:10pt;color:#b8b9c8; line-height:8pt; font-family:  =
=0A=
'arial','times roman',serif;">
MRV Communications is a global supplier of packet and optical solutions tha=
t power the world=92s largest networks. Our products combine innovative har=
dware with intelligent software to make networks smarter, faster and more e=
fficient.</p>
</div>
&nbsp;<br>
<div style=3D"background-color:#FFFFFF; padding:.8em; ">
<p style=3D"font-size:8pt;color:#b8b9c8; line-height:8pt; font-family:  =0A=
'arial','times roman',serif;">
The contents of this message, together with any attachments, are intended o=
nly for the use of the person(s) to whom they are addressed and may contain=
 confidential and/or privileged information. If you are not the intended re=
cipient, immediately advise the
 sender, delete this message and any attachments and note that any distribu=
tion, or copying of this message, or any attachment, is prohibited.</p>
</div>
</body>
</html>

--_000_AM4PR0301MB2129EF29B593C97E075ADFF9DACA0AM4PR0301MB2129_--
