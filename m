Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84AC6E0027D
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 10:41:56 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 27 Jul 2012 10:41:56 -0700
Received: by pbbro8 with SMTP id ro8so5381615pbb.25
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 10:41:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=6Iu83YbmJjChNoIS6CUW/5pKJt+AOHwwWdDEhpsx5SQ=;
	b=YVMYFActHxJnVkQXG65kRMDEITI2Qkp+/3saHFFgsOBbU/ZeVKs6AwIT1aShv0/Yph
	IxoKZv3X8n8BpltWiZgWDbzU+oH2hGw/1ohyIHSYQX4Zu+T5UXi1xMDlsgC4kkBcrMgE
	+mNVwiBToch2XCtwWG8tV7+SKzrx3rrf65rXmTdbPOSt36mwS85A7dZneyq0eID08FgJ
	KYTaIzvcPHtNvyqaKxuZC6RV++s+ge18HHCb8b61i/pSeoVMYoAHys9RfjsJNqHdHa2R
	9go1miag6k73YMsKoSkNHCXZbtBB3A0owcRepG/8EIDyCrFiYlfRRpTC6DciF0Q/Fvk4
	guRA==
Received: by 10.68.222.163 with SMTP id qn3mr15483772pbc.135.1343410915559;
	Fri, 27 Jul 2012 10:41:55 -0700 (PDT)
Received: from [10.1.10.192] (c-50-137-42-92.hsd1.or.comcast.net.
	[50.137.42.92])
	by mx.google.com with ESMTPS id ms9sm2291435pbb.43.2012.07.27.10.41.52
	(version=SSLv3 cipher=OTHER); Fri, 27 Jul 2012 10:41:54 -0700 (PDT)
Message-ID: <5012D204.9010101@intel.com>
Date: Fri, 27 Jul 2012 10:38:12 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1207271016320.15452@oneiric>
In-Reply-To: <alpine.DEB.2.02.1207271016320.15452@oneiric>
X-Gm-Message-State: ALoCoQm56hloPnX61MCEErykjTZunpXmqsdnvBNhvaXOLi8TvYjSUkxzxx3S9m7WNjd/7d9foXq0
Subject: Re: do QEMU images really come with dropbear and an nfs server?
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
X-List-Received-Date: Fri, 27 Jul 2012 17:41:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/27/2012 07:18 AM, Robert P. J. Day wrote:
>
>    the yocto dev manual currently suggests that QEMU images come with
> both dropbear and an nfs server:
>
> http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#using-pre-built-binaries-and-qemu
>
> i don't have a QEMU image in front of me to test, but the definition
> of the basic QEMU images doesn't seem to suggest that that's true.
>
>    i can see it's easy to add them, but the manual suggests they're
> there by default.  or am i misreading something?

It looks like we may need a manual tweak here.

core-image-minimal does not come with any ssh server. core-image-lsb 
should have openssh instead of dropbear. So unless something changed 
very recently, core-image-sato is the only one that has dropbear in it 
by default.

Also, the manual states "The QEMU images also contain an embedded 
Network File System (NFS) server that exports the image's root 
filesystem." This isn't strictly true - instead we offer a native tool 
which runs a userspace NFS server and if some prep work is done by the 
user (extracting a rootfs tarball with runqemu-extract-sdk), you can 
then point the runqemu script to that directory instead of a rootfs 
image file.

Someone please correct me if I'm wrong.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

