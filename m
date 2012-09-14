Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D752E011C0
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 17:08:04 -0700 (PDT)
Received: by dadz8 with SMTP id z8so2688920dad.35
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 17:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=XEltNF2SOxfzhqabF2fxQWYb2G675b9pFsj5v2es+NE=;
	b=pe5AQQFdXn1nlGg0ZBZ1IYpyQptohObiJZ+v94D14Ax3borZGH1rjRsxcD9UbOSXoZ
	sBT9QeNe3UQeEm+hqY5JXUTs5M5i7/nNzguU/0ddoyLTlk/+4UkODkMuBY7m4DeG3czy
	Axed6heXDghQEFdOXG2QC2v6wFWzdzp5SgGRviXa/M9K1HdCzxVU7iUJvAnD7th/0CSQ
	u80CZDcxKqf12jbK5lU+edzStGCTk+A3gUwjLDPi538/5oLaYmQsFzxtJ8o0mbF9myNT
	AsP5N0IIb48Pb0gC+8IJi4mx18j9OU5i9M01os6M81m9+DayiZoVIxrAmH8C7Fv3QZrB
	UM6A==
Received: by 10.66.82.3 with SMTP id e3mr1247502pay.56.1347581283921;
	Thu, 13 Sep 2012 17:08:03 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.108.162])
	by mx.google.com with ESMTPS id wn1sm91443pbc.57.2012.09.13.17.08.01
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 13 Sep 2012 17:08:03 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAHUNapQm1sJSU5zDP6-0MEEhYoU_WPtXbVoO4_g8MK_r3p843Q@mail.gmail.com>
Date: Fri, 14 Sep 2012 04:08:00 +0400
Message-Id: <D1E456D4-A79C-4ED5-9A4E-9732C16F503D@gmail.com>
References: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
	<12E1ABCF-B181-4763-88A6-5B7E51758231@gmail.com>
	<AA2F4F97-00C8-48C3-90E8-5AF084D508B8@gmail.com>
	<CAHUNapStNAw21FiO6vFgBPLPfeqnoFjAtuuUuzun+6FuzLfspg@mail.gmail.com>
	<CAHUNapT5HfC+dbzjmuYiQ4ic4m71=iBaaJtygfrhht+JsqMyHA@mail.gmail.com>
	<CAMKF1sozZMQFS4kSbqGGnzzJ9K0O_3NCyujknFpJUZvZ4jOLBA@mail.gmail.com>
	<00209F5B-F153-4F07-BA14-54FF7D6E5762@gmail.com>
	<CAHUNapQm1sJSU5zDP6-0MEEhYoU_WPtXbVoO4_g8MK_r3p843Q@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: any success with spartan6-lx9mb?
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
X-List-Received-Date: Fri, 14 Sep 2012 00:08:04 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Trevor,

On Sep 13, 2012, at 10:17 PM, Trevor Woerner wrote:
>=20
> ~$300 for the SP601 is certainly not too onerous. If I start to see
> more success with yocto I will definitely consider it.
>=20
> Other options include:
> - qemu (maybe getting yocto to run/build a microblaze qemu image would =
be nice)
> - the spartan-6 version of the papilio board (which is either going to
> be a papilio plus or the papilio pro)
>=20
> I do have one question though: if I had the SP601, would I be able to
> download (for free) an synthesize (using the freely available ISE
> tools) a microblaze and/or a PPC soft core? Or would I need to pay for
> those components (and if so, how much)?

There are two parts of the design suite, ISE (for VHDL and Verilog)=20
development, and XPS (EDK) for re-using the Xilinx IP cores in
a project. To edit microblaze projects, you would need an EDK
license. The standard webpack only includes a license for the ISE
component, and is usually device locked to a particular set of=20
devices, usually the low-end FPGAs.

The SP601 comes only with the WebPack software, so hmm no, not
suitable for what you want to do.

What you really need is the ISE Embedded Edition or System Edition,
in order to be able to configure your IP cores using the Xilinx
Base System Builder, so that you can design your peripherals
around a MicroBlaze (Virtex, Spartan) or ARM (Zynq) processor core.

There are no soft PowerPC IP cores, only hard PowerPC IP cores on
specific Virtex 4 (PPC405) / 5 (PPC440) FPGA variants, with the FXT =
designation.=20

Xilinx stopped using PowerPC hard cores with the Virtex 5 series.

So, series-6 and series-7 FPGAs don't have PowerPC any more, and the =
only
option was to use a soft core processor like the microblaze. In the =
specific=20
case of the Zynq series, they have a dual ARM Cortex-A9 hard core =
processor.

I find that the Spartan-6 Embedded Kit (SP605 + ISE Design Suite =
Embedded
Edition) gives you want you want, and the price listed on the website is =
USD$695.

http://www.xilinx.com/products/boards-and-kits/DK-S6-EMBD-G.htm

The other option is the Zynq-EPP 7020 platform which includes the base =
board
with the ARM processor, and ISE Design Suite System Edition for USD$895.

Best regards,

Elvis Dowson



