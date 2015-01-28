Return-Path: <timo.j.pulkkinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9416E0086E; Wed, 28 Jan 2015 00:02:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM, NML_ADSP_CUSTOM_MED,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (timo.j.pulkkinen[at]gmail.com)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
X-Greylist: delayed 606 seconds by postgrey-1.32 at yocto-www;
	Wed, 28 Jan 2015 00:02:39 PST
Received: from mail.cemron.com (mx.cemron.com [178.63.111.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D3E7E00757
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 00:02:38 -0800 (PST)
X-Footer: Y2Vtcm9uLmNvbQ==
Received: from [10.10.0.209] ([81.19.126.210])
	(authenticated user timo.pulkkinen@cemron.com)
	by mail.cemron.com (Kerio Connect 8.3.4 patch 1)
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256 bits))
	for yocto@yoctoproject.org; Wed, 28 Jan 2015 09:52:31 +0200
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Timo Pulkkinen <timo.j.pulkkinen@gmail.com>
In-Reply-To: <CAJTo0LaoE+8LS4DJgaULMdOze8gr3D+5Tn4jhPS-ctFyMKXbKA@mail.gmail.com>
Date: Wed, 28 Jan 2015 09:52:33 +0200
X-Mao-Original-Outgoing-Id: 444124353.106679-43479dee4c41bce2d478d560c11cfb7b
Message-Id: <97841E09-0D55-4BC8-A141-841A4A937FD8@gmail.com>
References: <23F077AC-43FF-472B-B9D0-A30785E7557A@gmail.com>
	<CAJTo0LbHT2Pksxog-aaHravsy9sqyK1pdqz+rhsDWUGkX_7FTQ@mail.gmail.com>
	<E690085A-252E-472B-8683-4E4590CDB2AA@gmail.com>
	<CAJTo0LaoE+8LS4DJgaULMdOze8gr3D+5Tn4jhPS-ctFyMKXbKA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.1993)
Subject: Re: Google Chrome recipe and systemd => how to satisfy runtime requirement for libudev.so.0?
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
X-List-Received-Date: Wed, 28 Jan 2015 08:02:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On 27.1.2015, at 21.49, Burton, Ross <ross.burton@intel.com> wrote:
>=20
> There really isn't - systemd has a newer udev that had an ABI change, =
so the version was increased.
>=20
> There's no way that your tmp/deploy/rpms can contain both systemd and =
udev packages (specifically, libudev1 and libudev0) unless you don't =
delete it when enabling the systemd DISTRO_FEATURE.  The systemd and =
udev packages conflict with each other and they both can't be built at =
the same time.
>=20
> A copy of the cooker log for the image would be useful after you've =
deleted tmp and -ccleansstate's google-chrome if you are certain that =
this is what has happened.
>=20
Ross,

yeah, you were right - I mistook the existing libudev and udev rpms not =
to be from systemd before I checked the contents (they DO contain only =
udevstuff "generated" by systemd). So the image build itself was ok all =
the time, but libudev.so.0 just doesn't exist when using systemd.

However, about my actual problem: I managed to package Google Chrome =
successfully by adding SKIP_FILEDEPS_${PN} =3D "1" and by creating a =
symlink /opt/google/chrome/libudev.so.0 -> ../../../lib/libudev.so.1 in =
do_install. A bit dirty, but this is what the official deb from Google =
seems to do to manage the different versions. Also skipping file deps =
inspection is not clearly an optimal solution, but works for me in this =
case.

Thanks for your help,=20

Timo=


