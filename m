Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f52.google.com (mail-qe0-f52.google.com
	[209.85.128.52]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 89AEEE003BC
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 09:10:08 -0800 (PST)
Received: by mail-qe0-f52.google.com with SMTP id s14so1104008qeb.25
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 09:10:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=WpopCGBXANYImQqVb9Td9AEOfEASh9HlIAPPEjYEzRo=;
	b=LhjYVGOm85UMK24WHIzLIWbDTkTcgjIhXm+p0DNcZUjtO1Dz5Pqq9XYTJ3p5B+MHPK
	yDF9BroUbpIFEs7uizfl7fyvHgPQ/YuW4g0ajT34BkbMsbtdHCkTSpV5hdbqG5dw0jPU
	LguxYc3Mysc8G1jBxIGFauqXQ2ZII4UhERq6bYj17h+SkiLowGmXz+vA8wMGqg+qP57a
	4wYeAm98iZAYOj+yfSzsFKY5c0Mk403GEpA4VFGMB56R6JBWuB5LCpXNG78Zdah3XTsr
	awUr0iwZZPTOVqsVI4I/isthynVPVGw9HARHS97Xukn6Atfw/FsWopSfEkY/kFzaZl/m
	iDXw==
MIME-Version: 1.0
X-Received: by 10.224.33.14 with SMTP id f14mr4883347qad.69.1362762607643;
	Fri, 08 Mar 2013 09:10:07 -0800 (PST)
Received: by 10.49.67.98 with HTTP; Fri, 8 Mar 2013 09:10:07 -0800 (PST)
In-Reply-To: <E7A9054A5ACABE48B0E540E46E862B0FE6C81D53@NAEMMAIL03.na.leapfrog.com>
References: <E7A9054A5ACABE48B0E540E46E862B0FE6C81D53@NAEMMAIL03.na.leapfrog.com>
Date: Fri, 8 Mar 2013 18:10:07 +0100
Message-ID: <CAFyqS9q_p6TGP4Txfn2a5Lk6-8c6o8xf030SvbdTLkQ+jNQdpw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Daniel Lazzari <dlazzari@leapfrog.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with applying a patch using default -pnum
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
X-List-Received-Date: Fri, 08 Mar 2013 17:10:08 -0000
Content-Type: multipart/alternative; boundary=20cf3074b9a424651604d76ce526

--20cf3074b9a424651604d76ce526
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Mar 8, 2013 at 2:49 AM, Daniel Lazzari <dlazzari@leapfrog.com>wrote:

> > On 2013-03-07 8:11, Jerrod Peach wrote:
> > > Hans,
> > >
> > > Are you sure you're seeing the patch system use $WORKDIR instead of $S
> > > as the root for patching?  I've had to do a lot of patching in our own
> > > layers recently and I've always seen $S used as the root for the
> > > patch.  Are you explicitly setting S = "${WORKDIR}/git"?  That's what
> > > we do for our git recipes.  That's how you get the system to recognize
> > > the source somewhere other than just $WORKDIR.
> > >
> > > As for specifying a different -pnum, you absolutely can do that like
> so:
> > >
> > > /SRC_URI += "file://my-change.patch*;striplevel=X*"/
> > >
> > > X is the pnum that you want.  Its default value is 1.
> > >
> > > You may also find this page useful -- it contains all sorts of hints
> > > for setting up your recipes in a Yocto-standard way:
> > >
> > > https://wiki.yoctoproject.org/wiki/Recipe_&_Patch_Style_Guide
> > >
> > > That's where I learned about striplevel and the preference for it over
> > > the deprecated pnum parameter.
> > >
> > > Kind regards,
> > >
> > > Jerrod
> > >
> > >
> > Hi Jarod. Thanks, the pointer you gave will most certainly be of great
> aid. I will
> > try the striplevel approach instead of writing my own do_patch()
> override.
> > Regarding how certain I am that the root folder is ${WORKDIR} when
> > patching, not at all ;) In my do_patch() function is simply did `pwd`
> and it was
> > not set to ${S} as I set it to.
> > That does not mean that the built-in patch system is using ${WORKDIR}, I
> am
> > aware of that.
> > Things here is, even though my patch is placed in ${W} and I set ${S} to
> eg.
> > ${W}/git/some/folder, why would it not work? In another package I set
> ${S}
> > to ${WORKDIR}/git and it works just fine. I can not understand why
> setting
> > ${S} to something else breaks the logic?
> > It's not that bitbake can not find the patch file, it definitely does
> that, but the
> > -pnum seems to get messed up. But maybe that is the whole point of having
> > the striplevel=X in the first place.
> >
> > Hans
> >
> >
> > >
> > >
> > >
> > >
> > > On Thu, Mar 7, 2013 at 7:33 AM, Hans Beck?rus <hans.beckerus@gmail.com
> > > <mailto:hans.beckerus@gmail.com>> wrote:
> > >
> > >     On Thu, Mar 7, 2013 at 1:12 PM, Hans Beck?rus
> > >     <hans.beckerus@gmail.com <mailto:hans.beckerus@gmail.com>>
> > wrote:
> > >     > Hi. More problems ;)
> > >     > I have a patch file that needs to be applied to a source tree
> > >     and the
> > >     > patch file is copied properly to the ${WORKDIR} directory.
> > >     > So far so good. But, the problem with this source tree is that
> it is
> > >     > not built from the traditional root folder of the repo.
> > >     > This means I need to change ${S} to point somewhere else. This
> also
> > >     > causes the patch system to fail!
> > >     > I did an override of do_patch() in my .bb and that seems to
> > >     work, but
> > >     > I do not like to use overrides unless I really have to.
> > >     > So basically, is there some way to tell the built-in patch
> system to
> > >     > use a different -pnum value?
> > >     > If there is, I could stick with the do_patch() as provided by
> > >     default.
> > >     >
> > >     > Hans
> > >
> > >     Hmm, ok a correction from my side. Forget parts of what I said ;)
> > >     The patch system does not seem to use the value of ${S}, it is
> using
> > >     ${WORKDIR} as the root for patching, this is also where the patch
> file
> > >     is placed. The problem in my case does not seem to be that is built
> > >     from a non-standard path. The reason why it fails seems to be
> because
> > >     the actual source is not in ${WORKDIR}, it is in ${WORKDIR}/git.
> The
> > >     patch file does include git as part of the source path for obvious
> > >     reasons. What am I doing wrong? Having actual source code in
> > >     ${WORKDIR}/git I assume is very common for git based downloads.
> > >
> > >     Hans
> > >     _______________________________________________
> > >     yocto mailing list
> > >     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> > >     https://lists.yoctoproject.org/listinfo/yocto
> > >
> > >
>
> I also found another useful patch param called patchdir that sets the
> directory from which the patch is applied. This is useful when ${S} is set
> to a directory deeper than you want to patch from but don't want to mess
> with setting ${S}. I needed it to apply a patch to wpa_supplicant's src
> directory.
>
> Ex.
>
> file://gpio-sysfs-power-onoff-change.patch;patchdir=${WORKDIR}/wpa_supplicant-${PV}
>
> Thanks Daniel, that did the trick for me!
I set my patchdir=${W}/git and then used S=${W}/git/some/where/else as
build source.
No more need to override do_patch() :)

