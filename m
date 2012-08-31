Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CB07E00283
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 13:51:40 -0700 (PDT)
Received: by eabd1 with SMTP id d1so1120891eab.35
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 13:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=5X7Xzg/LVNLq4ZEos9+yqx5yEdh7Tu4xbIXPx8wamgc=;
	b=LDo6j6j+m3J4ILE8zXKPT8G1uI2rQMCqB0zS8tFN+5u4MxF0DsPxmNTU8b/0UPgpOl
	XBpvHkIz3Al0qo0cQi31v9QdnpxDQepC1wopSaiIOk229nlkcU+ZtLtj5iFKlWTDEW1U
	yUgSahdCKRZA7oW7y+6P6kgd0mzrU2L9U0J9n8ArSAG1shAVKfvM4ouPUzLcPcui8SV/
	FxZNnQiV3JEK729S91See4mJrdYD79tgu4U5FetdQJFdpfzfGHd3Nll/3ry8q94D0VdQ
	OkHwcDEd7fFz2GZJeerakkFwVvPT6MVkpU9TS4V01MhiT4GcJ6L27kz7FYrH/eOutLGF
	zMuA==
Received: by 10.14.202.66 with SMTP id c42mr12809982eeo.35.1346446294890; Fri,
	31 Aug 2012 13:51:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Fri, 31 Aug 2012 13:51:04 -0700 (PDT)
In-Reply-To: <50407985.7000108@communistcode.co.uk>
References: <5040751B.2070900@communistcode.co.uk> <1800372.7lpHqO07Rq@helios>
	<50407985.7000108@communistcode.co.uk>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 31 Aug 2012 13:51:04 -0700
Message-ID: <CAMKF1sqVE38WWQ6XVSFK9Do0raWRfKf8mpiLCdEq1DfSq9pGUw@mail.gmail.com>
To: ml@communistcode.co.uk
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-raspberry pi libav bbappend
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
X-List-Received-Date: Fri, 31 Aug 2012 20:51:40 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 31, 2012 at 1:44 AM, Jack Mitchell <ml@communistcode.co.uk> wrote:
>
>
> "meta-raspberrypi/recipes-multimedia/libav|meta-raspberrypi/recipes-core/systemd"

I wonder whats inside meta-raspberrypi/recipes-core/systemd

