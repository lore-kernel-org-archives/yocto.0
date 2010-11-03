Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6B8104C803A5
	for <yocto@yoctoproject.org>; Wed,  3 Nov 2010 10:34:47 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn7 with SMTP id 7so979634iwn.35
	for <yocto@yoctoproject.org>; Wed, 03 Nov 2010 08:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type;
	bh=M8oDdM3BKAEfzipNAQP0A4kjFrSsoNCEfCYeUxXFEcc=;
	b=oqmUrvlvhX30spPnSDtRiek7dXWh4Tul8UcNFrSZI+cY4zJyIlHq6wRDL0QfGeUHnB
	UW7O4lKrl2uxtqAM750OBFxpL09YUsDQNypih6S6G0lCGDkxLlzAJ/KHRz0gerHaKAqj
	N8gtUL74glXDwVjXvYT2BhRPENLFOsfzqkvG0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=jqn7QYEp/nF2Xz2mouv6jrwtSkpe5mpT24vGTyhsGE1Y0aXwi7HuobrzCxaMO9wCZ6
	QzKFzaBAk8QrR6wbxfq3RAWF+91G6yReVkNS8zScSoiImFZu9+BZEKayVBzbJgXS5p/2
	rYXaXVZzm1hSyDtlFbkUkRe3hEvD5iIQn0Yw8=
MIME-Version: 1.0
Received: by 10.231.17.203 with SMTP id t11mr7918936iba.1.1288798487055; Wed,
	03 Nov 2010 08:34:47 -0700 (PDT)
Received: by 10.231.40.13 with HTTP; Wed, 3 Nov 2010 08:34:46 -0700 (PDT)
Date: Wed, 3 Nov 2010 16:34:46 +0100
Message-ID: <AANLkTi=+SkeQJbAvCcmzk20XzY-2Wk9rnypte59Lnkxs@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org
Subject: ppc e500v2 support?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Nov 2010 15:34:47 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm trying to add my powerpc board to yocto (as a test). This board
mpc8536ds has an e500v2 core. It works under OE (MACHINE =
"calamari"). but gcc-cross-initial fails in do_compile when it tries
to run configure for the libgcc subdir.
The problem is similar to http://patchwork.openembedded.org/patch/2026/

Basically gcc-cross-initial fails building libgcc, config.log has:
cc1: error: not configured for ABI: 'spe'

I feel this is related to the generation of the host triplet.
OE has conf/distro/include/sane-toolchain.inc which has a func
compute_os_portion_of_target_triplet
this one adds gnuspe to the host triplet (and maybe some other things).

poky does not give me that part of the triplet.

Anyone an idea what is wrong (I can provide machine description etc,
but it is also all in the OE git).

Best regards, Frans

