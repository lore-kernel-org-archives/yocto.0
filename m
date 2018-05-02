Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E2BDE009DF; Thu,  3 May 2018 08:55:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.2.37 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60835 seconds by postgrey-1.32 at yocto-www;
	Thu, 03 May 2018 08:55:50 PDT
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-oln040092002037.outbound.protection.outlook.com [40.92.2.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32F19E008D2
	for <yocto@yoctoproject.org>; Thu,  3 May 2018 08:55:50 -0700 (PDT)
Received: from BN3NAM01HT122.eop-nam01.prod.protection.outlook.com
	(2a01:111:e400:7e41::355) by
	SN1NAM01HT123.eop-nam01.prod.protection.outlook.com
	(2a01:111:e400:7e40::497) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.715.13;
	Thu, 3 May 2018 10:20:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=nwbPAe1mixM/FmwROCaTElhqAXYkgcF/CPw2GF+Ca9s=;
	b=hCqXvAgoRPxknkqo1tSNcOiWlD3DwQFWNsmzFHRkIaH76gad7yM77IwE+gRFud8NZdeDoU+XM7F1WoNQjSdQTW6knVmrLTAn7KCAvPxz12uB3k+/ylDMOi1SOtT45C4VS/ETXBOFVJCMM1zMkOiPhKrVl3+/yNfyFkgpu3pdTkLBPe0Igzlzm9G6ujqNF/3tWezh4tZp332SGcpBZ8LnPiuyjq2NySmd+E2ipJGHDU7S3QfwB8ZukWP5kHzru5LAOdAb8cZWzx2pDYNaXnmVCGUB1uLTiyj1H5GIcEXAuSfD+rBK0dVgavqJpitL0/2bxwK1SnYwxlsaFPlNZesF1Q==
Received: from BN3NAM01FT018.eop-nam01.prod.protection.outlook.com
	(10.152.66.57) by BN3NAM01HT122.eop-nam01.prod.protection.outlook.com
	(10.152.67.99) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.715.13;
	Wed, 2 May 2018 19:28:10 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.66.60) by
	BN3NAM01FT018.mail.protection.outlook.com (10.152.67.234) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.715.13 via Frontend Transport; Wed, 2 May 2018 19:28:09 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8%18]) with mapi id 15.20.0715.024;
	Wed, 2 May 2018 19:28:09 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Thread-Topic: [yocto] Problem with Python when running oe-init-build-env
Thread-Index: AQHT4Yz/dtz/63pkLUiUOVQzIKCXy6Qb9+WAgAChzrs=
Date: Wed, 2 May 2018 19:28:09 +0000
Message-ID: <MWHPR19MB1183A2A575D567D9DE74ED12C5800@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB1183D3C8CA06798F8109DCFCC5810@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<CAGAf8LymM_PYzz3CVDqvG9+yq-YCeQ+UmMOOPDmCaovm6dFYgA@mail.gmail.com>
In-Reply-To: <CAGAf8LymM_PYzz3CVDqvG9+yq-YCeQ+UmMOOPDmCaovm6dFYgA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:2C3B56476EFF7127A589137B0ECA3E6CF878F0D4C3294CFE8AE71769E0D299DC;
	UpperCasedChecksum:7DB97E0C8A880EE1A707491D6256AD15432847F1D4BD7CC35CCC4EEFF2B9EBC0;
	SizeAsReceived:7216; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [UjWRxNAd8BTiqYNAs9s8tcjXGtP6NqEF]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN3NAM01HT122;
	7:Rn9rx447SDBg8rWD1al/O5SBq4rjt3Q2RjpqvfQX0Lasf1cPLVQ72e8SD0G7NNF0t/Vg/GutDRp1DykIWy9s+nNqXZyO3IdI+rQHep9fr0Kj0AbRHtVhYKVNvym3qYqH4/k+W5+QHq0VfOYcGB5e7KB5kvLskjEsRLE+sZoG0CZR7cjPFpEP/fji30vKEY+5MJrDGW4JBsINfYy0qqCk8eVAU0qzDcQj2ejhx+vAk2pY1o/GWOJizuZZMt2VhDhT
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045);
	SRVR:BN3NAM01HT122; 
X-MS-TrafficTypeDiagnostic: BN3NAM01HT122:|BN3NAM01HT122:|SN1NAM01HT123:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BN3NAM01HT122; BCL:0; PCL:0; RULEID:; SRVR:BN3NAM01HT122; 
x-forefront-prvs: 06607E485E
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:BN3NAM01HT122;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: oxtgE1ZMxTHQGwtyENrBPSiJTrgkHINg6VVUKfLZJ61owWquU1O4AwBWtT5IwtRHRRUKuK7F6n178YzLm0Dml9aWKV9g/WyzxFwkdxsxyS7+FiEk0OnDhgM4FHfKM892fVLntWIa/hh92+FMBbpSCiBdtaS9hjp7/4obqF7hTG5hgIfWPe6KhkpimBL+vcYh
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: e55f85e6-aa94-4f52-a177-08d5b062d6c8
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: e55f85e6-aa94-4f52-a177-08d5b062d6c8
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2018 19:28:09.9080 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM01HT122
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM01HT123;
	23:ELqZvfNjSh3Umi0/jEnO8cXQ85dBwI9eBwJIsfLr26XenFSkXFQiQq884EoPJXpseCjwKlIdNALOhxWCHMgtsr068qp4gm85vpRhb1el1ZXw9HqSr1nMCDQ1Kc00R3eYDdBSRk5jMeCOGfT8f19MkA==