Hans

Daniel Lazzari Jr.
> Firmware Engineer
> dlazzari@leapfrog.com
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--20cf3074b9a424651604d76ce526
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Fri, Mar 8, 2013 at 2:49 AM, Daniel L=
azzari <span dir=3D"ltr">&lt;<a href=3D"mailto:dlazzari@leapfrog.com" targe=
t=3D"_blank">dlazzari@leapfrog.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">
<div class=3D"im">&gt; On 2013-03-07 8:11, Jerrod Peach wrote:<br>
&gt; &gt; Hans,<br>
&gt; &gt;<br>
&gt; &gt; Are you sure you&#39;re seeing the patch system use $WORKDIR inst=
ead of $S<br>
&gt; &gt; as the root for patching? =A0I&#39;ve had to do a lot of patching=
 in our own<br>
&gt; &gt; layers recently and I&#39;ve always seen $S used as the root for =
the<br>
&gt; &gt; patch. =A0Are you explicitly setting S =3D &quot;${WORKDIR}/git&q=
uot;? =A0That&#39;s what<br>
&gt; &gt; we do for our git recipes. =A0That&#39;s how you get the system t=
o recognize<br>
&gt; &gt; the source somewhere other than just $WORKDIR.<br>
&gt; &gt;<br>
&gt; &gt; As for specifying a different -pnum, you absolutely can do that l=
ike so:<br>
&gt; &gt;<br>
</div>&gt; &gt; /SRC_URI +=3D &quot;file://my-change.patch*;striplevel=3DX*=
&quot;/<br>
<div class=3D"im">&gt; &gt;<br>
&gt; &gt; X is the pnum that you want. =A0Its default value is 1.<br>
&gt; &gt;<br>
&gt; &gt; You may also find this page useful -- it contains all sorts of hi=
nts<br>
&gt; &gt; for setting up your recipes in a Yocto-standard way:<br>
&gt; &gt;<br>
&gt; &gt; <a href=3D"https://wiki.yoctoproject.org/wiki/Recipe_&amp;_Patch_=
Style_Guide" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Recipe_&a=
mp;_Patch_Style_Guide</a><br>
&gt; &gt;<br>
&gt; &gt; That&#39;s where I learned about striplevel and the preference fo=
r it over<br>
&gt; &gt; the deprecated pnum parameter.<br>
&gt; &gt;<br>
&gt; &gt; Kind regards,<br>
&gt; &gt;<br>
&gt; &gt; Jerrod<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; Hi Jarod. Thanks, the pointer you gave will most certainly be of great=
 aid. I will<br>
