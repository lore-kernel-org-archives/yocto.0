Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6385DE00B3D
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 10:49:02 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id lc6so7541311vcb.21
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 10:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=HBorgQu4bhORGYpnOREhDL5qlESA1ZzSlLyzMCJKDHs=;
	b=OwYzmErvfYZEVd62Vcg3+tbs6M/xBsP1YCcs2NtSQHBHzWriLObRrHJUpik+pM0JAg
	Gtn4pOb86oLSJZV6RIl/iF/Y0UYZ/DL3vGW2jz46Uhtxhv5ClT/TKR2+QMw386CkjVEZ
	a5n/riHvPpidcgzRNjGwr4deXNC48lx4n1e7m8OOEA9PYt/3YTHLxHgHRQdgrAKBYTly
	FLsAs5mUjfAu2dgN6xl811l2vX8j85Ag8nobpWYp/kDkgqT47iundgixwcUH8ll/iKXh
	ZVpGXQ2s4dylSBRqfmSD6Guig80KT+TThspU/QNr7a3RGVEoB8Vtl2LGsrnp+QGd2g3u
	4K9Q==
MIME-Version: 1.0
X-Received: by 10.221.27.8 with SMTP id ro8mr989326vcb.30.1395164942331; Tue,
	18 Mar 2014 10:49:02 -0700 (PDT)
Received: by 10.220.96.66 with HTTP; Tue, 18 Mar 2014 10:49:02 -0700 (PDT)
In-Reply-To: <CAA7h+EprV97+okAJhq=b9jZrJz0UhegC3D0cDhSNsgboS4by6A@mail.gmail.com>
References: <CAA7h+EpU6RVwbewuJ6r04+O2CvjPBpP1z86dpAthm4_cBrrO+Q@mail.gmail.com>
	<53207D25.2040309@mlbassoc.com>
	<CAA7h+Eomb_92298Y1NDmtTNiTmNcbivytLd9xT=1FVZ+My=PAw@mail.gmail.com>
	<5320AB11.4060303@mlbassoc.com>
	<CAA7h+EoYviRS34heBABgE-o1eQP0po=rVgE-Tc98vSg16F-5+g@mail.gmail.com>
	<5323147A.8000400@mlbassoc.com>
	<CAA7h+EpRdEuYERe+N2enPyPDuP1fN+qE_PD9NnEGHYDV2wwP+Q@mail.gmail.com>
	<53237FCF.8020700@mlbassoc.com>
	<CAA7h+EprV97+okAJhq=b9jZrJz0UhegC3D0cDhSNsgboS4by6A@mail.gmail.com>
Date: Tue, 18 Mar 2014 10:49:02 -0700
Message-ID: <CAA7h+ErZGg61XAYC5fZ2cLyeKfo7Ge_U9ZPGfNy2a+TMqiA76A@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on target
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
X-List-Received-Date: Tue, 18 Mar 2014 17:49:05 -0000
Content-Type: multipart/alternative; boundary=001a11336baaca749504f4e526fb

--001a11336baaca749504f4e526fb
Content-Type: text/plain; charset=ISO-8859-1

Should have noted, that the date and time reset on every reboot?


On Tue, Mar 18, 2014 at 10:48 AM, Rick Bianchi
<bianchirickkutta@gmail.com>wrote:

