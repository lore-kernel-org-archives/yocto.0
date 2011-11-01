Return-Path: <jfabernathy@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB3FDE00559
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2011 12:48:04 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ggnr1 with SMTP id r1so9814535ggn.35
	for <yocto@yoctoproject.org>; Tue, 01 Nov 2011 12:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=n9T4IRhTQuPIBK1Jo2W7Yb+oEgkk/gZM4dRO7zyunjs=;
	b=MRPPMTBTrs3Nqs5VGDZfr1AKcIKCSoBma/VMUVSKkFxE06rJ51y4WOVtzBLyqPqhDA
	5Bb2JR8FXjBwLqmMiXmYaYkPmGKvASB5rQEgYMuAo2aUeKKFwYCc8yjeT5cIWBGxEeZr
	XIO0KBijhPSzk8MfP/b/1D4zaxe2v0fDGqKjk=
MIME-Version: 1.0
Received: by 10.236.126.52 with SMTP id a40mr1199416yhi.125.1320176883306;
	Tue, 01 Nov 2011 12:48:03 -0700 (PDT)
Received: by 10.236.109.134 with HTTP; Tue, 1 Nov 2011 12:48:03 -0700 (PDT)
In-Reply-To: <1320176449.2400.63.camel@elmorro>
References: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
	<1320176449.2400.63.camel@elmorro>
Date: Tue, 1 Nov 2011 15:48:03 -0400
Message-ID: <CANFv2Emacwk4+Z+bYNs3MXZL-uxHmPUiB5tFXNM7Kx+NgFOnig@mail.gmail.com>
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
X-List-Received-Date: Tue, 01 Nov 2011 19:48:05 -0000
Content-Type: multipart/alternative; boundary=20cf3011e1912b918004b0b1a25f

--20cf3011e1912b918004b0b1a25f
Content-Type: text/plain; charset=ISO-8859-1

Just to clear up the basics, Prior to following Appendix A verbatim, I did
the following
1. install prerequisites from GS guide
2. git clone git://git.yoctoproject.org/poky
3. cd poky
4. git clone git://git.yoctoproject.org/meta-intel.git

I did not install the poky-extras. I assumed it only had to be installed if
you installed the kernel source for modification like in Appendix b

Jim a



On Tue, Nov 1, 2011 at 3:40 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:

