Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D1A0E00949; Wed, 22 Apr 2015 02:18:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71EDEE003A8
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2015 02:18:13 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 22 Apr 2015 02:18:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,623,1422950400"; d="scan'208";a="559930435"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.14.70])
	by orsmga003.jf.intel.com with ESMTP; 22 Apr 2015 02:18:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Marcin =?utf-8?B?S3J6ZW1pxYRza2k=?= <mar.krzeminski@gmail.com>
Date: Wed, 22 Apr 2015 10:18:11 +0100
Message-ID: <1429696603.5MBSuQBYAq@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <CABc_YGB+jjqmL7wJpXL844DWDQHALsmJhKvo05=ciDp2zPuNJA@mail.gmail.com>
References: <CABc_YGBZjNwcPoSwBnPKqoVqoq3iZuf-WVeDLnHL2bEVkjjpRQ@mail.gmail.com>
	<1877075.AIEOl3otnI@peggleto-mobl.ger.corp.intel.com>
	<CABc_YGB+jjqmL7wJpXL844DWDQHALsmJhKvo05=ciDp2zPuNJA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Initramfs image name (INITRAMFS_IMAGE)
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
X-List-Received-Date: Wed, 22 Apr 2015 09:18:19 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Wednesday 22 April 2015 11:07:43 Marcin Krzemi=C5=84ski wrote:
> 2015-04-21 15:20 GMT+02:00 Paul Eggleton <paul.eggleton@linux.intel.c=
om>:
> > On Tuesday 21 April 2015 08:54:49 Marcin Krzemi=C5=84ski wrote:
> > > I want to set my initramfs image name in my image recipe.
> > > In local.conf I've set:
> > >=20
> > > INITRAMFS_IMAGE_BUNDLE=3D"1"
> > >=20
> > > In my image recipe I am setting image name:
> > >=20
> > > INITRAMFS_IMAGE =3D "myimage-image-minimal"
> > >=20
> > > Unfortunately when kernel recipe is parsed INITRAMFS_IMAGE variab=
le i
> >=20
> > empty.
> >=20
> > > running bitbake -e tells that this variable is properly set.
> > > I think because image recipe is parsed at the very end kernel rec=
ipe can
> > > not see it.
> > > I tried to use export INITRAMFS_IMAGE (like in example) but this =
also
> > > not
> > > working.
> > > Is the any way that I can do this?
> >=20
> > In general, one recipe cannot set a variable such that it is seen f=
rom
> > another recipe, our system doesn't work that way. You need to set i=
t at
> > the configuration level - local.conf, or more appropriately a custo=
m distro
> > config file.
>
> In such below sentence from local.conf.sample is wrong or I missing
> something here?
>=20
> *# NOTE: You can set INITRAMFS_IMAGE in an image recipe, but*
> *#       INITRAMFS_IMAGE_BUNDLE can only be set in a conf file.*

It would seem that this is no longer correct - perhaps it was true in a=
n older=20
version. kernel.bbclass (which is inherited by all kernel recipes) read=
s both=20
of these variables, so they do both need to be set at the configuration=
 level.=20
We should update the comment.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

