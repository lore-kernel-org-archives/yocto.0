Return-Path: <gwilson@sakuraus.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E97C433EF
	for <webhook@archiver.kernel.org>; Wed,  6 Oct 2021 17:01:21 +0000 (UTC)
Received: from outbound-ip2b.ess.barracuda.com
 (outbound-ip2b.ess.barracuda.com [209.222.82.184])
 by mx.groups.io with SMTP id smtpd.web10.538.1633539677863037982
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Oct 2021 10:01:20 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: sakuraus.com, ip: 209.222.82.184, mailfrom: gwilson@sakuraus.com)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
 mx-outbound21-157.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2
 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 06 Oct 2021 17:01:01 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (172.23.0.14) by SFAMAIL.SAKURAUS.LOCAL
 (172.23.0.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_DHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2242.12; Wed, 6 Oct 2021
 10:01:01 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([fe80::212b:8377:8efd:15dd]) by
 SFAMAIL.SAKURAUS.LOCAL ([fe80::212b:8377:8efd:15dd%13]) with mapi id
 15.01.2242.012; Wed, 6 Oct 2021 10:01:00 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Joel Winarske <joel.winarske@gmail.com>
CC: Khem Raj <raj.khem@gmail.com>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] virtual/egl on Raspberry Pi 4
Thread-Topic: [yocto] virtual/egl on Raspberry Pi 4
Thread-Index: 
 Ade5V3yaHATh5XXBTUa/y6q/HGx7UAASGNoAAAriOaD//9qVgP//bzLAgAGhvYD//6kJxIABk9uA///nqp8=
Date: Wed, 6 Oct 2021 17:01:00 +0000
Message-ID: <fba47e47b38440dcbc08e8af6242b7f7@sakuraus.com>
References: <0c6e789aba8141509bb31779a8393cbf@sakuraus.com>
 <0a038b52-6f11-662a-8d77-786919852079@gmail.com>
 <aa11888f9dc34eed9383c55ceae3eb9f@sakuraus.com>
 <CAMKF1srthNYZQq_N8p5s_z2KYyWhQ-xb8T5X=+JYri7G2iobmg@mail.gmail.com>
 <05663a522f6a4b44b12746c31d96ca0f@sakuraus.com>
 <CAMKF1sqR2qztzv+4HeuqhbzY57WYMh4wU57b2LJ=OTv-9ooJhA@mail.gmail.com>
 <a8fed034af6e471894743920f7f2ba83@sakuraus.com>,<CABKMkPLh6eM5=U5OtRBuhQ0vwud73HFk0yqLLkGH0CBBGsfHSA@mail.gmail.com>
In-Reply-To: 
 <CABKMkPLh6eM5=U5OtRBuhQ0vwud73HFk0yqLLkGH0CBBGsfHSA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [47.157.31.169]
Content-Type: multipart/alternative;
	boundary="_000_fba47e47b38440dcbc08e8af6242b7f7sakurauscom_"
