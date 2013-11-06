Return-Path: <joe@deserted.net>
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32FC2E017D9
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 06:11:10 -0800 (PST)
Received: by mail-qa0-f45.google.com with SMTP id hu16so2025097qab.11
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2013 06:11:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=dzrKZrmzcTB7TUwq7OB+AZqyyp81bE44gXqzVy2NpEE=;
	b=hF0pQskqnlhvLSNr9DgB+uukdEm+iWIvxQ0/sZoVpiEn1X6mtpH0K7nRTeo99FGw9P
	w6MTUKtYxpcPfxD//ma1aW1ebVrIS7nGgGl09JlYPYTD4ZFSsicOZL5xhCJwqTnS9Szu
	NMCsgtqjQBK7AVOLepU6UT5uUHup0OfEMTh0ELUI6wqp41n4CFRkbiobfKMKz/mGOj7H
	OSdYzHaToVQRA65on4fVw18WSelg+vCDw7Fk8BUPJLq0CdMKVUl0Rv5AzfKEr6i86zJi
	zRTuxDflsWDtP8y/TAev0qRX1gDViiw9qpWBFukxImxdm3+M/jJetMtKwio1OM2zkdzO
	NPoA==
X-Gm-Message-State: ALoCoQmD+usezHGnDVguEXEdqJEMA8r3eWR1E/TeXgRKkY6CxyWR0MB05AzpU7cF7Xw14UD4UOBT
X-Received: by 10.224.147.139 with SMTP id l11mr5967538qav.47.1383747070230;
	Wed, 06 Nov 2013 06:11:10 -0800 (PST)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id p7sm68397041qay.4.2013.11.06.06.11.09
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 06 Nov 2013 06:11:09 -0800 (PST)
Date: Wed, 6 Nov 2013 09:11:07 -0500
From: Joe MacDonald <joe@deserted.net>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20131106141105.GA3791@deserted.net>
References: <1383095496-6487-1-git-send-email-flihp@twobit.us>
	<1383095496-6487-2-git-send-email-flihp@twobit.us>
	<20131030142207.GE3716@deserted.net> <527A4C2F.7090804@twobit.us>
MIME-Version: 1.0
In-Reply-To: <527A4C2F.7090804@twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 1/4] Move common POLICY_* variables to refpolicy_common.inc
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
X-List-Received-Date: Wed, 06 Nov 2013 14:11:11 -0000
X-Groupsio-MsgNum: 16994
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="MGYHOYXEY6WxJCY8"
Content-Disposition: inline

--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH 1/4] Move common POLICY_* variables to re=
fpolicy_common.inc] On 13.11.06 (Wed 09:03) Philip Tricca wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA512
>=20
> Hey Joe,
>=20
> On 10/30/2013 10:22 AM, Joe MacDonald wrote:
> > [[yocto] [meta-selinux][PATCH 1/4] Move common POLICY_* variables
> > to refpolicy_common.inc] On 13.10.30 (Wed 01:11) Philip Tricca
> > wrote:
> >=20
> >> Use default assignment to allow variables to be overriden by
> >> recipes that include refpolicy_common.inc
> >>=20
> >> Signed-off-by: Philip Tricca <flihp@twobit.us> ---=20
> >> recipes-security/refpolicy/refpolicy_common.inc |   12
> >> ++++++++++++ 1 file changed, 12 insertions(+)
> >>=20
> >> diff --git a/recipes-security/refpolicy/refpolicy_common.inc
> >> b/recipes-security/refpolicy/refpolicy_common.inc index
> >> 0ca0b9d..65d679b 100644 ---
> >> a/recipes-security/refpolicy/refpolicy_common.inc +++
> >> b/recipes-security/refpolicy/refpolicy_common.inc @@ -24,6 +24,18
> >> @@ inherit autotools pythonnative
> >>=20
> >> PARALLEL_MAKE =3D ""
> >>=20
> >> +POLICY_NAME ?=3D "${POLICY_TYPE}" +POLICY_DISTRO ?=3D "redhat"=20
> >> +POLICY_UBAC ?=3D "n" +POLICY_UNK_PERMS ?=3D "allow"=20
> >> +POLICY_DIRECT_INITRC ?=3D "n" +POLICY_MONOLITHIC ?=3D "n"=20
> >> +POLICY_CUSTOM_BUILDOPT ?=3D "" +POLICY_QUIET ?=3D "y"=20
> >> +POLICY_MLS_SENS =3D "16" +POLICY_MLS_CATS =3D "1024"=20
> >> +POLICY_MCS_CATS =3D "1024"
> >=20
> > Any reason not to make these last three soft assignments as well?=20
> > They're unlikely to change and putting them here makes sense, but I
> > can also imagine someone wanting to use this as a base for creating
> > a simplified policy.
>=20
> Would you like me to make these changes and resend?

