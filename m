Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.2604.1583970233398433647
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Mar 2020 16:43:53 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sakuraus.com, ip: 140.211.169.56, mailfrom: gwilson@sakuraus.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7CFEE01823; Wed, 11 Mar 2020 16:43:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [209.222.82.218 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from outbound-ip21b.ess.barracuda.com (outbound-ip21b.ess.barracuda.com [209.222.82.218])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C64CBE017DC
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2020 16:43:42 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by mx7.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=NO); Wed, 11 Mar 2020 23:43:39 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
 (10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Wed, 11
 Mar 2020 16:43:36 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
 ([::1]) with mapi id 15.01.0669.032; Wed, 11 Mar 2020 16:43:36 -0700
From: "Greg Wilson-Lindberg" <gwilson@sakuraus.com>
To: Anders Montonen <Anders.Montonen@iki.fi>, Yocto list discussion
	<yocto@yoctoproject.org>
Subject: Re: [yocto] Getting kernel patch to work
Thread-Topic: [yocto] Getting kernel patch to work
Thread-Index: AdX3NRByz9FZgcwoQi+wPDGVBY4CfwAcPZ6AABXrDWs=
Date: Wed, 11 Mar 2020 23:43:36 +0000
Message-ID: <7983bbc0f42b4b419b32632fcf28f983@sakuraus.com>
References: <7f0a414e985c4b86bfefff5eab8c6108@sakuraus.com>,<1FE10608-8C76-4307-B921-5B3C2DCC4CEE@iki.fi>
In-Reply-To: <1FE10608-8C76-4307-B921-5B3C2DCC4CEE@iki.fi>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.155]
MIME-Version: 1.0
X-BESS-ID: 1583970218-893013-26437-4122-1
X-BESS-VER: 2019.1_20200311.2054
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.222851 [from 
	cloudscan13-59.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7983bbc0f42b4b419b32632fcf28f983sakurauscom_"

--_000_7983bbc0f42b4b419b32632fcf28f983sakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Anders,

Good catch, thanks for seeing that.


I also realized that I was missing a FILESEXTRAPATHS_prepend. I have tried=
 both:

FILESEXTRAPATHS_prepend :=3D "$(FILE_DIRNAME)/files:"
and
FILESEXTRAPATHS_prepend :=3D "$(THISDIR)/files:"

In both cases I don't see the expansion (i.e. I see '$(FILE_DIRNAME)/files=
:' or '$(THISDIR)/files:') in the list of searched directories. I would thi=
nk that I should see the expanded directory path.

Here is the net beginning of my .bbappend file:

# additions to Kernel configuration

FILESEXTRAPATHS_prepend :=3D "$(FILE_DIRNAME)/files:"
#FILESEXTRAPATHS_prepend :=3D "$(THISDIR)/files:"
SRC_URI+=3D "file://0001-drm-vc4-Keep-the-binner-BO-through-suspend.patch"


Regards,
Greg


________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behal=
f of Anders Montonen <Anders.Montonen@iki.fi>
Sent: Tuesday, March 10, 2020 11:07:33 PM
To: Yocto list discussion
Subject: Re: [yocto] Getting kernel patch to work

Hi,

> On 11 Mar 2020, at 1:57, Greg Wilson-Lindberg <GWilson@sakuraus.com> wro=
te:
>
> SRC_URi +=3D "file://0001-drm-vc4-Keep-the-binner-BO-through-suspend-GWL=
.patch"

It looks like you have a typo here, the last letter of SRC_URI isn't capit=
alized.

-a


--_000_7983bbc0f42b4b419b32632fcf28f983sakurauscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii=
">
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;marg=
in-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;fon=
t-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi Anders,</p>
<p>Good catch, thanks for seeing that.</p>
<p><br>
</p>
<p>I also realized that I was missing a <span>FILESEXTRAPATHS_prepend</spa=
n>. I have tried both:</p>
<p></p>
<div>FILESEXTRAPATHS_prepend :=3D &quot;$(FILE_DIRNAME)/files:&quot;<br>
</div>
<div>and<br>
</div>
<div>FILESEXTRAPATHS_prepend :=3D &quot;$(THISDIR)/files:&quot;<br>
</div>
<div><br>
</div>
<div>In both cases I don't see the expansion (i.e. I see <span>'$(FILE_DIR=
NAME)/files:</span>' or '<span>$(THISDIR)/files:</span>') in the list of se=
arched directories. I would think that I should see the expanded directory =
path.</div>
<div><br>
</div>
<div>Here is the net beginning of my .bbappend file:</div>
<div><br>
</div>
<div>
<div># additions to Kernel configuration<br>
<br>
FILESEXTRAPATHS_prepend :=3D &quot;$(FILE_DIRNAME)/files:&quot;<br>
#FILESEXTRAPATHS_prepend :=3D &quot;$(THISDIR)/files:&quot;<br>
SRC_URI&#43;=3D &quot;file://0001-drm-vc4-Keep-the-binner-BO-through-suspe=
nd.patch&quot;<br>
<br>
<br>
</div>
Regards,</div>
<div>Greg<br>
</div>
<br>
<p></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" s=
tyle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto@lists.yoctopro=
ject.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Anders Montonen =
&lt;Anders.Montonen@iki.fi&gt;<br>
<b>Sent:</b> Tuesday, March 10, 2020 11:07:33 PM<br>
<b>To:</b> Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] Getting kernel patch to work</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:10pt=
;">
<div class=3D"PlainText">Hi,<br>
<br>
&gt; On 11 Mar 2020, at 1:57, Greg Wilson-Lindberg &lt;GWilson@sakuraus.co=
m&gt; wrote:<br>
&gt; <br>
&gt; SRC_URi &#43;=3D &quot;<a href=3D""></a>file://0001-drm-vc4-Keep-the-=
binner-BO-through-suspend-GWL.patch&#8221;<br>
<br>
It looks like you have a typo here, the last letter of SRC_URI isn&#8217;t=
 capitalized.<br>
<br>
-a</div>
</span></font></div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:10pt=
;">
<div class=3D"PlainText"><br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_7983bbc0f42b4b419b32632fcf28f983sakurauscom_--