> Hi,
>
> On Tue, 2011-11-01 at 11:37 -0700, James Abernathy wrote:
> > I tried to duplicate the Yocto Project Decelopment Manual Appendix A
> > build of a Crownbay NOEMGD image,  no changes just dulicate the
> > instructions.  This is using the latest Yocto 1.1.  I did get a long
> > way down the line, but had a fatal error in the last 2 steps.
> >
> > The only change I had to make was related to A.5.2.4.  The commit
> > string for the SRCREV_meta_pn was different on the
> > git.yoctoproject.org/cgit/cgi for the Meta commit so I used what I
> > found online.  The first section of 126 task completed without error.
> > The next section of 4394 tasks failed on 4393.  Not sure if the error
> > is obvious, but I wanted to run it by someone. Console error log
> > below:
> >
>
> Hmm, not sure what's going on here - I'm sure this example was verified
> several times, but just to make sure, what you're doing is going through
> 'Appendix A. BSP Development Example' verbatim and getting this?
>
> The SRCREVs in either case look ok for this, so that shouldn't be the
> problem...
>
> But let me go over the steps myself and see what I come up with - will
> let you know either way...
>
> Tom
>
> >  NOTE: package core-image-sato-1.0-r0: task do_bootimg: Started
> > ERROR: Function 'build_boot_bin' failed
> > (see
> /home/jim/poky/yocto-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_bootimg.31418
> for further information)
> > ERROR: Logfile of failure stored
> > in:
> /home/jim/poky/yocto-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_bootimg.31418
> > Log data follows:
> > | install: cannot stat
> > `/home/jim/poky/yocto-build/tmp/sysroots/mymachine/kernel/bzImage': No
> > such file or directory
> > | ERROR: Function 'build_boot_bin' failed
> > (see
> /home/jim/poky/yocto-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_bootimg.31418
> for further information)
> > NOTE: package core-image-sato-1.0-r0: task do_bootimg: Failed
> > ERROR: Task 9
> > (/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb,
> > do_bootimg) failed with exit code '1'
> > ERROR: '/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb'
> > failed
> > jim@jim-ubuntu-10:~/poky/yocto-build$
> >
>
>
>

--20cf3011e1912b918004b0b1a25f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Just to clear up the basics, Prior to following Appendix A verbatim, I=
 did the following</div>
<div>1. install prerequisites from GS guide</div>
<div>2. git clone git://<a href=3D"http://git.yoctoproject.org/poky">git.yo=
ctoproject.org/poky</a></div>
<div>3. cd poky<br>4. git clone git://<a href=3D"http://git.yoctoproject.or=
g/meta-intel.git">git.yoctoproject.org/meta-intel.git</a></div>
<div>=A0</div>
<div>I did not install the poky-extras. I assumed it only had to be install=
ed if you installed the kernel source for modification like in Appendix b</=
div>
<div>=A0</div>
<div>Jim a<br></div>
<div><br><br>=A0</div>
<div class=3D"gmail_quote">On Tue, Nov 1, 2011 at 3:40 PM, Tom Zanussi <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:tom.zanussi@intel.com">tom.zanussi@inte=
l.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT: #ccc 1px solid; MARGIN: 0px 0px 0px 0.8ex=
; PADDING-LEFT: 1ex" class=3D"gmail_quote">Hi,<br>
<div class=3D"im"><br>On Tue, 2011-11-01 at 11:37 -0700, James Abernathy wr=
ote:<br>&gt; I tried to duplicate the Yocto Project Decelopment Manual Appe=
ndix A<br>&gt; build of a Crownbay NOEMGD image, =A0no changes just dulicat=
e the<br>
&gt; instructions. =A0This is using the latest Yocto 1.1. =A0I did get a lo=
ng<br>&gt; way down the line, but had a fatal error in the last 2 steps.<br=
>&gt;<br>&gt; The only change I had to make was related to A.5.2.4. =A0The =
commit<br>
&gt; string for the SRCREV_meta_pn was different on the<br>&gt; <a href=3D"=
http://git.yoctoproject.org/cgit/cgi" target=3D"_blank">git.yoctoproject.or=
g/cgit/cgi</a> for the Meta commit so I used what I<br>&gt; found online. =
=A0The first section of 126 task completed without error.<br>
&gt; The next section of 4394 tasks failed on 4393. =A0Not sure if the erro=
r<br>&gt; is obvious, but I wanted to run it by someone. Console error log<=
br>&gt; below:<br>&gt;<br><br></div>Hmm, not sure what&#39;s going on here =
- I&#39;m sure this example was verified<br>
several times, but just to make sure, what you&#39;re doing is going throug=
h<br>&#39;Appendix A. BSP Development Example&#39; verbatim and getting thi=
s?<br><br>The SRCREVs in either case look ok for this, so that shouldn&#39;=
t be the<br>
problem...<br><br>But let me go over the steps myself and see what I come u=
p with - will<br>let you know either way...<br><font color=3D"#888888"><br>=
Tom<br></font>
<div>
<div></div>
<div class=3D"h5"><br>&gt; =A0NOTE: package core-image-sato-1.0-r0: task do=
_bootimg: Started<br>&gt; ERROR: Function &#39;build_boot_bin&#39; failed<b=
r>&gt; (see /home/jim/poky/yocto-build/tmp/work/mymachine-poky-linux/core-i=
mage-sato-1.0-r0/temp/log.do_bootimg.31418 for further information)<br>
&gt; ERROR: Logfile of failure stored<br>&gt; in: /home/jim/poky/yocto-buil=
d/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_bootimg.=
31418<br>&gt; Log data follows:<br>&gt; | install: cannot stat<br>&gt; `/ho=
me/jim/poky/yocto-build/tmp/sysroots/mymachine/kernel/bzImage&#39;: No<br>
&gt; such file or directory<br>&gt; | ERROR: Function &#39;build_boot_bin&#=
39; failed<br>&gt; (see /home/jim/poky/yocto-build/tmp/work/mymachine-poky-=
linux/core-image-sato-1.0-r0/temp/log.do_bootimg.31418 for further informat=
ion)<br>
&gt; NOTE: package core-image-sato-1.0-r0: task do_bootimg: Failed<br>&gt; =
ERROR: Task 9<br>&gt; (/home/jim/poky/meta/recipes-sato/images/<a href=3D"h=
ttp://core-image-sato.bb/" target=3D"_blank">core-image-sato.bb</a>,<br>&gt=
; do_bootimg) failed with exit code &#39;1&#39;<br>
&gt; ERROR: &#39;/home/jim/poky/meta/recipes-sato/images/<a href=3D"http://=
core-image-sato.bb/" target=3D"_blank">core-image-sato.bb</a>&#39;<br>&gt; =
failed<br>&gt; jim@jim-ubuntu-10:~/poky/yocto-build$<br>&gt;<br><br><br></d=
iv>
</div></blockquote></div><br>

--20cf3011e1912b918004b0b1a25f--