X-OriginatorOrg: hotmail.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with Python when running oe-init-build-env
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
X-List-Received-Date: Thu, 03 May 2018 15:55:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1183A2A575D567D9DE74ED12C5800MWHPR19MB1183namp_"

--_000_MWHPR19MB1183A2A575D567D9DE74ED12C5800MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Zoran.


My Linux build machine uses Centos 7.  I thought I'd done the installation =
to Python 3.6.5.  If this is not Python3 > 3.4.0, then I'm confused.  The l=
ink I follow for installation is here:  https://janikarhunen.fi/how-to-inst=
all-python-3-6-1-on-centos-7.html


> python3.6 -V

Python 3.6.5

>python -V

Python 2.7.5


Anyway, I realize what went wrong.  I'd Krogoth (a 2016 Poky) running befor=
e.  Now as I'm migrating to Rocko (a 2017 Poky), I try to solve a Python ve=
rsioning issue by installing Python only (as above).  However, there may be=
 other packages I need to update.  After getting latest Reference Manual, d=
ownload and install latest environment, I no longer have python3 issue.  Ho=
wever, the Python version of why Python3.6 won't satisfy Python > 3.4.0 sti=
ll puzzles me (though no longer blocking me).


Raymond


________________________________
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Sent: Tuesday, May 1, 2018 11:19 PM
To: Raymond Yeung
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Problem with Python when running oe-init-build-env

Hello Raymond,

The problem is that you (talking about your host distro):
[1] Do NOT have python3 package installed;
[2] Do have python3 package < 3.4.0 version, so you need to upgrade!

So, I have no idea which host distro you are using, but:
[1] If Debian/Ubuntu, then: apt-get install python3
     If Fedora, then dnf install python3
[2] If Debian/Ubuntu, then: apt-get update python3
     If Fedora, then dnf update python3

Hope this helps,
Zoran
_______

On Tue, May 1, 2018 at 10:43 PM, Raymond Yeung <rksyeung@hotmail.com> wrote=
:
> I'd just git cloned Rocko and meta-ti.  When I try to source
> oe-init-build-env, I got errors:
>
>
> -bash: python3: command not found
>
> BitBake requires Python 3.4.0 or later as 'python3'.  "python -V" gives
> "Python 2.7.9".  "python3" is not in $PATH.  I'd followed some detailed
> online description to install Python 3.6 on CentOS 7.  However, after
> installation, it looks like I need to invoke it with python3.6.
>
>
> How does this work now?  I suppose the oe-init-build-env script uses/expe=
cts
> python3, not python3.6.
>
>
> Any insight?
>
>
> Raymond
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
 Subscribe before posting to bypass moderation.



>

--_000_MWHPR19MB1183A2A575D567D9DE74ED12C5800MWHPR19MB1183namp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Helvetica, sans-serif, Helvetica, EmojiFont, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D"=
ltr">
<p style=3D"margin-top:0;margin-bottom:0">Thanks Zoran.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">My Linux build machine uses Cento=
s 7. &nbsp;I thought I'd done the installation to Python 3.6.5. &nbsp;If th=
is is not Python3 &gt; 3.4.0, then I'm confused. &nbsp;The link I follow fo=
r installation is here: &nbsp;<a href=3D"https://janikarhunen.fi/how-to-ins=
tall-python-3-6-1-on-centos-7.html" class=3D"OWAAutoLink" id=3D"LPlnk623282=
" previewremoved=3D"true">https://janikarhunen.fi/how-to-install-python-3-6=
-1-on-centos-7.html</a></p>
<br>
<p style=3D"margin-top:0;margin-bottom:0">&gt;<span style=3D"font-size: 12p=
t;">&nbsp;python3.6 -V</span></p>
<p>Python 3.6.5</p>
<p>&gt;<span style=3D"font-size: 12pt;">python -V</span></p>
<p>Python 2.7.5</p>
<p><br>
</p>
<p>Anyway, I realize what went wrong. &nbsp;I'd Krogoth (a 2016 Poky) runni=
ng before. &nbsp;Now as I'm migrating to Rocko (a 2017 Poky), I try&nbsp;to=
 solve a Python versioning issue by installing Python only (as above). &nbs=
p;However, there may be other packages I need to update.
 &nbsp;After getting latest Reference Manual, download and install latest e=
