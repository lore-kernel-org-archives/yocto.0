Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B77EE0140C
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 23:58:52 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so4070308pbb.35
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 23:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=82NPzoqSjPwYIUaml4B1dAbi50d0rQllsIi3bDVFQAc=;
	b=LweXMqxCDwWeU+VPrkIR1AN6kXVgbDm5sylgNlpdOp5yYBDfZXjJe7OeNHDlbiffB4
	NSbYV2K9X6I9eupqaTGbqO33+x9NEtRiQzL/QQIFcyooMozp7AAe90AKr0hS0Jhvvr41
	UaRBizLlRQ4Xdpm+amTqAnQhyNCUlvnRu6zau1+Ab6635/roID1GcYv2SBpy4l1+kfRR
	0E3zDtHMiX3iXiqH+n0m8LAobmCl0XoKz2YyAocQNZ7LPYOqOUvffVkfyZ0J9l2kNg/7
	+LAD5o/y4bRV/R52EoIFLJGJ6UwWgL0AMCcE+HRyhQcsuScLfcVQpd89gERFuhci/9AO
	eXTw==
Received: by 10.68.228.2 with SMTP id se2mr4713719pbc.109.1339657132016;
	Wed, 13 Jun 2012 23:58:52 -0700 (PDT)
Received: from [192.168.1.71] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id wk3sm8524058pbc.21.2012.06.13.23.58.50
	(version=SSLv3 cipher=OTHER); Wed, 13 Jun 2012 23:58:51 -0700 (PDT)
Message-ID: <4FD98BAD.1050109@gmail.com>
Date: Wed, 13 Jun 2012 23:58:53 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1;
	rv:12.0) Gecko/20120428 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <cover.1339650859.git.dvhart@linux.intel.com>
	<3b44305edae36265295087fb5f31d22d660599b8.1339650859.git.dvhart@linux.intel.com>
	<4FD974F1.2000703@linux.intel.com>
In-Reply-To: <4FD974F1.2000703@linux.intel.com>
X-Enigmail-Version: 1.4.2
Subject: Re: [OE-core] [PATCH 2/3] busybox: Add setsid and cttyhack for tiny DISTRO_FEATURE
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
X-List-Received-Date: Thu, 14 Jun 2012 06:58:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 6/13/2012 10:21 PM, Darren Hart wrote:
> At some point poky-tiny may need to come into oe-core, until
> then...

why do you think so. micro is also a distro with similar goals lives
outside of OE-Core infact any distros live outside oe-core
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (MingW32)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk/Zi60ACgkQuwUzVZGdMxSg/gCfUHIMxUBVSOWrPP5geIykH1pJ
xpkAniMD6AZAnQfMA82Ri3EdjkDLkBlk
=Jyew
-----END PGP SIGNATURE-----

