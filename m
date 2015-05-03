Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 602AAE009D4; Sun,  3 May 2015 12:59:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A9EBE00954
	for <yocto@yoctoproject.org>; Sun,  3 May 2015 12:58:59 -0700 (PDT)
Received: by igbyr2 with SMTP id yr2so71081008igb.0
	for <yocto@yoctoproject.org>; Sun, 03 May 2015 12:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xWkxieERUmok+izwVALWull7o5OcVy+e8LtCVaTdV7Y=;
	b=ZULvvSoMu6sKtlKoPTt4nlZiTeyqnmxnd90ik2wlJNMkHNFu6PdAVh8QMPCTc+B1S0
	aBtqmeUyJBhgZ30Ees4JSy4c9i8QGDNi1FcVK6ufnBQAPZn6oDq91ruSn5JgyHKSTE4b
	aeJDXysF6SarUgnrHuqEjMw1yya1vDYh1ThgMg8WD2FPb32KC15k/2xO7hhcOKyqQWeJ
	H7PuPAAvrJdHkQgbZWZ7OrfpPVDTD2A//KJGlS3zNxb682wuZtFfQwBXzn82dcIKAwX+
	1F1138AjHepplV0efnRt0pHUw8vM5Jf6BGY+rkPDA+iFjazht9IOtn0h1f69UG6HdB5h
	2NkA==
MIME-Version: 1.0
X-Received: by 10.107.150.198 with SMTP id y189mr23794241iod.21.1430683139253; 
	Sun, 03 May 2015 12:58:59 -0700 (PDT)
Received: by 10.79.35.135 with HTTP; Sun, 3 May 2015 12:58:59 -0700 (PDT)
In-Reply-To: <CAF_dkJDB1nUQO_E+zZ17-drWLFoySks=aqrCx6QPR2ZkXHL6DA@mail.gmail.com>
References: <CAF_dkJCc-fXhPLFxtRYSxSC3Q0DnWwX6k8gRUJiC-f-HP9vBmA@mail.gmail.com>
	<CAAPegz0hY842i98AZ-xB7=aEbLZpMA9Wy0ChMHsrS+c6Lb+q9A@mail.gmail.com>
	<CAF_dkJDB1nUQO_E+zZ17-drWLFoySks=aqrCx6QPR2ZkXHL6DA@mail.gmail.com>
Date: Sun, 3 May 2015 15:58:59 -0400
Message-ID: <CAAPegz3OD458o4LDVLrjk-6C-GNWoCXz-TdBoQR3iAVhv+pALg@mail.gmail.com>
From: Chris Morgan <chmorgan@gmail.com>
To: Patrick Doyle <wpdster@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto-ish upgrade-in-place strategy
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
X-List-Received-Date: Sun, 03 May 2015 19:59:01 -0000
Content-Type: multipart/alternative; boundary=001a1140ec384d2c3d051532e08d

--001a1140ec384d2c3d051532e08d
Content-Type: text/plain; charset=UTF-8

On Sunday, May 3, 2015, Patrick Doyle <wpdster@gmail.com> wrote:

> On Sun, May 3, 2015 at 5:51 AM, Chris Morgan <chmorgan@gmail.com
> <javascript:;>> wrote:
> > Is there a standard way? We've seen a few different approaches between
> > android systems (phones), Linux distributions, and things like
> chromebook.
> >
> > In our case we are using two uboot, two kernel, and two root file system
> > partitions with uboot environment controlling the active one. Squashfs
> for
> > the root fs. Raw images for uboot and kernel. Overlayfs in another rw
> > partition that we put on top of the rootfs where we keep system
> > configuration. Media and other stuff goes into yet another btrfs
> partition
> > that, like the overlayfs, isn't managed by the update system.
> >
> > Approach is to update the second rootfs while one rootfs is running. Swap
> > env in uboot environment to point at the other rootfs and then when
> > appropriate reboot. This lets us avoid downtime while downloading the
> > update, we download in the background.
> >
> > We build everything with yocto but afaik we don't have much specific
> stuff
> > for the update system because we don't have an upgrade partition but
> rather
> > two sets of partitions.
> >
> > Thoughts?
>
> Hi Chris,
> Thanks for the description.  We do something very much similar to that
> on one of our systems (except for the part about downloading in the
> background).
>
> As I have been thinking about this, I have been thinking about
> something along the lines of creating a rescue/boot partition with the
> following:
>
> core-image-minimal
> squashfs
> ssh (for rescue operations)
> kexec-tools
>
> U-boot would boot that image.  That image would contain an rc.local
> that would mount the active partition and kexec the kernel it found
> there.  The active partition would contain our deployed application,
> which would likely also have a squashfs rootfs (because I don't want
> to trash the flash when the power goes out).  It would also have
> whatever hooks we needed to upgrade images in place.
>
> My thinking is that the boot/rescue image would be a factory/expert
> image.  It (of necessity) needs special tools and/or access to the
> board (JTAG header, USB rescue port, etc...) to be installed.  But
> once it is installed, it is capable of booting whatever Linux I place
> in the active partition.  I might make it smart enough to support an
> "active" partition and a "fallback" partition, but I kinda feel like I
> already have a "fallback" mechanism in place with the boot/rescue
> image.
>
> At some point, I begin to think that I am overthinking this.  I also
> begin to think that everybody (in this space) has these same issues.
> Why do we keep reinventing the wheel?
>
> --wpd
>


We thought about the rescue/recovery approach as well. The issue was how
the system would recover in the field and how updates were handled.

