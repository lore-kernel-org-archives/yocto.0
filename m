Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31D1DE006C0
	for <yocto@yoctoproject.org>; Sat,  8 Dec 2012 21:21:52 -0800 (PST)
Received: by mail-ie0-f170.google.com with SMTP id k10so5798306iea.29
	for <yocto@yoctoproject.org>; Sat, 08 Dec 2012 21:21:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ZQytGUu0F008bnrUrZArbp/k0uQhjj1ztDR6gprBm3I=;
	b=tFsVGDkxYajDrkuDXFhQvidaF2K4yiXIUGd8Q3RUQV3vrpvI0AW5BAz5P71ulNaLKI
	ugclQq74qhTtJ2VT7RrSc3sPDslKEKjzcaXj4e6Xbi9aeRRY2GPu2O2KRD0deV7tOpMM
	oT9a/PHjrTSjtdAC9O0v0hspOI63G05AgxRKC+hUZY0Yk2PhVHsLcBT48mQ3oJEeXDt4
	UPYpi0aYPGcyO7NnYD9Rm7Hgj1PxBgjBUunTfaZ3pmM6Cl9woenZvP0+iGIodZjXgFHs
	LEEBFvgSTldMAJcpCQqIk6yYA3KvW7J2mwUZJ0s1ayGW8uJ8yvewEiW78V/aK2z3vaOV
	aSJQ==
Received: by 10.50.6.169 with SMTP id c9mr3325597iga.24.1355030511701; Sat, 08
	Dec 2012 21:21:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.167.165 with HTTP; Sat, 8 Dec 2012 21:21:30 -0800 (PST)
In-Reply-To: <000b01cdd5ca$850cefa0$8f26cee0$@annabooks.com>
References: <CANge7vUOfMWzkokgvDQ3imc8xQTBMLBkfonvQyJyDyJfqE4udg@mail.gmail.com>
	<000001cdd4f4$024e7f60$06eb7e20$@annabooks.com>
	<CANge7vVpMeEHgAK8M_tNXHBGexowv7dCDHgLqmcA6k-4ogwkTw@mail.gmail.com>
	<001401cdd568$7ccae840$7660b8c0$@annabooks.com>
	<000b01cdd5ca$850cefa0$8f26cee0$@annabooks.com>
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Sun, 9 Dec 2012 00:21:30 -0500
Message-ID: <CANge7vUauzj9m1V+MYRP_VjLu_=EZr5DdZYiV2K_jS2g7VZfwA@mail.gmail.com>
To: Sean Liming <sean.liming@annabooks.com>
Cc: yocto@yoctoproject.org
Subject: Re: QA issue with custom recipe
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
X-List-Received-Date: Sun, 09 Dec 2012 05:21:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

> Jon,
>
> Thanks for your help. It was a path problem with the install call. Digging
> into the working directory the copy from path needs to be specified.
>
> Regards,
>
> Sean Liming
> Owner
> Annabooks
> Tel: 714-970-7523 / Cell: 858-774-3176
>

Hi Sean,

Good find! Sorry, I missed that install issue earlier.

Note that if you're only installing a single file, you can make that a
one liner:
do_install() {
  install -D -m 0755 ${S}/helloyocto ${D}/{bindir}/helloyocto
}

Best of luck! :)
- Jon

