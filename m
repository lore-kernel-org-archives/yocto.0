Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 408C0E016DD
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 03:17:01 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Oct 2013 03:13:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,521,1378882800"; d="scan'208";a="394870765"
Received: from unknown (HELO helios.localnet) ([10.252.121.12])
	by orsmga001.jf.intel.com with ESMTP; 18 Oct 2013 03:17:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Amit Tomer <amittomer25@gmail.com>
Date: Fri, 18 Oct 2013 11:16:59 +0100
Message-ID: <3658977.emNrkgtHjm@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CABHD4K8THEdw4na-mODkXqPbh1KL+wSupa+N55at07bgnwyYTw@mail.gmail.com>
References: <CABHD4K8THEdw4na-mODkXqPbh1KL+wSupa+N55at07bgnwyYTw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Applying Patch to /etc/passwd file in Yocto
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
X-List-Received-Date: Fri, 18 Oct 2013 10:17:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Amit,

On Friday 18 October 2013 15:21:37 Amit Tomer wrote:
> I wanted to apply a patch file /etc/passwd but after many attemps
> din't get any success
> 
> Below is the file
> 
> poky/meta/recipes-core/base-passwd/base-passwd_3.5.26.bb
> 
> which is responsible for copying  the modified passwd file to
> /etc/passwd in my final image
> 
> install -p -m 644
> ${STAGING_DIR_TARGET}${datadir}/base-passwd/passwd.master
> ${STAGING_DIR_TARGET}${sysconfdir}/passwd
> 
> I believe above line copying the passwd file to /etc/passwd in my final
> image.
> 
> Now I need to modify this passwd furthur, so write a patch for it
> belwo is my patch.
> 
> --- rootfs/etc/passwd   2013-10-18 02:03:50.119529158 -0500
> +++ rootfs/etc/passwd   2013-10-18 02:05:01.703249079 -0500
> @@ -18,7 +18,7 @@
>  nobody:x:65534:65534:nobody:/nonexistent:/bin/sh
>  ftp:x:999:999::/var/lib/ftp:/bin/false
>  fuwmshey:x:0:0::/user/fuwmshey:/bin/sh
> -frfhsjk:x:998:998::/home/frfhsjk:/bin/sh
> +frfhsjk:x:998:998::/home/frfhsjk:/bin/false
>  quagga:x:997:997::/var/run/quagga:/bin/sh
>  messagebus:x:996:995::/var/lib/dbus:/bin/false
>  sshd:x:995:992::/var/run/sshd:/bin/false
> 
> Above is my patch
> 
> Exact patch of file to be patched is
> 
> /tmp/work/k2-poky-linux-gnueabi/image-k2/1.0-r0/rootfs/etc/passwd

How is this "frfhsjk" user getting into the passwd file in the first place? The 
reason you're getting the error is this line you are modifying is not even in 
the default passwd file you are attempting to patch; it presumably is added 
later on. Patching this file is not the correct way to modify it in the final 
root filesystem - you need to change it in the place where the user is actually 
being added.

Cheers,
Paul

PS: you should not send your mailing list postings also to yocto-request@, 
just yocto@.

-- 

Paul Eggleton
Intel Open Source Technology Centre

