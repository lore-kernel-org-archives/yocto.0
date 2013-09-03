Return-Path: <eren@hambedded.org>
Received: from mail-ee0-f51.google.com (mail-ee0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8ECDE01445
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 02:47:56 -0700 (PDT)
Received: by mail-ee0-f51.google.com with SMTP id c1so2818476eek.24
	for <yocto@yoctoproject.org>; Tue, 03 Sep 2013 02:47:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=iZbU46PL3LO5WeeXiFJz6hpLTPRl259isz5dx+tO5Qs=;
	b=KOH4pJ8btBijFSj6rg8SJRPWb4jZyRVI1yvwGofw+xu1vGG7Qxv7MHt1i3MXYX7RPR
	g2B1c1KefhqZ6ethrtlj5O55h76xmCjam8QK2x9uYg/H1G267dRDCA3zKNYZjv6C02Ca
	3xEhY6lxXQo2E12jEVxi5KunzbcUkudzyHxHpF88hgxpJqpeswsY5yW29ikXldkwbSZP
	6AkMW6jCVARFBdrECb3bYH8IZxVeRW+Kjqkk2xypwpec74vgIWG4/U/wgqrwvlKz/RGc
	Zx/Ed8ek6sPblJxfGpXgnManowBbSRH3ufe5Tjgq839yNJBj4XQo/rHdLzvYM15yzECk
	IoUQ==
X-Gm-Message-State: ALoCoQkejEbjmXgSMjNYgndFaU5E8VuxwU0nkG5BmTEbawWDkeyesPo05bDkOsxa2LqBtV7DF8Az
X-Received: by 10.14.177.199 with SMTP id d47mr44675315eem.14.1378201675835;
	Tue, 03 Sep 2013 02:47:55 -0700 (PDT)
Received: from localhost ([132.231.11.113]) by mx.google.com with ESMTPSA id
	r48sm29964095eev.14.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 03 Sep 2013 02:47:55 -0700 (PDT)
Date: Tue, 3 Sep 2013 11:47:58 +0200
From: Eren =?iso-8859-1?Q?T=FCrkay?= <eren@hambedded.org>
To: Sean Liming <sean.liming@annabooks.com>
Message-ID: <20130903094758.GA70238@airo.local>
References: <CAM1ZcoVgAgPYTrGzHVYcYt+qwhzqTHne9gjNhhWS75oD0HhFFg@mail.gmail.com>
	<000601cea807$0893e270$19bba750$@annabooks.com>
	<CAM1ZcoUuqJai9s3588RcG5+H-TAfWGo=Ua7zhzQQeEFLTt6FCg@mail.gmail.com>
	<001801cea865$56914f90$03b3eeb0$@annabooks.com>
MIME-Version: 1.0
In-Reply-To: <001801cea865$56914f90$03b3eeb0$@annabooks.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Intel(R) Core(TM) i7-3612QM CPU @ 2.10GHz
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
X-List-Received-Date: Tue, 03 Sep 2013 09:48:00 -0000
X-Groupsio-MsgNum: 15810
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="AhhlLboLdkugWU4S"
Content-Disposition: inline

--AhhlLboLdkugWU4S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 02, 2013 at 10:20:41PM -0700, Sean Liming wrote:
> It has been awhile since I looked this one up. I believe the installer
> script is called init-install.sh under the /meta/recipes-core. If you don=
't
> use a serial debug port with a terminal to catch the boot menu, you will
> have to modify the syslinux.cfg file (or grub.cfg for EFI boot) to run the
> install option rather than boot option.

I believe that you do not have to edit syslinux.cfg for "boot" and
"install" option. "live" image type adds "boot" and "install" labels to
syslinux.cfg while creating the image. When you add "live" to
IMAGE_FSTYPES, "image-live.bbclass" is run and it sets related labels.

Regards,
Eren

--=20
    . 73! DE TA1AET
      http://linkedin.com/in/erenturkay

--AhhlLboLdkugWU4S
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (Darwin)

iQIcBAEBAgAGBQJSJbBOAAoJEOM7bMm6HhcT/p8QAIqb8RxscIqHSFhXBn2ihlLF
zl08ryXiO3TStqpb++0mDF5CUiSUZbFjb9Ve3ftwVcbzPCXsK281ZhRVKB9Sj/7e
t9fxoWemtgrWWSse5xWnnrHs6N5+lk1GImhVbnKu56WHPechtt8sj8P6EoUlyUCG
hSme+AKZxezOPVHz2lqx0FoTwJiuCXwu3DIK4/QOCcrifBuAmud8ejcdNvZ4Fmhf
WUBd24GhRs/ApjVss/7eGI4Gt4OWafIH+NDJnJkj3XjfQwArucavn8El3HxVYH10
F8edZuQbiTR9qift1xvBQNy4MYX6uIl0j16IiV2IQoIOvLYQXjzn71QR3uVs/L0v
aCwRAnuaDhY4jZ7hp8sENh1b9pGmLveUuOYkq1d53Qma6EZ4iGkLDvNnD/QM8ddf
r6CfINpT7c0Y9uoaUzm2u1EfGUtLDQbSQ0WXfHkluFjhUBt53EgcFda1by+0W2E5
iWr3i5J+IoKvrPgq6WvxgCs3VEKqKXDf+caNPCi68sGrzTsKM9TnMluQBilxf9t1
60gIA2FY3Y+HOziqxPq0P9J3NiWhArr+EWO9rHiLw1vhOLS+kXAguQdKW1bkknbK
hXR2kfP2bV5GYo8ma4dBATHHm5I5wKB61HR2T1IC3N/SzVUFF2akMO5jgg9HehIg
xCGi9x+iOIlHaUCWyz5i
=rq/l
-----END PGP SIGNATURE-----

--AhhlLboLdkugWU4S--
