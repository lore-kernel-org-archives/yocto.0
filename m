Return-Path: <djnass_18@hotmail.com>
Received: from dub0-omc3-s24.dub0.hotmail.com (dub0-omc3-s24.dub0.hotmail.com
	[157.55.2.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 133B8E00722;
	Fri, 21 Jun 2013 05:26:18 -0700 (PDT)
Received: from DUB116-W60 ([157.55.2.7]) by dub0-omc3-s24.dub0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 21 Jun 2013 05:26:16 -0700
X-TMN: [e6ZTokev0c4uSbgUVqduA4wK/RVrdJZYQLwPyp87H+0=]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB116-W60C69FEECFE2B8142B8B2A988F0@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: Anna Dushistova <anna.dushistova@gmail.com>, Khem Raj <raj.khem@gmail.com>
Date: Fri, 21 Jun 2013 12:26:17 +0000
Importance: Normal
In-Reply-To: <CAKL3bWWTiZ6BwCqVfso6XxSD_b6O1EE7=m8EddPaY74NWHy+kA@mail.gmail.com>
References: <DUB116-W138390BF0B4871C803B01A5988C0@phx.gbl>,
	<C25AF55E-9B30-43AC-B8BF-A648E791F298@gmail.com>,
	<CAKL3bWWTiZ6BwCqVfso6XxSD_b6O1EE7=m8EddPaY74NWHy+kA@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 21 Jun 2013 12:26:16.0731 (UTC)
	FILETIME=[86D22EB0:01CE6E7A]
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: cannot bitbake/build.compile tcf-agent for use with fsl-image-gui-sdk
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
X-List-Received-Date: Fri, 21 Jun 2013 12:26:20 -0000
Content-Type: multipart/alternative;
	boundary="_205d03da-ca65-4653-8428-51d17af24fa4_"

--_205d03da-ca65-4653-8428-51d17af24fa4_
Content-Type: text/plain; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

Hi Anna=2C
yes it was an OpenSSL dependency=2C but it seems weird to bump into such a =
problem. I mean This seems to have been rectified or more ppl would bump in=
to it.
In the end it was some problem with the packages_deb. There seem to be some=
 bug related to deb packaging. I only set deb packaging because it seems mo=
re compatible as I am on a Ubuntu system.=20
rpm packagin on the other hand worked nicely.

Date: Fri=2C 21 Jun 2013 10:24:16 +0400
Subject: Re: [yocto] cannot bitbake/build.compile tcf-agent for use with fs=
l-image-gui-sdk
From: anna.dushistova@gmail.com
To: raj.khem@gmail.com
CC: djnass_18@hotmail.com=3B meta-freescale@yoctoproject.org=3B yocto@yocto=
project.org

Hi everyone=2C

On Tue=2C Jun 18=2C 2013 at 7:24 PM=2C Khem Raj <raj.khem@gmail.com> wrote:
=0A=
<...>
Seems a missing dep on OpenSSL btw does tcf-agent work on anything other th=
an x86 ?

=0A=
 First of all=2C it's possible to compile the agent with OpenSSL disabled=
=2C you will need to set ENABLE_SSL to 0 in your CFLAGS=2C see http://git.e=
clipse.org/c/tcf/org.eclipse.tcf.agent.git/tree/agent/tcf/config.h#n213.=0A=

Then=2C tcf-agent as the means of communication works on all the main platf=
orms=2C and as of this upcoming release=2Cthere is an initial debug support=
 on ARM=2C see http://wiki.eclipse.org/TCF/NewIn11.=0A=

Anna.=20
=0A=
At this point I have run out of ideas about how to prepare tcf-agent to ins=
tall on my sabrelite fsl-image-gui-sdk rootfs....
Any help would be most welcome.

for example in the 1st case how could I run apt-get as is suggested in a ma=
nner that would be appropriate to update yocto sources?
=0A=

Thank you.
 		 	   		  =0A=
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
=0A=
https://lists.yoctoproject.org/listinfo/yocto

_______________________________________________
=0A=
=0A=
yocto mailing list
=0A=
yocto@yoctoproject.org
=0A=
https://lists.yoctoproject.org/listinfo/yocto
=0A=


 		 	   		  =

--_205d03da-ca65-4653-8428-51d17af24fa4_
Content-Type: text/html; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi Anna=2C<br>yes it was an Open=
SSL dependency=2C but it seems weird to bump into such a problem. I mean Th=
is seems to have been rectified or more ppl would bump into it.<br>In the e=
nd it was some problem with the packages_deb. There seem to be some bug rel=
ated to deb packaging. I only set deb packaging because it seems more compa=
tible as I am on a Ubuntu system. <br>rpm packagin on the other hand worked=
 nicely.<br><br><div><hr id=3D"stopSpelling">Date: Fri=2C 21 Jun 2013 10:24=
:16 +0400<br>Subject: Re: [yocto] cannot bitbake/build.compile tcf-agent fo=
r use with fsl-image-gui-sdk<br>From: anna.dushistova@gmail.com<br>To: raj.=
khem@gmail.com<br>CC: djnass_18@hotmail.com=3B meta-freescale@yoctoproject.=
org=3B yocto@yoctoproject.org<br><br>Hi everyone=2C<br><br><div class=3D"ec=
xgmail_quote">On Tue=2C Jun 18=2C 2013 at 7:24 PM=2C Khem Raj <span dir=3D"=
ltr">&lt=3B<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem=
@gmail.com</a>&gt=3B</span> wrote:<br><blockquote class=3D"ecxgmail_quote" =
style=3D"border-left:1px #ccc solid=3Bpadding-left:1ex=3B">=0A=
<div dir=3D"auto"><div><div class=3D"h5"><div>&lt=3B...&gt=3B</div><div><br=
></div></div></div>Seems a missing dep on OpenSSL btw does tcf-agent work o=
n anything other than x86 ?<div><br></div></div></blockquote><div><br></div=
><div>=0A=
&nbsp=3BFirst of all=2C it's possible to compile the agent with OpenSSL dis=
abled=2C you will need to set ENABLE_SSL to 0 in your CFLAGS=2C see <a href=
=3D"http://git.eclipse.org/c/tcf/org.eclipse.tcf.agent.git/tree/agent/tcf/c=
onfig.h#n213" target=3D"_blank">http://git.eclipse.org/c/tcf/org.eclipse.tc=
f.agent.git/tree/agent/tcf/config.h#n213</a>.</div>=0A=
<div><br></div><div>Then=2C tcf-agent as the means of communication works o=
n all the main platforms=2C and as of this upcoming release=2C</div><div>th=
ere is an initial debug support on ARM=2C see <a href=3D"http://wiki.eclips=
e.org/TCF/NewIn11" target=3D"_blank">http://wiki.eclipse.org/TCF/NewIn11</a=
>.</div>=0A=
<div><br></div><div>Anna.</div><blockquote class=3D"ecxgmail_quote" style=
=3D"border-left:1px #ccc solid=3Bpadding-left:1ex=3B"><div dir=3D"auto"><di=
v><div><div class=3D"ecxim"><blockquote><div><div dir=3D"ltr"><font face=3D=
"Calibri">&nbsp=3B</font><font face=3D"Calibri"><br>=0A=
</font>At this point I have run out of ideas about how to prepare tcf-agent=
 to install on my sabrelite fsl-image-gui-sdk rootfs....<br>Any help would =
be most welcome.<br><br>for example in the 1st case how could I run apt-get=
 as is suggested in a manner that would be appropriate to update yocto sour=
ces?<br>=0A=
<br>Thank you.<br> 		 	   		  </div>=0A=
</div></blockquote></div><blockquote><div><span>___________________________=
____________________</span><br><span>yocto mailing list</span><br><span><a =
href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject=
.org</a></span><br>=0A=
<span><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_=
blank">https://lists.yoctoproject.org/listinfo/yocto</a></span><br></div></=
blockquote></div></div></div><br>__________________________________________=
_____<br>=0A=
=0A=
yocto mailing list<br>=0A=
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>=0A=
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>=0A=
<br></blockquote></div><br></div> 		 	   		  </div></body>
</html>=

--_205d03da-ca65-4653-8428-51d17af24fa4_--
