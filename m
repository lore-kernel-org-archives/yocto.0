Return-Path: <koen@beagleboard.org>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09B39E00743
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 09:29:43 -0800 (PST)
Received: by wgbdt13 with SMTP id dt13so3930611wgb.11
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 09:29:42 -0800 (PST)
Received: by 10.216.139.25 with SMTP id b25mr1296586wej.41.1323970182458;
	Thu, 15 Dec 2011 09:29:42 -0800 (PST)
Received: from [172.20.1.19] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id hb10sm9219196wib.16.2011.12.15.09.29.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 15 Dec 2011 09:29:41 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@beagleboard.org>
In-Reply-To: <CABcZAN=3b5jgrdydYDrKCjm52PD53EFarNFMfFqQR5mwUMee5g@mail.gmail.com>
Date: Thu, 15 Dec 2011 18:29:39 +0100
Message-Id: <641FF858-DBD2-479A-BC4A-C2F90C1A8D72@beagleboard.org>
References: <4EE7B44D.7000301@linux.intel.com> <1323812170.25491.23.camel@ted>
	<CABcZAN=3b5jgrdydYDrKCjm52PD53EFarNFMfFqQR5mwUMee5g@mail.gmail.com>
To: Chris Larson <clarson@kergoth.com>
X-Mailer: Apple Mail (2.1251.1)
X-Mailman-Approved-At: Thu, 15 Dec 2011 10:05:05 -0800
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: The role of "distro" and "image"
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
X-List-Received-Date: Thu, 15 Dec 2011 17:29:44 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 13 dec. 2011, om 22:45 heeft Chris Larson het volgende geschreven:

> On Tue, Dec 13, 2011 at 2:36 PM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>> Not all images can be built with a given distro, our base config is
>> rather ride ranging though for obvious reasons. You could "enforce" =
this
>> by adding some anonymous python to the distro which does something =
like:
>>=20
>> if inherits("image") and PN !=3D core-image-minimal:
>>    raise SkipPackage("Image PN not compatible with DISTRO=3DXXX")
>=20
> This is a case where one is best 'controlling' this via policy, not
> mechanism, in my opinion. This sort of arbitrary technical limitation
> tends to be foolish and often bites someone somewhere down the line.
> I'm sure you just wanted to note how it could be done, not recommend
> that it should be done, but I thought it should be made clear. I
> wouldn't recommend that anyone do this unless there is an extremely
> good reason for it.

We had a similar problem at work, people were sprinkling =
COMPATIBLE_MACHINE left and right just to mark "I tested recipe X on =
machine Y". You can guess what happened when new machines needed to get =
added.

regards,

Koen=

