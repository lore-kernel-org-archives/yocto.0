Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F714E0078F
	for <yocto@yoctoproject.org>; Mon,  9 Dec 2013 03:31:16 -0800 (PST)
Received: by mail-vc0-f180.google.com with SMTP id if17so3203265vcb.39
	for <yocto@yoctoproject.org>; Mon, 09 Dec 2013 03:31:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Yt1stPkhppUWanAOPKWCQPhRz6jw3BTX97luSLuQmZM=;
	b=E9kHh6y1DvHgM/Plhw8aFa87RVxMh7A9+9WoeasHoUw6e68eFtxqB57eJEvDPgFoAO
	3StmPkRgMLv0ZIn/idgLJESZConm3NuK/QXr8o4orRI0IkEcZMB7a+cgN4fn/jRUpuZg
	uKsnRfHkCSpPsV+zQ3uxzCRh+h4kDy+Z8zsBTf4Pv64J4KU2AYFTS6NrVcfJsLkEh7Le
	mx2pYoLT9RwL8kXu9bnoduu2qL0HtsYE+cuxSLtFm9aVH8xwLs1XA2ih16QPmf34Scul
	UDZvXiLLif7XAXsncwb4D+k91ocg9g9cWn4ojqnJqwCEMU8SzcUjEZxI+sHWckm1NBoB
	Oa1g==
X-Gm-Message-State: ALoCoQmrvlMkTKVdoob1XttejYQURV58Y8Op8j9NS+bAyxp+JRl5TApH7BSF93biWE+B7bXuGXKW
MIME-Version: 1.0
X-Received: by 10.220.170.68 with SMTP id c4mr1345898vcz.41.1386588675519;
	Mon, 09 Dec 2013 03:31:15 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Mon, 9 Dec 2013 03:31:15 -0800 (PST)
In-Reply-To: <CAKS01omYdMxffF9y6xC3r0k4UukabuoLsfri3wfa8SXfhd-7-Q@mail.gmail.com>
References: <CAKS01omYdMxffF9y6xC3r0k4UukabuoLsfri3wfa8SXfhd-7-Q@mail.gmail.com>
Date: Mon, 9 Dec 2013 11:31:15 +0000
Message-ID: <CAPhnLPCri5QXiHCkNSRwqx+vhQYreC9hxZviiAvMSrM+7F8Bnw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Anup Kini <akini@synapticon.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: help with setting up autobuilder
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
X-List-Received-Date: Mon, 09 Dec 2013 11:31:17 -0000
Content-Type: multipart/alternative; boundary=001a11c2c3fa744a9104ed1855f6

--001a11c2c3fa744a9104ed1855f6
Content-Type: text/plain; charset=ISO-8859-1

Hi Anup,

First, please checkout the yocto-1.5 tag in the yocto-autobuilder. The
current git fetcher in master it is broken and doing bad things. I'll be
spending time on it this week to get it working correctly which should
speed up git clones.

Next, you'll want to modify the files in buildset-config files and add a
scheduler depending on when you want the builds out. By default I only have
a triggerable scheduler setup which means you will have to log in with the
username and password you set in yocto-master/master.cfg, go to the nightly
build trigger page (http://localhost:8010/builders/nightly or something
like that depending on your setup.)

Each of those red boxes are clickable and will allow you to set the
parameters of the build (branch, repo, etc).

If you want to set up a different type of scheduler (nightly, timed, etc),
look at the file README-NEW-AUTOBUILDER and follow the advice within.

If you need any other help, I'll need to see your nightly.conf or other
conf files you have in buildset-config.

-b


On Fri, Dec 6, 2013 at 2:49 PM, Anup Kini <akini@synapticon.com> wrote:

