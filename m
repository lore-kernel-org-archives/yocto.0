Return-Path: <max.oss.09@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1570E00510; Mon, 27 Feb 2017 12:11:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (max.oss.09[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.174 listed in list.dnswl.org]
Received: from mail-wr0-f174.google.com (mail-wr0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2753E004D8
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 12:11:24 -0800 (PST)
Received: by mail-wr0-f174.google.com with SMTP id g10so59902777wrg.2
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 12:11:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=8OmkPU3AcWVQs0Ln285YwPDCcUkpP/3drO4qTgWl/v0=;
	b=bRCT4s6S94cCkFGOyuIZ8mOYbYZxT6KkWz1VuWT9UFmD+ki+Qe+BkjRqtl+XRo+b3G
	Z1L3AjSEaoAWFJL/31DPbBsLfGsgT9PacqIFK6yeCGyUxm+O0pBBX8RHv/HkYkFU2xdO
	AH5Ug9rGV6Ot7YkPLp2OyNxLTp4ddYRPsVicIZhcKvX9Z84Z9ThK9LiL9WizL1jUBCDQ
	yf9PzdeXHGHiexMEzOKKvqDL5COh3oeQJgoP/fdvWT+TD12arBfeC2tIjtvRHEEhks2p
	61E9TqYOYS9GFeBRnYAcT6aqBsS5PIaKaLSByl3h2GZG2+Sb/LVr7/BGu3aqDvePtp0Y
	0g9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=8OmkPU3AcWVQs0Ln285YwPDCcUkpP/3drO4qTgWl/v0=;
	b=Zxc23R+K7J1PxXgUhu9lHFEsADN+KWaN9VzXKnbhJMJBqGSx4ctqI3rqI+HHyWtjE7
	OiP2cUuaYEwbDCd6hhiAClydI17KEGsJrf9Jspn+OOCcetEDlblkMowJO62H9/hRlW2A
	Hj8R6v0VK074t71wIxVBn4PkhcU7dYu7km5GzKLy1i7k+kzBdeolBTxbKlP9O5YYvPmS
	Jhz0w+z9OCDtEz4oVOiA7kwfD+qzJH7HUXhbbwtoSgACXJrJ89MKFUkgED8RR2mtWOQE
	jW5iuCkKJjIyOihOsqOnVgTZQe6p54QQQRWQZIKScGB7G6krOAUwe2Kd8HR0+K8O1xZq
	jkWQ==
X-Gm-Message-State: AMke39k0kcTfkrTebYPcCnKB6CfAQwpdTCQLD/Py2bsGUCYCFFgDFQNLJY1D3f5EWYBQhg==
X-Received: by 10.223.166.5 with SMTP id k5mr7670765wrc.134.1488226283504;
	Mon, 27 Feb 2017 12:11:23 -0800 (PST)
Received: from Saturn.local.all ([194.191.225.83])
	by smtp.gmail.com with ESMTPSA id
	39sm23614907wrv.55.2017.02.27.12.11.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 27 Feb 2017 12:11:22 -0800 (PST)
Message-ID: <1488226281.2083.7.camel@gmail.com>
From: Max Krummenacher <max.oss.09@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 27 Feb 2017 21:11:21 +0100
In-Reply-To: <10426572-3dbf-9403-f73b-ecbcb3a02157@mlbassoc.com>
References: <10426572-3dbf-9403-f73b-ecbcb3a02157@mlbassoc.com>
X-Mailer: Evolution 3.16.5 
Mime-Version: 1.0
Subject: Re: Shared library question
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
X-List-Received-Date: Mon, 27 Feb 2017 20:11:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi

Am Montag, den 27.02.2017, 15:03 +0100 schrieb Gary Thomas:
> I trying to create a package am335x-pru-support which creates a
> shared library used by another package pru-examples.  The library
> files installed with am335x-pru-support are (from <BUILD>/image)
> -rwxr-xr-x 4 gthomas gthomas 17074 Feb 27 13:40 usr/lib/libprussdrv.a
> lrwxrwxrwx 1 gthomas gthomas    16 Feb 27 13:40 usr/lib/libprussdrv.so -> libprussdrv.so.1
> lrwxrwxrwx 1 gthomas gthomas    18 Feb 27 13:40 usr/lib/libprussdrv.so.1 -> libprussdrv.so.1.0
> -rwxr-xr-x 1 gthomas gthomas 22092 Feb 27 13:40 usr/lib/libprussdrv.so.1.0
> -rw-r--r-- 4 gthomas gthomas 8074 Feb 27 13:40 usr/include/pruss/prussdrv.h
> -rw-r--r-- 4 gthomas gthomas 4286 Feb 27 13:40 usr/include/pruss/pruss_intc_mapping.h
> 
> These files are split by the packager as:
> gthomas@europa:packages-split$ find am335x-pru-support | sort
> am335x-pru-support
> am335x-pru-support/usr
> am335x-pru-support/usr/lib
> am335x-pru-support/usr/lib/libprussdrv.so.1
> am335x-pru-support/usr/lib/libprussdrv.so.1.0
> gthomas@europa:packages-split$ find am335x-pru-support-dev | sort
> am335x-pru-support-dev
> am335x-pru-support-dev/usr
> am335x-pru-support-dev/usr/include
> am335x-pru-support-dev/usr/include/pruss
> am335x-pru-support-dev/usr/include/pruss/prussdrv.h
> am335x-pru-support-dev/usr/include/pruss/pruss_intc_mapping.h
> am335x-pru-support-dev/usr/lib
> am335x-pru-support-dev/usr/lib/libprussdrv.so
> 
> These files get staged correctly to pru-examples recipe-specific-sysroot
> and I can build and link against them, using DEPENDS="am335x-pru-support".
> The problem is that when my build (target recipe) uses
>    $(CC) my_target_program.c $(LDFLAGS) -lprussdrv
> it gets satisfied by /usr/lib/libprussdrv.so and not /usr/lib/libprussdrv.so.1
> This in turn appears to keep the pru-examples package from having
> a runtime dependency against the am335x-pru-support package and the
> necessary library file does not end up on my target.
> 
> I've tried to work through this, following many recipes as examples,
> e.g. meta/recipes-multimedia/libogg (pattern for am335x-pru-support)
> and meta/recipes-multimedia/flac (pattern for pru-examples).  The
> libogg/flac combo works correctly, mine does not :-(
> 
> Any pointers on what I might be doing wrong?  I'm so close to getting
> this stuff going, it's just the packaging that's going to claim the
> last hairs from my head...

When linking a shared object file you have to pass the linker a soname which adds compatible version
information into the share object file.
Have a look here:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-arm/commit/recipes-bsp?id=7ff327a4e3e8e19d1e3f848
865b6b27ba9f6250b
http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html


Alternatively you can drop the libprussdrv.so.1 and libprussdrv.so.1.0, and force with FILES... the
libprussdrv.so into the not -dev package.
Probably you would also want to INSANE_SKIP_${PN} = "dev-so".


Max





> 
> Thanks
> 
> n.b. I'm happy to share any of the recipes, I just left them out for brevity.
> 
> -- 
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------