&gt; try the striplevel approach instead of writing my own do_patch() overr=
ide.<br>
&gt; Regarding how certain I am that the root folder is ${WORKDIR} when<br>
&gt; patching, not at all ;) In my do_patch() function is simply did `pwd` =
and it was<br>
&gt; not set to ${S} as I set it to.<br>
&gt; That does not mean that the built-in patch system is using ${WORKDIR},=
 I am<br>
&gt; aware of that.<br>
&gt; Things here is, even though my patch is placed in ${W} and I set ${S} =
to eg.<br>
&gt; ${W}/git/some/folder, why would it not work? In another package I set =
${S}<br>
&gt; to ${WORKDIR}/git and it works just fine. I can not understand why set=
ting<br>
&gt; ${S} to something else breaks the logic?<br>
&gt; It&#39;s not that bitbake can not find the patch file, it definitely d=
oes that, but the<br>
&gt; -pnum seems to get messed up. But maybe that is the whole point of hav=
ing<br>
&gt; the striplevel=3DX in the first place.<br>
&gt;<br>
&gt; Hans<br>
&gt;<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
</div>&gt; &gt; On Thu, Mar 7, 2013 at 7:33 AM, Hans Beck?rus &lt;<a href=
=3D"mailto:hans.beckerus@gmail.com">hans.beckerus@gmail.com</a><br>
&gt; &gt; &lt;mailto:<a href=3D"mailto:hans.beckerus@gmail.com">hans.becker=
us@gmail.com</a>&gt;&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; =A0 =A0 On Thu, Mar 7, 2013 at 1:12 PM, Hans Beck?rus<br>
&gt; &gt; =A0 =A0 &lt;<a href=3D"mailto:hans.beckerus@gmail.com">hans.becke=
rus@gmail.com</a> &lt;mailto:<a href=3D"mailto:hans.beckerus@gmail.com">han=
s.beckerus@gmail.com</a>&gt;&gt;<br>
<div><div class=3D"h5">&gt; wrote:<br>
&gt; &gt; =A0 =A0 &gt; Hi. More problems ;)<br>
&gt; &gt; =A0 =A0 &gt; I have a patch file that needs to be applied to a so=
urce tree<br>
&gt; &gt; =A0 =A0 and the<br>
&gt; &gt; =A0 =A0 &gt; patch file is copied properly to the ${WORKDIR} dire=
ctory.<br>
&gt; &gt; =A0 =A0 &gt; So far so good. But, the problem with this source tr=
ee is that it is<br>
&gt; &gt; =A0 =A0 &gt; not built from the traditional root folder of the re=
po.<br>
&gt; &gt; =A0 =A0 &gt; This means I need to change ${S} to point somewhere =
else. This also<br>
&gt; &gt; =A0 =A0 &gt; causes the patch system to fail!<br>
&gt; &gt; =A0 =A0 &gt; I did an override of do_patch() in my .bb and that s=
eems to<br>
&gt; &gt; =A0 =A0 work, but<br>
&gt; &gt; =A0 =A0 &gt; I do not like to use overrides unless I really have =
to.<br>
&gt; &gt; =A0 =A0 &gt; So basically, is there some way to tell the built-in=
 patch system to<br>
