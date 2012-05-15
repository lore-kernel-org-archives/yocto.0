Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4520BE01206
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 15:58:10 -0700 (PDT)
Received: by bkcjf20 with SMTP id jf20so141900bkc.35
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 15:58:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=XZyG9msddCcvJxfak42LdWeY54hK0p0pYDRalZ5q7Q0=;
	b=dZIEpwAwL+XS4hYQjWDSODWrjknlGFN4I2058g5Fie+phpOPdNOYHya8P1QnWJEPxZ
	1doXSSlBsgaNR4B9Cm0ii7mjWJKSa/vzZZVXMc82xDIIaVvSef6rKM82KYBQntY7ew3D
	hK6OrP3hUc41ujC6EfgTFG16rLu2CdqaTVfm1gdNQaoL5HKVjoMANgqv/Pb4uFWr5v0w
	cF9f05sHAX7y5x9+8xZI0aQCFsrYebCBuRSeBwNRbJTzRX2GYYphiFBqD6XXp63tv+6r
	hDLDbuyIfrV4ynCORf3qR4Twj7No+GYttxPBOWHnnmmU42U8KY1CsJkhTExvMHoAArQ0
	6Uuw==
MIME-Version: 1.0
Received: by 10.204.152.196 with SMTP id h4mr267232bkw.131.1337122689206; Tue,
	15 May 2012 15:58:09 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.205.65.134 with HTTP; Tue, 15 May 2012 15:58:09 -0700 (PDT)
In-Reply-To: <CAPhnLPANF6KeOtgKa_L2PjV+hCg2Kb8_CFR9tPLzOA1kNNdUrQ@mail.gmail.com>
References: <CA+gsK-ph__F9gNUYSnb_pN2xjLbv8zwB6Sk+J5qiKD43fZx7-w@mail.gmail.com>
	<CAPhnLPANF6KeOtgKa_L2PjV+hCg2Kb8_CFR9tPLzOA1kNNdUrQ@mail.gmail.com>
Date: Tue, 15 May 2012 15:58:09 -0700
X-Google-Sender-Auth: ELyJZpeLzRxI3c2tOOoS0WEcoXw
Message-ID: <CA+gsK-o6DM31+ypUBtR9DqX0jhEEESOJVp8Qe9viUzGhJac0dA@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
X-Gm-Message-State: ALoCoQm0M2jSBjjm53O8uvDLV3MxVNxPeloll1yDp6pweYCc5Avxv3siG55TYbPcM7AexLMEHdKu
Cc: yocto@yoctoproject.org
Subject: Re: How is the list in package.manifest derived?
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
X-List-Received-Date: Tue, 15 May 2012 22:58:10 -0000
Content-Type: multipart/alternative; boundary=0015175cbab2e94aa904c01b2246

--0015175cbab2e94aa904c01b2246
Content-Type: text/plain; charset=ISO-8859-1

Thanks for your response, Beth. I am using the default: RPM.

:rjs

On Tue, May 15, 2012 at 3:53 PM, Flanagan, Elizabeth <
elizabeth.flanagan@intel.com> wrote:

> On Tue, May 15, 2012 at 3:38 PM, Rudolf Streif <rudolf.streif@linux.com>
> wrote:
> > I used poky-denzil-7.0 to build a core-image-minimal for the BeagleBoard.
> > Now I am looking for a list of everything that went into my image
> together
> > with the license information. The logical thing seems to be
> >
> ${TMPDIR}/deploy/licenses/core-image-minimal-beagleboard-<timestamp>/package.manifest:
> >
> > base-files
> > base-passwd
> > bash
> > busybox
> > busybox-syslog
> > busybox-udhcpc
> > initscripts
> > libc6
> > libgcc1
> > libtinfo5
> > libusb-1.0-0
> > libusb-compat
> > modutils-initscripts
> > ncurses-terminfo-base
> > netbase
> > pciutils-ids
> > sysvinit
> > sysvinit-inittab
> > sysvinit-pidof
> > task-core-boot
> > tinylogin
> > udev
> > udev-extraconf
> > udev-utils
> > update-alternatives-cworth
> > update-rc.d
> > usbutils-ids
> >
> > However, I don't think this is everything that went into the image. I
> would
> > expect the kernel to be in the list as well as module-init-tools and
> u-boot.
> > Apparently package.manifest and the corresponding license.manifest for an
> > image target do not contain all the licensing information that a device
> > builder would need to give to the end customer. How is that list created?
>
> This list is created via license_create_manifest within
> license.bbclass. I'm currently in the process of refactoring it quite
> a bit so I'll look out for this issue.
>
> It derives the list from list_installed_packages. Which means that
> there may be an issue with that function. The way I'm planning on
> doing it does not use list_installed_packages, however I'm going to
> open a bug on it to verify that it is in fact returning an incomplete
> list.
>
> What would be helpful here is knowing what package type you're using.
>
> -b
>
> >
> > Rudi
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
>
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release
>

