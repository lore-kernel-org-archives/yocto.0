Return-Path: <eren@hambedded.org>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C9DDE0147D
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2013 07:21:44 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id lj1so1534050pab.35
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2013 07:21:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:date:from:to:subject:message-id:mime-version
	:content-type:content-disposition:user-agent:x-gm-message-state;
	bh=B/vWWweEJY34yLxw7lurO7hPwU2VNJqJNtVQf1KHTAQ=;
	b=gdSj9dH0Zj3BSV//vtYm7WEfg+BAJdKl+JISYIQxNWGXiQvIRWYFnLNX9r9/57kZBF
	VqzUXWp084RLvbV/RSRsfU3s1YwFi3xY1NU8nYy6VZym1eCsSl6H/cnWkAveqeZ+BYoT
	/fpsjIAezo0L7cyTaFC1E3z0UzgRSSaIJ0MXtqCWTZoJILcQdPYaHz7Z5SarKWqqpzF2
	PzyEaJcKXvP+rRnkbMkNc24Pdj3C9kKTlqmm2l/tPFIqsFagWECy4YGg5/kTLxNHuD4i
	BQ+XB59yZAdAjA9lUjfPsyaDrwxtkVopbzGd7knfXZaneOzIfjbhXsdYFUNpdBQrYnzG
	XzHA==
X-Received: by 10.66.6.42 with SMTP id x10mr36600991pax.218.1364480503862;
	Thu, 28 Mar 2013 07:21:43 -0700 (PDT)
Received: from gmail.com (santralsozluk.com. [178.79.176.184])
	by mx.google.com with ESMTPS id gf1sm25729563pbc.24.2013.03.28.07.21.41
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 28 Mar 2013 07:21:43 -0700 (PDT)
Date: Thu, 28 Mar 2013 16:21:34 +0200
From: Eren =?iso-8859-1?Q?T=FCrkay?= <eren@hambedded.org>
To: Yocto Discussion List <yocto@yoctoproject.org>
Message-ID: <20130328142134.GA94584@gmail.com>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQmysnXIP/+D0zwWfUU7ipMJbooqwuRk7BHqilRhNzl0Mxdn3LtJQ0HMp+ZedJvCtoqYNreR
Subject: OE/Yocto Talk in Free Software and Linux Days in Turkey
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
X-List-Received-Date: Thu, 28 Mar 2013 14:21:44 -0000
X-Groupsio-MsgNum: 12817
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="GvXjxJ+pjyke8COw"
Content-Disposition: inline

--GvXjxJ+pjyke8COw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

Free software and Linux days [0] is held annually by Istanbul Bilgi
University [1] and Turkish Linux Users Association [2] for 12 years. It
is one of the most well known events, which will be on 5-6 April 2013
this year. My application has been accepted and I will be giving talk
about OE/Yocto.  My seminar title is: "Building an Embedded Linux
Distribution using OpenEmbedded and Yocto"

The time allocated for the seminar is 45-minutes. The audience generally
has a basic knowledge of linux and they are eager to learn new topics.

Since OE/Yocto is not well known in Turkey, I thought it would be better
to talk about the basics about OE/Yocto. I will give an overview
throughout the seminar, and show how to grab a layer and start building
the distribution.

My draft list of topics to include are:

- What is an embedded system?
- How embedded linux systems are produced? (traditional way of creating
  cross-toolchain, using buildroot, scratchbox, etc)
- What are the disadvantages of these methods? How can it be done
  differently?
- Introduction to OpenEmbedded and Yocto
- What problems does it solve. Advantages/Disadvantages.
- By whom and how is it developed?
- The structure of OpenEmbedded
- How to create an image using OpenEmbedded

I haven't prepared slides and I have one week until the event.  I would
really appreciate a previous seminar materials and slides. I would be
grateful if we can discuss further on items in detail (e.g: what to
explain). If you were to give a talk about OE, what would you explain?
:)

Thanks for your help!

[0] http://www.ozguryazilimgunleri.org.tr/2013/
[1] http://www.bilgi.edu.tr/en/
[2] http://www.lkd.org.tr/en/

Regards,
Eren

--=20
    . 73! DE TA1AET
      http://linkedin.com/in/erenturkay

--GvXjxJ+pjyke8COw
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (Darwin)

iQIcBAEBAgAGBQJRVFHuAAoJEOM7bMm6HhcTdg8P/2YIJ4HlVZDHtez70qzGaRpd
LpDznNSt6x4pIbkj3ilO44dx07oocxPj/lHqqzsAaBwsKqqmfo9swyTuuqe4yHlM
/Kdlv+QUc9+ORf2MlMWNyhoP52rdHUiPqeN5FiqXkuD3JDIqpKzhYEsbHrmkTPFc
YPZbTBYZ3tgnGCA1wvwG4Jik22KiQpRot1vMVs2/S2XPYXFw18JQI96oFwLh8KYQ
NbRpF7UaBGjPjD4OfZaRGiqoqQvJUZF4JPhIk7w+wL3vZX1JJcBS1oMSfTAH+cFF
JQGBvW28o3bWQBosg0LgOJ+fueGk705QvQvfyRkgg//5fqcF/5KidGTaopdvyzNQ
9/Gw6q/vNPdGpTo8SDSECV4JrJT1LISEAD+J/vyz9kGwMG2pU3a2qb3CRYOstxEq
vEM2hWUVRcgeGWBf/eYayrFy8MiiuqgYupU6G17Kb5d1HEdKI1sSH8MknxlCCeVa
pXgOltFt2akzXlvRt/h3018D0rUaJf92ZaKPtjoX2LsholzDwlS3cQMkMmXC/v11
FanQ2rs9YFqe5KUmKSUrpUHPhUr6QYiTuq/gb9i2xex7IXa9l8FRLqradkrMKE3e
hZYdCco01wZjGUU1S3GNZiAL7dpZNXShAxxM/Q29HONEv2LNVtA9psovKkprx9AB
HOOFUPasMtC2pCMx267F
=ocL6
-----END PGP SIGNATURE-----

--GvXjxJ+pjyke8COw--
