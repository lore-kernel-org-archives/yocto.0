Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFF9AE00D6F; Thu,  9 May 2019 09:30:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
	[209.85.222.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCD4AE00D5F
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 09:30:57 -0700 (PDT)
Received: by mail-qk1-f196.google.com with SMTP id c15so1847872qkl.2
	for <yocto@yoctoproject.org>; Thu, 09 May 2019 09:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=7LAIUCi4545sKdsyTmNFn37vcYhXdJzegywEVfhs9YA=;
	b=d633PenupJZC7qz2qz8As9RyqU9SxZqAQN9RA7/SgG9O7xBC7JN++lPcwHOjpxOBZJ
	VpmWs35Rhk9QE0/zp7mu8STHrjI3YirtZ7zNrsmqM7LewSg4f1vv5igv8hYWSS2sg+0U
	rGIbF0Vj5mu8pS/VGoFHRxAg1iHboHazD3caHBqXvfAKAaYQproX/L0OIk45crp/uUDl
	zJZM8lppETSqKc251pdZ8EAPU9qPFGMickREEveBHnJPiG3vAR1S2hM5r5A58dWCPgPf
	Cgz0ysR6r5zvj4/h9wbj7tHzZ9SlaU8WZs5tfUMr0OE884mX9ByEEbYnjGEoeX42ef2q
	CuIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=7LAIUCi4545sKdsyTmNFn37vcYhXdJzegywEVfhs9YA=;
	b=rFnd96fBy2LfjabST6OG2b0sk7EvhQM+y2Gx3Wqux97pe4R2v0kJ2ZhE+A95nYFYNH
	bZs/GvXVz5BCoWDsaIQQ5uw+qYZ9ZzFCKi/tYteZ1h0rhWK93OTdrM3c9qxJ3DDRJLPl
	3gfFTRKfVuNcGt2jvQwEux4seR4q4xNVAJVfA9rDc2xc4TYJ5xoJAYlBa9ofp3X8Way9
	tGaEGatITcX+/q8WbX55fNE8dejOPNYmcRY8Gb4YInSAbplXs/PUVATFB6mf0hIZJThs
	dq4ceNOEbQC1lYSaWsXGCB2eVxgdMxN1rV9h+MJaEMx/a0Dhu7XCKOpqZtIdIQQLeVs9
	Z7tQ==
X-Gm-Message-State: APjAAAUBONNNFCLLDI6AjZz7rTyC/O5Og4IQk8u/BjxNvkHbiUqnpNLX
	+tUarzEFVqvXI+5xtiUX3u29Gs43VsP4IqXE8Y0=
X-Google-Smtp-Source: APXvYqzWFr0c3VEbNAf5GEZa3SW0v559Qc040WAEg5SVI7MeuENRi3HvOmnok5E5r55fE66ctXVBpHfDpDAnq/vCYx0=
X-Received: by 2002:ae9:ef45:: with SMTP id d66mr4258589qkg.313.1557419457070; 
	Thu, 09 May 2019 09:30:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190509115933.23465-1-kexin.hao@windriver.com>
	<CADkTA4Ocyat40N4Fcgf3d95WT27fDnPMppiFWvPuFKj5ATOw4g@mail.gmail.com>
In-Reply-To: <CADkTA4Ocyat40N4Fcgf3d95WT27fDnPMppiFWvPuFKj5ATOw4g@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 9 May 2019 18:30:45 +0200
Message-ID: <CAGAf8LzL9W7gX4gfadTbcsrMDwE4_S3cmn629FeJWheJuniEfA@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH] meta-yocto-bsp: Bump to the latest stable kernel for all the BSP
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
X-List-Received-Date: Thu, 09 May 2019 16:30:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

From yesterday... Latest stable release of:
https://github.com/jumpnow/meta-bbb

My GitHub for BBB (BeagleBone Black):
https://github.com/ZoranStojsavljevic/bbb-yocto

Both worked out for my bash script (adopted for my needs -> sticks and
ropes) and KAS tool!
https://github.com/ZoranStojsavljevic/bbb-yocto/tree/master/bbb-releases/bb=
b-warrior

Kernel 5.0.13 (please, look into/upon the traces):
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bb=
b-warrior/target-bbb-platform-traces.txt

Thank you,
Zoran
_______

