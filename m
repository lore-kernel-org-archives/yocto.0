Return-Path: <jpuhlman@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A3A0E003E1
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 10:09:49 -0800 (PST)
Received: by pbcup7 with SMTP id up7so2867512pbc.35
	for <yocto@yoctoproject.org>; Fri, 02 Mar 2012 10:09:49 -0800 (PST)
Received-SPF: pass (google.com: domain of jpuhlman@gmail.com designates
	10.68.201.135 as permitted sender) client-ip=10.68.201.135; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of jpuhlman@gmail.com
	designates 10.68.201.135 as permitted sender)
	smtp.mail=jpuhlman@gmail.com;
	dkim=pass header.i=jpuhlman@gmail.com
Received: from mr.google.com ([10.68.201.135])
	by 10.68.201.135 with SMTP id ka7mr18977627pbc.145.1330711789342
	(num_hops = 1); Fri, 02 Mar 2012 10:09:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=lwLAHgptx0nkRtOwMGWrOp7d2OCyW+8JkLAXXvs4qbE=;
	b=jNaRFe20Ec3bNowt6Y3i0iFNen++pawx75zHCebOhtJOxfS8KLMHojrJ+lyrWy0rhm
	W3P1T5oZYUi1wVLvJ8aNFlqPNKoN9yATftIxUtjTgs1n+S14CDisjsVKFGz4RxGOumUf
	AMsZR3Id0rtpiEnCLfQqmBrCLQgNQ9cy6wyxaw5vBhrWWkoaAJadIzZXHMJ1uGbLeeP4
	hU5w6Rm6uT/JHD5RbWVGVbjdhr5DMuDxn1O1ao5uvqCHCHoElXDSGWVL4J8Ms5Jwb41I
	CW/SOoP2VLLEcxTrmiVmbRz1P+P7FC5Pgx1mlaqNSK3C6WMwscAhkuFZGmqWw5G00dED
	inJg==
Received: by 10.68.201.135 with SMTP id ka7mr15798500pbc.145.1330711789312;
	Fri, 02 Mar 2012 10:09:49 -0800 (PST)
Received: from [192.168.1.4] (c-76-20-107-156.hsd1.ca.comcast.net.
	[76.20.107.156])
	by mx.google.com with ESMTPS id m5sm5554106pbo.69.2012.03.02.10.09.47
	(version=SSLv3 cipher=OTHER); Fri, 02 Mar 2012 10:09:48 -0800 (PST)
Message-ID: <4F510CDF.1000509@gmail.com>
Date: Fri, 02 Mar 2012 10:09:35 -0800
From: Jeremy Puhlman <jpuhlman@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <CA452391058F6D4E9715FB2C29D9312A0113E694@039-SN2MPN1-021.039d.mgd.msft.net>
	<4F50EFFA.7080809@linux.intel.com>
In-Reply-To: <4F50EFFA.7080809@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: initramfs support in Yocto
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
X-List-Received-Date: Fri, 02 Mar 2012 18:09:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

> Can you be more specific about what you are looking for? When you build
> an image with the cpio.gz image type, you can boot that as an initramfs
> with the following kernel command line:
>
> initrd=core-image-minimal-fri2.cpio.gz root=/dev/ram0
>
> If you are looking for something beyond that, please elaborate.
>

When most people refer to initramfs support it is compiling a built
image in to the kernel binary(e.g.  CONFIG_INITRAMFS_SOURCE).
INITRAMFS_IMAGE
is part of the kernel class that should enable that in the build.

