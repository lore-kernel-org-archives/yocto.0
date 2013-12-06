Return-Path: <akini@synapticon.com>
Received: from mail-la0-f49.google.com (mail-la0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCBEAE007B8
	for <yocto@yoctoproject.org>; Fri,  6 Dec 2013 06:49:39 -0800 (PST)
Received: by mail-la0-f49.google.com with SMTP id er20so315330lab.8
	for <yocto@yoctoproject.org>; Fri, 06 Dec 2013 06:49:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
	:content-type;
	bh=zPYpC460cBHIMuIg7j6h9zol6W0FF3i3eoHtyv66RPQ=;
	b=R/3heOwr8eg9A4e7Fw8Fh5aIK5Q48eyIauOg2TLZfLTc8IPTdqdGSIvRUpIKV2Vtlz
	92X8sBgQMdeCMJerLOHqUkyVZp0jWnAzWPWqWkI3ULJu7iT25h2eHu2G9g3yZtv9JgOm
	2uJF87ThJ9fusQlweJIrNPDRcOt2sCK6HdU/pzKmNhJ1KzlemCbkLHwOz4rv3laT9QnY
	rKBJ1cbs2odpC7l3nafMAf06S6+JBmTH4eY3zR+MPTgNGcy/5g4Ja/8pqoKxbGm3vJUD
	Gox+tyIHpcW6ci6AW8hZYRKOTzOTPkwyKqGt7H9xma8BoZ2EjiInrn3qH9YMuMEaQImd
	N0yQ==
X-Gm-Message-State: ALoCoQlmZoDhkY20HKjUPpcgV9e4wdzhHYxetm5DLu06bS32PZptj5jtH0LowR8HeX3agSpOfh0+
MIME-Version: 1.0
X-Received: by 10.112.138.70 with SMTP id qo6mr998517lbb.34.1386341378309;
	Fri, 06 Dec 2013 06:49:38 -0800 (PST)
Received: by 10.114.92.194 with HTTP; Fri, 6 Dec 2013 06:49:38 -0800 (PST)
Date: Fri, 6 Dec 2013 15:49:38 +0100
Message-ID: <CAKS01omYdMxffF9y6xC3r0k4UukabuoLsfri3wfa8SXfhd-7-Q@mail.gmail.com>
From: Anup Kini <akini@synapticon.com>
To: yocto@yoctoproject.org
Subject: help with setting up autobuilder
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
X-List-Received-Date: Fri, 06 Dec 2013 14:49:41 -0000
Content-Type: multipart/alternative; boundary=089e0112c02c644f9f04ecdec127

--089e0112c02c644f9f04ecdec127
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

I am trying to setup yocto-autobuilder on my remote server to enable
nightly builds for my project.

I have done the following so far:
- download yocto-autobuilder from git.yoctoproject; master branch
- installed tightvnc server and viewer.
- installed expect, read that it was a dependency for autobuilder.
- bitbake core-image-minimal to get sysroot/x64_64-linux directory
populated with tunctl and other necessary stuff.
- setup vnc access to server from my desktop. I am able to connect to it
successfully.

- yocto-autobuilder/buildset-config/ contains only  nightly.conf  &
yoctoAB.conf

- source yocto-autobuilder-setup
- ./yocto-start-autobuilder both

all runs without any error, but nothing happens after this !!! How do i get
autobuilder to start building images ?

Kindly let me know if i have skipped any steps and how to use autobuilder.

-- 


*Anup Kini*Systems Engineer
*------------------------------*

*Synapticon*  |  Cyber-Physical System Solutions

Mobile:

Direct:

+49 151 / 638 646 73

+49 7335 / 186 999 21

Fax:
+49 7335 / 186 999 1






synapticon.com <http://www.synapticon.com/>  |
@synapticon_co<https://twitter.com/#!/synapticon_co>

Synapticon GmbH  |  Hohlbachweg 2  |  73344 Gruibingen, DE
Secretary +49 7335 / 186 999 0  |  General Manager: Nikolai Ensslen
Registry Court Ulm HRB 725114  |  USt-ID DE271647127

This message and any files transmitted with it are confidential and
intended
solely for the use of the individual or entity to whom they are addressed.
Please notify the sender immediately if you have received this e-mail by
mistake and delete it from your system.

--089e0112c02c644f9f04ecdec127
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I am trying to setup yocto-auto=
builder on my remote server to enable nightly builds for my project.</div><=
div><br></div><div>I have done the following so far:</div><div>- download y=
octo-autobuilder from git.yoctoproject; master branch</div>
<div>- installed tightvnc server and viewer.</div><div>- installed expect, =
read that it was a dependency for autobuilder.</div><div>- bitbake core-ima=
ge-minimal to get sysroot/x64_64-linux directory populated with tunctl and =
other necessary stuff.</div>
<div>- setup vnc access to server from my desktop. I am able to connect to =
it successfully.</div><div><br></div><div>- yocto-autobuilder/buildset-conf=
ig/ contains only =A0nightly.conf =A0&amp; yoctoAB.conf</div><div><br></div=
>
<div>- source=A0yocto-autobuilder-setup</div><div>- ./yocto-start-autobuild=
er both</div><div><br></div><div>all runs without any error, but nothing ha=
ppens after this !!! How do i get autobuilder to start building images ?</d=
iv>
<div><br></div><div>Kindly let me know if i have skipped any steps and how =
to use autobuilder.<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><p style=3D"margin:0px;color:rgb(34,34,34);font-family:arial,sans-serif;fo=
nt-size:13px;background-color:rgb(255,255,255)">
<b><span style=3D"font-size:10pt;font-family:Arial,sans-serif" lang=3D"EN-U=
S">Anup Kini<br></span></b><span style=3D"font-size:10pt;font-family:Arial,=
sans-serif" lang=3D"EN-US">Systems Engineer</span><span lang=3D"EN-US"><u><=
/u><u></u></span></p>
<div style=3D"margin:0px;color:rgb(34,34,34);font-family:arial,sans-serif;f=
ont-size:13px;background-color:rgb(255,255,255);text-align:center" align=3D=
"center"><b><span style=3D"font-size:12pt;font-family:Arial,sans-serif" lan=
g=3D"EN-US"><hr align=3D"center" size=3D"2" width=3D"100%">
</span></b></div><p style=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-fa=
mily:arial,sans-serif;font-size:13px;background-color:rgb(255,255,255)"><b>=
<span style=3D"font-size:12pt;font-family:Arial,sans-serif" lang=3D"EN-US">=
Synapticon</span></b><b><span style=3D"font-size:12pt;font-family:&#39;Time=
s New Roman&#39;,serif" lang=3D"EN-US">=A0</span></b><span style=3D"font-si=
ze:12pt;font-family:Arial,sans-serif" lang=3D"EN-US">=A0|=A0=A0</span><span=
 style=3D"font-size:10pt;font-family:Arial,sans-serif" lang=3D"EN-US">Cyber=
-Physical System Solutions</span><span style=3D"font-size:10pt;font-family:=
Verdana,sans-serif" lang=3D"EN-US">=A0</span><span lang=3D"EN-US"><u></u><u=
></u></span></p>
<table style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:=
13px;text-align:start;background-color:rgb(255,255,255);border-collapse:col=
lapse" border=3D"0" cellpadding=3D"0" cellspacing=3D"0"><tbody><tr><td styl=
e=3D"margin:0px;width:42.55pt;padding:0cm 5.4pt 0cm 0cm" valign=3D"top" wid=
th=3D"57">
<p style=3D"margin:0px"><span style=3D"font-size:10pt;font-family:Arial,san=
s-serif" lang=3D"EN-US">Mobile:</span></p><p style=3D"margin:0px"><span sty=
le=3D"font-size:10pt;font-family:Arial,sans-serif" lang=3D"EN-US">Direct:</=
span></p>
</td><td style=3D"margin:0px;width:6cm;padding:0cm 5.4pt 0cm 0cm" valign=3D=
"top" width=3D"227"><p style=3D"margin:0px"><span style=3D"font-size:10pt;f=
ont-family:Arial,sans-serif" lang=3D"EN-US"><a value=3D"+49733518699917" st=
yle=3D"color:rgb(17,85,204)">+49 151 / 638 646 73</a></span></p>
<p style=3D"margin:0px"><span style=3D"font-size:10pt;font-family:Arial,san=
s-serif" lang=3D"EN-US"><a value=3D"+49733518699917" style=3D"color:rgb(17,=
85,204)">+49 7335 / 186 999 21<br></a></span></p></td></tr><tr><td style=3D=
"margin:0px;width:42.55pt;padding:0cm 5.4pt 0cm 0cm" valign=3D"top" width=
=3D"57">
<p style=3D"margin:0px"><span style=3D"font-size:10pt;font-family:Arial,san=
s-serif" lang=3D"EN-US">Fax:</span><span lang=3D"EN-US"><u></u><u></u></spa=
n></p></td><td style=3D"margin:0px;width:6cm;padding:0cm 5.4pt 0cm 0cm" val=
ign=3D"top" width=3D"227">
<a value=3D"+4973351869991" style=3D"color:rgb(17,85,204)">+49 7335 / 186 9=
99 1</a></td></tr><tr><td style=3D"margin:0px;width:42.55pt;padding:0cm 5.4=
pt 0cm 0cm" valign=3D"top" width=3D"57"><p style=3D"margin:0px"><span style=
=3D"font-size:6pt;font-family:Arial,sans-serif" lang=3D"EN-US"><br>
</span></p><p style=3D"margin:0px"><span style=3D"font-size:6pt;font-family=
:Arial,sans-serif" lang=3D"EN-US">=A0</span><u></u></p></td><td style=3D"ma=
rgin:0px;width:6cm;padding:0cm 5.4pt 0cm 0cm" valign=3D"top" width=3D"227">=
<p style=3D"margin:0px">
<span style=3D"font-size:6pt;font-family:Arial,sans-serif" lang=3D"EN-US">=
=A0</span><u></u><u></u></p></td></tr></tbody></table><p style=3D"margin:0p=
x 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-serif;font-size:13px;b=
ackground-color:rgb(255,255,255)">
<span style=3D"font-size:10pt;font-family:Arial,sans-serif"><a href=3D"http=
://www.synapticon.com/" style=3D"color:rgb(17,85,204)" target=3D"_blank">sy=
napticon.com</a>=A0=A0| =A0<a href=3D"https://twitter.com/#!/synapticon_co"=
 style=3D"color:rgb(17,85,204)" target=3D"_blank">@synapticon_co</a></span>=
<u></u><u></u></p>
<p style=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-s=
erif;font-size:13px;background-color:rgb(255,255,255)"><span style=3D"font-=
size:10pt;font-family:Arial,sans-serif;color:rgb(127,127,127)">Synapticon G=
mbH =A0|=A0 Hohlbachweg 2=A0 | =A073344 Gruibingen, DE<br>
Secretary=A0<a value=3D"+4973351869990" style=3D"color:rgb(17,85,204)">+49 =
7335 / 186 999 0</a>=A0 |=A0 General Manager: Nikolai Ensslen=A0<br>Registr=
y Court Ulm HRB 725114=A0 |=A0 USt-ID DE271647127</span><u></u><u></u></p><=
p style=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:13px;background-color:rgb(255,255,255)">
<span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(127,127=
,127)" lang=3D"EN-US">This message and any files transmitted with it are co=
nfidential and intended=A0</span><span style=3D"font-size:8pt;font-family:V=
erdana,sans-serif;color:rgb(127,127,127)" lang=3D"EN-US"><br>
</span><span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(=
127,127,127)" lang=3D"EN-US">solely for the use of the individual or entity=
 to whom they are addressed.=A0</span><span style=3D"font-size:8pt;font-fam=
ily:Verdana,sans-serif;color:rgb(127,127,127)" lang=3D"EN-US"><br>
</span><span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(=
127,127,127)" lang=3D"EN-US">Please notify the sender immediately if you ha=
ve received this e-mail by=A0</span><span style=3D"font-size:8pt;font-famil=
y:Verdana,sans-serif;color:rgb(127,127,127)" lang=3D"EN-US"><br>
</span><span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(=
127,127,127)" lang=3D"EN-US">mistake and delete it from your system.=A0</sp=
an></p></div>
</div></div>

--089e0112c02c644f9f04ecdec127--
