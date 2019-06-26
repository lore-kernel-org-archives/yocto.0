Return-Path: <keith.derrick@lge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAC1EE00D4A; Tue, 25 Jun 2019 17:15:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [156.147.23.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from lgeamrelo11.lge.com (lgeamrelo13.lge.com [156.147.23.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D439E00A7D
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 17:15:21 -0700 (PDT)
Received: from unknown (HELO lgemrelse6q.lge.com) (156.147.1.121)
	by 156.147.23.53 with ESMTP; 26 Jun 2019 09:15:20 +0900
X-Original-SENDERIP: 156.147.1.121
X-Original-MAILFROM: keith.derrick@lge.com
Received: from unknown (HELO LGSVL-EXC02.lgsvl.net) (10.195.253.63)
	by 156.147.1.121 with ESMTP; 26 Jun 2019 09:15:19 +0900
X-Original-SENDERIP: 10.195.253.63
X-Original-MAILFROM: keith.derrick@lge.com
Received: from LGSVL-EXC01.lgsvl.net (10.195.253.62) by LGSVL-EXC02.lgsvl.net
	(10.195.253.63) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Tue, 25 Jun 2019 17:15:18 -0700
Received: from LGSVL-EXC01.lgsvl.net ([10.195.253.62]) by
	LGSVL-EXC01.lgsvl.net ([10.195.253.62]) with mapi id 15.00.1044.021;
	Tue, 25 Jun 2019 17:15:18 -0700
From: keith.derrick <keith.derrick@lge.com>
To: Martin Jansa <martin.jansa@gmail.com>
Thread-Topic: [yocto] Dealing with line endings
Thread-Index: AQHVKv0I55jwuTmvf0+1TpLuHZmyKaasbvsAgACjbo4=
Date: Wed, 26 Jun 2019 00:15:17 +0000
Message-ID: <1561508118148.84601@lge.com>
References: <1561429587556.6733@lge.com>,
	<CA+chaQf7VB36-ihmnx+ARiJ7VC4rQcuBSHgmwj33ytr_fauERw@mail.gmail.com>
In-Reply-To: <CA+chaQf7VB36-ihmnx+ARiJ7VC4rQcuBSHgmwj33ytr_fauERw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.195.247.37]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dealing with line endings
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
X-List-Received-Date: Wed, 26 Jun 2019 00:15:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative; boundary="_000_156150811814884601lgecom_"

--_000_156150811814884601lgecom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Martin, that fixed it nicely.

________________________________
From: Martin Jansa <martin.jansa@gmail.com>
Sent: Tuesday, June 25, 2019 12:30 AM
To: Keith Derrick/LGEUS Advanced Platform(keith.derrick@lge.com)
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Dealing with line endings

Hi Keith,

you can use dos2unix.bbclass:
http://git.openembedded.org/openembedded-core/tree/meta/classes/dos2unix.bb=
class
to convert them before do_patch.

Cheers,

On Tue, Jun 25, 2019 at 4:57 AM keith.derrick <keith.derrick@lge.com<mailto=
:keith.derrick@lge.com>> wrote:

I am using an upstream repo with a mix of line endings.


In my recipe, I'm applying a patch with normalized line endings, as our met=
a layer repo has a .gitattributes with "text=3Dauto" set.


The patch is failing due to "different line endings".


Can the git fetcher be configured to normalize line endings on unpack? I tr=
ied setting core.autocrlf in my global .gitconfig, but the fetcher/unpacker=
 seems to ignore it.


Thanks

Keith


--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto

--_000_156150811814884601lgecom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!-- p { margin-top: 0px; m=
argin-bottom: 0px; }--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Thanks Martin, that fixed it nicely.<br>
</p>
<div style=3D"color: rgb(33, 33, 33);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Martin Jansa &lt;mart=
in.jansa@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, June 25, 2019 12:30 AM<br>
<b>To:</b> Keith Derrick/LGEUS Advanced Platform(keith.derrick@lge.com)<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Dealing with line endings</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Keith,
<div><br>
</div>
<div>you can use dos2unix.bbclass:</div>
<div><a href=3D"http://git.openembedded.org/openembedded-core/tree/meta/cla=
sses/dos2unix.bbclass">http://git.openembedded.org/openembedded-core/tree/m=
eta/classes/dos2unix.bbclass</a></div>
<div>to convert them before do_patch.</div>
<div><br>
</div>
<div>Cheers,</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 25, 2019 at 4:57 AM keith=
.derrick &lt;<a href=3D"mailto:keith.derrick@lge.com">keith.derrick@lge.com=
</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); background-colo=
r:rgb(255,255,255); font-family:Calibri,Arial,Helvetica,sans-serif">
<p>I am using&nbsp;an upstream repo with a mix of line endings.<br>
</p>
<p><br>
</p>
<p>In my recipe, I'm applying a patch with normalized line endings, as our =
meta layer repo has a .gitattributes with &quot;text=3Dauto&quot; set.<br>
</p>
<p><br>
</p>
<p>The patch is failing due to &quot;different line endings&quot;.<br>
</p>
<p><br>
</p>
<p>Can the git fetcher be configured to normalize line endings on unpack? I=
 tried setting core.autocrlf in my global .gitconfig, but the fetcher/unpac=
ker seems to ignore it.<br>
</p>
<p><br>
</p>
<p>Thanks<br>
</p>
<p>Keith<br>
</p>
<p><br>
</p>
</div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_156150811814884601lgecom_--
