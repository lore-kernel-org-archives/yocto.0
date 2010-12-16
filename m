Return-Path: <raj.khem@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 71C374C80FA8
	for <yocto@yoctoproject.org>; Thu, 16 Dec 2010 15:05:40 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywo7 with SMTP id 7so2143365ywo.35
	for <yocto@yoctoproject.org>; Thu, 16 Dec 2010 13:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:received:in-reply-to
	:references:from:date:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=uY5vdDpvj44iEr5LIzCs1DZsuNmaVGejopj/CFAA7tA=;
	b=S+yW5sn9Qr8ouYdk3yzhggM5whmWDT8dPBeQPKPPIwfLXUJcnbMihtAuMKQ+pgRJBJ
	0iou6Tv1r8dn3lNVra2nxQA8DBWIN7aoM0loHwqLSWgaxFVqBYkLSFfyUAFplpLJTRbL
	gXtBR2gp4LY9CVgAb/SVvDFbUInnadGpA5Bb0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	b=pmoOlEK36n4Do7ItfnKERkQa+DNCGvry9x28SGmLHZwlMdyPJ3gROPXxNQkM5wY2de
	rkelrpUV7PytxQOCCXrljuJ+gnBXVz0fPQxo/ErvpjLiMX4wXNQUt5tyfwSAr7uqChz7
	SotClq3pHvaQ2AkA2y8kBkwV2B++jgzq1iuB8=
Received: by 10.90.72.2 with SMTP id u2mr1360544aga.4.1292533539684; Thu, 16
	Dec 2010 13:05:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.90.86.4 with HTTP; Thu, 16 Dec 2010 13:05:19 -0800 (PST)
In-Reply-To: <4D0A7856.6010508@am.sony.com>
References: <4D0A7856.6010508@am.sony.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 16 Dec 2010 13:05:19 -0800
Message-ID: <AANLkTi=Na8Pi15ysPtfRNv=EjHQBtPkEgpTWvbckrZCH@mail.gmail.com>
To: Tim Bird <tim.bird@am.sony.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build success (mostly), disk space a little huge
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
X-List-Received-Date: Thu, 16 Dec 2010 21:05:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 16, 2010 at 12:36 PM, Tim Bird <tim.bird@am.sony.com> wrote:
> For those interested in my build saga,
> I performed a mostly successful build of poky-minimal-image
> on my old Fedora 8 distro (oustide my Sony firewall).
>
> This was after I installed an poky 586 sdk, and set
> path to include /opt/poky/.../usr/bin (to pick up python 2.6.5)
>
> and after adding a fedora package to add chrpath to my
> system (not listed on the yocto distro help page).
>
> The build took 6 hours, and the emulator didn't quite finish.
> Here was the error:
> ERROR: Logfile of failure stored in:
> /a/home/tbird/work/yocto/poky-4.0-build/tmp/work/i686-linux/qemu-native-0=
.12.4-r22/temp/log.do_configure.12332
> Log data follows:
> | You need libGL.so and libGLU.so to exist in your library path and the
> development headers for SDL installed to build qemu-native.
> | =C2=A0 =C2=A0 =C2=A0 =C2=A0Ubuntu package names are: libgl1-mesa-dev, l=
ibglu1-mesa-dev and
> libsdl1.2-dev
> | ERROR: Task failed: ('function do_configure failed',
> '/a/home/tbird/work/yocto/poky-4.0-build/tmp/work/i686-linux/qemu-native-=
0.12.4-r22/temp/log.do_configure.12332')
> NOTE: package qemu-native-0.12.4-r22: task do_configure: Failed
>
> I checked, and indeed my system is missing SDL-devel. =C2=A0Due to
> some broken dependencies in my yum database, it turned out to be
> difficult to install this package, and I'm going to give up
> (again) on this machine.
>
> I noticed after the build that my yocto directory was consuming
> 30G of disk space. =C2=A0The big parts were in
> yocto/poky-4.0-build/tmp/work
> $ du -sh *
> 2.2M =C2=A0 =C2=A0all-poky-linux
> 18G =C2=A0 =C2=A0 i586-poky-linux
> 3.5G =C2=A0 =C2=A0i686-linux
> 4.6G =C2=A0 =C2=A0qemux86-poky-linux
>
> This seems a bit high? =C2=A0Is this normal?

These are build objects if you don't need them
add INHERIT +=3D "rm_work"
to your conf/local.conf which should delete the intermediate
objects after a recipe builds.

Thx
-Khem

