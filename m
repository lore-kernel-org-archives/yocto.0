Return-Path: <daniel.kenji.morgan@gmail.com>
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75B9DE0045D
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2013 08:32:48 -0800 (PST)
Received: by mail-pa0-f50.google.com with SMTP id hz10so1807519pad.23
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2013 08:32:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:reply-to:organization:user-agent
	:mime-version:to:subject:content-type:content-transfer-encoding;
	bh=xeGWDnwtDNcOYXD6Jx9dHOIBYNFaLPbrVTVZIUMctqY=;
	b=hE1SO27XoBBrpRlZhL7s1zUeyFYQEklRmoIv11LTTzxTe/Fl4bH2WyI9BGVvelXXdc
	Q6J7JUl4OEZc3nRXeVMMCbpbISNZgNrtjaISyFhkn6jEzqT5MOmdsDv3r+tC8bT0HHU2
	FxGG5erJnf/1TNo/8as6eBBb9rePCt4kKAdEbk/brTh8GnW64LTpNSeD+ZfLbsEgFBKo
	+EBD+5ZNfvqu/Cqw6lasTw4R1b22z9wCHMCcqp+lnac7pMdpxihOFNtMyj2U/gqwWuNe
	ONDItAbwjgFv7K9Y2aRFwP668cvGZAYrtW/XCIrIgF91GSgQbgI89Z1oQdX6ZeA3ycJj
	T8xQ==
X-Received: by 10.68.189.34 with SMTP id gf2mr17627244pbc.83.1359649968174;
	Thu, 31 Jan 2013 08:32:48 -0800 (PST)
Received: from [210.170.220.194] (PPPbm2.fukushima-ip.dti.ne.jp.
	[210.170.220.194])
	by mx.google.com with ESMTPS id ot3sm5438430pbb.38.2013.01.31.08.32.46
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 31 Jan 2013 08:32:47 -0800 (PST)
Message-ID: <510A9CB1.9090904@gmail.com>
Date: Fri, 01 Feb 2013 01:32:49 +0900
From: Daniel Kenji Morgan <daniel.kenji.morgan@gmail.com>
Organization: Daniel Kenji Morgan
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/20130107 Thunderbird/17.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: menuconfig fails using SSTATE_MIRRORS and SOURCE_MIRROR_URL
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: daniel.kenji.morgan@gmail.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 31 Jan 2013 16:32:48 -0000
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit

To explain my environment:

I am building images for the machine "imx6qsabrelite" in the "meta-fsl-arm" BSP layer using Poky 1.3 (danny).
The kernel recipe is linux-imx which is fetched from Freescale's git repository.
 
On host machine A, I build an image and copy all the sstate cache and download files into a different directory.
I've setup this directory as a Samba share so it can be accessed via the local network.

On host machine B, I have local.conf set to use the shared sstate cache and source download mirror (SSTATE_MIRRORS and SOURCE_MIRROR_URL
).
They are both utilized without any problems when I build an image.
However, when I "bitbake -c menuconfig virtual/kernel", I get the following error in the kconfig terminal:

scripts/kconfig/mconf Kconfig
Error opening terminal: xterm.
make[1]: *** [menuconfig] Error 1
make: *** [menuconfig] Error 2
Command failed.
Press any key to continue...

The same "bitbake -c menuconfig virtual/kernel" on host machine A works.
It also works on host machine B when I disable using the shared sstate cache and source download mirror.

Is anyone aware of such issues?