On Thu, May 9, 2019 at 2:53 PM Bruce Ashfield <bruce.ashfield@gmail.com> wr=
ote:
>
>
>
> On Thu, May 9, 2019 at 8:10 AM Kevin Hao <kexin.hao@windriver.com> wrote:
>>
>> Boot test for all these boards.
>>
>
> I do have more -stable updates coming, and you are seeing some queued 5.0=
.x changes that I haven't sent yet (since I'm hung up on resolving a 4.19 c=
onflict for one of the SoC branches), but yes, the changes here are good an=
d I'll be bumping the qemu boards in the next day or so.
>
> Bruce
>
>
>>
>> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
>> ---
>>  .../recipes-kernel/linux/linux-yocto_4.19.bbappend   | 20 ++++++++++---=
-------
>>  .../recipes-kernel/linux/linux-yocto_5.0.bbappend    | 20 ++++++++++---=
-------
>>  2 files changed, 20 insertions(+), 20 deletions(-)
>>
>> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappe=
nd b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
>> index 6025230c7306..ec269d905c4b 100644
>> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
>> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
>> @@ -8,11 +8,11 @@ KMACHINE_genericx86 ?=3D "common-pc"
>>  KMACHINE_genericx86-64 ?=3D "common-pc-64"
>>  KMACHINE_beaglebone-yocto ?=3D "beaglebone"
>>
>> -SRCREV_machine_genericx86    ?=3D "11e0e616ed095bb8012e1b4a231254c9656a=
0193"
>> -SRCREV_machine_genericx86-64 ?=3D "11e0e616ed095bb8012e1b4a231254c9656a=
0193"
>> -SRCREV_machine_edgerouter ?=3D "eebb51300a07804a020ec468b5f8c5bf720198d=
9"
>> -SRCREV_machine_beaglebone-yocto ?=3D "eebb51300a07804a020ec468b5f8c5bf7=
20198d9"
>> -SRCREV_machine_mpc8315e-rdb ?=3D "8b60f968823256f5d2889c4520d70299ca214=
11b"
>> +SRCREV_machine_genericx86    ?=3D "5664dc14399edcaad210bbeb6343d84561fb=
3ea8"
>> +SRCREV_machine_genericx86-64 ?=3D "5664dc14399edcaad210bbeb6343d84561fb=
3ea8"
>> +SRCREV_machine_edgerouter ?=3D "5664dc14399edcaad210bbeb6343d84561fb3ea=
8"
>> +SRCREV_machine_beaglebone-yocto ?=3D "5664dc14399edcaad210bbeb6343d8456=
1fb3ea8"
>> +SRCREV_machine_mpc8315e-rdb ?=3D "d419f4ca6ba4b097b8ad710a93b89510f5b29=
98c"
>>
>>  COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
>>  COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
>> @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter =3D "edgerouter"
>>  COMPATIBLE_MACHINE_beaglebone-yocto =3D "beaglebone-yocto"
>>  COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"
>>
>> -LINUX_VERSION_genericx86 =3D "4.19.19"
>> -LINUX_VERSION_genericx86-64 =3D "4.19.19"
>> -LINUX_VERSION_edgerouter =3D "4.19.14"
>> -LINUX_VERSION_beaglebone-yocto =3D "4.19.14"
>> -LINUX_VERSION_mpc8315e-rdb =3D "4.19.14"
>> +LINUX_VERSION_genericx86 =3D "4.19.34"
>> +LINUX_VERSION_genericx86-64 =3D "4.19.34"
>> +LINUX_VERSION_edgerouter =3D "4.19.34"
>> +LINUX_VERSION_beaglebone-yocto =3D "4.19.34"
>> +LINUX_VERSION_mpc8315e-rdb =3D "4.19.34"
>> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappen=
d b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
>> index 5cf6e1f0649e..d7cf1216f45d 100644
>> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
>> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
>> @@ -8,11 +8,11 @@ KMACHINE_genericx86 ?=3D "common-pc"
>>  KMACHINE_genericx86-64 ?=3D "common-pc-64"
>>  KMACHINE_beaglebone-yocto ?=3D "beaglebone"
>>
>> -SRCREV_machine_genericx86    ?=3D "3df4aae6074e94e794e27fe7f17451d9353c=
df3d"
>> -SRCREV_machine_genericx86-64 ?=3D "3df4aae6074e94e794e27fe7f17451d9353c=
df3d"
>> -SRCREV_machine_edgerouter ?=3D "3df4aae6074e94e794e27fe7f17451d9353cdf3=
d"
>> -SRCREV_machine_beaglebone-yocto ?=3D "3df4aae6074e94e794e27fe7f17451d93=
53cdf3d"
>> -SRCREV_machine_mpc8315e-rdb ?=3D "8b62af7f252af10588276802c4c6d7c502e87=
5be"
>> +SRCREV_machine_genericx86    ?=3D "f990fd0ce123aa6035042efad09b2ddc3e7d=
48f4"
>> +SRCREV_machine_genericx86-64 ?=3D "f990fd0ce123aa6035042efad09b2ddc3e7d=
48f4"
>> +SRCREV_machine_edgerouter ?=3D "f990fd0ce123aa6035042efad09b2ddc3e7d48f=
4"
>> +SRCREV_machine_beaglebone-yocto ?=3D "f990fd0ce123aa6035042efad09b2ddc3=
e7d48f4"
>> +SRCREV_machine_mpc8315e-rdb ?=3D "670ce7e9db627d0c2067cfdb571ddc1f11781=
8d8"
>>
>>  COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
>>  COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
>> @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter =3D "edgerouter"
>>  COMPATIBLE_MACHINE_beaglebone-yocto =3D "beaglebone-yocto"
>>  COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"
>>
>> -LINUX_VERSION_genericx86 =3D "5.0.3"
>> -LINUX_VERSION_genericx86-64 =3D "5.0.3"
>> -LINUX_VERSION_edgerouter =3D "5.0.3"
>> -LINUX_VERSION_beaglebone-yocto =3D "5.0.3"
>> -LINUX_VERSION_mpc8315e-rdb =3D "5.0.3"
>> +LINUX_VERSION_genericx86 =3D "5.0.13"
>> +LINUX_VERSION_genericx86-64 =3D "5.0.13"
>> +LINUX_VERSION_edgerouter =3D "5.0.13"
>> +LINUX_VERSION_beaglebone-yocto =3D "5.0.13"
>> +LINUX_VERSION_mpc8315e-rdb =3D "5.0.13"
>> --
>> 2.14.4
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await the=
e at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

