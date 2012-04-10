Return-Path: <josh@hipro.co.in>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4831E00596
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 00:00:22 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so7285832pbb.35
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 00:00:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:content-type:x-mailer:mime-version:x-gm-message-state;
	bh=21fYTzguPkTuEoz++T10AszeLMwwKrI1TKodwzPpOLM=;
	b=EB/cDhenC1F4VmpCpxDlVQrXu+tzJzq8dT7vTB/lDlb93uhxPpKUQOCe+CKPwnf+t+
	4I4NHdkNTqys7rBr8aNWzTVpzfJC2yHoxO4n4ukpmOEwqxq6xEotg+vs/pntaGDok9uB
	nqRhSsff74TStMoIOPwIj3an39xJLjaJzRTDYBCvWgmLJuyFWlaJNT93iy86y9rW8BwX
	G+HdgBoaNvLBGHRLXJ7CxKh/B/DXD2OiDU1597/Ghtwy2Bu3RsezndomKYuWdpesUeRK
	lneKZT/09bP95HhrN/MfZ3EMi3i6rPKnP2Vkxn2RZ7oR15MrK8OJk6t/ySW1r5a8SaHt
	ktlg==
Received: by 10.68.234.1 with SMTP id ua1mr8988944pbc.114.1334041222325;
	Tue, 10 Apr 2012 00:00:22 -0700 (PDT)
Received: from [192.168.10.207] ([59.99.251.45])
	by mx.google.com with ESMTPS id q1sm17117388pbp.62.2012.04.10.00.00.18
	(version=SSLv3 cipher=OTHER); Tue, 10 Apr 2012 00:00:21 -0700 (PDT)
Message-ID: <1334041207.4111.3.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Darren Hart <dvhart@linux.intel.com>
Date: Tue, 10 Apr 2012 12:30:07 +0530
In-Reply-To: <4F835F6B.3010608@linux.intel.com>
References: <4F834792.20402@gmail.com> <4F835F6B.3010608@linux.intel.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQmpfP8KMsEwc2EYpFtvu+A+0FgI2a1mAgo12q8S8Zi5kEHrYZi3eXaykwcf2/LwqU2tXJxH
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build error on core-image-sato-sdk
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
X-List-Received-Date: Tue, 10 Apr 2012 07:00:22 -0000
X-Groupsio-MsgNum: 5950
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-Uy1EbYjNK+TJdiC7S0zU"

--=-Uy1EbYjNK+TJdiC7S0zU
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Darren,

On Mon, 2012-04-09 at 15:15 -0700, Darren Hart wrote:
> > ERROR: Function 'build_boot_bin' failed (see=20
> > /build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sdk-1.=
0-r0/temp/log.do_bootimg.25810=20
> > for further information)
> > ERROR: Logfile of failure stored in:=20
> > /build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sdk-1.=
0-r0/temp/log.do_bootimg.25810
> > Log data follows:
> > | mkdosfs: seek failed
>=20
> Interesting.
>=20
> Can you provide the "OE Build Configuration" blob that prints at the
> start of the build - I'm mostly interested in your commit IDs for.=20

I am familiar with this error ;) I have mentioned this in the comments
section of bug #2138.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2138#c26

Regards
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-Uy1EbYjNK+TJdiC7S0zU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEABECAAYFAk+D2ncACgkQWw85XwuSFMIIMgCeIec9+vXzz6G8sJn1tHYb0GK1
KWsAn3/yX+h36iaTqWs7mpVAY3Z8ozsw
=TdXA
-----END PGP SIGNATURE-----

--=-Uy1EbYjNK+TJdiC7S0zU--
