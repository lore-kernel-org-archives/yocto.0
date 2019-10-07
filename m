Return-Path: <sjolley.yp.pm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37A3AE00CB9; Mon,  7 Oct 2019 09:20:34 -0700 (PDT)
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
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.42 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 361E3E00B23
	for <yocto@yoctoproject.org>; Mon,  7 Oct 2019 09:20:32 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id c25so29816116iot.12
	for <yocto@yoctoproject.org>; Mon, 07 Oct 2019 09:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=eL6v3WFrwmQFec2fWU1hxipNPVvoGMrwzflrDqrCYKM=;
	b=t336B5B3agKuy6Fjsre4blWm8XAU70cCOOi14Z161J9iSI206UDFoTJ0+6Zb25LvYB
	nN1IK58aWgkifg8R//3WDcykSFFRthSp8cg+pLc0GQUGSC0GNo6aRhXwlVDXL/iXF+Z7
	2LmhvQqkCIUP8vKTkprt42hah+N973b2Nr9r+er0UAQT0eH022X/+t2SM2e9dyC7uJKP
	GGGtLJaxwD4B6ltlORfipWJ1mU5/PiTcn6vyMGnWTnR/f5Y3d/UwUISo5c3pKMw5hLDG
	8ajHszESDRlpV6BEclPeHASIeT5jkZS/UF7LGSmF5V7oriZBff1wjOBqMcgUNrv6SAD0
	2BCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=eL6v3WFrwmQFec2fWU1hxipNPVvoGMrwzflrDqrCYKM=;
	b=sopFmzKLhkjKC8jqO5F4oahloDxfxRmndVu5K70xRNiIq1tcdXJiVg4c0MYg+CQg1m
	FFuT0gW8Z07G4GUBajnxcNxkWjERMVhzlfle5x7fAuJR00XHcbtERnjLJfUl45dPrMCZ
	hK1XoMIRlTdLp+VVZsWbwXMcXaEFNUhGjTE3IWvTd+yiKDDuw7zBKES5kJqU61aXe1OQ
	+wUeLH0E9vopEa5ghzdqDRDhqRsb72cvymGCFbuYSoMg9zf7VIp+de/ASJv2+f55r5LQ
	nJHLQWnXyPsd7kQ1Sd4YSr6bazvupdhQjQ7YYoqGXe1FTTDhgAG/4CajNQs15koumgaV
	aYuw==
X-Gm-Message-State: APjAAAVuP7p9eFhNRb0GNxG6TsnecNRbdRi46mBlY8ZYmd0Wl6a/r1dB
	oMbpDaFdIHweZbSm2ArAS5tZ+5Ii/nlswULJcF74nPdI
X-Google-Smtp-Source: APXvYqxNeNhw+M784cXotaHIy9d76RuB4PcwxYudJZ5n15OKt60xevUbTI5FSGHwYEqsLbr43BoOXMwCjy5tYF23sPI=
X-Received: by 2002:a5d:8911:: with SMTP id b17mr12751762ion.287.1570465232337;
	Mon, 07 Oct 2019 09:20:32 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 7 Oct 2019 09:20:23 -0700
Message-ID: <CAK5yBb9CS_PcUfoSun13KXO6_nS4HkcMGc90CjoO+3t4X-RztQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 07 Oct 2019 16:20:34 -0000
Content-Type: multipart/alternative; boundary="0000000000004e427a0594546e9f"

--0000000000004e427a0594546e9f
Content-Type: text/plain; charset="UTF-8"

All,



Just a reminder we will hold the monthly Yocto Project Technical Meeting at
8am PST tomorrow. (10/8)



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

--0000000000004e427a0594546e9f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;fo=
nt-size:11pt;font-family:Calibri,sans-serif"><span style=3D"color:rgb(31,73=
,125)">All,</span><span style=3D"font-size:12pt;font-family:&quot;Times New=
 Roman&quot;,serif"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"color:rgb(31,73,125)">=C2=A0</sp=
an><span style=3D"font-size:12pt;font-family:&quot;Times New Roman&quot;,se=
rif"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"color:rgb(31,73,125)">Just a rem=
inder we will hold the monthly Yocto Project
Technical Meeting at 8am PST tomorrow. (10/8)=C2=A0 </span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"color:rgb(31,73,125)">=C2=A0</sp=
an></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"color:rgb(31,73,125)">Yocto Proj=
ect Technical Team Meeting: We encourage
people attending the meeting to logon and announce themselves on the Yocto
Project IRC chancel during the meeting (optional):</span><span style=3D"fon=
t-size:12pt;font-family:&quot;Times New Roman&quot;,serif"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"color:rgb(31,73,125)">Yocto IRC:=
 </span><a href=3D"http://webchat.freenode.net/?channels=3D#yocto" style=3D=
