Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4008E4C80BEF
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 14:21:30 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn5 with SMTP id 5so147643iwn.35
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 12:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=vXkdkO4/8vPVeURUtVzn3Ij1X9fxH2esHRUs2D+N+kw=;
	b=d8s8Fynu65DetAgJP6brMCemqAyv36KmD9ce6VtxQ9k8ryazKyVNYHZxUyUOq3wGls
	kw8SGpej3YPfKg0nXazqAsQ/dLbHXwf6OFq9VuyyAzGX7KpfqgtJ2CqxUYwU038T0+zp
	A8SG/1TaqXfAfyuJt/nCiztb2Uy9wnmYjY67g=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=XBOQGRWP3kAufpIFGL0g7molVaSv1MLEtLZq7gU75ziXnMws4ZeTVIQRCVpETskys9
	nfOUwlyiWxl//ZIRxTsnFP89yfISdDd6yChpYVLueyt3uHj1J5bCViiI04R+Xd7D59uM
	Dfaytw8/5/2+b9N2E+Uy8HkQBEd7bh4s9WCfo=
MIME-Version: 1.0
Received: by 10.231.15.136 with SMTP id k8mr9944445iba.51.1290630088632; Wed,
	24 Nov 2010 12:21:28 -0800 (PST)
Received: by 10.231.33.4 with HTTP; Wed, 24 Nov 2010 12:21:28 -0800 (PST)
In-Reply-To: <4CED6ED4.8020609@windriver.com>
References: <AANLkTinQv_Lb-jnngPTpKV9evSSRzQUfN9JEA0RjZbvT@mail.gmail.com>
	<4CED6ED4.8020609@windriver.com>
Date: Wed, 24 Nov 2010 21:21:28 +0100
Message-ID: <AANLkTimueKS2Vay1h4tM9ENFogONmuNZrET5waqG+7YM@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: poky-image-minimal-1.0-r0:Unable to find package rpm!
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
X-List-Received-Date: Wed, 24 Nov 2010 20:21:30 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Mark, thanks for your reply!

2010/11/24 Mark Hatle <mark.hatle@windriver.com>:
> On 11/24/10 1:36 PM, Frans Meulenbroeks wrote:
>> I was trying to build poky-image-minimal (git head of nov 20).
>> | Processing task-poky-boot...
>> | Processing rpm...
>> | Unable to find package rpm!
>> | ERROR: Task failed: ('function do_rootfs failed',
>> '/home/frans/poky/poky/build/tmp/work/sheevaplug-poky-linux-gnueabi/poky=
-image-minimal-1.0-r0/temp/log.do_rootfs.6436')
>
> The task you build had an explicit requirement for 'rpm' (the package). =
=A0It's
> saying it was unable to find that package.
>
> I'm not sure how to track down where that requirement came from though.
>
> You might be able to work around it by doing a "bitbake rpm"...

Nope, tried that.
Here is a snippet from my history:
 1004  . poky-init-build-env
 1005  bitbake poky-image-minimal
 1006  bitbake rpm
 1007  bitbake poky-image-minimal
 1008  rpm
 1009  git log
 1010  bitbake rpm-native
 1011  time bitbake poky-image-minimal
even the last one gives the rpm error (and inbetween I did build rpm,
check for a native rpm and build rpm-native)

It comes from the image recipe which contains:
./images/poky-image-minimal.bb:IMAGE_INSTALL =3D "task-poky-boot
${ROOTFS_PKGMANAGE}"
I assume by default I get rpm as package management (I am using the
default values afaik).
If it is rpm this comes from:
./classes/rootfs_rpm.bbclass:ROOTFS_PKGMANAGE =3D "rpm zypper"

I guess this is something beyond a missing dependency.


>
>> NOTE: package poky-image-minimal-1.0-r0: task do_rootfs: Failed
>> ERROR: Task 10 (/home/frans/poky/poky/meta/recipes-core/images/poky-imag=
e-minimal.bb,
>> do_rootfs) failed with 1
>> ERROR: '/home/frans/poky/poky/meta/recipes-core/images/poky-image-minima=
l.bb'
>> failed
>>
>> rpm is installed on the host
>> packaged rpm and rpm-native build so it does not seem to be a missing
>> dependency.
>>
>> Anyone an idea?
>>
>> BTW: I feel that building poky-image-minimal takes quite long.
>> I don't have a very high end PC (D920, core2 duo at 3Ghz or so, with
>> 4GB DDR2), but =A0when I tried to build poky-image-minimal a second
>> time, no work needed to be done, apart from do_rootfs.
>> Yet running the 1839 (of 1842) tasks took 11min25.
>
> There is currently a lot of extra processing during task executation. =A0=
Each task
> takes approx 1-2 seconds of processing. =A0A large number of the 1839 wer=
e likely
> skipped.. thus the 11 minutes.
>
> We're already working on a solution to this. =A0Between optimizing the se=
tup of
> the bitbake environment and changes in pseudo -- to facilitate the task e=
xecutor
> avoiding exec unless necessary.

don't know all differences between OE and yocto yet.
poky always seems to execute do_build, do_package_write and do_rm_work
OE does seem to skip all steps if the stamps say everything is build.


Frans (eFfeM on irc)