&gt; &gt; =A0 =A0 &gt; use a different -pnum value?<br>
&gt; &gt; =A0 =A0 &gt; If there is, I could stick with the do_patch() as pr=
ovided by<br>
&gt; &gt; =A0 =A0 default.<br>
&gt; &gt; =A0 =A0 &gt;<br>
&gt; &gt; =A0 =A0 &gt; Hans<br>
&gt; &gt;<br>
&gt; &gt; =A0 =A0 Hmm, ok a correction from my side. Forget parts of what I=
 said ;)<br>
&gt; &gt; =A0 =A0 The patch system does not seem to use the value of ${S}, =
it is using<br>
&gt; &gt; =A0 =A0 ${WORKDIR} as the root for patching, this is also where t=
he patch file<br>
&gt; &gt; =A0 =A0 is placed. The problem in my case does not seem to be tha=
t is built<br>
&gt; &gt; =A0 =A0 from a non-standard path. The reason why it fails seems t=
o be because<br>
&gt; &gt; =A0 =A0 the actual source is not in ${WORKDIR}, it is in ${WORKDI=
R}/git. The<br>
&gt; &gt; =A0 =A0 patch file does include git as part of the source path fo=
r obvious<br>
&gt; &gt; =A0 =A0 reasons. What am I doing wrong? Having actual source code=
 in<br>
&gt; &gt; =A0 =A0 ${WORKDIR}/git I assume is very common for git based down=
loads.<br>
&gt; &gt;<br>
&gt; &gt; =A0 =A0 Hans<br>
&gt; &gt; =A0 =A0 _______________________________________________<br>
&gt; &gt; =A0 =A0 yocto mailing list<br>
</div></div>&gt; &gt; =A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org">yoc=
to@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org=
">yocto@yoctoproject.org</a>&gt;<br>
&gt; &gt; =A0 =A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &gt;<br>
&gt; &gt;<br>
<br>
I also found another useful patch param called patchdir that sets the direc=
tory from which the patch is applied. This is useful when ${S} is set to a =
directory deeper than you want to patch from but don&#39;t want to mess wit=
h setting ${S}. I needed it to apply a patch to wpa_supplicant&#39;s src di=
rectory.<br>

<br>
Ex.<br>
file://gpio-sysfs-power-onoff-change.patch;patchdir=3D${WORKDIR}/wpa_suppli=
cant-${PV}<br>
<br></blockquote><div>Thanks Daniel, that did the trick for me!<br>I set my=
 patchdir=3D${W}/git and then used S=3D${W}/git/some/where/else as build so=
urce.<br>No more need to override do_patch() :)<br><br>Hans<br><br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">

Daniel Lazzari Jr.<br>
Firmware Engineer<br>
<a href=3D"mailto:dlazzari@leapfrog.com">dlazzari@leapfrog.com</a><br>
<div class=3D"HOEnZb"><div class=3D"h5">___________________________________=
____________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br>

--20cf3074b9a424651604d76ce526--
