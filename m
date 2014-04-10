Return-Path: <wpdster@gmail.com>
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31263E00BE0
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 08:33:10 -0700 (PDT)
Received: by mail-pa0-f51.google.com with SMTP id kq14so4086848pab.24
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 08:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=DwLzRR81a/TalgMOtaFpnAeF1hVm3zvUouMShHr7beE=;
	b=eiRSDJukvAPDUEXyPzizcSBehTWai/zjj6Gvrf0TYLcfcYqbZ6nQKqAUYs8IvC2r3b
	RHywcSIZpKt1AnnQdsdM2aL9Y5Ek1Tu8G5a0uVViiZcPg0pHNUgvc7koiqU251zpgin2
	zph1zF56ZtaVOho2CK/AtIhlAm45qYrvVejB6dzfSj1X1erNaGJhQ+rIjI1PKF8VdAgv
	sfrwY4dWZkNF870qOisKXow5dB1dkr+BI7BlAlMxhnR+h8VBOIPSmlESlxiijTfHZXQ/
	0kc5dtmF2+LZ0Mh4xbb84jYwjMfgjR1cTRwn3gotlygzoKtifQGri1+qr3/GDJltmrY7
	El+Q==
X-Received: by 10.68.191.200 with SMTP id ha8mr20559302pbc.66.1397143990181;
	Thu, 10 Apr 2014 08:33:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.32.161 with HTTP; Thu, 10 Apr 2014 08:32:40 -0700 (PDT)
From: Patrick Doyle <wpdster@gmail.com>
Date: Thu, 10 Apr 2014 11:32:40 -0400
Message-ID: <CAF_dkJD45hZOEwqb4giAKmdO-22WK3KTf-Bz0RWZvKTHD9-qFQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to include kernel module without including the kernel in the rootfs?
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
X-List-Received-Date: Thu, 10 Apr 2014 15:33:11 -0000
Content-Type: text/plain; charset=ISO-8859-1

I just added a custom kernel module to my build, and now my rootfs
includes a copy of my kernel (thus making it too large to fit in my
pinhole sized root partition).

Is there any way to prevent the kernel from being included in the
rootfs?  Do modutils require a kernel image in order to function
properly?

My recipe contains

inherit module

So I'm expecting that the module class does magic that results in the
kernel getting installed.

Is there a flag I can set to say "Don't do that?".

Thanks.

--wpd

