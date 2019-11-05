Return-Path: <sjolley.yp.pm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F477E00DF3; Tue,  5 Nov 2019 05:27:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sjolley.yp.pm[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
	[209.85.166.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEDBEE00D00
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2019 05:27:32 -0800 (PST)
Received: by mail-io1-f41.google.com with SMTP id j13so6170480ioe.0
	for <yocto@yoctoproject.org>; Tue, 05 Nov 2019 05:27:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=plTcZC6flzfvW0L9SIE5E4N8Ch4U9TOpEZ7Ij/SRToo=;
	b=Cp4q3ATCRIBb2XOzjNcBxuBTBLEFKFDmAc/NS4Uc2SsO7XNPePnm7LxLCWWj6Hoppo
	CzHMnyzJKSCFp/xcPC+Oo8CkaYiKUrL5kVnJyEHv6GOXFXzToVbRrRFtIp5VZujfZTYm
	D3fMnmuMMOdQ0qy954lXT3Onhppb5Z0mWNNrJdfDZwiqM8Y/KJ/UwuVavD9SV2uDbsKB
	74p95CcpmI14v5R0w2DMisY8+J6m+/cwdx6ajtBKQZlIMZri2FvHnfwbBmJhJjRbznig
	POiZ6nujfRchHGMP3X6G9Up8MWG8IBHiMHIRB2Qmk3JNeANwg/im7PhVo5LPzygopqyg
	kOyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=plTcZC6flzfvW0L9SIE5E4N8Ch4U9TOpEZ7Ij/SRToo=;
	b=uOmURn0J3skyU37HjDYheoSYxOuVT94/mFGndNIpJFhsTW8ScJfdKz5SKkTq8su1jS
	Dp6KgWSmbVG9M4aLaV5JIdx2F0lUlEAyvSAG/WBPM+IuGro201yCNxKasl4XwQuSqcMR
	JGG734/sq9ewZAU2h0sCfVhdKW3Gc1Q/lrVcNa76pFKru9Lb5Wa6v8KgSWxP3EcG+PRk
	iKzbh0zJ8tBL62KuHyEfE1IA8/cHPOyRyEDOUOfCBovhDo8aMmkxBYroPkPEnFn9AIlZ
	458hsY+hoxj/Y/WFJO43FP/jiP6glod3phLOOFku9Rzt/3gsaUg/0HMSO57yefMM8wt1
	xOLA==
X-Gm-Message-State: APjAAAVriCYIu8v5YSILJx2W9/2jETO1Xd2ymXLaaVrLI2N2vGMD6d68
	ycY1klSj/yt427UBTRyV2Vc/tEDA787Hpz2ChSsDvg==
X-Google-Smtp-Source: APXvYqyO6oy4Hf+57NyAMer3sComHApaaQ1ttITTMT6sF/bYHwJwNUz9RXiKJeH7HDgzyKEZadoctDRju0CZMneZU0o=
X-Received: by 2002:a02:3f1e:: with SMTP id d30mr5226121jaa.102.1572960451999; 
	Tue, 05 Nov 2019 05:27:31 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 5 Nov 2019 05:28:09 -0800
Message-ID: <CAK5yBb8D+YBZZ6JWnbPz+zYX86SnY069J+K+MvMejv5guUANSw@mail.gmail.com>
To: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Reminder: Yocto Project Technical Team Meeting @ Monthly from 8am to 8:30am on Tuesday (PDT)
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
X-List-Received-Date: Tue, 05 Nov 2019 13:27:33 -0000
Content-Type: multipart/alternative; boundary="000000000000fcbca705969964b8"

--000000000000fcbca705969964b8
Content-Type: text/plain; charset="UTF-8"

All,



Just a reminder we will hold the monthly Yocto Project Technical Meeting at
8am PST. (11/5)



Yocto Project Technical Team Meeting: We encourage people attending the
meeting to logon and announce themselves on the Yocto Project IRC chancel
during the meeting (optional):

Yocto IRC: http://webchat.freenode.net/?channels=#yocto



Wiki: https://www.yoctoproject.org/public-virtual-meetings/



When            Monthly from 8am to 8:30am on Tuesday Pacific Time

Where           Zoom Meeting: https://zoom.us/j/990892712



I will be tracking the minutes at:
https://docs.google.com/document/d/1Y5IIuE-z0Ykdl-DwuzUJh52flOZuhN_TSAfw2tdU9pg/edit?ts=5c06b22d
Please request access if you want to assist in editing them.  The world
should have view access.

--

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

*7867 SW Bayberry Dr., Beaverton, OR 97007*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000fcbca705969964b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div style=3D"font-family:sans-serif;font-size:12.8px" di=
r=3D"auto"><div style=3D"width:328px;margin:16px 0px"><div><div dir=3D"ltr"=
><p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:&#39;calibr=
i&#39;,sans-serif"><span style=3D"color:rgb(31,73,125)">All,</span><span st=
yle=3D"font-size:12pt;font-family:&#39;times new roman&#39;,serif"></span><=
/p><p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:&#39;cali=
bri&#39;,sans-serif"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><spa=
n style=3D"font-size:12pt;font-family:&#39;times new roman&#39;,serif"></sp=
an></p><p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:&#39;=
calibri&#39;,sans-serif"><span style=3D"color:rgb(31,73,125)">Just a remind=
er we will hold the monthly Yocto Project Technical Meeting at 8am PST. (11=
/5)=C2=A0</span></p><p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:&#39;calibri&#39;,sans-serif"><span style=3D"color:rgb(31,73,125)">=
=C2=A0</span></p><p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-fa=
mily:&#39;calibri&#39;,sans-serif"><span style=3D"color:rgb(31,73,125)">Yoc=
to Project Technical Team Meeting: We encourage people attending the meetin=
g to logon and announce themselves on the Yocto Project IRC chancel during =
the meeting (optional):</span><span style=3D"font-size:12pt;font-family:&#3=
9;times new roman&#39;,serif"></span></p><p style=3D"margin:0in 0in 0.0001p=
t;font-size:11pt;font-family:&#39;calibri&#39;,sans-serif"><span style=3D"c=
olor:rgb(31,73,125)">Yocto IRC:=C2=A0</span><a href=3D"http://webchat.freen=
ode.net/?channels=3D#yocto" style=3D"text-decoration-line:none;color:rgb(5,=
99,193)" target=3D"_blank" rel=3D"noreferrer">http://webchat.freenode.net/?=
channels=3D#yocto</a><span style=3D"font-size:12pt;font-family:&#39;times n=
ew roman&#39;,serif"></span></p><p style=3D"margin:0in 0in 0.0001pt;font-si=
ze:11pt;font-family:&#39;calibri&#39;,sans-serif"><span style=3D"color:rgb(=
31,73,125)">=C2=A0</span><span style=3D"font-size:12pt;font-family:&#39;tim=
es new roman&#39;,serif"></span></p><p style=3D"margin:0in 0in 0.0001pt;fon=
t-size:11pt;font-family:&#39;calibri&#39;,sans-serif"><span style=3D"color:=
rgb(31,73,125)">Wiki:=C2=A0</span><a href=3D"https://www.yoctoproject.org/p=
ublic-virtual-meetings/" style=3D"text-decoration-line:none;color:rgb(5,99,=
193)" target=3D"_blank" rel=3D"noreferrer">https://www.yoctoproject.org/pub=
lic-virtual-meetings/</a><span style=3D"font-size:12pt;font-family:&#39;tim=
es new roman&#39;,serif"></span></p><p style=3D"margin:0in 0in 0.0001pt;fon=
t-size:11pt;font-family:&#39;calibri&#39;,sans-serif"><span style=3D"color:=
rgb(31,73,125)">=C2=A0</span><span style=3D"font-size:12pt;font-family:&#39=
;times new roman&#39;,serif"></span></p><p style=3D"margin:0in 0in 0.0001pt=
;font-size:11pt;font-family:&#39;calibri&#39;,sans-serif"><span style=3D"co=
lor:rgb(31,73,125)">When=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 Monthly from 8am to 8:30am on Tuesday Pacific Time</span><s=
pan style=3D"font-size:12pt;font-family:&#39;times new roman&#39;,serif"></=
span></p><p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:&#3=
9;calibri&#39;,sans-serif"><span style=3D"color:rgb(31,73,125)">Where=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Zoom Meeting:=C2=A0<=
/span><a href=3D"https://zoom.us/j/990892712" style=3D"text-decoration-line=
:none;color:rgb(5,99,193)" target=3D"_blank" rel=3D"noreferrer">https://zoo=
m.us/j/990892712</a><span style=3D"color:rgb(31,73,125)"></span><span style=
=3D"font-size:12pt;font-family:&#39;times new roman&#39;,serif"></span></p>=
<p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:&#39;calibri=
&#39;,sans-serif"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><span s=
tyle=3D"font-size:12pt;font-family:&#39;times new roman&#39;,serif"></span>=
</p><p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:&#39;cal=
ibri&#39;,sans-serif"><span style=3D"color:rgb(31,73,125)">I will be tracki=
ng the minutes at:=C2=A0</span><a href=3D"https://docs.google.com/document/=
d/1Y5IIuE-z0Ykdl-DwuzUJh52flOZuhN_TSAfw2tdU9pg/edit?ts=3D5c06b22d" style=3D=
"text-decoration-line:none;color:rgb(5,99,193)" target=3D"_blank" rel=3D"no=
referrer">https://docs.google.com/document/d/1Y5IIuE-z0Ykdl-DwuzUJh52flOZuh=
N_TSAfw2tdU9pg/edit?ts=3D5c06b22d</a><span style=3D"color:rgb(31,73,125)">=
=C2=A0 Please request access if you want to assist in editing them.=C2=A0 T=
he world should have view access.=C2=A0</span><span style=3D"font-size:12pt=
;font-family:&#39;times new roman&#39;,serif"></span></p><div><br></div>--<=
br><div dir=3D"ltr" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><di=
v><div dir=3D"ltr"><p><span style=3D"font-size:12pt;font-family:&#39;arial&=
#39;,sans-serif">Thanks,</span></p><p><span style=3D"font-size:12pt;font-fa=
mily:&#39;arial&#39;,sans-serif">=C2=A0</span></p><p><b><i><span style=3D"f=
ont-size:16pt;color:purple">Stephen K. Jolley</span></i></b><span style=3D"=
font-size:12pt;font-family:&#39;arial&#39;,sans-serif"></span></p><p><b><sp=
an style=3D"font-size:8pt;font-family:&#39;courier new&#39;;color:blue">Yoc=
to Project Program Manager</span></b></p><p><b><span style=3D"font-family:&=
#39;courier new&#39;;color:fuchsia">7867 SW Bayberry Dr., Beaverton, OR 970=
07</span></b><span style=3D"font-size:12pt;font-family:&#39;arial&#39;,sans=
-serif"></span></p><p><span style=3D"font-size:9pt;font-family:wingdings">(=
</span><span style=3D"font-size:9pt;font-family:&#39;ms sans serif&#39;,ser=
if;color:teal">=C2=A0=C2=A0=C2=A0=C2=A0</span><b><span style=3D"font-size:8=
pt;font-family:&#39;comic sans ms&#39;;color:teal">Cell</span></b><span sty=
le=3D"font-size:9pt;font-family:&#39;ms sans serif&#39;,serif;color:teal">:=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0</span><span style=3D"font-size:9pt;font-family:&#39;m=
s sans serif&#39;,serif">(208) 244-4460</span><span style=3D"font-size:12pt=
;font-family:&#39;arial&#39;,sans-serif"></span></p><p><span style=3D"font-=
size:9pt;font-family:&#39;wingdings&#39;">*=C2=A0</span><b><span style=3D"f=
ont-size:8pt;font-family:&#39;comic sans ms&#39;;color:teal">Email</span></=
b><span style=3D"font-size:9pt;font-family:&#39;ms sans serif&#39;,serif;co=
lor:teal">:</span><span style=3D"font-size:9pt;font-family:&#39;ms sans ser=
if&#39;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><u><span style=3D"font-siz=
e:9pt;font-family:&#39;ms sans serif&#39;,serif;color:blue"><span style=3D"=
color:rgb(17,85,204)"><a href=3D"mailto:stephen.k.jolley@intel.com" style=
=3D"text-decoration-line:none;color:rgb(66,133,244)" target=3D"_blank" rel=
=3D"noreferrer">s</a><a href=3D"mailto:jolley.yp.pm@gmail.com" style=3D"tex=
t-decoration-line:none;color:rgb(66,133,244)" target=3D"_blank" rel=3D"nore=
ferrer">jolley.yp.pm@gmail.com</a></span></span></u></p></div></div></div><=
/div></div></div></div><div style=3D"height:0px"></div></div><br></div>

--000000000000fcbca705969964b8--
