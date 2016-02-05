Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D440EE00D2C; Fri,  5 Feb 2016 09:48:27 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83F4EE00D25
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 09:48:23 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 95AC54061B;
	Fri,  5 Feb 2016 12:48:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=content-type
	:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to; s=sasl; bh=
	FDdZrT+7jC3Vb7TJimX/j6iawcg=; b=xE3b28AwSs1e0+9o1Uo42H5T0NpYd+2+
	UGBxLnO6DeEsfvegVk7J8o5bDe2VBK+bg4Wg/Q4w6v+pQJkoe/rYcH2VlnOVwBJq
	TUPvIxxhChAK4DtsoJyXijjaAmpNBNT6Fq06fBW/lacuhBoUhBye4ikyzhzKBp33
	+msyg5iOStc=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 8163A4061A;
	Fri,  5 Feb 2016 12:48:18 -0500 (EST)
Received: from [10.41.136.109] (unknown [83.61.76.185])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id 90E5840614;
	Fri,  5 Feb 2016 12:48:17 -0500 (EST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
From: Nathan Sowatskey <nathan@nathan.to>
In-Reply-To: <CAJTo0LbbM_TXswmQxbqP5yr4Pf9geh7Ru6=iD3nHNHscC8q-nQ@mail.gmail.com>
Date: Fri, 5 Feb 2016 18:47:20 +0100
Message-Id: <30E23744-25E6-43C3-A831-A8195E8787C9@nathan.to>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
	<CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
	<2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
	<CAJTo0LbbM_TXswmQxbqP5yr4Pf9geh7Ru6=iD3nHNHscC8q-nQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: A394F7A0-CC30-11E5-BD78-79226BB36C07-96844961!pb-smtp0.pobox.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libgcc_s not present in Yocto image
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
X-List-Received-Date: Fri, 05 Feb 2016 17:48:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Ross

Many thanks for following up. Fred also offered some helpful suggestions =
in a different thread.

The program in question was supplied to me by a third party for testing, =
so I shall obscure the name here and call it testprog.

It was installed by:

dpkg -i ./testprog.deb=20


Where the .deb file was supplied to me. I don=E2=80=99t know what that =
was built on though.

Then:

which testprog=20
/usr/bin/testprog
/usr/bin/testprog=20
-sh: /usr/bin/testprog: No such file or directory

Then I:

readelf -a /usr/bin/testprog | grep Shared
 0x0000000000000001 (NEEDED)             Shared library: [libsnmp.so.30]
 0x0000000000000001 (NEEDED)             Shared library: =
[libQt5Network.so.5]
 0x0000000000000001 (NEEDED)             Shared library: =
[libQt5SerialPort.so.5]
 0x0000000000000001 (NEEDED)             Shared library: =
[libQt5Core.so.5]
 0x0000000000000001 (NEEDED)             Shared library: =
[libstdc++.so.6]
 0x0000000000000001 (NEEDED)             Shared library: [libgcc_s.so.1]
 0x0000000000000001 (NEEDED)             Shared library: =
[libpthread.so.0]
 0x0000000000000001 (NEEDED)             Shared library: [libc.so.6]

Followed by:

find /usr/lib -name libQt5Network.so.5
/usr/lib/libQt5Network.so.5

So, I have that lib.

find /usr/lib -name libgcc_s.so.1    =20
root@qemux86-64:~#=20

I don=E2=80=99t have that lib.

With ldd I get:

ldd /usr/bin/testprog=20
/usr/bin/ldd: line 117: /usr/bin/testprog: No such file or directory

So, that=E2=80=99s where I am at this stage.

Regards

Nathan

> On 5 Feb 2016, at 16:50, Burton, Ross <ross.burton@intel.com> wrote:
>=20
>=20
> On 5 February 2016 at 15:24, Nathan Sowatskey <nathan@nathan.to> =
wrote:
> I suspect that my test program, which was supplied to me as a .deb =
package, was compiled on Ubuntu, and so links to libgcc_s.so.1. I =
can=E2=80=99t see any obvious way to get libgcc_s.so.1 on Yocto. I =
already have:
>=20
> libgcc contains /lib/libgcc_s.so.1, so it should be installed in your =
image already:
>=20
> How are you determining that it isn't in your image, and that your =
application doesn't work?
>=20
> Ross


