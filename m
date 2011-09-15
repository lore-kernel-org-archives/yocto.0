Return-Path: <eballetbo@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03550E004F1
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2011 08:29:05 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iabz7 with SMTP id z7so2048847iab.35
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2011 08:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=0Tl+Ng4coBsUs4CmwEIi5aRdOf6b8gVhoJsswfThJdM=;
	b=A5BtlI8Kf8A9M7Igs1FoVigwqqFkICRkyzVk1am6G9WRtc31hmszKu1SG8vrtxXUFR
	0gsda5Gh85HnIMpd6Ry/zoXXkEiAKzyzUYc1Qy2S8XDp83zfooviFm4qX4f95Z1Wu3MJ
	q9WXW5uJDsQJmPGxhmiXjo0ng+Bt4MDgDEMB8=
MIME-Version: 1.0
Received: by 10.231.45.73 with SMTP id d9mr2009832ibf.64.1316100542398; Thu,
	15 Sep 2011 08:29:02 -0700 (PDT)
Received: by 10.231.158.72 with HTTP; Thu, 15 Sep 2011 08:29:02 -0700 (PDT)
In-Reply-To: <20110915150619.GC7445@jama.jama.net>
References: <1316098483-3446-1-git-send-email-eballetbo@gmail.com>
	<20110915150619.GC7445@jama.jama.net>
Date: Thu, 15 Sep 2011 17:29:02 +0200
Message-ID: <CAFqH_5323YPh9UMkQFSY6M7AbCti4KM7ryHMjQnJ9PqiMoGM8Q@mail.gmail.com>
From: =?UTF-8?Q?Enric_Balletb=C3=B2_i_Serra?= <eballetbo@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] openssh: Create /etc/ssh/ssh_host_ecdsa_key if it doesn't exist
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
X-List-Received-Date: Thu, 15 Sep 2011 15:29:06 -0000
Content-Type: text/plain; charset=UTF-8

2011/9/15 Martin Jansa <martin.jansa@gmail.com>:
> On Thu, Sep 15, 2011 at 04:54:43PM +0200, Enric Balletbo i Serra wrote:
>> From: Enric Balletbo i Serra <eballetbo@iseebcn.com>
>>
>> After OpenSSH 5.7 the ECDSA is the preferred key algorithm when
>> both the client and server support it.
>
> Please use right mailing list for oe-core patches..
> http://lists.linuxtogo.org/pipermail/openembedded-core/2011-September/009613.html
>

Sorry, I missed this ML, I was subscribed to openembedded MLt but not
oe-core ML, lots of list and sometimes don't known where to send the
patches.

Best regards,
   Enric