Oops, I'm sorry, Philip, when you followed up saying it was a minor
oversight that they weren't ?=3D as well, I just assumed you would be
sending a new set, then got distracted with other stuff.  Looking in
context, though, obviously there's no need for a new version based on
such a minor change.  I'll do the merge right now, I've been working
with these in my tree for a week now, after all.  :-)

-J.

>=20
> - - Philip
>=20
> >> + EXTRA_OEMAKE +=3D "NAME=3D${POLICY_NAME} \ TYPE=3D${POLICY_TYPE} \=
=20
> >> DISTRO=3D${POLICY_DISTRO} \
>=20
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.12 (GNU/Linux)
> Comment: Using GnuPG with Icedove - http://www.enigmail.net/
>=20
> iQIcBAEBCgAGBQJSekwvAAoJEDL3fnXC4dO6e2oP/iLoGZo3LEltHEcGGslI4rwN
> zkI84+zlwMPUue5Phof6oJXYCbDVTfCM4ZfHeZsoVZXwfUr5fy6hepSIVO/7RdEM
> FJfAK99UqwfRYA92dEQpKn4h72RB0DcWF01k8Lxg1fWS189HFDrTJbT0IW/iOxs8
> nUTX9AFtOkYdW7xhjczaLK/0aTsrq/jkjd5poUh2Os8xbM7l8r69+YlG0GycuUFu
> kaMm3QiHhZxiiYSj3m+ZNEF/iBksuBA7oJqoggr8l2rQpoxXOKgoeUdnUcqnNm7D
> KmvSiKNwDEcjo6dakycqeF4xbSD3msQtkimkGn4wTqfBFPcFoqkgq1gJobUw4p/4
> iwDgjYQEZ/WRuoSIHqKYHkUDHElnVLwqDRsrQI0mvZITyCbkuYzgkYmCxAyIqZcG
> 1DpNXAgcT59EI8Qfhmm8ukaCQ9nixCQgehv7Yqsw9Ry0y2uHhqtnTHotZ3xVJVlq
> 5T7bPBi71wsy2VN3rmwVq3QgMClhV+TCvdQPtU7CCO28f0olAxkjKwwacsC4lQSZ
> FVnQP8mWoyf7x7WVBk1cKm+MTxJpFCY0ldAt09B80/+6CPT6BCm1j3l0X4dcjvXl
> cUIOU0zbOQfHyd8T9CRsAJVXUgHikZM70MnqE0QSbAKom6huacIl+ON82dqiISJf
> zkdzv9hqP9k+PXv7wH4G
> =3DJL/2
> -----END PGP SIGNATURE-----

--=20
-Joe MacDonald.
:wq

--MGYHOYXEY6WxJCY8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJ6TfAACgkQwFvcllog0XyLbwCfcBf1ZxNKV+etE5hEyTy+Pwvh
ywgAn1ss2EAvq3rWMPOt2CcT3zXTkVbo
=Vkr6
-----END PGP SIGNATURE-----

--MGYHOYXEY6WxJCY8--