"color:rgb(5,99,193)">http://webchat.freenode.net/?channels=3D#yocto</a><sp=
an style=3D"font-size:12pt;font-family:&quot;Times New Roman&quot;,serif"><=
/span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"color:rgb(31,73,125)">=C2=A0</sp=
an><span style=3D"font-size:12pt;font-family:&quot;Times New Roman&quot;,se=
rif"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"color:rgb(31,73,125)">Wiki: </sp=
an><a href=3D"https://www.yoctoproject.org/public-virtual-meetings/" style=
=3D"color:rgb(5,99,193)">https://www.yoctoproject.org/public-virtual-meetin=
gs/</a><span style=3D"font-size:12pt;font-family:&quot;Times New Roman&quot=
;,serif"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"color:rgb(31,73,125)">=C2=A0</sp=
an><span style=3D"font-size:12pt;font-family:&quot;Times New Roman&quot;,se=
rif"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"color:rgb(31,73,125)">When=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
Monthly from 8am to 8:30am on Tuesday Pacific Time</span><span style=3D"fon=
t-size:12pt;font-family:&quot;Times New Roman&quot;,serif"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"color:rgb(31,73,125)">Where=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
Zoom Meeting: </span><a href=3D"https://zoom.us/j/990892712" style=3D"color=
:rgb(5,99,193)">https://zoom.us/j/990892712</a><span style=3D"color:rgb(31,=
73,125)"> </span><span style=3D"font-size:12pt;font-family:&quot;Times New =
Roman&quot;,serif"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"color:rgb(31,73,125)">=C2=A0</sp=
an><span style=3D"font-size:12pt;font-family:&quot;Times New Roman&quot;,se=
rif"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"color:rgb(31,73,125)">I will be =
tracking the minutes at: </span><a href=3D"https://docs.google.com/document=
/d/1Y5IIuE-z0Ykdl-DwuzUJh52flOZuhN_TSAfw2tdU9pg/edit?ts=3D5c06b22d" style=
=3D"color:rgb(5,99,193)">https://docs.google.com/document/d/1Y5IIuE-z0Ykdl-=
DwuzUJh52flOZuhN_TSAfw2tdU9pg/edit?ts=3D5c06b22d</a><span style=3D"color:rg=
b(31,73,125)">=C2=A0 Please request access if you want to assist in
editing them.=C2=A0 The world should have view access.=C2=A0</span><span st=
yle=3D"font-size:12pt;font-family:&quot;Times New Roman&quot;,serif"></span=
></p><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-=
smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><p cla=
ss=3D"MsoNormal" style=3D"background-image:initial;background-position:init=
ial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:Ar=
ial,sans-serif">Thanks,<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-fam=
ily:Arial,sans-serif">=C2=A0<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><i><span style=3D"font-size:16pt;co=
lor:purple">Stephen K. Jolley</span></i></b><span style=3D"font-size:12pt;f=
ont-family:Arial,sans-serif"><span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><span style=3D"font-size:8pt;font-f=
amily:&quot;Courier New&quot;;color:blue">Yocto Project Program Manager<spa=
n></span></span></b></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><span style=3D"font-family:&quot;Co=
urier New&quot;;color:fuchsia;background-image:initial;background-position:=
initial;background-repeat:initial">7867 SW Bayberry Dr., Beaverton, OR 9700=
7</span></b><span style=3D"font-size:12pt;font-family:Arial,sans-serif"><sp=
an></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings;color:black">(</span><span style=3D"font-size:9pt;font-family:=
&quot;MS Sans Serif&quot;,serif;color:teal">=C2=A0=C2=A0=C2=A0=C2=A0</span>=
<b><span style=3D"font-size:8pt;font-family:&quot;Comic Sans MS&quot;;color=
:teal">Cell</span></b><span style=3D"font-size:9pt;font-family:&quot;MS San=
s Serif&quot;,serif;color:teal">:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font=
-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif">(208) 244-4460</span=
><span style=3D"font-size:12pt;font-family:Arial,sans-serif"><span></span><=
/span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings">*=C2=A0</span><b><span lang=3D"FR" style=3D"font-size:8pt;fon=
t-family:&quot;Comic Sans MS&quot;;color:teal">Email</span></b><span lang=
=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;=
color:teal">:</span><span lang=3D"FR" style=3D"font-size:9pt;font-family:&q=
uot;MS Sans Serif&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><u><span=
 lang=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,s=
erif;color:blue"><span style=3D"color:rgb(17,85,204)"><a href=3D"mailto:ste=
phen.k.jolley@intel.com" target=3D"_blank">s</a><a href=3D"mailto:jolley.yp=
.pm@gmail.com" target=3D"_blank">jolley.yp.pm@gmail.com</a></span></span></=
u></p></div></div></div></div></div>

--0000000000004e427a0594546e9f--
