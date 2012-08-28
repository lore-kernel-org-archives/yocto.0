Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12993E00347
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2012 10:04:38 -0700 (PDT)
Received: by eabd1 with SMTP id d1so1842477eab.35
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2012 10:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=JzBMJbFMcti8m46dRtDvvyMGp40lFX4N5N0CZ2ZwbF8=;
	b=p0eSnig5hcGmRnGDK1mShV26uA4ZyRKRcSMts4s6ZnALs1UYfMmY7zaJ1+MZ4AyeDQ
	E5Ntr07mluOplYf+OW7ECjhOx6d0sqhUupAYZtwW8TcaKixe36M8mxKn4Ftza99DgfJT
	blcIY+oGNTJD1S+IO4bbpfiZtNYf81PH+GqjmZn3Alfz4ElLNiJGFLIpBmbrJ/HKixEG
	C/kep0LTjelA/13Pj7E08bA/DPG1WYaeecw/sX9oQZILdQRFAIlx+U3VS4e1KW9vjfBF
	nZh95jf4G5SBTc+o56zMEAKSfYUKQMLViGUkEa3buf8pVoqfWv3m1jRhUlFWiZlspgZ2
	VR9w==
Received: by 10.14.218.134 with SMTP id k6mr23080831eep.14.1346173473439; Tue,
	28 Aug 2012 10:04:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Tue, 28 Aug 2012 10:04:01 -0700 (PDT)
In-Reply-To: <4439C3C0562087488F139C696CD862A713217A37@SBS-MEDEC.medecbenelux.local>
References: <4439C3C0562087488F139C696CD862A713217A37@SBS-MEDEC.medecbenelux.local>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 28 Aug 2012 10:04:01 -0700
Message-ID: <CAMKF1sqiCKPxnkaMYAnxyqA0jG01oWxJNi9pC5zP0vjUPyng_A@mail.gmail.com>
To: Tim Verstraete <Tim.Verstraete@medecbenelux.be>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Ubuntu PPA usage in Yocto
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
X-List-Received-Date: Tue, 28 Aug 2012 17:04:39 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 28, 2012 at 2:50 AM, Tim Verstraete
<Tim.Verstraete@medecbenelux.be> wrote:
> Hi everybody,
>
>
>
> I keep on seeing some interesting software packages into the PPA for Ubun=
tu
> ... now I was wondering is there a way within Yocto to reuse those PPA
> package (not from the machine with apt-get) but with a recipe?
>
>
>
> Take for example the TI OMAP4 =E2=80=A6 on the TI Launchpad I see:
> https://launchpad.net/~tiomap-dev/+archive/release pvr-omap4-dkms and i
> would like to use this. How should I add such thing in yocto.
>
>

well you would start by using PACKAGE_CLASSES =3D "
package_deb" in your local.conf

that should generate you an image with dpkg as packaging backend

IMAGE_FEATURES +=3D "package-management"

that will add online package management component to your image

build your image and it should have knobs for hooking in feeds if you
know how its done for apt

bigger problems start here where the packages in that PPA may require
different versions of package dependencies than what you get from
yocto image and even
worse they might use a different ABI etc.


>
> Thank in advance,
>
>
>
> Kind regards,
>
>
>
> Tim
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