--0015175cbab2e94aa904c01b2246
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks for your response, Beth. I am using the default: RPM.<div><br></div>=
<div>:rjs<br><br><div class=3D"gmail_quote">On Tue, May 15, 2012 at 3:53 PM=
, Flanagan, Elizabeth <span dir=3D"ltr">&lt;<a href=3D"mailto:elizabeth.fla=
nagan@intel.com" target=3D"_blank">elizabeth.flanagan@intel.com</a>&gt;</sp=
an> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On T=
ue, May 15, 2012 at 3:38 PM, Rudolf Streif &lt;<a href=3D"mailto:rudolf.str=
eif@linux.com">rudolf.streif@linux.com</a>&gt; wrote:<br>

&gt; I used poky-denzil-7.0 to build a core-image-minimal for the BeagleBoa=
rd.<br>
&gt; Now I am looking for a list of everything that went into my image toge=
ther<br>
&gt; with the license information. The logical thing seems to be<br>
&gt; ${TMPDIR}/deploy/licenses/core-image-minimal-beagleboard-&lt;timestamp=
&gt;/package.manifest:<br>
&gt;<br>
&gt; base-files<br>
&gt; base-passwd<br>
&gt; bash<br>
&gt; busybox<br>
&gt; busybox-syslog<br>
&gt; busybox-udhcpc<br>
&gt; initscripts<br>
&gt; libc6<br>
&gt; libgcc1<br>
&gt; libtinfo5<br>
&gt; libusb-1.0-0<br>
&gt; libusb-compat<br>
&gt; modutils-initscripts<br>
&gt; ncurses-terminfo-base<br>
&gt; netbase<br>
&gt; pciutils-ids<br>
&gt; sysvinit<br>
&gt; sysvinit-inittab<br>
&gt; sysvinit-pidof<br>
&gt; task-core-boot<br>
&gt; tinylogin<br>
&gt; udev<br>
&gt; udev-extraconf<br>
&gt; udev-utils<br>
&gt; update-alternatives-cworth<br>
&gt; update-rc.d<br>
&gt; usbutils-ids<br>
&gt;<br>
&gt; However, I don&#39;t think this is everything that went into the image=
. I would<br>
&gt; expect the kernel to be in the list as well as module-init-tools and u=
-boot.<br>
&gt; Apparently package.manifest and the corresponding license.manifest for=
 an<br>
&gt; image target do not contain all the licensing information that a devic=
e<br>
&gt; builder would need to give to the end customer. How is that list creat=
ed?<br>
<br>
</div></div>This list is created via license_create_manifest within<br>
license.bbclass. I&#39;m currently in the process of refactoring it quite<b=
r>
a bit so I&#39;ll look out for this issue.<br>
<br>
It derives the list from list_installed_packages. Which means that<br>
there may be an issue with that function. The way I&#39;m planning on<br>
doing it does not use list_installed_packages, however I&#39;m going to<br>
open a bug on it to verify that it is in fact returning an incomplete<br>
list.<br>
<br>
What would be helpful here is knowing what package type you&#39;re using.<b=
r>
<br>
-b<br>
<br>
&gt;<br>
&gt; Rudi<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
<br>
--<br>
Elizabeth Flanagan<br>
Yocto Project<br>
Build and Release<br>
</font></span></blockquote></div><br></div>

--0015175cbab2e94aa904c01b2246--
