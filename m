Return-Path: <jfabernathy@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5A50E0054F
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2011 13:04:16 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ggnr1 with SMTP id r1so9833265ggn.35
	for <yocto@yoctoproject.org>; Tue, 01 Nov 2011 13:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=e3O1g/qcNC2vxBKosrP5kS2/IXbKLWyTj8B9j0/VfPI=;
	b=oITdKthrI8ckWBA0/BWCgI5DG20Qpo5Fh9pv9SH1mrEhqBfJ0v9VemZAnxC9ebRZ8Q
	ck5pV8GRFtDDenHFDNRoMEy+lzLo7gMXRUnNT7lMXxiaPszzFWUxQbwlHlbpH/U2rcng
	1z/ZIMkerkrNhHSd9x7YJvV5FNa8LLQbL6PA4=
MIME-Version: 1.0
Received: by 10.236.155.74 with SMTP id i50mr2012994yhk.23.1320177855343; Tue,
	01 Nov 2011 13:04:15 -0700 (PDT)
Received: by 10.236.109.134 with HTTP; Tue, 1 Nov 2011 13:04:15 -0700 (PDT)
In-Reply-To: <1320177341.2400.65.camel@elmorro>
References: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
	<1320176449.2400.63.camel@elmorro>
	<CANFv2Emacwk4+Z+bYNs3MXZL-uxHmPUiB5tFXNM7Kx+NgFOnig@mail.gmail.com>
	<1320177341.2400.65.camel@elmorro>
Date: Tue, 1 Nov 2011 16:04:15 -0400
Message-ID: <CANFv2EncYCQZoD6yhCaZS0PkcP7Zf7YNm9i6DLB8P=nVW0M_yg@mail.gmail.com>
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
X-List-Received-Date: Tue, 01 Nov 2011 20:04:17 -0000
Content-Type: multipart/alternative; boundary=20cf303b42391bae0c04b0b1dc30

--20cf303b42391bae0c04b0b1dc30
Content-Type: text/plain; charset=ISO-8859-1

The odd thing is not only is the bzImage file is missing, but also is the
whole kernel directory that bzImage is supposed to be locate in.

/home/jim/poky/yocto-build/tmp/sysroots/mymachine/kernel/bzImage

In the sysroots/mymachine/ directory there is only:

lib/
shlibs/
usr/

Jim A

On Tue, Nov 1, 2011 at 3:55 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:

> On Tue, 2011-11-01 at 12:48 -0700, James Abernathy wrote:
> > Just to clear up the basics, Prior to following Appendix A verbatim, I
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
>
> Yeah, normally, assuming you're using an existing kernel branch.  But
> you didn't get a build error for the kernel, so I'm assuming that's the
> case.
>
> Tom
>
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

--20cf303b42391bae0c04b0b1dc30
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>The odd thing is not only is=A0the bzImage file is missing, but also i=
s the whole kernel directory that bzImage is supposed to be locate in.</div=
>
<div>=A0</div>
<div>/home/jim/poky/yocto-build/tmp/sysroots/mymachine/kernel/bzImage<br><b=
r>In the sysroots/mymachine/ directory there is only:</div>
<div>=A0</div>
<div>lib/</div>
<div>shlibs/</div>
<div>usr/</div>
<div>=A0</div>
<div>Jim A<br></div>
<div>=A0</div>
<div class=3D"gmail_quote">On Tue, Nov 1, 2011 at 3:55 PM, Tom Zanussi <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:tom.zanussi@intel.com">tom.zanussi@inte=
l.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT: #ccc 1px solid; MARGIN: 0px 0px 0px 0.8ex=
; PADDING-LEFT: 1ex" class=3D"gmail_quote">
<div class=3D"im">On Tue, 2011-11-01 at 12:48 -0700, James Abernathy wrote:=
<br>&gt; Just to clear up the basics, Prior to following Appendix A verbati=
m, I<br>&gt; did the following<br>&gt; 1. install prerequisites from GS gui=
de<br>
&gt; 2. git clone git://<a href=3D"http://git.yoctoproject.org/poky" target=
=3D"_blank">git.yoctoproject.org/poky</a><br>&gt; 3. cd poky<br>&gt; 4. git=
 clone git://<a href=3D"http://git.yoctoproject.org/meta-intel.git" target=
=3D"_blank">git.yoctoproject.org/meta-intel.git</a><br>
&gt;<br>&gt; I did not install the poky-extras. I assumed it only had to be=
<br>&gt; installed if you installed the kernel source for modification like=
 in<br>&gt; Appendix b<br>&gt;<br><br></div>Yeah, normally, assuming you&#3=
9;re using an existing kernel branch. =A0But<br>
you didn&#39;t get a build error for the kernel, so I&#39;m assuming that&#=
39;s the<br>case.<br><font color=3D"#888888"><br>Tom<br></font>
<div>
<div></div>
<div class=3D"h5"><br>&gt; Jim a<br>&gt;<br>&gt;<br>&gt;<br>&gt;<br>&gt; On=
 Tue, Nov 1, 2011 at 3:40 PM, Tom Zanussi &lt;<a href=3D"mailto:tom.zanussi=
@intel.com">tom.zanussi@intel.com</a>&gt;<br>&gt; wrote:<br>&gt; =A0 =A0 =
=A0 =A0 Hi,<br>
&gt;<br>&gt; =A0 =A0 =A0 =A0 On Tue, 2011-11-01 at 11:37 -0700, James Abern=
athy wrote:<br>&gt; =A0 =A0 =A0 =A0 &gt; I tried to duplicate the Yocto Pro=
ject Decelopment Manual<br>&gt; =A0 =A0 =A0 =A0 Appendix A<br>&gt; =A0 =A0 =
=A0 =A0 &gt; build of a Crownbay NOEMGD image, =A0no changes just dulicate<=
br>
&gt; =A0 =A0 =A0 =A0 the<br>&gt; =A0 =A0 =A0 =A0 &gt; instructions. =A0This=
 is using the latest Yocto 1.1. =A0I did<br>&gt; =A0 =A0 =A0 =A0 get a long=
<br>&gt; =A0 =A0 =A0 =A0 &gt; way down the line, but had a fatal error in t=
he last 2<br>&gt; =A0 =A0 =A0 =A0 steps.<br>
&gt; =A0 =A0 =A0 =A0 &gt;<br>&gt; =A0 =A0 =A0 =A0 &gt; The only change I ha=
d to make was related to A.5.2.4. =A0The<br>&gt; =A0 =A0 =A0 =A0 commit<br>=
&gt; =A0 =A0 =A0 =A0 &gt; string for the SRCREV_meta_pn was different on th=
e<br>&gt; =A0 =A0 =A0 =A0 &gt; <a href=3D"http://git.yoctoproject.org/cgit/=
cgi" target=3D"_blank">git.yoctoproject.org/cgit/cgi</a> for the Meta commi=
t so I used<br>
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

--20cf303b42391bae0c04b0b1dc30--