> Gary,
> I noticed during the make the it was complaining about the date being in
> the future; I checked and sure thing the date and time were bit off, about
> 14 years. I set it to the correct time  with "date --set="18 MARCH 2014
> 10:32:00" and the build completed in under 10 mins.
>
>
> On Fri, Mar 14, 2014 at 3:16 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>
>> On 2014-03-14 08:49, Rick Bianchi wrote:
>> > If I have time today I will try to reproduce your results. If not, I
>> will get to it first thing next week and post my result.
>>
>> One thing I forgot to point out is I used the identical kernel+modules for
>> both setups.  I would be interested to see if that makes any difference
>> for
>> you.  I can't fully test it as my board doesn't have a Linaro kernel.
>>
>> So there are four combinations - I only tried the first two:
>>   Yocto kernel + Yocto rootfs
>>   Yocto kernel + Linaro rootfs
>>   Linaro kernel + Yocto rootfs
>>   Linaro kernel + Linaro rootfs
>>
>> > On Fri, Mar 14, 2014 at 7:38 AM, Gary Thomas <gary@mlbassoc.com<mailto:
>> gary@mlbassoc.com>> wrote:
>> >
>> >     On 2014-03-12 13:11, Rick Bianchi wrote:
>> >     > usbip from /usr/src/kernel/drivers/staging/usbip
>> >
>> >     I finally managed to make this comparison.  I did this by taking my
>> Poky/Yocto
>> >     built system for a i.MX6 system (ARM Cortex-A9) and replaced the
>> rootfs with
>> >     one for the Gumstix Overo (linaro).  The results were nothing like
>> yours, so
>> >     it's a bit confusing.
>> >
>> >     I actually built an entire Linux kernel - not just the one
>> directory you mentioned.
>> >
>> >     Poky/Yocto - 37 minutes
>> >     Linaro     - 48 minutes
>> >
>> >     There is some flex in these numbers as they were on different
>> [brand] SD cards, etc,
>> >     but I sure did not see the "5 minutes for Linaro vs 24 hours on
>> Yocto" that you reported.
>> >
>> >     Perhaps the only thing I did differently was I added the SDK tools
>> to my Yocto system
>> >     using these meta-packages instead of the list you used.
>> >       packagegroup-core-sdk packagegroup-core-standalone-sdk-target
>> >
>> >     You might try that to see if it makes any difference.
>> >
>> >     n.b. part of what took me so long to get these results is I was
>> trying to run this test
>> >     on something closer to your Overo board.  I have an older OMAP
>> DM3730 board here that I
>> >     tried to do these same steps, but it was unstable and I could not
>> get the Linaro based
>> >     file system to work at all.  Very strange.  In any case, I think
>> the comparison I did get
>> >     with the i.MX6 is valid.
>> >
>> >     > On Wed, Mar 12, 2014 at 11:44 AM, Gary Thomas <gary@mlbassoc.com<mailto:
>> gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>
>> wrote:
>> >     >
>> >     >     On 2014-03-12 10:09, Rick Bianchi wrote:
>> >     >     > I completely agree with regards to the comparison, but I
>> have compiled the same exact source on the same target (arm) and it only
>> took 5 minutes when running the Linaro image.
>> >     >     >
>> >     >     > To clarify, the only difference is the build, one is Linaro
>> (took 5 minutes to compile source on the target) and the other Yocto (took
>> almost 24 hours to compile source on the target).
>> >     >
>> >     >     Sorry, I missed that this was on the same hardware.
>> >     >
>> >     >     What are you building?  I'm going to try and duplicate this
>> here
>> >     >     on hardware I have that's quite similar to your Gumstix board.
>> >     >
>> >     >     >
>> >     >     > Is there something that I am missing?
>> >     >     >
>> >     >     >
>> >     >     > On Wed, Mar 12, 2014 at 8:28 AM, Gary Thomas <
>> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
>> gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
>> >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>> wrote:
>> >     >     >
>> >     >     >     On 2014-03-12 09:15, Rick Bianchi wrote:
>> >     >     >     >
>> >     >     >     > I have the gumstix-console-image with the added
>> packages below. When I compile on the target is take a very long time for
>> it to complete, over 24 hours. I have compiled the same
>> >     >     >     > code on the same target, but running Linaro image,
>> and it only takes a few minutes. Is there another recipe that I need to add
>> to the build to speed up compiling?
>> >     >     >
>> >     >     >     Doubtful.  The reason your build on the target takes so
>> long is merely
>> >     >     >     one of horsepower - that little ARM processor just
>> doesn't have it, especially
>> >     >     >     if you are comparing it to a typical desktop
>> environment.
>> >     >     >
>> >     >     >     > EXTRA_IMAGE_FEATURES += "dev-pkgs"
>> >     >     >     > IMAGE_INSTALL_append =" autoconf"
>> >     >     >     > IMAGE_INSTALL_append =" autofs"
>> >     >     >     > IMAGE_INSTALL_append =" automake"
>> >     >     >     > IMAGE_INSTALL_append =" ccache"
>> >     >     >     > IMAGE_INSTALL_append =" chkconfig"
>> >     >     >     > IMAGE_INSTALL_append =" dbus-glib"
>> >     >     >     > IMAGE_INSTALL_append =" gcc"
>> >     >     >     > IMAGE_INSTALL_append =" glib-2.0"
>> >     >     >     > IMAGE_INSTALL_append =" glib-networking"
>> >     >     >     > IMAGE_INSTALL_append =" glibmm"
>> >     >     >     > IMAGE_INSTALL_append ="
>> packagegroup-core-buildessential"
>> >     >     >     > IMAGE_INSTALL_append =" pciutils"
>> >     >     >     > IMAGE_INSTALL_append =" pkgconfig"
>> >     >     >     > IMAGE_INSTALL_append =" python-scons"
>> >     >     >     > IMAGE_INSTALL_append =" systemd-compat-units"
>> >     >     >     > IMAGE_INSTALL_append =" sysfsutils"
>> >     >     >     > IMAGE_INSTALL_append =" tcp-wrappers"
>> >     >     >     > IMAGE_INSTALL_append =" usbutils"
>> >     >     >     > IMAGE_INSTALL_append =" util-macros"
>> >
>> >     --
>> >     ------------------------------------------------------------
>> >     Gary Thomas                 |  Consulting for the
>> >     MLB Associates              |    Embedded world
>> >     ------------------------------------------------------------
>> >     --
>> >     _______________________________________________
>> >     yocto mailing list
>> >     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> >     https://lists.yoctoproject.org/listinfo/yocto
>> >
>> >
>> >
>> >
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>

