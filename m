Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCB0CE00EB6; Thu, 21 Jul 2016 06:42:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E485E00EB2
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 06:42:36 -0700 (PDT)
Received: by mail-qk0-f194.google.com with SMTP id p126so6422553qke.1
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 06:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=N1dr/WTiVLJLnLk7Na7zeqt2YfcempklkGcWYytynt8=;
	b=YvscIcKRDQB7aUQTYQfq/KvErJbTeWbszefTsgB9KhpjJBHlT5IHI50gOt/yiYbpz3
	2ovxlJMlL8VzF3DadO4MRGB7Nk6dRP5nqXKmz8zB8cNpAixWBEDOd/vE1E33EmVWTHOw
	uNUL6x9bA3flFAOD2UuO/8oZ/Ij9S/0G1A28pu21BqqUZSSeDst0U/rrvSj0JOZJKsyd
	qyLQKJe20hZ+TcD2Bbd+J3NnozyLfRkMmKkjADZhsA+4rrd9pJfFUPkhF/g4Vr0GA9i+
	T+WE1TcwExWZV6U+rX5edcnmy+qWugSffEoooZis9KHabJmaKeS6r9p9LHNqlwrkFQMh
	fMWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=N1dr/WTiVLJLnLk7Na7zeqt2YfcempklkGcWYytynt8=;
	b=V5u9xdNg0sUwpHb+qzaDi8odyRuTR36sPy7ki+b3gijmJ0ZQZQWTpFv+4FJwUdfV4u
	ksr5wJhDyPX/wT+SeKLwXt5XF7U4pd/FH1+UNrrqm+ervTD43Ja0SelZb8IPn1tUyw4f
	jN2JvYSU/66N1Ob6Bd5iDOABofEQWKY4imS71d+f/80g33Ehdy9FeWQic9FUfxy7UQJf
	DfWBSHexXnddC4pLqowtaZpVHt4oFmqKulyIGenMbvPUL1OlG+eXvImOs1dz4WXS/SuM
	JvlDfLq+tz3YDbZtmF0unVRCd7LsUG4XZLg5ECi/o8M2B9ywKwwSTBWl/AOsjWL15rG9
	OS/A==
X-Gm-Message-State: ALyK8tIQ9+S7h7BAfQE4SqXmnUXUZKo/BedWQSaKpjRA+E+NAsZhGcmYnGkC7hQRAVRLOokEXvmC3J7zFO8+jQ==
X-Received: by 10.55.74.138 with SMTP id x132mr69604803qka.26.1469108555910;
	Thu, 21 Jul 2016 06:42:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Thu, 21 Jul 2016 06:42:06 -0700 (PDT)
In-Reply-To: <57909348.8050000@caviumnetworks.com>
References: <57909348.8050000@caviumnetworks.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 21 Jul 2016 06:42:06 -0700
Message-ID: <CAMKF1srf7BFS7a-cPgkSc67u=J0aBMYQDp-d3PW8aevz-TmCYw@mail.gmail.com>
To: Manish Jaggi <mjaggi@caviumnetworks.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: populate_sdk and external toolchain
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
X-List-Received-Date: Thu, 21 Jul 2016 13:42:38 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 21, 2016 at 2:18 AM, Manish Jaggi <mjaggi@caviumnetworks.com> wrote:
> I am trying to build sdk (using populate_sdk option).
> Toolchain being used is an external one.
>
> When I run bitbake core-image-minimal -c populate_sdk, I get the below error
>
> | checking for x86_64-pokysdk-linux-gcc...  /home/manish/poky/build/tmp/work/x86_64-linux/gcc-crosssdk-initial-x86_64/5.2.0-r0/gcc-5.2.0/build.x86_64-linux.x86_64-pokysdk-linux/./gcc/xgcc
> -B/home/manish/poky/build/tmp/work/x86_64-linux/gcc-crosssdk-initial-x86_64/5.2.0-r0/gcc-5.2.0/build.x86_64-linux.x86_64-pokysdk-linux/./gcc/
> -B/home/manish/poky/build/tmp/sysroots/x86_64-linux/usr/x86_64-pokysdk-linux/bin/ -B/home/manish/poky/build/tmp/sysroots/x86_64-linux/usr/x86_64-pokysdk-linux/lib/ -isystem
> /home/manish/poky/build/tmp/sysroots/x86_64-linux/usr/x86_64-pokysdk-linux/include -isystem /home/manish/poky/build/tmp/sysroots/x86_64-linux/usr/x86_64-pokysdk-linux/sys-include
> --sysroot=/home/manish/poky/build/tmp/work/x86_64-linux/gcc-crosssdk-initial-x86_64/5.2.0-r0/gcc-5.2.0/build.x86_64-linux.x86_64-pokysdk-linux/tmpsysroot
> | checking for suffix of object files... configure: error: in
> `/home/manish/poky/build/tmp/work/x86_64-linux/gcc-crosssdk-initial-x86_64/5.2.0-r0/gcc-5.2.0/build.x86_64-linux.x86_64-pokysdk-linux/x86_64-pokysdk-linux/libgcc':
> | configure: error: cannot compute suffix of object files: cannot compile

there should be a config.log file in build directory of libgcc which
should have more details as to why compiler failed

>
> Is it possible to remove gcc-crosssdk from populate_sdk script ?
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

