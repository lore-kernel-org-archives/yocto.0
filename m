Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2128E00726; Wed, 15 Aug 2018 13:14:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28BA0E0049F
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 13:14:01 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id y9-v6so277277vky.3
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 13:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=xS/H+WS9HopAFQ+iDuElX+dz3k2VRI8hnhQQosAGkpQ=;
	b=Tyxkq565Y3O/Ule4XEUO4ogcJ4mbXkFmYIKk8QYndpqWlTwDkuodAylCiFhua33Wlh
	cLI8by9FTcAmGHTX6cDtw0V1miwylDCciw/HR58JHxFkdwgZRSYpF94tx/cdbObdo4lY
	d532EF67CzK5yZR2JN7xF+g3aSK6IHv6ZKcFfDvVqwgzdFglhbfw+k0uc/TM/yLONi8S
	Ao3rrQchgHTq+3agsgE/TB8ctnEHpd91D2QmBmO4H3J9hX+ev7/54lInTOUb3sfX8p56
	SaKvMUH96nw3QEkHnrqa9RnZ7P8ED0EOyeoa6ovhZ/EfX6u6xKP0V22FpFmD6IpqRrS6
	b+sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=xS/H+WS9HopAFQ+iDuElX+dz3k2VRI8hnhQQosAGkpQ=;
	b=iVhOFEBlQ9TSSujstGnav/2eO5GxF3gFbbI3+FnLZmlgR5cK8+2ZzgcTQSTKLTUO3E
	7j6NMA0cVkjpdI95c/YxdhItkQ0jj+9pGtUUX14gRXClEZek4G2kuN41efzLYk1prUz/
	wVH8Okxbf+tImaIjCBZMaICug6GiDqiSKtqGyLeCJeIKEga0stAk8kPtSjpCpKE+DizA
	9OhKjRfuiRLglES5tkAGZ6w7Q/ipXZVUbSTpWEjbU5RxLCEERlgelP/Gn5WG1L/9RW+D
	cyxvdsfr+GX+rtKePG0noDeO+0IoYplh0IG91GJvwOFhqic3pM7yQpN/jJmOjYdcQEV3
	A43A==
X-Gm-Message-State: AOUpUlGQDomo7I3E2KCrX2uG/R+4EzFISjCDdTG4F9uPivORmVZo9OoB
	pCogH0lFREVoSBlfmkVdGTHSqW+5vRx7QIxjUnY=
X-Google-Smtp-Source: AA+uWPxxB5vuNea6vd/l3BxqtR9bjfsH5fvwgV/IPdB0zGSssWkqvhGeiKIuuAw68RANM+mTd3MIN+PRsfFz8CQr/8Q=
X-Received: by 2002:a1f:10ce:: with SMTP id
	75-v6mr17318872vkq.83.1534364041309; 
	Wed, 15 Aug 2018 13:14:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Wed, 15 Aug 2018 13:14:00 -0700 (PDT)
In-Reply-To: <1534360113.4797.3.camel@gmail.com>
References: <9987A072-988B-440A-9A7C-2132D963E7EA@korgrd.com>
	<1534360113.4797.3.camel@gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 15 Aug 2018 13:14:00 -0700
Message-ID: <CAJ86T=UiOdFwc4rYuF+xOP8oRPbDXRKK0NvU+h_QYWsr6dszrg@mail.gmail.com>
To: Max Krummenacher <max.oss.09@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Steve Pavao <stevep@korgrd.com>
Subject: Re: [meta-raspberrypi] core-image-minimal for raspberrypi3-64 manifest/sdimg contains no kernel modules
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
X-List-Received-Date: Wed, 15 Aug 2018 20:14:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 15, 2018 at 12:08 PM, Max Krummenacher <max.oss.09@gmail.com> w=
rote:
> Hi
>
> Am Mittwoch, den 15.08.2018, 02:47 -0400 schrieb Steve Pavao:
>> There seems to be a problem with the core-image-minimal bitbake for rasp=
berrypi3-64 target at head
>> of sumo in all repos.  I wonder if it=E2=80=99s also a problem for the r=
aspberrypi3 target.
>>
>> No kernel modules appear in the .manifest, and no kernel modules are put=
 into the sdimg.  It=E2=80=99s
>> hard to believe it=E2=80=99s true, but that=E2=80=99s what I'm seeing.
>>
>> The problem does NOT occur for the rpi-hwup-image bitbake, which is actu=
ally deprecated in poky
>> 2.5/sumo.
>>
>> Before you retire the rpi-hwup-image bitbake target, will you please mak=
e sure that the kernel
>> modules from the core-image-minimal build make it into the .manifest and=
 therefore into the sdimg?
>>
>> Please let me know where to log this issue, so I can send you the .manif=
est diffs, some ls command
>> output showing the large size difference between the core-image-minimal =
and rpi-hwup-image sdimg
>> files for identical builds, and perhaps some file listings to show that =
one of the builds contains
>> kernel modules (rpi-hwup-image) and the other does not (core-image-minim=
al).
>>
>> Steve Pavao
>> Korg R&D
>>
>
> Note that the 'kernel-modules' package is one of the packages built by a =
kernel recipe.
> It is a meta package which RDEPENDS on all kernel module packages built b=
y your kernel
> configuration. So adding that package to your image should do the trick.

To understand what's happening it's worth also reading the SUMMARY for
core-image-minimal:

  SUMMARY =3D "A small image just capable of allowing a device to boot"

and comparing to core-image-base:

  SUMMARY =3D "A console-only image that fully supports the target
device hardware"

ie the fact that core-image-minimal doesn't contain any kernel modules
is a feature, not a bug.