--001a11336baaca749504f4e526fb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Should have noted, that the date and time reset on every r=
eboot?<br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quot=
e">On Tue, Mar 18, 2014 at 10:48 AM, Rick Bianchi <span dir=3D"ltr">&lt;<a =
href=3D"mailto:bianchirickkutta@gmail.com" target=3D"_blank">bianchirickkut=
ta@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Gary,<br></div><div>I =
noticed during the make the it was complaining about the date being in the =
future; I checked and sure thing the date and time were bit off, about 14 y=
ears. I set it to the correct time &nbsp;with &quot;date --set=3D&quot;18 M=
ARCH 2014 10:32:00&quot; and the build completed in under 10 mins.&nbsp;</d=
iv>

</div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><b=
r><br><div class=3D"gmail_quote">On Fri, Mar 14, 2014 at 3:16 PM, Gary Thom=
as <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_bl=
ank">gary@mlbassoc.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On 2014-03-14 08:49, Rick Bianchi wrote=
:<br>
&gt; If I have time today I will try to reproduce your results. If not, I w=
ill get to it first thing next week and post my result.<br>
<br>
</div>One thing I forgot to point out is I used the identical kernel+module=
s for<br>
both setups. &nbsp;I would be interested to see if that makes any differenc=
e for<br>
you. &nbsp;I can&#39;t fully test it as my board doesn&#39;t have a Linaro =
kernel.<br>
<br>
So there are four combinations - I only tried the first two:<br>
&nbsp; Yocto kernel + Yocto rootfs<br>
&nbsp; Yocto kernel + Linaro rootfs<br>
&nbsp; Linaro kernel + Yocto rootfs<br>
&nbsp; Linaro kernel + Linaro rootfs<br>
<div><br>
&gt; On Fri, Mar 14, 2014 at 7:38 AM, Gary Thomas &lt;<a href=3D"mailto:gar=
y@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&g=
t; wrote:<br>

&gt;<br>
&gt; &nbsp; &nbsp; On 2014-03-12 13:11, Rick Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &gt; usbip from /usr/src/kernel/drivers/staging/usbip<br=
>
&gt;<br>
&gt; &nbsp; &nbsp; I finally managed to make this comparison. &nbsp;I did t=
his by taking my Poky/Yocto<br>
&gt; &nbsp; &nbsp; built system for a i.MX6 system (ARM Cortex-A9) and repl=
aced the rootfs with<br>
&gt; &nbsp; &nbsp; one for the Gumstix Overo (linaro). &nbsp;The results we=
re nothing like yours, so<br>
&gt; &nbsp; &nbsp; it&#39;s a bit confusing.<br>
&gt;<br>
&gt; &nbsp; &nbsp; I actually built an entire Linux kernel - not just the o=
ne directory you mentioned.<br>
&gt;<br>
&gt; &nbsp; &nbsp; Poky/Yocto - 37 minutes<br>
&gt; &nbsp; &nbsp; Linaro &nbsp; &nbsp; - 48 minutes<br>
&gt;<br>
&gt; &nbsp; &nbsp; There is some flex in these numbers as they were on diff=
erent [brand] SD cards, etc,<br>
&gt; &nbsp; &nbsp; but I sure did not see the &quot;5 minutes for Linaro vs=
 24 hours on Yocto&quot; that you reported.<br>
&gt;<br>
&gt; &nbsp; &nbsp; Perhaps the only thing I did differently was I added the=
 SDK tools to my Yocto system<br>
