Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B43BE0091D; Sun,  3 May 2015 02:51:28 -0700 (PDT)
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
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3445AE004F6
	for <yocto@yoctoproject.org>; Sun,  3 May 2015 02:51:22 -0700 (PDT)
Received: by igbyr2 with SMTP id yr2so66010374igb.0
	for <yocto@yoctoproject.org>; Sun, 03 May 2015 02:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=GsU3HXuD4AbZK0CrfwS3ls0YpZBrPcJSbrKgrLR+TQw=;
	b=PD9MOytk+hhYNQqzmFh3uE2o13irpvGDY01o5Fq70n+FQes/lLYDS2GKnEkn8mA/2n
	uZE/bZIcheTCu4LQPTtZ6D4E4uOth9hlAmTvQuVd8YxRjoF+v/GGAQ18jhFkiQqSZ4u3
	H9xl1qsCEBXPfmuvRXNAQmOz7/ugJTTR44PLrTCw67HDB/+TUPmLyLQA8fltn2anAsc+
	Zjdbp2F0si2LuurjDNPc4ovXCJuJrmZYS2rNG/QXrQxiPLGlTf8dDHjkqrwepu6b/9sA
	PXEX1KdICkCIDqmqCXBP93aKUU2jhh7Ht9p9DJEbWvFtykjIR1qWZC1XOXtKMs9l4Fv+
	Zjzw==
MIME-Version: 1.0
X-Received: by 10.50.138.71 with SMTP id qo7mr7046804igb.10.1430646681667;
	Sun, 03 May 2015 02:51:21 -0700 (PDT)
Received: by 10.79.35.135 with HTTP; Sun, 3 May 2015 02:51:21 -0700 (PDT)
In-Reply-To: <CAF_dkJCc-fXhPLFxtRYSxSC3Q0DnWwX6k8gRUJiC-f-HP9vBmA@mail.gmail.com>
References: <CAF_dkJCc-fXhPLFxtRYSxSC3Q0DnWwX6k8gRUJiC-f-HP9vBmA@mail.gmail.com>
Date: Sun, 3 May 2015 05:51:21 -0400
Message-ID: <CAAPegz0hY842i98AZ-xB7=aEbLZpMA9Wy0ChMHsrS+c6Lb+q9A@mail.gmail.com>
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
X-List-Received-Date: Sun, 03 May 2015 09:51:28 -0000
Content-Type: multipart/alternative; boundary=001a1134b76642913605152a63b8

--001a1134b76642913605152a63b8
Content-Type: text/plain; charset=UTF-8

On Saturday, May 2, 2015, Patrick Doyle <wpdster@gmail.com> wrote:

> Rather than inventing this from scratch yet again, I would like to ask
> what the Yocto-ish best practice is for deploying an embedded system
> that has to support in-place upgrades.
>
> It seems to me that this should be a fairly common scenario:
> I have (or, rather am in the process of developing yet another) an
> embedded application that will be running on a device whose power
> supply is uncertain at best.  Consequently, I want to run from a
> read-only squashfs rootfs, with some small amount of seldom changed
> configuration data (most likely stored in a JFFS partition).
>
> But I need a strategy to upgrade this system in place.  Since I am
> running from a read-only squashfs, I can't apt-get or rpm upgrade
> individual packages.  I must redeploy the entire image.
>
> I can divvy up the flash however I want, so I am thinking that I would
> like to use u-boot to boot a rescue image from one partition, that
> would kexec the deployed image from a different parition.
>
> Are there Yocto recipes, blogs, community experience with this sort of
> thing, or should I invent my own solution?
>
> Again, this feel like a common problem that others should have already
> solved, and I would rather solve uncommon problems than re-solve
> common ones.
>
> --wpd
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <javascript:;>
> https://lists.yoctoproject.org/listinfo/yocto
>

Is there a standard way? We've seen a few different approaches between
android systems (phones), Linux distributions, and things like chromebook.

In our case we are using two uboot, two kernel, and two root file system
partitions with uboot environment controlling the active one. Squashfs for
the root fs. Raw images for uboot and kernel. Overlayfs in another rw
partition that we put on top of the rootfs where we keep system
configuration. Media and other stuff goes into yet another btrfs partition
that, like the overlayfs, isn't managed by the update system.

Approach is to update the second rootfs while one rootfs is running. Swap
env in uboot environment to point at the other rootfs and then when
appropriate reboot. This lets us avoid downtime while downloading the
update, we download in the background.

We build everything with yocto but afaik we don't have much specific stuff
for the update system because we don't have an upgrade partition but rather
two sets of partitions.

Thoughts?

Chris

--001a1134b76642913605152a63b8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Saturday, May 2, 2015, Patrick Doyle &lt;<a href=3D"mailto:wpdster@gmail=
.com">wpdster@gmail.com</a>&gt; wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Ra=
ther than inventing this from scratch yet again, I would like to ask<br>
what the Yocto-ish best practice is for deploying an embedded system<br>
that has to support in-place upgrades.<br>
<br>
It seems to me that this should be a fairly common scenario:<br>
I have (or, rather am in the process of developing yet another) an<br>
embedded application that will be running on a device whose power<br>
supply is uncertain at best.=C2=A0 Consequently, I want to run from a<br>
read-only squashfs rootfs, with some small amount of seldom changed<br>
configuration data (most likely stored in a JFFS partition).<br>
<br>
But I need a strategy to upgrade this system in place.=C2=A0 Since I am<br>
running from a read-only squashfs, I can&#39;t apt-get or rpm upgrade<br>
individual packages.=C2=A0 I must redeploy the entire image.<br>
<br>
I can divvy up the flash however I want, so I am thinking that I would<br>
like to use u-boot to boot a rescue image from one partition, that<br>
would kexec the deployed image from a different parition.<br>
<br>
Are there Yocto recipes, blogs, community experience with this sort of<br>
thing, or should I invent my own solution?<br>
<br>
Again, this feel like a common problem that others should have already<br>
solved, and I would rather solve uncommon problems than re-solve<br>
common ones.<br>
<br>
--wpd<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"javascript:;" onclick=3D"_e(event, &#39;cvml&#39;, &#39;yocto@yo=
ctoproject.org&#39;)">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote><div><br></div><div>Is there a standard way? We&#39;ve seen a =
few different approaches between android systems (phones), Linux=C2=A0distr=
ibutions, and things like chromebook.</div><div><br></div><div>In our case =
w<span></span>e are using two uboot, two kernel, and two root file system p=
artitions with uboot environment controlling the active one. Squashfs for t=
he root fs. Raw images for uboot and kernel. Overlayfs in another rw partit=
ion that we put on top of the rootfs where we keep system configuration. Me=
dia and other stuff goes into yet another btrfs partition that, like the ov=
erlayfs, isn&#39;t managed by the update system.</div><div><br></div><div>A=
pproach is to update the second rootfs while one rootfs is running. Swap en=
v in uboot environment to point at the other rootfs and then when appropria=
te reboot. This lets us avoid downtime while downloading the update, we dow=
nload in the background.</div><div><br></div><div>We build everything with =
yocto but afaik we don&#39;t have much specific stuff for the update=C2=A0s=
ystem because we don&#39;t have an upgrade partition but rather two sets of=
 partitions.</div><div><br></div><div>Thoughts?</div><div><br></div><div>Ch=
ris</div><div>=C2=A0</div>

--001a1134b76642913605152a63b8--
