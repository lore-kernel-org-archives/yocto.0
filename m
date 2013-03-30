Return-Path: <eren@hambedded.org>
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F6FBE01469
	for <yocto@yoctoproject.org>; Sat, 30 Mar 2013 02:39:26 -0700 (PDT)
Received: by mail-pa0-f47.google.com with SMTP id bj3so656680pad.34
	for <yocto@yoctoproject.org>; Sat, 30 Mar 2013 02:39:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent:x-gm-message-state;
	bh=RTL8/iRgG9fcKVb0PvEmt6CY+ugRK1eLBf5nBgvgCB8=;
	b=IBov2WuSGRDJESPTO5mgmKOuQJmg5D4wHCEAFVOt6R0h4gPsmidylXTmKIpls/gWa3
	ESkAs261JQ/GDVcqSc3cjyks7gucXFSbv+YFS8b/ikFuPGtOeTyKT1e4G9MRAaVNZoVZ
	VUbhakkYo8ykZUE54ykyPh/41W6rT4qqFZViimJ2DeRtz/fU2sKkrRt825Nf6jTQnOug
	LLd0vZOvDnnP6JfJ2jWDriRM8HUh+vS09Eql3N4aMZFNB4+4YkaVkEdpnX6E+0dUvmDd
	C7FhIaSBdgcahHLqmHPDIA7aV620oMctNQhdvRXEBEVFYC6wXnSK7UW+v+S63c/ji3pS
	OuiA==
X-Received: by 10.66.121.133 with SMTP id lk5mr8556817pab.171.1364636366425;
	Sat, 30 Mar 2013 02:39:26 -0700 (PDT)
Received: from gmail.com (santralsozluk.com. [178.79.176.184])
	by mx.google.com with ESMTPS id i9sm6855833paa.7.2013.03.30.02.39.24
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Sat, 30 Mar 2013 02:39:25 -0700 (PDT)
Date: Sat, 30 Mar 2013 11:39:16 +0200
From: Eren =?iso-8859-1?Q?T=FCrkay?= <eren@hambedded.org>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20130330093916.GA82622@gmail.com>
References: <20130328142134.GA94584@gmail.com>
	<CAHUNapQk-9TfTg=M0QH-25bW624VyhQmdU3F3QfKScAfsY11bA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHUNapQk-9TfTg=M0QH-25bW624VyhQmdU3F3QfKScAfsY11bA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQmH83+7N4OtEHTh7G6S/yDXu5jouPEZyFT7CLoBsnf5iahEmwdYOqpueLYxE0IvHKq7H3sQ
Cc: Yocto Discussion List <yocto@yoctoproject.org>
Subject: Re: OE/Yocto Talk in Free Software and Linux Days in Turkey
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
X-List-Received-Date: Sat, 30 Mar 2013 09:39:29 -0000
X-Groupsio-MsgNum: 12834
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ibTvN161/egqYuK8"
Content-Disposition: inline

--ibTvN161/egqYuK8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 28, 2013 at 04:52:29PM -0400, Trevor Woerner wrote:
> If I had to create a talk I'd probably spend no more than 40% of the
> time showing them how neat Yocto is in that you can add various
> packages to an image and how the package list is independent of the
> target CPU. For example, you can have 2 different devices, but build
> an image for both that contains the same packages and all that's
> needed is a one-line, local, configuration change. I'd then spend the
> rest of the talk discussing the SDK that can be generated and deployed
> to the various team members. Then, if a package is added, a new SDK is
> generated, the team members install the new SDK, update their
> environment, and "voila!" they can now build an application that uses
> sqlite3 (for example).

Thanks for your suggestion! You are right about SDK and most people in
the development team would normally write applications for the board
using the SDK.

I will probably allocate 50% of the talk to SDK after explaining what
Yocto is, and how we can use it to build a root image. I'm thinking of
showing how the kernel/fs guy can work, and how other team members can
use the image easily.

> There are many previous Yocto/OE talks from which you can draw
> inspiration. free-electrons.com has archives of many such talks from
> various embedded linux conferences. These archives include videos as
> well as slides. Maybe something in that pile can help you get ready?
>=20
> E.g. http://free-electrons.com/blog/elc-2012-videos/

Thank you for the links. I also got yocto project presentations.

Regards,
Eren

--=20
    . 73! DE TA1AET
      http://linkedin.com/in/erenturkay

--ibTvN161/egqYuK8
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (Darwin)

iQIcBAEBAgAGBQJRVrLEAAoJEOM7bMm6HhcTHf4QAJA43jaB9aD4tw9L8R9ipn0h
luYf1tsVR9gzJNhfKwIcWMdGtPkZFW96AaciRCpKYoKLPMSNl0dL2mg03dGguX8z
jgl5Zx8o7I7giWz7AZuof/EpsV6EddFbnDUrzrSDB1YmfwSoVU62aGKF8WCPup+s
Ydix3A1FrExHeXmQM+nZulvG89gE1CViKa6caTI5rp+itQk/uTfUuUdPwdmTglWs
d1vYm4Xhbv3cMjwZWj1CSVRwGf9GmR2XwzIGfeUXE0XYFgkfbnD9g+zAkS5eZuC/
LEGWKzLOsnxXY1Gl1QaU9cX2c0DeMvY09srcsLebNzlTOLMGP/5pciIYHcgEwtfM
0mHpQQ/U93yzVad8fTeSSq1HQ1d2RIk7wgPxryeC2hxsm6Rj3FVN+g0clFuRUKmc
YKVdcs/YvdyKjFowb6w01A/U9XSuLrl1bURTNSDYOpLCMPI2HSsNYWw9a6Iy7LEC
faWAJbzdUkIduuWWlaDj+wHvt3/HoqM9XGNRxNuGf0OaervYQF91q0rGwyWSzmZC
Ad0+moXDcB7CmAoIbQOg2kmLRwRzJyEvWU9WUxqNxxHO6iApQABr9sg4KhDnYqNk
eC+22gflGsIisTJlLT7PkTwewrlEHX0rsNReqvbkatXp4Y+0WYbbjBrpTx7ITcBv
S0Byw0xHsqYkEedMjgQZ
=CuV1
-----END PGP SIGNATURE-----

--ibTvN161/egqYuK8--
