Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 558F0E00E02; Wed, 31 Jan 2018 10:57:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.52 listed in list.dnswl.org]
Received: from mail-pg0-f52.google.com (mail-pg0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 333F9E0085E
	for <yocto@yoctoproject.org>; Wed, 31 Jan 2018 10:57:03 -0800 (PST)
Received: by mail-pg0-f52.google.com with SMTP id z17so10788398pgc.4
	for <yocto@yoctoproject.org>; Wed, 31 Jan 2018 10:57:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=L6iXDUCHaJkr9w6qQDF9d86B+9LM3Eh4wYBgIwNjRH8=;
	b=sLU4KdV0yAeE82OhwhGvZzojmLapwbfsGGHv0ho92BfYmFSJpAuYnMiOVlmIN+K/Ab
	6clXkYYKVC9HdSZEqE/pqLsaPqI+6WDaK1yZz8V0zItR91OcyUQ6IAEzLa5/IORU7FsE
	CAT0dUqjn8CTHvFsXiWk3qDOmfBbBqmM+Aj0oOsaiwboVae8d7lE1BfIFVCiKE5npl+F
	9POc6YsUz56GG25RGWPj1Jk4HMMR2Fq61idWCUhiVRRz8YJARMsBtqbxklVe+awNR6XG
	ECG/BN1pAbKk/qVTa6+lzT9S7q6E8iFAqcbfW85pWM+gjDNYlYT3s4wtiEtXrw03Kd2U
	yTtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=L6iXDUCHaJkr9w6qQDF9d86B+9LM3Eh4wYBgIwNjRH8=;
	b=qUIMaCAU00paGIdmjVJajkxHAppCSnWgkTVpDNodQnvZpTqH9tzg6CqH95eU1gaDMH
	toNqjWDLSEyu+jWvmiLJVbBj2AII10YTg5f4Ez19URJwX3G2SQEG8YYsyh7zN1z3GNqT
	mBGT5QkeYdO4bl3pcIpYFXXuBGsU5AGa4sk+6X75IiW05PusJMyaIXDmM291oquFguAf
	BRxGwDASAl7jI7o3ISj0dciyojCeEbQcePA5eg85/wVqswRIJ+4xj9qq8YWk+NnPoMcK
	RphN7kJThbVPIfeDp/43LbhxFvIh3nSmnWlmIZZh0+z3eogWbPAB57v1bjs7j83E0utL
	/f9g==
X-Gm-Message-State: AKwxytcAR93BT5/3q40/sVWa6HeAxrkTImaaPmY8nX/PveEJJ/hQ5rk5
	xXgyVcp4I0tfLRLPrLyodjI9ipplLjdyaMyMOd8=
X-Google-Smtp-Source: AH8x225Zh2G2nf9uVRXHib5aq8ZmqXTDlux0K6bir6UVv4HXu94AienwXq7Gp+ugyFVXBqqjEn1HA7EmxjFdm1F14iM=
X-Received: by 10.99.181.13 with SMTP id y13mr22596436pge.196.1517425022470;
	Wed, 31 Jan 2018 10:57:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.161.170 with HTTP; Wed, 31 Jan 2018 10:56:32 -0800 (PST)
In-Reply-To: <AM4PR08MB289977F5166DA17908D660498EFB0@AM4PR08MB2899.eurprd08.prod.outlook.com>
References: <AM4PR08MB289977F5166DA17908D660498EFB0@AM4PR08MB2899.eurprd08.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 31 Jan 2018 10:56:32 -0800
Message-ID: <CAMKF1soOMrVJu_TDR1ZxRd9VJrc97=t+f54rfBDHkCCia99YwQ@mail.gmail.com>
To: Pieter Cardoen <pieter.cardoen@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gcc leak-sanitizer on arm target
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
X-List-Received-Date: Wed, 31 Jan 2018 18:57:05 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 31, 2018 at 7:06 AM, Pieter Cardoen
<pieter.cardoen@hotmail.com> wrote:
> Dear
>
> I am having trouble to enable leak sanitizer and thread sanitizer for my arm target. If I enable gcc-sanitizers, I only have these libraries on the target rootfs:
> * libasan.so.3
> * libasan.so.3.0.0
> * libsanitizer.spec
> * libubsan.so.0
> * libubsan.so.0.0.0
>
> liblsan.so.* and libtsan.so.* is missing.
>
> I took a look into the build directory:
> tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gcc-sanitizers/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libsanitizer/
>
> in file asan/Makefile, I find "toolexeclib_LTLIBRARIES = libasan.la"
> while in file lsan/Makefiel, it is commented out: "#toolexeclib_LTLIBRARIES = liblsan.la"
>
> Is it possible to compile the leak and thread sanitizer library for arm?
>

it was only tested on x86  in past so its not included in other
arches. You can however try it out
by adding

IMAGE_INSTALL_append = " liblsan libtsan"

to local.conf and if it works report back and we might cook a final
patch to enable it unconditionally.

> Thanks
> Pieter
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

