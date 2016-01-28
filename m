Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5320E008F1; Thu, 28 Jan 2016 07:58:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.72.237.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sasl.smtp.pobox.com (pb-smtp0.int.icgroup.com [208.72.237.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A4F5E00803
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 07:58:11 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 9AC363CDCF
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 10:58:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=content-type
	:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to; s=sasl; bh=
	hOHWTL1bKm9m80gkSW7X/yM63mQ=; b=i5nqT7FaG0orc3Bd0GrVXKL5keFAiZVB
	B8kkFqP2Fc18uuUN3UtJvCTHxrmEje9HBfdePo7tI2eFyE6HWwV5NWB9UxOoFLuZ
	r3n0+UmLGmBBM3YEJTCko42RO7Ta5MQPkLU1qgzOwyBxtVkYZQ3z1hLT+39bOMgY
	if+paYojNTM=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 91EEC3CDCE
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 10:58:10 -0500 (EST)
Received: from [10.41.136.109] (unknown [79.154.252.102])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id 0D8643CDCD
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 10:58:09 -0500 (EST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
From: Nathan Sowatskey <nathan@nathan.to>
In-Reply-To: <B7C221D2-D4CE-4FB0-8505-67FC63CCD2DA@nathan.to>
Date: Thu, 28 Jan 2016 16:58:00 +0100
Message-Id: <474E25F1-2158-4A0A-8A11-68F326C1ACC3@nathan.to>
References: <B7C221D2-D4CE-4FB0-8505-67FC63CCD2DA@nathan.to>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: EDBB5E8C-C5D7-11E5-AD81-80A36AB36C07-96844961!pb-smtp0.pobox.com
Subject: Re: Build appliance, qemux86-64, core-image-full-cmdline and ssh
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
X-List-Received-Date: Thu, 28 Jan 2016 15:58:17 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi

The trick was to go back to the beginning and start with a clean build =
appliance. Though I had selected the options below, I had tried other =
options first, and those seemed to be sticking, even after I changed the =
recipe.

Now on to how to get DHCP to work =E2=80=A6

Apologies

Nathan

> On 28 Jan 2016, at 15:31, Nathan Sowatskey <nathan@nathan.to> wrote:
>=20
> Hi
>=20
> I am using the Yocto Build Appliance to build a image using a profile =
of qemux86-64, and recipe of core-image-full-cmdline.
>=20
> I then sftp the image to my OSX environment and run it as shown below. =
That works fine, and I can log in as root.
>=20
> I want to use ssh to connect to the image, but ssh does not seem to =
either running or even installed, as I don=E2=80=99t see /etc/init.d/ssh =
scripts.
>=20
> I am clearly missing a trick here.=20
>=20
> Any ideas please?
>=20
> Many thanks
>=20
> Nathan
>=20
> How I run the image is shown below. This is copied from the build =
appliance, and I confess that I don=E2=80=99t understand all of the =
options yet.
>=20
> /usr/local/bin/qemu-system-x86_64 -kernel =
images/bzImage-qemux86-64.bin -net nic,model=3Dvirtio -drive =
file=3Dimages/core-image-base-qemux86-64.ext4,if=3Dvirtio,format=3Draw =
-show-cursor -usb -vga vmware -no-reboot -m 256 -serial mon:vc -serial =
null --append "vga=3D0 uvesafb.mode_option=3D640x480-32 root=3D/dev/vda =
rw mem=3D256M ip=3D10.41.136.130::10.41.136.1:255.255.255.0 =
oprofile.timer=3D1 rootfstype=3Dext4 "
>=20
>=20
> =E2=80=94
> Nathan John Sowatskey
> Consulting Engineer - Programmable Infrastructure, DevOps, IoT and SDN
> nathan@nathan.to
> www.linkedin.com/in/nathandevops
> XMPP: nathandotto@im.koderoot.net
> Google: nathanjohnsowatskey@gmail.com
> Skype: nathan_sowatskey
> Twitter: NathanDotTo
> GitHub: https://github.com/DevOps4Networks
> http://www.kipling.org.uk/poems_if.htm
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