&gt; &nbsp; &nbsp; using these meta-packages instead of the list you used.<=
br>
&gt; &nbsp; &nbsp; &nbsp; packagegroup-core-sdk packagegroup-core-standalon=
e-sdk-target<br>
&gt;<br>
&gt; &nbsp; &nbsp; You might try that to see if it makes any difference.<br=
>
&gt;<br>
&gt; &nbsp; &nbsp; n.b. part of what took me so long to get these results i=
s I was trying to run this test<br>
&gt; &nbsp; &nbsp; on something closer to your Overo board. &nbsp;I have an=
 older OMAP DM3730 board here that I<br>
&gt; &nbsp; &nbsp; tried to do these same steps, but it was unstable and I =
could not get the Linaro based<br>
&gt; &nbsp; &nbsp; file system to work at all. &nbsp;Very strange. &nbsp;In=
 any case, I think the comparison I did get<br>
&gt; &nbsp; &nbsp; with the i.MX6 is valid.<br>
&gt;<br>
</div><div>&gt; &nbsp; &nbsp; &gt; On Wed, Mar 12, 2014 at 11:44 AM, Gary T=
homas &lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbas=
soc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blan=
k">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com=
" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary=
@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt;&gt; wrote:<b=
r>


&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; On 2014-03-12 10:09, Rick Bianchi wro=
te:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; I completely agree with regards =
to the comparison, but I have compiled the same exact source on the same ta=
rget (arm) and it only took 5 minutes when running the Linaro image.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; To clarify, the only difference =
is the build, one is Linaro (took 5 minutes to compile source on the target=
) and the other Yocto (took almost 24 hours to compile source on the target=
).<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Sorry, I missed that this was on the =
same hardware.<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; What are you building? &nbsp;I&#39;m =
going to try and duplicate this here<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; on hardware I have that&#39;s quite s=
imilar to your Gumstix board.<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; Is there something that I am mis=
sing?<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
</div>&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; On Wed, Mar 12, 2014 at 8:=
28 AM, Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blan=
k">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com" ta=
rget=3D"_blank">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary=
@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&g=
t; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@m=
lbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com" target=3D"_=
blank">gary@mlbassoc.com</a>&gt;<br>


<div><div>&gt; &nbsp; &nbsp; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com=
" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary=
@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt;&gt;&gt; wrot=
e:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; On 2014-03-12 09:1=
5, Rick Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; I have the gu=
mstix-console-image with the added packages below. When I compile on the ta=
rget is take a very long time for it to complete, over 24 hours. I have com=
piled the same<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; code on the s=
ame target, but running Linaro image, and it only takes a few minutes. Is t=
here another recipe that I need to add to the build to speed up compiling?<=
br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Doubtful. &nbsp;Th=
e reason your build on the target takes so long is merely<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; one of horsepower =
- that little ARM processor just doesn&#39;t have it, especially<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; if you are compari=
ng it to a typical desktop environment.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; EXTRA_IMAGE_F=
EATURES +=3D &quot;dev-pkgs&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; autoconf&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; autofs&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; automake&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; ccache&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; chkconfig&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; dbus-glib&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; gcc&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; glib-2.0&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; glib-networking&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; glibmm&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; packagegroup-core-buildessential&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; pciutils&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; pkgconfig&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; python-scons&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; systemd-compat-units&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; sysfsutils&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; tcp-wrappers&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; usbutils&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL=
_append =3D&quot; util-macros&quot;<br>
&gt;<br>
&gt; &nbsp; &nbsp; --<br>
&gt; &nbsp; &nbsp; --------------------------------------------------------=
----<br>
&gt; &nbsp; &nbsp; Gary Thomas &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; | &nbsp;Consulting for the<br>
&gt; &nbsp; &nbsp; MLB Associates &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;| &nbsp; &nbsp;Embedded world<br>
&gt; &nbsp; &nbsp; --------------------------------------------------------=
----<br>
&gt; &nbsp; &nbsp; --<br>
&gt; &nbsp; &nbsp; _______________________________________________<br>
&gt; &nbsp; &nbsp; yocto mailing list<br>
</div></div>&gt; &nbsp; &nbsp; <a href=3D"mailto:yocto@yoctoproject.org" ta=
rget=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yoc=
to@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>
&gt; &nbsp; &nbsp; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<div><div>&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
--<br>
------------------------------------------------------------<br>
Gary Thomas &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp=
;Consulting for the<br>
MLB Associates &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; &nb=
sp;Embedded world<br>
------------------------------------------------------------<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a11336baaca749504f4e526fb--