MIME-Version: 1.0
X-BESS-ID: 1633539661-105533-5400-29564-1
X-BESS-VER: 2019.1_20211005.2320
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
 rules version 3.2.2.234970 [from
	cloudscan21-155.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
 KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Oct 2021 17:01:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54981

--_000_fba47e47b38440dcbc08e8af6242b7f7sakurauscom_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello Joel,

That is what was missing. Qt had reduced the size of their build to what wa=
s minimally needed to build their boot2qt demo, and I am using something th=
at they don't.


Thanks for telling me what was missing,

Greg

________________________________
From: Joel Winarske <joel.winarske@gmail.com>
Sent: Wednesday, October 6, 2021 4:26:01 AM
To: Greg Wilson-Lindberg
Cc: Khem Raj; Yocto-mailing-list
Subject: Re: [yocto] virtual/egl on Raspberry Pi 4

Hi Greg,

Do you have this in your local.conf?

DISTRO_FEATURES_append =3D " opengl"

On Tue, Oct 5, 2021, 11:22 AM Greg Wilson-Lindberg <gwilson@sakuraus.com<ma=
ilto:gwilson@sakuraus.com>> wrote:

Hi Khem,

I added the VC4GRAPHICS line and here is the complete error that I get:


ERROR: Nothing PROVIDES 'virtual/egl' (but /home/gwilson/Qt-5.15.6/Yocto-bu=
ild-RPi4/sources/meta-qt5/recipes-qt/qt5/qtbase_git.bb<http://qtbase_git.bb=
> DEPENDS on or otherwise requires it)
vc-graphics PROVIDES virtual/egl but was skipped: PREFERRED_PROVIDER_virtua=
l/libgles2 set to mesa, not vc-graphics
opengldummy PROVIDES virtual/egl but was skipped: PREFERRED_PROVIDER_virtua=
l/libgles2 set to mesa, not opengldummy
vc-graphics-hardfp PROVIDES virtual/egl but was skipped: PREFERRED_PROVIDER=
_virtual/libgles2 set to mesa, not vc-graphics-hardfp
qtglesstream-dummy-client PROVIDES virtual/egl but was skipped: PREFERRED_P=
ROVIDER_virtual/libgles2 set to mesa, not qtglesstream-dummy-client
NOTE: Runtime target 'zint' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['zint', 'qtbase', 'virtual/eg=
l']

Regards,

Greg

________________________________
From: Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
Sent: Tuesday, October 5, 2021 9:31:49 AM
To: Greg Wilson-Lindberg
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: Re: [yocto] virtual/egl on Raspberry Pi 4

that should have worked well for userland recipe to provide it. Maybe
you need to set

VC4GRAPHICS =3D ""

in local.conf

On Tue, Oct 5, 2021 at 8:53 AM Greg Wilson-Lindberg
<GWilson@sakuraus.com<mailto:GWilson@sakuraus.com>> wrote:
>
> I am compiling in 32 bit mode.
>
>
>
> From: Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
> Sent: Monday, October 4, 2021 5:15 PM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com<mailto:GWilson@sakuraus.co=
m>>
> Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
> Subject: Re: [yocto] virtual/egl on Raspberry Pi 4
>
>
>
> It should have automatically found user land package as one of providers =
but if it is not doing so that means it=92s being ignored because it=92s no=
t compatible arch or something
>
> Are you compiling 32bit mode ?
>
>
>
>
>
> On Mon, Oct 4, 2021 at 4:08 PM Greg Wilson-Lindberg <GWilson@sakuraus.com=
<mailto:GWilson@sakuraus.com>> wrote:
>
> Hi Khem,
> Yes, the Raspberry Pi boards do use closed source drivers. What I need is=
 how do I include the proper package that will bring in the necessary virtu=
al/egl for the Raspberry Pi 4.
>
> Greg
> > -----Original Message-----
> > From: Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
> > Sent: Monday, October 4, 2021 14:17
> > To: Greg Wilson-Lindberg <GWilson@sakuraus.com<mailto:GWilson@sakuraus.=
com>>;
> > yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
> > Subject: Re: [yocto] virtual/egl on Raspberry Pi 4
> >
> >
> >
> > On 10/4/21 12:39 PM, Greg Wilson-Lindberg wrote:
> > > Hello list,
> > >
> > > I'm working on a Qt supplied boot2qt Yocto build currently based on
> > > Zeus that is running on a Raspberry Pi 4. I recently updated the qt
> > > version to 5.15.6 and Qt changed something in the Yocto configuration
> > > that they are using and now one of the recipes that we use is failing
> > > saying that in needs 'virtual/egl' but that it is not provided by any=
 recipe.
> > >
> > > In the searching that I have done I have found that the raspberry pi =
4
> > > is particular on which package supplies the virtual/egl but I haven't
> > > seen anything that indicates what I should do to re-enable it.
> > >
> > > Can anyone tell me what I need to do to enable the correct driver to
> > > get virtual/egl provided on the Raspberry Pi 4? Or maybe even better,
> > > how I could search through the packages that are enabled on the old
> > > and new Yocto trees so that I can figure out what changed between the
> > > releases and re-enable the virtual/egl.
> > >
> >
> > it should be provided by userland package if you are using closed sourc=
e
> > graphics driver.
> >
> > > Best Regards,
> > >
> > > Greg Wilson-Lindberg
> > >
> > >
> > >
> > >
> > >

-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#54963): https://lists.yoctoproject.org/g/yocto/message/=
54963
Mute This Topic: https://lists.yoctoproject.org/mt/86076611/2167248
Group Owner: yocto+owner@lists.yoctoproject.org<mailto:yocto%2Bowner@lists.=
yoctoproject.org>
Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [joel.winarske@gm=
ail.com<mailto:joel.winarske@gmail.com>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--_000_fba47e47b38440dcbc08e8af6242b7f7sakurauscom_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hello Joel,</p>
<p>That is what was missing. Qt had reduced the size of their build to what=
 was minimally needed to build their boot2qt demo, and I am using something=
 that they don't.</p>
<p><br>
</p>
<p>Thanks for telling me what was missing,</p>
<p>Greg</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Joel Winarske &lt;joe=
l.winarske@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, October 6, 2021 4:26:01 AM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> Khem Raj; Yocto-mailing-list<br>
<b>Subject:</b> Re: [yocto] virtual/egl on Raspberry Pi 4</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">Hi Greg,
<div dir=3D"auto"><br>
<div dir=3D"auto">Do you have this in your local.conf?</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto"><span style=3D"color:rgb(240,246,252);font-family:ui-mono=
space,sfmono-regular,&quot;sf mono&quot;,menlo,consolas,&quot;liberation mo=
no&quot;,monospace;font-size:12px;white-space:pre;background-color:rgb(22,2=
7,34)">DISTRO_FEATURES_append =3D &quot; opengl&quot;</span><br>
</div>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 5, 2021, 11:22 AM Greg Wi=
lson-Lindberg &lt;<a href=3D"mailto:gwilson@sakuraus.com">gwilson@sakuraus.=
com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div>
<div dir=3D"ltr">
<div id=3D"m_-3301180309723432010x_divtagdefaultwrapper" dir=3D"ltr" style=
=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif">
<p>Hi Khem,</p>
<p>I added the VC4GRAPHICS line and here is the complete error that I get:<=
/p>
<p><br>
</p>
<p></p>
<div>ERROR: Nothing PROVIDES 'virtual/egl' (but /home/gwilson/Qt-5.15.6/Yoc=
to-build-RPi4/sources/meta-qt5/recipes-qt/qt5/<a href=3D"http://qtbase_git.=
bb" target=3D"_blank" rel=3D"noreferrer">qtbase_git.bb</a> DEPENDS on or ot=
herwise requires it)</div>
<div>vc-graphics PROVIDES virtual/egl but was skipped: PREFERRED_PROVIDER_v=
irtual/libgles2 set to mesa, not vc-graphics</div>
<div>opengldummy PROVIDES virtual/egl but was skipped: PREFERRED_PROVIDER_v=
irtual/libgles2 set to mesa, not opengldummy</div>
<div>vc-graphics-hardfp PROVIDES virtual/egl but was skipped: PREFERRED_PRO=
VIDER_virtual/libgles2 set to mesa, not vc-graphics-hardfp</div>
<div>qtglesstream-dummy-client PROVIDES virtual/egl but was skipped: PREFER=
RED_PROVIDER_virtual/libgles2 set to mesa, not qtglesstream-dummy-client</d=
iv>
<div>NOTE: Runtime target 'zint' is unbuildable, removing...</div>
<div>Missing or unbuildable dependency chain was: ['zint', 'qtbase', 'virtu=
al/egl']</div>
<div><br>
</div>
Regards,
<p></p>
<p>Greg</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-3301180309723432010x_divRplyFwdMsg" dir=3D"ltr"><font face=3D=
"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</=
b> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" rel=
=3D"noreferrer">raj.khem@gmail.com</a>&gt;<br>
<b>Sent:</b> Tuesday, October 5, 2021 9:31:49 AM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
" rel=3D"noreferrer">
yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] virtual/egl on Raspberry Pi 4</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div>that should have worked well for userland recipe to provide it. Maybe<=
br>
you need to set<br>
<br>
VC4GRAPHICS =3D &quot;&quot;<br>
<br>
in local.conf<br>
<br>
On Tue, Oct 5, 2021 at 8:53 AM Greg Wilson-Lindberg<br>
&lt;<a href=3D"mailto:GWilson@sakuraus.com" target=3D"_blank" rel=3D"norefe=
rrer">GWilson@sakuraus.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I am compiling in 32 bit mode.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; From: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bl=
ank" rel=3D"noreferrer">raj.khem@gmail.com</a>&gt;<br>
&gt; Sent: Monday, October 4, 2021 5:15 PM<br>
&gt; To: Greg Wilson-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com" t=
arget=3D"_blank" rel=3D"noreferrer">GWilson@sakuraus.com</a>&gt;<br>
&gt; Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank" =
rel=3D"noreferrer">
yocto@lists.yoctoproject.org</a><br>
&gt; Subject: Re: [yocto] virtual/egl on Raspberry Pi 4<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; It should have automatically found user land package as one of provide=
rs but if it is not doing so that means it=92s being ignored because it=92s=
 not compatible arch or something<br>
&gt;<br>
&gt; Are you compiling 32bit mode ?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Oct 4, 2021 at 4:08 PM Greg Wilson-Lindberg &lt;<a href=3D"mai=
lto:GWilson@sakuraus.com" target=3D"_blank" rel=3D"noreferrer">GWilson@saku=
raus.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Khem,<br>
&gt; Yes, the Raspberry Pi boards do use closed source drivers. What I need=
 is how do I include the proper package that will bring in the necessary vi=
rtual/egl for the Raspberry Pi 4.<br>
&gt;<br>
&gt; Greg<br>
&gt; &gt; -----Original Message-----<br>
&gt; &gt; From: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.com</a>&gt;<br>
&gt; &gt; Sent: Monday, October 4, 2021 14:17<br>
&gt; &gt; To: Greg Wilson-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.c=
om" target=3D"_blank" rel=3D"noreferrer">GWilson@sakuraus.com</a>&gt;;<br>
&gt; &gt; <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank"=
 rel=3D"noreferrer">
yocto@lists.yoctoproject.org</a><br>
&gt; &gt; Subject: Re: [yocto] virtual/egl on Raspberry Pi 4<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; On 10/4/21 12:39 PM, Greg Wilson-Lindberg wrote:<br>
&gt; &gt; &gt; Hello list,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I'm working on a Qt supplied boot2qt Yocto build currently b=
ased on<br>
&gt; &gt; &gt; Zeus that is running on a Raspberry Pi 4. I recently updated=
 the qt<br>
&gt; &gt; &gt; version to 5.15.6 and Qt changed something in the Yocto conf=
iguration<br>
&gt; &gt; &gt; that they are using and now one of the recipes that we use i=
s failing<br>
&gt; &gt; &gt; saying that in needs 'virtual/egl' but that it is not provid=
ed by any recipe.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; In the searching that I have done I have found that the rasp=
berry pi 4<br>
&gt; &gt; &gt; is particular on which package supplies the virtual/egl but =
I haven't<br>
&gt; &gt; &gt; seen anything that indicates what I should do to re-enable i=
t.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Can anyone tell me what I need to do to enable the correct d=
river to<br>
&gt; &gt; &gt; get virtual/egl provided on the Raspberry Pi 4? Or maybe eve=
n better,<br>
&gt; &gt; &gt; how I could search through the packages that are enabled on =
the old<br>
&gt; &gt; &gt; and new Yocto trees so that I can figure out what changed be=
tween the<br>
&gt; &gt; &gt; releases and re-enable the virtual/egl.<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; it should be provided by userland package if you are using closed=
 source<br>
&gt; &gt; graphics driver.<br>
&gt; &gt;<br>
&gt; &gt; &gt; Best Regards,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Greg Wilson-Lindberg<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;<br>
</div>
</span></font></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#54963): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/54963" rel=3D"noreferrer noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/message/54963</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86076611/2167=
248" rel=3D"noreferrer noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/mt/86076611/2167248</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">
yocto&#43;owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:joel.wi=
narske@gmail.com" target=3D"_blank" rel=3D"noreferrer">joel.winarske@gmail.=
com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_fba47e47b38440dcbc08e8af6242b7f7sakurauscom_--

