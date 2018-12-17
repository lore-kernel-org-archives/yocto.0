Return-Path: <richard.weinberger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BE32E0053F; Mon, 17 Dec 2018 02:26:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (richard.weinberger[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 355EEE0053F
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 02:26:45 -0800 (PST)
Received: by mail-wm1-f42.google.com with SMTP id n190so11801841wmd.0
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 02:26:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=vA6GkgfyaG/H8T2RKETPGE+qsTjR7W7vNTTn5YHEG0Y=;
	b=KKiImn0Z4uwOSlCsaI+X5/PnE3cSyng0CmUJ23VwJHA5sjzJtP5pyXJTR3BfrYqcSw
	d13MaQfrypFhoZdGi0jf8X1khC8L/FbafZ4NDHl5Zzqwt+LmF4lmStxvAMaEsfNqLVHE
	h0iywGg4/ro/exGD7x5OREHkLoAkXWSZHoLp9znPPxURTFh+iX0v33MCd5KXpMvPWgA7
	+ZG8uaTQh2Xz1q0REGpxmn+ZqvM1qaav56oZou1ANmDyDDHLHkOQ8tEZuKq0rnZdNukT
	HaZrd0PaxtuPf2b3/75GQrItpzB6T6iRP3EIKcUOyqKNziHFFKCk3/TNH87NkfYDWRPa
	Bl5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=vA6GkgfyaG/H8T2RKETPGE+qsTjR7W7vNTTn5YHEG0Y=;
	b=VcQH3/kVk6RNW4ZuVzg9GxO1oTWBadIoZjKYUrwOkgkRvewfrLDXcYnQiln7+wX/Ak
	GTxHhU3FAVwoXUEM8BL33XQALveNyfsqhGyrckylj5S/M924mGg4k5fKgqV3pGuXTSW7
	L1Fbgh3XAShMURXIn7XdSLOxIE3cRchRjwoZaESaDa18h3gwBwoO5wnWzrBXV+UfgMhi
	7wbB1xJ2QykS7VcN1z0dPwOaKgE1a7It/v3kufJIhbb2uD+e4gZ3E2VnTOA4siFoKE09
	G5Z9BCOcTl+H8noDpZ8HTOW09e8UErqDR7hf8f8betKGBMuEu0x9tDuwxZqQXdl0NyRE
	LSxA==
X-Gm-Message-State: AA+aEWahWvu/JIHPms86N0et73FPxm6uTJohQ3jO7CqghElAnbNaj6XZ
	hcKFyRkPxwX0DZ0UF+5IblPKEyBRL/BQI5nPdso=
X-Google-Smtp-Source: AFSGD/Wfh67ZLhZGpwayywR4ieYMTGoiNSnkNuYkzL9otB/Ln9+Nx/1UGz2yn354KJJdMSdBv5XH2KN2YIMFRq8rcyg=
X-Received: by 2002:a1c:b14:: with SMTP id 20mr11394804wml.103.1545042404315; 
	Mon, 17 Dec 2018 02:26:44 -0800 (PST)
MIME-Version: 1.0
References: <CAFLxGvzvQyM+V1=PVHKMWEa3T6MDEC-7Sxd5D_8vG1PvWNX5Ag@mail.gmail.com>
	<9505876392c2d718fbe113e56a541de7bcc2dd41.camel@linuxfoundation.org>
In-Reply-To: <9505876392c2d718fbe113e56a541de7bcc2dd41.camel@linuxfoundation.org>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 17 Dec 2018 11:26:32 +0100
Message-ID: <CAFLxGvwJg5nvc7cL12fN_R0CJcvLmy3eW5k29zERWCW4WqMi_Q@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org
Subject: Re: x86_64 kernel with i586 userland plus SDK?
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
X-List-Received-Date: Mon, 17 Dec 2018 10:26:46 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 28, 2018 at 9:42 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> The system can definitely do it, its just not something we tend to do
> very often so its not entirely clear the best way to do it.
>
> What may work is selecting the i586 tune from an x64-64 target machine?
>
> Copying qemux86-64.conf to qemux86-64-2.conf and changing it to have
> DEFAULTTUNE ?= "i586" did appear to start to build at least in a quick
> test here...

I went this approach for now.
That way I get i586 userland and an SDK with both 32bit and 64bit toolchains.
The SDK offers me multiple environment files to include.

What I don't understand right now is, how can i tell the kernel recipe
that it has
to use the 64bit toolchain to build the kernel?

Any hints?

-- 
Thanks,
//richard

