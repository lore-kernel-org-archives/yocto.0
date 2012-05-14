Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7134CE013A6
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 14:31:26 -0700 (PDT)
Received: by eaab16 with SMTP id b16so1978808eaa.35
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 14:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=3Q2615YJJew0VOkd5siOUyFXoaXVhc75BBPXpop81x0=;
	b=TnbIHEcnaV5S9L5jDdYvAYlHATrU0Cyq+hara7aYO6IMM4uK39KqNBHxRNz2ZTKiyM
	pU5dnmfwBVi3yLTVp0T+vSlRZ83AlPKttVQiFAWw5Ha9HCiw6ozP2ToSozPEvAXLRzit
	Noo5cwJgAWKC7GujhBVpY1yWR/rsWxgv0bzPpdsldzOkv2atlk01JkXN4PaISEqdzorA
	BPFDbPWyPlAdHAwdlCzStokw6ZRvqpXYfm2VLXAh0hz1EayfVx+PARWVgHqsKdjreIzX
	pfrmZN5ZBxVZ6fEFNiiZ4aFkfKRdtDalbd+sn98MRHUyqN3FPOlVOfoO2Gjt55qlmx0J
	4rrQ==
Received: by 10.14.99.129 with SMTP id x1mr1757102eef.108.1337031084951; Mon,
	14 May 2012 14:31:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.132 with HTTP; Mon, 14 May 2012 14:30:54 -0700 (PDT)
In-Reply-To: <EE688041-FB89-4D1A-AE38-8DFF617C244D@keylevel.com>
References: <EE688041-FB89-4D1A-AE38-8DFF617C244D@keylevel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 14 May 2012 14:30:54 -0700
Message-ID: <CAMKF1sr_pC3+dZMwM+p_1ErhZde64ht28jv0jvyfxz=6ATD35w@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Kernel modules fail to compile for ARM
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
X-List-Received-Date: Mon, 14 May 2012 21:31:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, May 14, 2012 at 11:52 AM, Chris Tapp <opensource@keylevel.com> wrot=
e:
> | =C2=A0 CC [M] =C2=A0net/core/pktgen.o
> | /media/SSD-RAID/build-edison-pi/tmp/work/pi-poky-linux-gnueabi/linux-yo=
cto-3.0.18+git1+d386e09f316e03061c088d2b13a48605c20fb3a6_1+2bba211297d10047=
637b8f49abd2c5415480ce4d-r3/linux/net/core/pktgen.c: In function 'pktgen_if=
_show':
> | /media/SSD-RAID/build-edison-pi/tmp/work/pi-poky-linux-gnueabi/linux-yo=
cto-3.0.18+git1+d386e09f316e03061c088d2b13a48605c20fb3a6_1+2bba211297d10047=
637b8f49abd2c5415480ce4d-r3/linux/net/core/pktgen.c:682:2: error: can't fin=
d a register in class 'GENERAL_REGS' while reloading 'asm'
> | /media/SSD-RAID/build-edison-pi/tmp/work/pi-poky-linux-gnueabi/linux-yo=
cto-3.0.18+git1+d386e09f316e03061c088d2b13a48605c20fb3a6_1+2bba211297d10047=
637b8f49abd2c5415480ce4d-r3/linux/net/core/pktgen.c:682:2: error: can't fin=
d a register in class 'GENERAL_REGS' while reloading 'asm'
> | /media/SSD-RAID/build-edison-pi/tmp/work/pi-poky-linux-gnueabi/linux-yo=
cto-3.0.18+git1+d386e09f316e03061c088d2b13a48605c20fb3a6_1+2bba211297d10047=
637b8f49abd2c5415480ce4d-r3/linux/net/core/pktgen.c:682:2: error: 'asm' ope=
rand has impossible constraints
> | /media/SSD-RAID/build-edison-pi/tmp/work/pi-poky-linux-gnueabi/linux-yo=
cto-3.0.18+git1+d386e09f316e03061c088d2b13a48605c20fb3a6_1+2bba211297d10047=
637b8f49abd2c5415480ce4d-r3/linux/net/core/pktgen.c:682:2: error: 'asm' ope=
rand has impossible constraints
> | make[4]: *** [net/core/pktgen.o] Error 1

interesting. This is gcc puking with some insane inline assembly. Can
you post preprocessed pktgen.c and cmdline arguments used to compile
it ?
and is it using gcc 4.7 or 4.6 ?

