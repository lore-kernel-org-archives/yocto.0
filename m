Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F7A1E00816; Wed, 16 May 2018 06:27:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f169.google.com (mail-ot0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DBB9E006B4
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 06:27:43 -0700 (PDT)
Received: by mail-ot0-f169.google.com with SMTP id l13-v6so869225otk.9
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 06:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=PreUsqJ3ORfytVlshYNKKFAWc4JKawa00ceOUB+quQ4=;
	b=ZTgqX58Hqj9XBJftVZbsjorJ8pTB/4/KJtYMmzPOTvFOZR9P/d2XLqZMJAG+lx1znz
	412cu6QlSxCvEy8T09SStPjLXpHMDeguThO6/fiqyzOSAZZbwLNHfnPovSSdOBkIc4XA
	Ky31P+joHDbJ5dnm+WC4nLWa+UDPmcrENCVCGEdCTUk6uyus00h6Ej/07XI4SA+c7fdp
	NSrvOC/VUaXRj5R7IuFfLS35FMneo4QQoZEkmVFnXMW/rYtUMuLvUiLTyQH/DhXPSTK/
	izKe4bgQKl19WJGQ9aP3+kpyc44fyzx+WUS0Z1YFFY3WyXUkz1SBUw7+LRibpOnZoV7Z
	OHZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=PreUsqJ3ORfytVlshYNKKFAWc4JKawa00ceOUB+quQ4=;
	b=a91jXG2GbQWxwxgIP23wXqzz0C11dpSQLhESLU2kkRPDe5YcYIzejAwwclwVkINwzH
	FNjPTUpKf9BqDpI/MpX2mle6eiwSKNc+McgSmsmxqQBI0LrHpoyrgfU8rRnXQrE/1wwL
	VR9FIj4zaP7J6d7kIXVnGd0Qlqluwm6d8tBR/tyPC4BeHChwZH7aPrK7d/MAGt/PnLtP
	UxnuPX8yKylJSkA3KMsi6VwQz3leZyLOuHEyaT5F2UlJs7dvqH4s++qMqwt0g8EPgokX
	3uiiZOfig5/D+pHlM3pOmej+0Boa1tkQ/gJdZYrf3PP65750XpUTZuEt+rO/P9Czg558
	ljCA==
X-Gm-Message-State: ALKqPwfoFiRl+PQmFyL1oFVlXZo8Q3E7gpVvKKEEXlXokhKC6c/DkfXF
	tR+7vIBNR5KNLduZu94ME05cC34RMO1LuUXJJgL21WmG
X-Google-Smtp-Source: AB8JxZr8r+Y0o3Qdt+3jZCSdL/At4tIc7bUyC/U7Pxx+xBz7DCNA2P1oVRxUtS8rJX8C5psWm7Sd71PeTgG/zfeNwJg=
X-Received: by 2002:a9d:3c68:: with SMTP id
	j37-v6mr695169ote.354.1526477262479; 
	Wed, 16 May 2018 06:27:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.201.26.152 with HTTP; Wed, 16 May 2018 06:27:41 -0700 (PDT)
In-Reply-To: <2170125.tjWsNxb8P6@tomcat>
References: <2170125.tjWsNxb8P6@tomcat>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Wed, 16 May 2018 15:27:41 +0200
Message-ID: <CAOT_U5ZCvFt1v3z5zbTzW4Uu-cxWLE-s+YrF3rLVOeq+H-vLqg@mail.gmail.com>
To: Denis <info@denisgottardello.it>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: How to create img file from a working machine
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
X-List-Received-Date: Wed, 16 May 2018 13:27:44 -0000
Content-Type: text/plain; charset="UTF-8"

Hey,
perhaps this will help you:
https://www.yoctoproject.org/docs/2.4/mega-manual/mega-manual.html#creating-partitioned-images-using-wic

On Wed, May 16, 2018 at 8:49 AM, Denis <info@denisgottardello.it> wrote:
>
>
> Hi. This is my first experience with Yocto.
>
> After having create a working machine this is the machine file list
>
>
>
> bzImage
> bzImage--4.14.30+git0+ea9330894e_74f6cd2b69-r0-qemux86-20180515055407.bin
> bzImage-qemux86.bin
> core-image-minimal-qemux86-20180515055407.testdata.json
> core-image-minimal-qemux86-20180515141056.qemuboot.conf
> core-image-minimal-qemux86-20180515141056.rootfs.ext4
> core-image-minimal-qemux86-20180515141056.rootfs.manifest
> core-image-minimal-qemux86-20180515141056.rootfs.tar.bz2
> core-image-minimal-qemux86-20180515141056.testdata.json
> core-image-minimal-qemux86.ext4
> core-image-minimal-qemux86.manifest
> core-image-minimal-qemux86.qemuboot.conf
> core-image-minimal-qemux86.tar.bz2
> core-image-minimal-qemux86.testdata.json
> core-image-sato-qemux86-20180515175948.qemuboot.conf
> core-image-sato-qemux86-20180515175948.rootfs.ext4
> core-image-sato-qemux86-20180515175948.rootfs.manifest
> core-image-sato-qemux86-20180515175948.rootfs.tar.bz2
> core-image-sato-qemux86-20180515175948.testdata.json
> core-image-sato-qemux86.ext4
> core-image-sato-qemux86.manifest
> core-image-sato-qemux86.qemuboot.conf
> core-image-sato-qemux86.tar.bz2
> core-image-sato-qemux86.testdata.json
> modules--4.14.30+git0+ea9330894e_74f6cd2b69-r0-qemux86-20180515055407.tgz
> modules-qemux86.tgz
>
>
>
> Now how can I create a img file? I have searched on the web but I have found
> nothing.
>
>
>
> Regards.
>
>
>
>
> --
>
> +39.347.4070897
>
> www.labcsp.com
>
> www.denisgottardello.it
>
> GMT+1
>
> Skype: mrdebug
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