> Hi All,
>
> I am trying to setup yocto-autobuilder on my remote server to enable
> nightly builds for my project.
>
> I have done the following so far:
> - download yocto-autobuilder from git.yoctoproject; master branch
> - installed tightvnc server and viewer.
> - installed expect, read that it was a dependency for autobuilder.
> - bitbake core-image-minimal to get sysroot/x64_64-linux directory
> populated with tunctl and other necessary stuff.
> - setup vnc access to server from my desktop. I am able to connect to it
> successfully.
>
> - yocto-autobuilder/buildset-config/ contains only  nightly.conf  &
> yoctoAB.conf
>
> - source yocto-autobuilder-setup
> - ./yocto-start-autobuilder both
>
> all runs without any error, but nothing happens after this !!! How do i
> get autobuilder to start building images ?
>
> Kindly let me know if i have skipped any steps and how to use autobuilder.
>
> --
>
>
> *Anup Kini*Systems Engineer
> *------------------------------ *
>
> *Synapticon*  |  Cyber-Physical System Solutions
>
> Mobile:
>
> Direct:
>
> +49 151 / 638 646 73
>
> +49 7335 / 186 999 21
>
> Fax:
> +49 7335 / 186 999 1
>
>
>
>
>
>
> synapticon.com <http://www.synapticon.com/>  |  @synapticon_co<https://twitter.com/#%21/synapticon_co>
>
> Synapticon GmbH  |  Hohlbachweg 2  |  73344 Gruibingen, DE
> Secretary +49 7335 / 186 999 0  |  General Manager: Nikolai Ensslen
> Registry Court Ulm HRB 725114  |  USt-ID DE271647127
>
> This message and any files transmitted with it are confidential and
> intended
> solely for the use of the individual or entity to whom they are addressed.
> Please notify the sender immediately if you have received this e-mail by
> mistake and delete it from your system.
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--001a11c2c3fa744a9104ed1855f6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi Anup,<br><br></div>First, please ch=
eckout the yocto-1.5 tag in the yocto-autobuilder. The current git fetcher =
in master it is broken and doing bad things. I&#39;ll be spending time on i=
t this week to get it working correctly which should speed up git clones.<b=
r>
<br>Next, you&#39;ll want to modify the files in buildset-config files and =
add a scheduler depending on when you want the builds out. By default I onl=
y have a triggerable scheduler setup which means you will have to log in wi=
th the username and password you set in yocto-master/master.cfg, go to the =
nightly build trigger page (<a href=3D"http://localhost:8010/builders/night=
ly">http://localhost:8010/builders/nightly</a> or something like that depen=
ding on your setup.)<br>
<br></div>Each of those red boxes are clickable and will allow you to set t=
he parameters of the build (branch, repo, etc).<br><br>If you want to set u=
p a different type of scheduler (nightly, timed, etc), look at the file REA=
DME-NEW-AUTOBUILDER and follow the advice within.<br>
<br></div>If you need any other help, I&#39;ll need to see your nightly.con=
f or other conf files you have in buildset-config.<br><br></div>-b<br></div=
><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri, Dec =
6, 2013 at 2:49 PM, Anup Kini <span dir=3D"ltr">&lt;<a href=3D"mailto:akini=
@synapticon.com" target=3D"_blank">akini@synapticon.com</a>&gt;</span> wrot=
e:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi All,<div><br></div><div>=
I am trying to setup yocto-autobuilder on my remote server to enable nightl=
y builds for my project.</div>
<div><br></div><div>I have done the following so far:</div><div>- download =
yocto-autobuilder from git.yoctoproject; master branch</div>
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
><p style=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-seri=
f;margin:0px">

<b><span style=3D"font-size:10pt;font-family:Arial,sans-serif" lang=3D"EN-U=
S">Anup Kini<br></span></b><span style=3D"font-size:10pt;font-family:Arial,=
sans-serif" lang=3D"EN-US">Systems Engineer</span><span lang=3D"EN-US"><u><=
/u><u></u></span></p>

<div style=3D"text-align:center;color:rgb(34,34,34);font-size:13px;font-fam=
ily:arial,sans-serif;margin:0px" align=3D"center"><b><span style=3D"font-si=
ze:12pt;font-family:Arial,sans-serif" lang=3D"EN-US"><hr size=3D"2" width=
=3D"100%" align=3D"center">

</span></b></div><p style=3D"color:rgb(34,34,34);font-size:13px;font-family=
:arial,sans-serif;margin:0px 0px 8pt"><b><span style=3D"font-size:12pt;font=
-family:Arial,sans-serif" lang=3D"EN-US">Synapticon</span></b><b><span styl=
e=3D"font-size:12pt;font-family:&#39;Times New Roman&#39;,serif" lang=3D"EN=
-US">=A0</span></b><span style=3D"font-size:12pt;font-family:Arial,sans-ser=
if" lang=3D"EN-US">=A0|=A0=A0</span><span style=3D"font-size:10pt;font-fami=
ly:Arial,sans-serif" lang=3D"EN-US">Cyber-Physical System Solutions</span><=
span style=3D"font-size:10pt;font-family:Verdana,sans-serif" lang=3D"EN-US"=
>=A0</span><span lang=3D"EN-US"><u></u><u></u></span></p>

<table style=3D"border-collapse:collapse;text-align:start;color:rgb(34,34,3=
4);font-size:13px;font-family:arial,sans-serif" cellpadding=3D"0" cellspaci=
ng=3D"0" border=3D"0"><tbody><tr><td style=3D"margin:0px;width:42.55pt;padd=
ing:0cm 5.4pt 0cm 0cm" valign=3D"top" width=3D"57">

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
=A0</span><u></u><u></u></p></td></tr></tbody></table><p style=3D"color:rgb=
(34,34,34);font-size:13px;font-family:arial,sans-serif;margin:0px 0px 8pt">
<span style=3D"font-size:10pt;font-family:Arial,sans-serif"><a href=3D"http=
://www.synapticon.com/" style=3D"color:rgb(17,85,204)" target=3D"_blank">sy=
napticon.com</a>=A0=A0| =A0<a href=3D"https://twitter.com/#%21/synapticon_c=
o" style=3D"color:rgb(17,85,204)" target=3D"_blank">@synapticon_co</a></spa=
n><u></u><u></u></p>

<p style=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-serif=
;margin:0px 0px 8pt"><span style=3D"font-size:10pt;font-family:Arial,sans-s=
erif;color:rgb(127,127,127)">Synapticon GmbH =A0|=A0 Hohlbachweg 2=A0 | =A0=
73344 Gruibingen, DE<br>

Secretary=A0<a value=3D"+4973351869990" style=3D"color:rgb(17,85,204)">+49 =
7335 / 186 999 0</a>=A0 |=A0 General Manager: Nikolai Ensslen=A0<br>Registr=
y Court Ulm HRB 725114=A0 |=A0 USt-ID DE271647127</span><u></u><u></u></p><=
p style=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-serif;=
margin:0px 0px 8pt">

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
</blockquote></div><br><br clear=3D"all"><br>-- <br>Elizabeth Flanagan<br>Y=
octo Project<br>Build and Release
</div>

--001a11c2c3fa744a9104ed1855f6--