Consider that to update the full system image you'd have to download and
store that image to flash, unless you stored it somewhere, and if you were
going to store it you'd have to have extra space for that. For recovery
you'd have the similar approach of booting recovery but you could write
directly to the primary fs since you're booted to recovery. The trouble
there is download speed and connectivity. The system is down until you
download the update diff/full image and that could take some time. And the
system is down for that period.

So we didn't see a path forward that would support slow connections plus no
down time. And we would still need some place to put the new image that was
guaranteed to be available which means it couldn't be used for application
or other data that had to be preserved across updates. With two rootfs
partitions we can download in place and take our time doing so. Plus no
special recovery image and no reserved area that is unused except during
update. We do have a full duplicate rootfs though.

I see where you are going, for other use cases it may be better to have a
primary and a recovery. Our rootfs is around 200MB at this point.

Chris

--001a1140ec384d2c3d051532e08d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sunday, May 3, 2015, Patrick Doyle &lt;<a href=3D"mailto:wpdster@gmail.c=
om">wpdster@gmail.com</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On S=
un, May 3, 2015 at 5:51 AM, Chris Morgan &lt;<a href=3D"javascript:;" oncli=
ck=3D"_e(event, &#39;cvml&#39;, &#39;chmorgan@gmail.com&#39;)">chmorgan@gma=
il.com</a>&gt; wrote:<br>
&gt; Is there a standard way? We&#39;ve seen a few different approaches bet=
ween<br>
&gt; android systems (phones), Linux distributions, and things like chromeb=
ook.<br>
&gt;<br>
&gt; In our case we are using two uboot, two kernel, and two root file syst=
em<br>
&gt; partitions with uboot environment controlling the active one. Squashfs=
 for<br>
&gt; the root fs. Raw images for uboot and kernel. Overlayfs in another rw<=
br>
&gt; partition that we put on top of the rootfs where we keep system<br>
&gt; configuration. Media and other stuff goes into yet another btrfs parti=
tion<br>
&gt; that, like the overlayfs, isn&#39;t managed by the update system.<br>
&gt;<br>
&gt; Approach is to update the second rootfs while one rootfs is running. S=
wap<br>
&gt; env in uboot environment to point at the other rootfs and then when<br=
>
&gt; appropriate reboot. This lets us avoid downtime while downloading the<=
br>
&gt; update, we download in the background.<br>
&gt;<br>
&gt; We build everything with yocto but afaik we don&#39;t have much specif=
ic stuff<br>
&gt; for the update system because we don&#39;t have an upgrade partition b=
ut rather<br>
&gt; two sets of partitions.<br>
&gt;<br>
&gt; Thoughts?<br>
<br>
Hi Chris,<br>
Thanks for the description.=C2=A0 We do something very much similar to that=
<br>
on one of our systems (except for the part about downloading in the<br>
background).<br>
<br>
As I have been thinking about this, I have been thinking about<br>
something along the lines of creating a rescue/boot partition with the<br>
following:<br>
<br>
core-image-minimal<br>
squashfs<br>
ssh (for rescue operations)<br>
kexec-tools<br>
<br>
U-boot would boot that image.=C2=A0 That image would contain an rc.local<br=
>
that would mount the active partition and kexec the kernel it found<br>
there.=C2=A0 The active partition would contain our deployed application,<b=
r>
which would likely also have a squashfs rootfs (because I don&#39;t want<br=
>
to trash the flash when the power goes out).=C2=A0 It would also have<br>
whatever hooks we needed to upgrade images in place.<br>
<br>
My thinking is that the boot/rescue image would be a factory/expert<br>
image.=C2=A0 It (of necessity) needs special tools and/or access to the<br>
board (JTAG header, USB rescue port, etc...) to be installed.=C2=A0 But<br>
once it is installed, it is capable of booting whatever Linux I place<br>
in the active partition.=C2=A0 I might make it smart enough to support an<b=
r>
&quot;active&quot; partition and a &quot;fallback&quot; partition, but I ki=
nda feel like I<br>
already have a &quot;fallback&quot; mechanism in place with the boot/rescue=
<br>
image.<br>
<br>
At some point, I begin to think that I am overthinking this.=C2=A0 I also<b=
r>
begin to think that everybody (in this space) has these same issues.<br>
Why do we keep reinventing the wheel?<br>
<br>
--wpd<br>
</blockquote><div><br></div><div><br></div><div>We thought about the rescue=
/recovery approach as well. The issue was how the system would recover in t=
he field and how updates were handled.</div><div><br></div>Consider that to=
 update the full system image you&#39;d have to download and store that ima=
ge to flash, unless you stored it somewhere, and if you were going to store=
 it you&#39;d have to have extra space for that. For recovery you&#39;d hav=
e the similar approach of booting recovery but you could write directly to =
the primary fs since you&#39;re booted to recovery. The trouble there is do=
wnload speed and connectivity. The system is down until you download the up=
date diff/full image and that could take some time. And the system is down =
for that period.<br><div><br></div><div>So we didn&#39;t see a path forward=
 that would support slow connections plus no down time. And we would still =
need some place to put the new image that was guaranteed to be available wh=
ich means it couldn&#39;t be used for application or other data that had to=
 be preserved across updates.=C2=A0With two rootfs partitions we can downlo=
ad in place and take our time doing so. Plus no special recovery image and =
no reserved area that is unused except during update. We do have a full dup=
licate rootfs though.</div><div><br></div>I see where you are going<span></=
span>, for other use cases it may be better to have a primary and a recover=
y. Our rootfs is around 200MB at this point.<div><br></div><div>Chris</div>=
<div><br></div><div><br></div>

--001a1140ec384d2c3d051532e08d--
