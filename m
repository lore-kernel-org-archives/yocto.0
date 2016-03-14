Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83E18E00C44; Mon, 14 Mar 2016 10:07:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB486E00C23
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 10:07:18 -0700 (PDT)
Received: by mail-pa0-f53.google.com with SMTP id fe3so144853297pab.1
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 10:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=vPaXGU76bR0wT2sKr0wt64tf7sCO/AXvEgBjYRg/tDw=;
	b=NqHyFO6Wq12TrYLWDbt9YkUTrxpLHoIu3+r/yGB2SFnKBWbiZ1NagYGMGNMbQlZst5
	3gJE3Hu/ZqF7Qu9JUHqE6zIQG9kHFEerERj4hUJZXjXzO3E/qL/kqmWA7or1eyAmT4yK
	/Z8TpMFEgk87v+jH9wGCF2xl1ovfEFkl/aAEEH7MgVdUPEy0cP4Nh//pmo8z9S3RV4ON
	wFD7G5HnAJP5bqLsv9yijDjR/oeVfsELs1TnkPW/8l696LOJGiPXiEd1OixjL06FbSyY
	+rCvUhMhrkCjrF1yp2S8BCdRWWGYHVZV01zaKduYy7Tt3tsh21OM3AO2GcQvhCLK4SDO
	AVfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=vPaXGU76bR0wT2sKr0wt64tf7sCO/AXvEgBjYRg/tDw=;
	b=RCeec/xlejcrcHDbZ/l8FeiVnp1aeUD2jj78AuPeUsXqFOaUOTI9LWT5TXfJrb/ABy
	iorpm9SHdIQ8Hp9YTArcPPTLoZ+PzGSl0PHPK3xcJkwGvs0Cv1bH2qfkj0uRg3E8kHnt
	p1zcc7b/yCc3Fn7QXAAOAVR+pztHdhHFnD/kbFO7nFGNjeWXz14umYuVmcvzv8ooMYTr
	+DzXls4QcHJaqVCF+YLMbEy4WtKMVT43wCybOf6OqGg7rmoMbtZiQWs7szO7+LI7L9QK
	lknb0q2BrnEhJpob+1qKkGTNxBORhrTPLVKyLiGoXL4m6KK2jQsRqfDF5CVpofgQ7Jrg
	RcxQ==
X-Gm-Message-State: AD7BkJI/OpGn3s90/dyOfT6YmFM4Ai4HFPMv0n5515CaRUbeoIxmwFVXoxMvYF5j3vGhvw==
X-Received: by 10.66.253.169 with SMTP id ab9mr40395523pad.62.1457975237961;
	Mon, 14 Mar 2016 10:07:17 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:d8e:d0c1:6283:c857?
	([2601:646:8800:5a9a:d8e:d0c1:6283:c857])
	by smtp.gmail.com with ESMTPSA id
	y68sm33543647pfi.6.2016.03.14.10.07.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 14 Mar 2016 10:07:16 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <56E6EE59.80907@mlbassoc.com>
Date: Mon, 14 Mar 2016 10:07:12 -0700
Message-Id: <B08B39D7-7278-4A76-9F4D-4A0CD9659B99@gmail.com>
References: <56E64947.5020606@mlbassoc.com>
	<cdc27932-91ca-378d-1582-286b72cc3e7f@noir.com>
	<56E6EE59.80907@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: Problems building live image
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
X-List-Received-Date: Mon, 14 Mar 2016 17:07:19 -0000
X-Groupsio-MsgNum: 29013
Content-Type: multipart/signed;
	boundary="Apple-Mail=_9B0B0596-313E-4218-A067-912F44B738D0";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_9B0B0596-313E-4218-A067-912F44B738D0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Mar 14, 2016, at 10:01 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>=20
> On 03/14/2016 05:34 PM, K Richard Pixley wrote:
>> On 3/13/16 22:16 , Gary Thomas wrote:
>>> I'd like to to some testing that qemu just doesn't seem up to
>>> so I attempted to build a live ISO per the documentation. I
>>> added these lines to local.conf:
>>>  IMAGE_FSTYPES_genericx86 +=3D "live"
>>>  NOISO_genericx86 =3D "0"
>>>=20
>>> When I try to build core-image-base I get this error:
>>>  ERROR: INITRD_IMAGE_LIVE core-image-minimal-initramfs cannot use =
image live, hddimg or iso.
>>>  ERROR: Check IMAGE_FSTYPES and INITRAMFS_FSTYPES settings.
>>>  ERROR: Failed to parse recipe: =
/local/poky-cutting-edge/meta/recipes-core/images/core-image-minimal-initr=
amfs.bb
>>>=20
>>> I'm using a recent Poky checkout =
(d53413d3a8444c38a83ea37867c8af7754d8e702)
>>>=20
>>> Am I just doing something wrong here? I was following this section =
of the mega-manual:
>>>=20
>>>  26.56. image-live.bbclass=C2=B6
>>>=20
>>>  The image-live class supports building "live" images.
>>>=20
>>>  Normally, you do not use this class directly. Instead, you add =
"live" to IMAGE_FSTYPES.
>>>  For example, if you were building an ISO image, you would add =
"live" to IMAGE_FSTYPES,
>>>  set the NOISO variable to "0" and the build system would use the =
image-live class to
>>>  build the ISO image.
>>>=20
>>> I don't have any available hardware for this testing, so I thought
>>> I'd use VirtualBox.  Is this a reasonable approach?  I want to use
>>> a live ISO so I get a writable file system.  I tried just using the
>>> .hddimage but that doesn't boot with VirtualBox :-(
>>>=20
>>> To be clear, along with the additions above in local.conf, I tried:
>>>  $ MACHINE=3Dgenericx86 bitbake core-image-base
>>>=20
>>> Thanks for any ideas
>> You can boot the .hddimg on VirtualBox by first converting it to vdi, =
(or vmdk), using:
>>=20
>> qemu-img convert -O vdi foo.hddimg foo.vdi
>>=20
>> The vmdk doesn't seem to work for me on VMware, oddly.  And adding =
vmdk to IMAGE_FSTYPES doesn't seem to work either as
>> it is apparently built from hdddirect, (no clue why that's distinct =
from hddimg but it doesn't boot for me).
>=20
> Thanks.  I got the .vmdk to boot but I had to manually select
> the root device during boot to root=3D/dev/hda2.  After that, it
> worked as expected.
>=20


you can also set
SYSLINUX_ROOT =3D "root=3D/dev/hda2=E2=80=9D
in some place in your configuration metadata



> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_9B0B0596-313E-4218-A067-912F44B738D0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlbm78MACgkQuwUzVZGdMxSQJACfQ3QcXwQyz4/KzID3xuAts9Qu
JpQAoI8EdwKr4axRfT0b92b0upg1TI1x
=guPp
-----END PGP SIGNATURE-----

--Apple-Mail=_9B0B0596-313E-4218-A067-912F44B738D0--
