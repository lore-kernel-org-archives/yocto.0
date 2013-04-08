Return-Path: <aenbacka@gmail.com>
Received: from mail-da0-f43.google.com (mail-da0-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CADFE014AD
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 03:50:27 -0700 (PDT)
Received: by mail-da0-f43.google.com with SMTP id u36so2589248dak.16
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2013 03:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:references:in-reply-to:subject:date
	:message-id:mime-version:content-type:content-transfer-encoding
	:x-mailer:thread-index:content-language;
	bh=Q12/yCSECUY2ioiErqGu1RJw0r0PIfMSeUlfRWgwkJs=;
	b=dztO/5e1nXmpJgXwWujO4ajpLedTdhoAKidcQju2gcxPuGU0L9YLPRf2zyfSSiGWod
	2Wrzlu+uvdF78mr2tn3MDSjNPnhVGkT/L+3j460Pw3mp8W0Y+i8E2p+wnpprXZh7gZPW
	APkLXvYljVH/x6fTnko1UcEdss2Oqv1fEYBymlkI3iq8JVgL98xyzyv++/SgpBxc5rmx
	LEspX0s5PmUBRWAIPV0idGPSk5+CY638SKokoc8X6tBsMwIcH7UB3BSwF2U3NxLVNyVi
	+L9kPn/S+6tnIdmZjUYb056Xx+aNxSlcQSX9nu5Yllx7h7j2aecWbQE6OlBL614O/sGQ
	FcfQ==
X-Received: by 10.66.120.49 with SMTP id kz17mr36090022pab.133.1365418226619; 
	Mon, 08 Apr 2013 03:50:26 -0700 (PDT)
Received: from LAPTOP (mail.embedo.fi. [194.100.97.18])
	by mx.google.com with ESMTPS id fb7sm23154953pab.16.2013.04.08.03.50.24
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Mon, 08 Apr 2013 03:50:25 -0700 (PDT)
From: "Andreas Enbacka" <aenbacka@gmail.com>
To: "'Burton, Ross'" <ross.burton@intel.com>
References: <003701ce3434$f487d750$dd9785f0$@gmail.com>
	<CAJTo0LZn4dD97s66fkGOnYtmj86ZLEcdfNk2wGk989WTYi6ZEw@mail.gmail.com>
	<009101ce343e$8db88560$a9299020$@gmail.com>
	<CAJTo0LaQ76oZK3PDPnjhgVoQFjMnMkr1tGiVtXJ-U=qfhNg5Pg@mail.gmail.com>
In-Reply-To: <CAJTo0LaQ76oZK3PDPnjhgVoQFjMnMkr1tGiVtXJ-U=qfhNg5Pg@mail.gmail.com>
Date: Mon, 8 Apr 2013 13:50:13 +0300
Message-ID: <00e201ce3446$dbbb3fc0$9331bf40$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQH944JhdSdZ2SxfUz8SRR72F7dePwGwEU34AgDMcSEB8hSHPJg/ro4w
Cc: yocto@yoctoproject.org
Subject: Re: Problem with mouse and keyboard detection in yocto (core-image-sato on emenlow)
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
X-List-Received-Date: Mon, 08 Apr 2013 10:50:27 -0000
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: fi

Thanks again for your assistance. I checked /usr/lib/xorg/modules/input, =
and evdev_drv.so is indeed present.=20

I will try rebuild the specified modules, and see in case it solves the =
problem (I have indeed built some atom-pc images previously).=20

Thanks,
Andreas

-----Original Message-----
From: Burton, Ross [mailto:ross.burton@intel.com]=20
Sent: 8. huhtikuuta 2013 13:34
To: Andreas Enbacka
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Problem with mouse and keyboard detection in yocto =
(core-image-sato on emenlow)

On 8 April 2013 10:50, Andreas Enbacka <aenbacka@gmail.com> wrote:
> Thanks for your reply, very much appreciated. I am currently using =
Poky master. I have attached the complete Xorg.0.log; it does not =
contain any mentions of evdev, only mouse, which would imply that evdev =
does not get loaded of some reason.

That's interesting, it should be loading the evdev module.  Can you =
confirm that it's present in /usr/lib/xorg/modules/input?

Your log shows that it didn't load the kbd and mouse modules because the =
versions don't match:

[3901748.190] (II) LoadModule: "mouse"
[3901748.191] (II) Loading /usr/lib/xorg/modules/input/mouse_drv.so
[3901748.208] (II) Module kbd: vendor=3D"X.Org Foundation"
[3901748.208]   compiled for 1.13.1, module version =3D 1.6.2
[3901748.203] (EE) module ABI major version (18) doesn't match the =
server's version (11) [3901748.204] (EE) Failed to load module "mouse" =
(module requirement mismatch, 0)

This shouldn't happen in master because the server and the modules have =
runtime-dependences injected to stop this happening:

$ dpkg -I xf86-input-mouse_1.8.1-r21.0.0_armv5te.ipk
...
 Depends: xorg-abi-input-19, libc6 (>=3D 2.17)

$ dpkg -I xserver-xorg_1.14.0-r8.0.0_armv5te.ipk
...
 Provides: xserver-xorg-extension-extmod, xserver-xorg-extension-dri, =
xorg-abi-video-14, xorg-abi-input-19, xserver-xorg-extension-dbe, =
xserver-xorg-extension-record, xserver-xorg-extension-dri2

Something went wrong and your drivers were built with a newer version of =
the server (1.13.1) than you're actually running (1.9.3). I suspect =
what's happened is that you've done a non-emenlow build (say, atom-pc) =
in the same build directory and your emenlow build is re-using the =
drivers.  Rebuilding the drivers should help, so "bitbake -ccleansstate =
xorg-input-keyboard xorg-input-mouse" and then re-build your image.

Ross


