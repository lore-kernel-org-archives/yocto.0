Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07068E003D6
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 07:48:38 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id kp12so4604751pab.35
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 07:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=UczIsz2mqsgbofDLVWQ3Rt54YTGoHmOhquc3EajFJrM=;
	b=ZImfw6I5V2abfsiwRftAdh4T69fIRXDHsacz0XkUrE84UN7aqkrSvZj/PM3gt2YkEm
	wx4d4PzrxfgKeSZ3xVOvuM/EBW8cqpVgd/GUU7nrum+A7GkpPelaicG2e2auSxJtuJyR
	aoZS+D7yX/KAPltauNyTMlfSoZ1dA3PLcAoE0f6wmY1Z/3+QbDxQAWcOaAwXn/9d1G+r
	p/OEyeNbw5t87kHqCqdcxQk9K4+j92wDICL71xPCK+Z/plexUilqi9wOCi20TT1rjxLU
	HIupubVEhut4i6OSowgQVle4CqAbk4/O+On/nHIsIKIol3paEuTzTGANhRKdsxdOQzoB
	hLWA==
Received: by 10.68.136.231 with SMTP id qd7mr22569448pbb.3.1350139717886;
	Sat, 13 Oct 2012 07:48:37 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.220])
	by mx.google.com with ESMTPS id i4sm6069373pav.20.2012.10.13.07.48.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 13 Oct 2012 07:48:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <50797A91.8080205@balister.org>
Date: Sat, 13 Oct 2012 18:48:32 +0400
Message-Id: <530FA222-35A3-4E03-9245-5D9E5B8AD079@gmail.com>
References: <A1BA209A-96E5-45BB-BA77-52FB84A5C735@gmail.com>
	<50797A91.8080205@balister.org>
To: Philip Balister <philip@balister.org>
X-Mailer: Apple Mail (2.1499)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Any updates to meta-zynq in the pipeline?
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
X-List-Received-Date: Sat, 13 Oct 2012 14:48:38 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Philip,

On Oct 13, 2012, at 6:28 PM, Philip Balister <philip@balister.org> =
wrote:

> If you are interested in a kernel built direct from the Xilinx repo =
look at:
>=20
> https://github.com/balister/meta-zynq
>=20
> I just pushed use changes yesterday and could use some help testing =
them.
>=20
> It is setup to boot from a SD card. You have to take the output of the =
u-boot recipe and use the Xilinx tools to combine it with the fsbl to =
get the required BOOT.BIN file.

I'll help out and test your layer first, and let you know. It's going to =
take me a while to get used to this new board. I always find that I end =
up spending more than 2 to 3 months, just getting to know each platform =
to a good level, the last two ones being the Gumstix TI OMAP 3530 and =
the Xilinx ML507. I'm going to brace myself, its going to be a deep dive =
I think! :-)

Adrian Alonso's meta-xilinx layer had some *.bbclass files, that invoked =
the Xilinx tools to create the ace image files, so perhaps that could be =
modified to automate the process or getting the final BOOT.BIN file.

Best regards,

Elvis Dowson=