nvironment, I no longer have python3 issue. &nbsp;However, the Python versi=
on of why Python3.6 won't satisfy Python &gt; 3.4.0 still puzzles me (thoug=
h no longer blocking me).</p>
<p></p>
<p><br>
</p>
<p>Raymond</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Zoran Stojsavljevic &=
lt;zoran.stojsavljevic@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, May 1, 2018 11:19 PM<br>
<b>To:</b> Raymond Yeung<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Problem with Python when running oe-init-build-=
env</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hello Raymond,<br>
<br>
The problem is that you (talking about your host distro):<br>
[1] Do NOT have python3 package installed;<br>
[2] Do have python3 package &lt; 3.4.0 version, so you need to upgrade!<br>
<br>
So, I have no idea which host distro you are using, but:<br>
[1] If Debian/Ubuntu, then: apt-get install python3<br>
&nbsp;&nbsp;&nbsp;&nbsp; If Fedora, then dnf install python3<br>
[2] If Debian/Ubuntu, then: apt-get update python3<br>
&nbsp;&nbsp;&nbsp;&nbsp; If Fedora, then dnf update python3<br>
<br>
Hope this helps,<br>
Zoran<br>
_______<br>
<br>
On Tue, May 1, 2018 at 10:43 PM, Raymond Yeung &lt;rksyeung@hotmail.com&gt;=
 wrote:<br>
&gt; I'd just git cloned Rocko and meta-ti.&nbsp; When I try to source<br>
&gt; oe-init-build-env, I got errors:<br>
&gt;<br>
&gt;<br>
&gt; -bash: python3: command not found<br>
&gt;<br>
&gt; BitBake requires Python 3.4.0 or later as 'python3'.&nbsp; &quot;pytho=
n -V&quot; gives<br>
&gt; &quot;Python 2.7.9&quot;.&nbsp; &quot;python3&quot; is not in $PATH.&n=
bsp; I'd followed some detailed<br>
&gt; online description to install Python 3.6 on CentOS 7.&nbsp; However, a=
fter<br>
&gt; installation, it looks like I need to invoke it with python3.6.<br>
&gt;<br>
&gt;<br>
&gt; How does this work now?&nbsp; I suppose the oe-init-build-env script u=
ses/expects<br>
&gt; python3, not python3.6.<br>
&gt;<br>
&gt;<br>
&gt; Any insight?<br>
&gt;<br>
&gt;<br>
&gt; Raymond<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk8=
94811" class=3D"OWAAutoLink" previewremoved=3D"true">
https://lists.yoctoproject.org/listinfo/yocto</a>
<div id=3D"LPBorder_GT_15252767047480.9353307514330218" style=3D"margin-bot=
tom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_15252767047450.0060050600858457814" role=3D"presen=
tation" cellspacing=3D"0" style=3D"width: 90%; background-color: rgb(255, 2=
55, 255); position: relative; overflow: auto; padding-top: 20px; padding-bo=
ttom: 20px; margin-top: 20px; border-top-width: 1px; border-top-style: dott=
ed; border-top-color: rgb(200, 200, 200); border-bottom-width: 1px; border-=
bottom-style: dotted; border-bottom-color: rgb(200, 200, 200);">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td id=3D"TextCell_15252767047470.3908343845028899" colspan=3D"2" style=3D"=
vertical-align: top; position: relative; padding: 0px; display: table-cell;=
">
<div id=3D"LPRemovePreviewContainer_15252767047470.4155838622579563"></div>
<div id=3D"LPTitle_15252767047470.2926955628645245" style=3D"top: 0px; colo=
r: rgb(0, 120, 215); font-weight: normal; font-size: 21px; font-family: wf_=
segoe-ui_light, &quot;Segoe UI Light&quot;, &quot;Segoe WP Light&quot;, &qu=
ot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; line-he=
ight: 21px;">
<a id=3D"LPUrlAnchor_15252767047470.2327548529833663" href=3D"https://lists=
.yoctoproject.org/listinfo/yocto" target=3D"_blank" style=3D"text-decoratio=
n: none;">yocto Info Page</a></div>
<div id=3D"LPMetadata_15252767047470.16915804322735695" style=3D"margin: 10=
px 0px 16px; color: rgb(102, 102, 102); font-weight: normal; font-family: w=
f_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Aria=
l, sans-serif; font-size: 14px; line-height: 14px;">
lists.yoctoproject.org</div>
<div id=3D"LPDescription_15252767047480.7820393102064364" style=3D"display:=
 block; color: rgb(102, 102, 102); font-weight: normal; font-family: wf_seg=
oe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sa=
ns-serif; font-size: 14px; line-height: 20px; max-height: 100px; overflow: =
hidden;">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
 Subscribe before posting to bypass moderation.</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
&gt;<br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB1183A2A575D567D9DE74ED12C5800MWHPR19MB1183namp_--
