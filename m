Return-Path: <jfabernathy@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77467E00300
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2011 12:42:46 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywm14 with SMTP id 14so2232679ywm.35
	for <yocto@yoctoproject.org>; Thu, 03 Nov 2011 12:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=2sMhiMZWVGstgu+DGtIr0RFNH0lbxvXkQXdHPpitqLQ=;
	b=XfrEm3QkqHut0QU5afM8T+TefoU3w+O+JHix02B1G1rom4GB2D6kaQCGNQEaBK/c4a
	UH/DuQbgcRE/mlEtcBZa3yjdwnffyCuCdhvfqaW1+/dy/s6lAY1KZOjCbiHo1jOV+Vif
	bWnKsPPremfsE8H912Apz+81NLL+u2aAkPtsE=
MIME-Version: 1.0
Received: by 10.236.201.132 with SMTP id b4mr15779207yho.40.1320348734397;
	Thu, 03 Nov 2011 12:32:14 -0700 (PDT)
Received: by 10.236.109.134 with HTTP; Thu, 3 Nov 2011 12:32:14 -0700 (PDT)
In-Reply-To: <1320194738.26655.26.camel@elmorro>
References: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
	<1320176449.2400.63.camel@elmorro>
	<CANFv2Emacwk4+Z+bYNs3MXZL-uxHmPUiB5tFXNM7Kx+NgFOnig@mail.gmail.com>
	<1320194738.26655.26.camel@elmorro>
Date: Thu, 3 Nov 2011 15:32:14 -0400
Message-ID: <CANFv2EmXRtiPV=LtiYecH9X2aOZ2u=2qaSho2PhEtrt5rpMkTw@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build error while following Appendix A. Yocto Project Development manual
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Nov 2011 19:42:47 -0000
Content-Type: multipart/alternative; boundary=20cf3040ea7c4b1e4004b0d9a5ad

--20cf3040ea7c4b1e4004b0d9a5ad
Content-Type: text/plain; charset=ISO-8859-1

I had some success, so I thought I'd report that out:

Following a combination of the Yocto Project Development Manual and Tom's
notes below, I got a successful
build and the image booted from a USB flash drive on a Crownbay Development
platform, without EMGD GFX driver.
The only change I needed to make it bootable from Tom's instructions was to
make KMACHINE_mymachine = "yocto/standard/crownbay" and
put in the correct SRCREV commit strings for the crownbay using the
"howto" instructions in Appendix A.5.2.4 6th paragraph.

Now on to making the EMGD image work.

Jim A

On Tue, Nov 1, 2011 at 8:45 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:

> Hi James,
>
> I'm still not sure what happened in your case to cause this problem, but
> I just went through the Appendix A example pretty much as described, and
> got a good build out of it.  There was one particular part of the
> example that wasn't exactly clear and that could definitely cause some
> build problems if you did it incorrectly (the section that makes changes
> to linux-yocto_3.0.bbappend, which in the example has a custom branch in
> the .bbappend file, but has the explanation using atom-pc).
>
> I'll work with Scott to make sure that part gets cleaned up, along with
> the other comments that should get pulled in, but in the meantime, I
> captured the steps I used below, which should work in the same way for
> you.
>
> trz@elmorro:/usr/local/dev/yocto$ mkdir bsp-test; cd bsp-test
> trz@elmorro:/usr/local/dev/yocto/bsp-test$ git clone git://
> git.yoctoproject.org/poky
> trz@elmorro:/usr/local/dev/yocto/bsp-test$ cd poky
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky$ git checkout -b edison
> origin/edison
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky$ git clone git://
> git.yoctoproject.org/meta-intel.git
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky$ cd meta-intel
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ git checkout
> -b edison origin/edison
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ cp -a
> meta-crownbay/ meta-mymachine
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ rm
> meta-mymachine/conf/machine/crownbay.conf
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ mv
> meta-mymachine/conf/machine/crownbay-noemgd.conf
> meta-mymachine/conf/machine/mymachine.conf
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ rm -rf
> meta-mymachine/recipes-bsp/formfactor/formfactor/crownbay/
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ mv
> meta-mymachine/recipes-bsp/formfactor/formfactor/crownbay-noemgd
> meta-mymachine/recipes-bsp/formfactor/formfactor/mymachine
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ rm -rf
> meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay
>
> ----
> The Developer's Manual seems to want to base the BSP on atom-pc for
> this example, so we need to specify the atom-pc branch and get the
> SRCREVs for atom-pc or the step that modifies the
> linux-yocto_3.0.bbappend.  So in
> meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend, we find both
> the KMACHINE branch we need, and the SRCREV on that branch we need for
> edison.  Since that doesn't specify the meta branch, but the base
> recipe does, we can look at the SRCREV_meta there
> (meta/recipes-kernel/linux/linux-yocto_3.0.bb) for the SRCREV of the
> meta branch, which already matches what we're using, so no change
> needed there.
>
> Here's the resulting linux-yocto_3.0.bbappend:
>
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ cat
> meta-mymachine/recipes-kernel/linux/linux-yocto_3.0.bbappend
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
> COMPATIBLE_MACHINE_mymachine = "mymachine"
> KMACHINE_mymachine  = "yocto/standard/common-pc/atom-pc"
> KERNEL_FEATURES_append_mymachine += " cfg/smp.scc"
>
> SRCREV_machine_pn-linux-yocto_mymachine ?=
> "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"
> SRCREV_meta_pn-linux-yocto_mymachine ?=
> "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
>
> ----
>
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky$ source oe-init-build-env
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky$ bitbake core-image-sato
>
> NOTE: Tasks Summary: Attempted 4426 tasks of which 247 didn't need to be
> rerun and 0 failed.
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/build
>
>
> Tom
>
>
> On Tue, 2011-11-01 at 12:48 -0700, James Abernathy wrote:
>  > Just to clear up the basics, Prior to following Appendix A verbatim, I
> > did the following
> > 1. install prerequisites from GS guide
> > 2. git clone git://git.yoctoproject.org/poky
> > 3. cd poky
> > 4. git clone git://git.yoctoproject.org/meta-intel.git
> >
> > I did not install the poky-extras. I assumed it only had to be
> > installed if you installed the kernel source for modification like in
> > Appendix b
> >
> > Jim a
> >
> >
> >
> >
> > On Tue, Nov 1, 2011 at 3:40 PM, Tom Zanussi <tom.zanussi@intel.com>
> > wrote:
> >         Hi,
> >
> >         On Tue, 2011-11-01 at 11:37 -0700, James Abernathy wrote:
> >         > I tried to duplicate the Yocto Project Decelopment Manual
> >         Appendix A
> >         > build of a Crownbay NOEMGD image,  no changes just dulicate
> >         the
> >         > instructions.  This is using the latest Yocto 1.1.  I did
> >         get a long
> >         > way down the line, but had a fatal error in the last 2
> >         steps.
> >         >
> >         > The only change I had to make was related to A.5.2.4.  The
> >         commit
> >         > string for the SRCREV_meta_pn was different on the
> >         > git.yoctoproject.org/cgit/cgi for the Meta commit so I used
> >         what I
> >         > found online.  The first section of 126 task completed
> >         without error.
> >         > The next section of 4394 tasks failed on 4393.  Not sure if
> >         the error
> >         > is obvious, but I wanted to run it by someone. Console error
> >         log
> >         > below:
> >         >
> >
> >
> >         Hmm, not sure what's going on here - I'm sure this example was
> >         verified
> >         several times, but just to make sure, what you're doing is
> >         going through
> >         'Appendix A. BSP Development Example' verbatim and getting
> >         this?
> >
> >         The SRCREVs in either case look ok for this, so that shouldn't
> >         be the
> >         problem...
> >
> >         But let me go over the steps myself and see what I come up
> >         with - will
> >         let you know either way...
> >
> >         Tom
> >
> >
> >         >  NOTE: package core-image-sato-1.0-r0: task do_bootimg:
> >         Started
> >         > ERROR: Function 'build_boot_bin' failed
> >         >
> >         (see
> /home/jim/poky/yocto-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_bootimg.31418
> for further information)
> >         > ERROR: Logfile of failure stored
> >         >
> >         in:
> /home/jim/poky/yocto-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_bootimg.31418
> >         > Log data follows:
> >         > | install: cannot stat
> >         >
> >
> `/home/jim/poky/yocto-build/tmp/sysroots/mymachine/kernel/bzImage': No
> >         > such file or directory
> >         > | ERROR: Function 'build_boot_bin' failed
> >         >
> >         (see
> /home/jim/poky/yocto-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_bootimg.31418
> for further information)
> >         > NOTE: package core-image-sato-1.0-r0: task do_bootimg:
> >         Failed
> >         > ERROR: Task 9
> >         > (/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb,
> >         > do_bootimg) failed with exit code '1'
> >         > ERROR:
> >         '/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb'
> >         > failed
> >         > jim@jim-ubuntu-10:~/poky/yocto-build$
> >         >
> >
> >
> >
> >
>
>
>

--20cf3040ea7c4b1e4004b0d9a5ad
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>I had some success, so I thought I&#39;d report that out:</div>
<div>=A0</div>
<div>Following=A0a combination of the Yocto Project Development Manual and =
Tom&#39;s notes below, I got a successful</div>
<div>build and the image booted from a USB flash drive on a Crownbay Develo=
pment platform, without EMGD GFX driver.=A0 </div>
<div>The only change I needed to make it bootable from Tom&#39;s instructio=
ns was to make KMACHINE_mymachine =3D &quot;yocto/standard/crownbay&quot; a=
nd</div>
<div>put in the correct SRCREV commit strings=A0for the crownbay using the =
&quot;howto&quot;=A0instructions in Appendix A.5.2.4 6th paragraph.</div>
<div>=A0</div>
<div>Now on to making the EMGD image work.</div>
<div>=A0</div>
<div>Jim A<br><br></div>
<div class=3D"gmail_quote">On Tue, Nov 1, 2011 at 8:45 PM, Tom Zanussi <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:tom.zanussi@intel.com">tom.zanussi@inte=
l.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT: #ccc 1px solid; MARGIN: 0px 0px 0px 0.8ex=
; PADDING-LEFT: 1ex" class=3D"gmail_quote">Hi James,<br><br>I&#39;m still n=
ot sure what happened in your case to cause this problem, but<br>I just wen=
t through the Appendix A example pretty much as described, and<br>
got a good build out of it. =A0There was one particular part of the<br>exam=
ple that wasn&#39;t exactly clear and that could definitely cause some<br>b=
uild problems if you did it incorrectly (the section that makes changes<br>
to linux-yocto_3.0.bbappend, which in the example has a custom branch in<br=
>the .bbappend file, but has the explanation using atom-pc).<br><br>I&#39;l=
l work with Scott to make sure that part gets cleaned up, along with<br>
the other comments that should get pulled in, but in the meantime, I<br>cap=
tured the steps I used below, which should work in the same way for<br>you.=
<br><br>trz@elmorro:/usr/local/dev/yocto$ mkdir bsp-test; cd bsp-test<br>
trz@elmorro:/usr/local/dev/yocto/bsp-test$ git clone git://<a href=3D"http:=
//git.yoctoproject.org/poky" target=3D"_blank">git.yoctoproject.org/poky</a=
><br>trz@elmorro:/usr/local/dev/yocto/bsp-test$ cd poky<br>trz@elmorro:/usr=
/local/dev/yocto/bsp-test/poky$ git checkout -b edison origin/edison<br>
trz@elmorro:/usr/local/dev/yocto/bsp-test/poky$ git clone git://<a href=3D"=
http://git.yoctoproject.org/meta-intel.git" target=3D"_blank">git.yoctoproj=
ect.org/meta-intel.git</a><br>trz@elmorro:/usr/local/dev/yocto/bsp-test/pok=
y$ cd meta-intel<br>
trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ git checkout -b =
edison origin/edison<br>trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta=
-intel$ cp -a meta-crownbay/ meta-mymachine<br>trz@elmorro:/usr/local/dev/y=
octo/bsp-test/poky/meta-intel$ rm meta-mymachine/conf/machine/crownbay.conf=
<br>
trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ mv meta-mymachin=
e/conf/machine/crownbay-noemgd.conf meta-mymachine/conf/machine/mymachine.c=
onf<br>trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ rm -rf me=
ta-mymachine/recipes-bsp/formfactor/formfactor/crownbay/<br>
trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ mv meta-mymachin=
e/recipes-bsp/formfactor/formfactor/crownbay-noemgd meta-mymachine/recipes-=
bsp/formfactor/formfactor/mymachine<br>trz@elmorro:/usr/local/dev/yocto/bsp=
-test/poky/meta-intel$ rm -rf meta-mymachine/recipes-graphics/xorg-xserver/=
xserver-xf86-config/crownbay<br>
<br>----<br>The Developer&#39;s Manual seems to want to base the BSP on ato=
m-pc for<br>this example, so we need to specify the atom-pc branch and get =
the<br>SRCREVs for atom-pc or the step that modifies the<br>linux-yocto_3.0=
.bbappend. =A0So in<br>
meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend, we find both<br>t=
he KMACHINE branch we need, and the SRCREV on that branch we need for<br>ed=
ison. =A0Since that doesn&#39;t specify the meta branch, but the base<br>
recipe does, we can look at the SRCREV_meta there<br>(meta/recipes-kernel/l=
inux/<a href=3D"http://linux-yocto_3.0.bb/" target=3D"_blank">linux-yocto_3=
.0.bb</a>) for the SRCREV of the<br>meta branch, which already matches what=
 we&#39;re using, so no change<br>
needed there.<br><br>Here&#39;s the resulting linux-yocto_3.0.bbappend:<br>=
<br>trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ cat meta-mym=
achine/recipes-kernel/linux/linux-yocto_3.0.bbappend<br><br>FILESEXTRAPATHS=
_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
<br>COMPATIBLE_MACHINE_mymachine =3D &quot;mymachine&quot;<br>KMACHINE_myma=
chine =A0=3D &quot;yocto/standard/common-pc/atom-pc&quot;<br>KERNEL_FEATURE=
S_append_mymachine +=3D &quot; cfg/smp.scc&quot;<br><br>SRCREV_machine_pn-l=
inux-yocto_mymachine ?=3D &quot;1e18e44adbe79b846e382370eb29bc4b8cd5a1a0&qu=
ot;<br>
SRCREV_meta_pn-linux-yocto_mymachine ?=3D &quot;d05450e4aef02c1b7137398ab3a=
9f8f96da74f52&quot;<br><br>----<br><br>trz@elmorro:/usr/local/dev/yocto/bsp=
-test/poky$ source oe-init-build-env<br>trz@elmorro:/usr/local/dev/yocto/bs=
p-test/poky$ bitbake core-image-sato<br>
<br>NOTE: Tasks Summary: Attempted 4426 tasks of which 247 didn&#39;t need =
to be rerun and 0 failed.<br>trz@elmorro:/usr/local/dev/yocto/bsp-test/poky=
/build<br><span class=3D"HOEnZb"><font color=3D"#888888"><br><br>Tom<br></f=
ont></span>
<div class=3D"im HOEnZb"><br><br>On Tue, 2011-11-01 at 12:48 -0700, James A=
bernathy wrote:<br></div>
<div class=3D"HOEnZb">
<div class=3D"h5">&gt; Just to clear up the basics, Prior to following Appe=
ndix A verbatim, I<br>&gt; did the following<br>&gt; 1. install prerequisit=
es from GS guide<br>&gt; 2. git clone git://<a href=3D"http://git.yoctoproj=
ect.org/poky" target=3D"_blank">git.yoctoproject.org/poky</a><br>
&gt; 3. cd poky<br>&gt; 4. git clone git://<a href=3D"http://git.yoctoproje=
ct.org/meta-intel.git" target=3D"_blank">git.yoctoproject.org/meta-intel.gi=
t</a><br>&gt;<br>&gt; I did not install the poky-extras. I assumed it only =
had to be<br>
&gt; installed if you installed the kernel source for modification like in<=
br>&gt; Appendix b<br>&gt;<br>&gt; Jim a<br>&gt;<br>&gt;<br>&gt;<br>&gt;<br=
>&gt; On Tue, Nov 1, 2011 at 3:40 PM, Tom Zanussi &lt;<a href=3D"mailto:tom=
.zanussi@intel.com">tom.zanussi@intel.com</a>&gt;<br>
&gt; wrote:<br>&gt; =A0 =A0 =A0 =A0 Hi,<br>&gt;<br>&gt; =A0 =A0 =A0 =A0 On =
Tue, 2011-11-01 at 11:37 -0700, James Abernathy wrote:<br>&gt; =A0 =A0 =A0 =
=A0 &gt; I tried to duplicate the Yocto Project Decelopment Manual<br>&gt; =
=A0 =A0 =A0 =A0 Appendix A<br>
&gt; =A0 =A0 =A0 =A0 &gt; build of a Crownbay NOEMGD image, =A0no changes j=
ust dulicate<br>&gt; =A0 =A0 =A0 =A0 the<br>&gt; =A0 =A0 =A0 =A0 &gt; instr=
uctions. =A0This is using the latest Yocto 1.1. =A0I did<br>&gt; =A0 =A0 =
=A0 =A0 get a long<br>&gt; =A0 =A0 =A0 =A0 &gt; way down the line, but had =
a fatal error in the last 2<br>
&gt; =A0 =A0 =A0 =A0 steps.<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =
=A0 =A0 &gt; The only change I had to make was related to A.5.2.4. =A0The<b=
r>&gt; =A0 =A0 =A0 =A0 commit<br>&gt; =A0 =A0 =A0 =A0 &gt; string for the S=
RCREV_meta_pn was different on the<br>&gt; =A0 =A0 =A0 =A0 &gt; <a href=3D"=
http://git.yoctoproject.org/cgit/cgi" target=3D"_blank">git.yoctoproject.or=
g/cgit/cgi</a> for the Meta commit so I used<br>
&gt; =A0 =A0 =A0 =A0 what I<br>&gt; =A0 =A0 =A0 =A0 &gt; found online. =A0T=
he first section of 126 task completed<br>&gt; =A0 =A0 =A0 =A0 without erro=
r.<br>&gt; =A0 =A0 =A0 =A0 &gt; The next section of 4394 tasks failed on 43=
93. =A0Not sure if<br>&gt; =A0 =A0 =A0 =A0 the error<br>
&gt; =A0 =A0 =A0 =A0 &gt; is obvious, but I wanted to run it by someone. Co=
nsole error<br>&gt; =A0 =A0 =A0 =A0 log<br>&gt; =A0 =A0 =A0 =A0 &gt; below:=
<br>&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt;<br>&gt;<br>&gt; =A0 =A0 =A0 =A0 Hmm, =
not sure what&#39;s going on here - I&#39;m sure this example was<br>
&gt; =A0 =A0 =A0 =A0 verified<br>&gt; =A0 =A0 =A0 =A0 several times, but ju=
st to make sure, what you&#39;re doing is<br>&gt; =A0 =A0 =A0 =A0 going thr=
ough<br>&gt; =A0 =A0 =A0 =A0 &#39;Appendix A. BSP Development Example&#39; =
verbatim and getting<br>&gt; =A0 =A0 =A0 =A0 this?<br>
&gt;<br>&gt; =A0 =A0 =A0 =A0 The SRCREVs in either case look ok for this, s=
o that shouldn&#39;t<br>&gt; =A0 =A0 =A0 =A0 be the<br>&gt; =A0 =A0 =A0 =A0=
 problem...<br>&gt;<br>&gt; =A0 =A0 =A0 =A0 But let me go over the steps my=
self and see what I come up<br>
&gt; =A0 =A0 =A0 =A0 with - will<br>&gt; =A0 =A0 =A0 =A0 let you know eithe=
r way...<br>&gt;<br>&gt; =A0 =A0 =A0 =A0 Tom<br>&gt;<br>&gt;<br>&gt; =A0 =
=A0 =A0 =A0 &gt; =A0NOTE: package core-image-sato-1.0-r0: task do_bootimg:<=
br>&gt; =A0 =A0 =A0 =A0 Started<br>&gt; =A0 =A0 =A0 =A0 &gt; ERROR: Functio=
n &#39;build_boot_bin&#39; failed<br>
&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 (see /home/jim/poky/yocto=
-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_boo=
timg.31418 for further information)<br>&gt; =A0 =A0 =A0 =A0 &gt; ERROR: Log=
file of failure stored<br>
&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 in: /home/jim/poky/yocto-=
build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_boot=
img.31418<br>&gt; =A0 =A0 =A0 =A0 &gt; Log data follows:<br>&gt; =A0 =A0 =
=A0 =A0 &gt; | install: cannot stat<br>
&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 `/home/jim/poky/yocto-bui=
ld/tmp/sysroots/mymachine/kernel/bzImage&#39;: No<br>&gt; =A0 =A0 =A0 =A0 &=
gt; such file or directory<br>&gt; =A0 =A0 =A0 =A0 &gt; | ERROR: Function &=
#39;build_boot_bin&#39; failed<br>
&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 (see /home/jim/poky/yocto=
-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_boo=
timg.31418 for further information)<br>&gt; =A0 =A0 =A0 =A0 &gt; NOTE: pack=
age core-image-sato-1.0-r0: task do_bootimg:<br>
&gt; =A0 =A0 =A0 =A0 Failed<br>&gt; =A0 =A0 =A0 =A0 &gt; ERROR: Task 9<br>&=
gt; =A0 =A0 =A0 =A0 &gt; (/home/jim/poky/meta/recipes-sato/images/<a href=
=3D"http://core-image-sato.bb/" target=3D"_blank">core-image-sato.bb</a>,<b=
r>&gt; =A0 =A0 =A0 =A0 &gt; do_bootimg) failed with exit code &#39;1&#39;<b=
r>
&gt; =A0 =A0 =A0 =A0 &gt; ERROR:<br>&gt; =A0 =A0 =A0 =A0 &#39;/home/jim/pok=
y/meta/recipes-sato/images/<a href=3D"http://core-image-sato.bb/" target=3D=
"_blank">core-image-sato.bb</a>&#39;<br>&gt; =A0 =A0 =A0 =A0 &gt; failed<br=
>&gt; =A0 =A0 =A0 =A0 &gt; jim@jim-ubuntu-10:~/poky/yocto-build$<br>
&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt;<br>&gt;<br>&gt;<br>&gt;<br><br><br></div>=
</div></blockquote></div><br>

--20cf3040ea7c4b1e4004b0d9a5ad--
