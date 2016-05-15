Return-Path: <andreas.enbacka@gasera.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEC89E00D10; Sun, 15 May 2016 11:23:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.142.5.109 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from emh03.mail.saunalahti.fi (emh03.mail.saunalahti.fi
	[62.142.5.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 684D7E00CFF
	for <yocto@yoctoproject.org>; Sun, 15 May 2016 11:23:01 -0700 (PDT)
Received: from [192.168.0.102] (unknown [193.64.150.69])
	by emh03.mail.saunalahti.fi (Postfix) with ESMTP id E2CCC1889A2;
	Sun, 15 May 2016 21:22:59 +0300 (EEST)
Mime-Version: 1.0 (1.0)
From: Andreas Enbacka <andreas.enbacka@gasera.fi>
X-Mailer: iPhone Mail (13E238)
In-Reply-To: <CAFq4t4g_HXb2h4Vhy+ctcP_XQCPOTfRiyeWBTJf4DEnOO5VXaw@mail.gmail.com>
Date: Sun, 15 May 2016 21:22:59 +0300
Message-Id: <4425ED8D-D8C8-4F3D-A0D4-063669C123FE@gasera.fi>
References: <CAFq4t4g_HXb2h4Vhy+ctcP_XQCPOTfRiyeWBTJf4DEnOO5VXaw@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: build yocto/linux under windows
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
X-List-Received-Date: Sun, 15 May 2016 18:23:05 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hello,

I have not actually tried this myself, but the latest build of Windows 10 pr=
eview contains the Windows subsystem for Linux, which allows you to run bash=
 session in a command prompt (based on Ubuntu). You can install packages via=
 apt-get etc. so in theory at least it would be possible to use Yocto under W=
indows.

Regards,
Andreas

> 15 maj 2016 kl. 20:42 skrev Peter Balazovic <balazovic.peter@gmail.com>:
>=20
> Dears,
>=20
> i'm looking for a way to build Yocto/Linux and develop for my embedded
> target i.mx processor platform under Windows?
> Is there a way to build Yocto/Linux under Windows and to have
> cross-compiler toolchain to be run under windows?
> Actually I would like to know how to run cross-compiler toolchain under wi=
ndows?
>=20
> Thank you.
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


