Return-Path: <b.hutchman@gmail.com>
Received: from mail-ea0-f169.google.com (mail-ea0-f169.google.com
	[209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A272E01525
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 08:56:40 -0700 (PDT)
Received: by mail-ea0-f169.google.com with SMTP id h15so4691234eak.28
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 08:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=RnTaU7R/Njjdl1YssuwWCJ9QLK42baBK75gnUlvYGOI=;
	b=KNEdVCGTZxPc3B37jGAWUrT3OVI7RRG64XGO/49cZFwMl8nqMWwD5s7C/lfAtsev42
	6KnpyjjDISIeRPwMPeX1IvcmXfey3nfvAsSATP39dfO45R6+Jt71Uc2wCOTr5Pl4uuXh
	K59bDWr3Nko93TAKGzAPT7anLOWD89+MtYbs+gM9CYf1UOnizyTTbyxLKkBqYLTRzLwK
	DOxMS7r8gJN6DqbVCwOG2QgWopu3TRMp9vWQTZ7vb36YU4WdjCBifvkj6T27E8kVf+UA
	SazGmyMwvq4cW3JLem9azpGlK7JtIjAXzFwo9IK0nLmD4LQe40vAVRFqksREe+7R7YM/
	ufQA==
MIME-Version: 1.0
X-Received: by 10.14.106.195 with SMTP id m43mr33505933eeg.60.1374594999806;
	Tue, 23 Jul 2013 08:56:39 -0700 (PDT)
Received: by 10.223.195.69 with HTTP; Tue, 23 Jul 2013 08:56:39 -0700 (PDT)
Received: by 10.223.195.69 with HTTP; Tue, 23 Jul 2013 08:56:39 -0700 (PDT)
In-Reply-To: <20130723153440.GC21440@denix.org>
References: <CAFZh4h9-+XQBWxHh22zQ+jwQBYiaUwifzcdpLPF2kU+kn5Pg9A@mail.gmail.com>
	<1503447.VStvRngV5W@helios> <20130723153440.GC21440@denix.org>
Date: Tue, 23 Jul 2013 11:56:39 -0400
Message-ID: <CAFZh4h9vP1VQQQeuJfWyY3NW2z=k=cKixKqVeLQ2rE8sGWEOwA@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Denys Dmytriyenko <denis@denix.org>
Cc: yocto@yoctoproject.org, Denys Dmytriyenko <denys@ti.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Should I be worried about this nativesdk-packagegroup-sdk-host warning while building meta-toolchain
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
X-List-Received-Date: Tue, 23 Jul 2013 15:56:43 -0000
Content-Type: multipart/alternative; boundary=001a11c1b830ac919704e22fd682

--001a11c1b830ac919704e22fd682
Content-Type: text/plain; charset=ISO-8859-1

Replying from phone again ... sorry for top post.

Those aren't the messages I was concerned about.  The
nativesdk-packagegroup-sdk messages are the ones that got my attention and
I didn't think they were necessarily associated with meta-ti.
On Jul 23, 2013 11:34 AM, "Denys Dmytriyenko" <denis@denix.org> wrote:

> On Tue, Jul 23, 2013 at 04:13:18PM +0100, Paul Eggleton wrote:
> > On Tuesday 23 July 2013 10:13:10 Brian Hutchinson wrote:
> > > I'm using master branch of Yocto and meta-ti (and meta-openembedded).
> > >
> > > I built meta-toolchain for beaglebone machine type and then I went
> into my
> > > local.conf and changed sdkmachine to i686 as I need both 64bit & 32bit
> > > toolchains.  After modifying my local.conf I ran bitbake meta-toolchain
> > > again and received these warnings:
> > >
> > > hutch@neo:~/yocto_master_beaglebone/poky/build$ bitbake meta-toolchain
> > > WARNING: Host distribution "Debian-7.1" has not been validated with
> this
> > > version of the build system; you may possibly experience unexpected
> > > failures. It is recommended that you use a tested distribution.
> > > WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV}
> > > ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig
> > > ${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la
> > > ${base_libdir}/*.la) replaces original key FILES_ti-ipc-dev
> (${libdir}/*).
> > >
> > > WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV}
> > > ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig
> > > ${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la
> > > ${base_libdir}/*.la) replaces original key FILES_ti-syslink-dev
> > > (${libdir}/*).
>
> These FILES_${PN}-dev warnings indeed come from meta-ti and so far
> harmless -
> I haven't had bandwidth to fix them, as they seem low priority.
>
>
> > > Parsing recipes: 100%
> > >
> > > NOTE: Resolving any missing task queue dependencies
> > > NOTE: Preparing runqueue
> > > NOTE: Executing SetScene Tasks
> > > NOTE: Executing RunQueue Tasks
> > > WARNING: The recipe nativesdk-packagegroup-sdk-host is trying to
> install
> > > files into a shared area when those files already exist. Those files
> and
> > > their manifest location are:
> > >
> > >
>  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
> > > x/nativesdk-packagegroup-sdk-host Matched in
> > > manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
> > >
> > >
>  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
> > > x/runtime/nativesdk-packagegroup-sdk-host.packaged Matched in
> > > manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
> > >
> > >
>  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
> > > x/runtime/nativesdk-packagegroup-sdk-host Matched in
> > > manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
> > >
> > >
>  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
> > > x/runtime-reverse/nativesdk-packagegroup-sdk-host Matched in
> > > manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata Please
> verify
> > > which package should provide the above files.
> > >
> > >
> > > Should I be worried or do I need to do something about the
> > > nativesdk-packagegroup-sdk-host warnings?
> > >
> > > I've never seen them before and I couldn't find anyone else talking
> about
> > > them so I thought I'd ask.
> >
> > Depends. Without looking at the recipe and output closely it's hard to
> tell
> > whether this is indicative or a problem or not, but it should be
> resolved by
> > the meta-ti maintainers. Denys, you might want to take a closer look at
> this.
>
> And the warnings in question about nativesdk-packagegroup-sdk-host have
> absolutely nothing to do with meta-ti - there are no SDK packagegroup
> recipes
> in meta-ti.
>
> --
> Denys
>

--001a11c1b830ac919704e22fd682
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Replying from phone again ... sorry for top post.</p>
<p dir=3D"ltr">Those aren&#39;t the messages I was concerned about.=A0 The =
nativesdk-packagegroup-sdk messages are the ones that got my attention and =
I didn&#39;t think they were necessarily associated with meta-ti.</p>
<div class=3D"gmail_quote">On Jul 23, 2013 11:34 AM, &quot;Denys Dmytriyenk=
o&quot; &lt;<a href=3D"mailto:denis@denix.org">denis@denix.org</a>&gt; wrot=
e:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
On Tue, Jul 23, 2013 at 04:13:18PM +0100, Paul Eggleton wrote:<br>
&gt; On Tuesday 23 July 2013 10:13:10 Brian Hutchinson wrote:<br>
&gt; &gt; I&#39;m using master branch of Yocto and meta-ti (and meta-openem=
bedded).<br>
&gt; &gt;<br>
&gt; &gt; I built meta-toolchain for beaglebone machine type and then I wen=
t into my<br>
&gt; &gt; local.conf and changed sdkmachine to i686 as I need both 64bit &a=
mp; 32bit<br>
&gt; &gt; toolchains. =A0After modifying my local.conf I ran bitbake meta-t=
oolchain<br>
&gt; &gt; again and received these warnings:<br>
&gt; &gt;<br>
&gt; &gt; hutch@neo:~/yocto_master_beaglebone/poky/build$ bitbake meta-tool=
chain<br>
&gt; &gt; WARNING: Host distribution &quot;Debian-7.1&quot; has not been va=
lidated with this<br>
&gt; &gt; version of the build system; you may possibly experience unexpect=
ed<br>
&gt; &gt; failures. It is recommended that you use a tested distribution.<b=
r>
&gt; &gt; WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLI=
BSDEV}<br>
&gt; &gt; ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgco=
nfig<br>
&gt; &gt; ${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la<br>
&gt; &gt; ${base_libdir}/*.la) replaces original key FILES_ti-ipc-dev (${li=
bdir}/*).<br>
&gt; &gt;<br>
&gt; &gt; WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLI=
BSDEV}<br>
&gt; &gt; ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgco=
nfig<br>
&gt; &gt; ${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la<br>
&gt; &gt; ${base_libdir}/*.la) replaces original key FILES_ti-syslink-dev<b=
r>
&gt; &gt; (${libdir}/*).<br>
<br>
These FILES_${PN}-dev warnings indeed come from meta-ti and so far harmless=
 -<br>
I haven&#39;t had bandwidth to fix them, as they seem low priority.<br>
<br>
<br>
&gt; &gt; Parsing recipes: 100%<br>
&gt; &gt;<br>
&gt; &gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; &gt; NOTE: Preparing runqueue<br>
&gt; &gt; NOTE: Executing SetScene Tasks<br>
&gt; &gt; NOTE: Executing RunQueue Tasks<br>
&gt; &gt; WARNING: The recipe nativesdk-packagegroup-sdk-host is trying to =
install<br>
&gt; &gt; files into a shared area when those files already exist. Those fi=
les and<br>
&gt; &gt; their manifest location are:<br>
&gt; &gt;<br>
&gt; &gt; =A0/home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all=
-pokysdk-linu<br>
&gt; &gt; x/nativesdk-packagegroup-sdk-host Matched in<br>
&gt; &gt; manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata<br>
&gt; &gt;<br>
&gt; &gt; =A0/home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all=
-pokysdk-linu<br>
&gt; &gt; x/runtime/nativesdk-packagegroup-sdk-host.packaged Matched in<br>
&gt; &gt; manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata<br>
&gt; &gt;<br>
&gt; &gt; =A0/home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all=
-pokysdk-linu<br>
&gt; &gt; x/runtime/nativesdk-packagegroup-sdk-host Matched in<br>
&gt; &gt; manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata<br>
&gt; &gt;<br>
&gt; &gt; =A0/home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all=
-pokysdk-linu<br>
&gt; &gt; x/runtime-reverse/nativesdk-packagegroup-sdk-host Matched in<br>
&gt; &gt; manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata Pleas=
e verify<br>
&gt; &gt; which package should provide the above files.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Should I be worried or do I need to do something about the<br>
&gt; &gt; nativesdk-packagegroup-sdk-host warnings?<br>
&gt; &gt;<br>
&gt; &gt; I&#39;ve never seen them before and I couldn&#39;t find anyone el=
se talking about<br>
&gt; &gt; them so I thought I&#39;d ask.<br>
&gt;<br>
&gt; Depends. Without looking at the recipe and output closely it&#39;s har=
d to tell<br>
&gt; whether this is indicative or a problem or not, but it should be resol=
ved by<br>
&gt; the meta-ti maintainers. Denys, you might want to take a closer look a=
t this.<br>
<br>
And the warnings in question about nativesdk-packagegroup-sdk-host have<br>
absolutely nothing to do with meta-ti - there are no SDK packagegroup recip=
es<br>
in meta-ti.<br>
<br>
--<br>
Denys<br>
</blockquote></div>

--001a11c1b830ac919704e22fd682--
