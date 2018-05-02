Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62681E00A6A; Wed,  2 May 2018 14:05:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5E19E00A1E
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 14:05:31 -0700 (PDT)
Received: by mail-lf0-f51.google.com with SMTP id j16-v6so22903148lfb.7
	for <yocto@yoctoproject.org>; Wed, 02 May 2018 14:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=5U4ycKBtdhce76tyy0iYnRwk5p82dYaLKpD9S00vAqI=;
	b=tR60cMVCSD51mIQy8gd7MtbBEfQv4LjzUM6tAvhl3ptFfhmrvKqEKYi+LvYdl/8htA
	hvguWHyWtrzrN+PSSoIm6R2eeS9pjnZXo7AHbHXmQrSeHQF/QUoHRZtzimzbdpXDxg6Q
	7Q5v0b9VSIzJ0vsYdsXN8l8/swzaSIrAdk9O9XMmjlAuNMntmAuVMstZ9I1ZAjaIw5vJ
	IglmSgwpEA5MTfr7qRVUOWpctRHm8tb7mp5HCOIToq9Xv9cRMQYbJtoUJKexUIWogRbg
	u0k8AdTmYGejrPesXx7+w1WaC7kDHmZhFRs4dPcsO7gZTQoCRYo7tTxYYuZk8ppOUftI
	itUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5U4ycKBtdhce76tyy0iYnRwk5p82dYaLKpD9S00vAqI=;
	b=KwOMWRoGq1YyPhR9F/3LlOckB1rs5fva+iPtPwtuGRNujoj5T0ygW+0HHmM1BuUns1
	/R1Go0xs3qvmc2S+S2NoWJrXGXQmWT/IjsVkDT+pq3u9Qy3tfCw66rAXHBnPE7svqu8V
	8cIRgmAE5qOpRxxME+AsntnRKg7bfQu9DE2j0QFIUD9V70ywoms/H12C3ieZgQDxta60
	ZvRVk1isGzZxn6zS/HLIB9mGGpT/aJ4ti8DPacKidoCdlNjaoMCqR0C+lIlrFweBhz+W
	MvHswJpVKYcRe1N45icKgPBh0hz04NnFvZzq2N9FUEdRrZd+b10WKkDcEL0aUQPJF28y
	s6mQ==
X-Gm-Message-State: ALQs6tDuNiAx/YlgKiUaDVd3vfhBhxUnD8XQNlsUwsss6pUse01gjhNy
	ccvdxTS387G/PWS/z3i+HbHzgMy5lSTcWvcH76pSkyvu
X-Google-Smtp-Source: AB8JxZrjPlqWJdRCpgXimRa7SECqd6TuwqSWc7TBuu8J/2WdNjsE9s19A+t7a36c9MtyMu41CMvkQhFIBNLQ8eiPWtg=
X-Received: by 2002:a19:f014:: with SMTP id
	p20-v6mr5004810lfc.54.1525295130183; 
	Wed, 02 May 2018 14:05:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:7309:0:0:0:0:0 with HTTP;
	Wed, 2 May 2018 14:05:29 -0700 (PDT)
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Wed, 2 May 2018 22:05:29 +0100
Message-ID: <CABatt_wvpD240n7FZpr6Q+fCVqSii84XN+swdhs6Gjd2jLAogQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Can't compile out of tree kernel module when CONFIG_SYSTEM_TRUSTED_KEYRING is set in the kernel configuration
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
X-List-Received-Date: Wed, 02 May 2018 21:05:32 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I get the following error when compiling a kernel module using the
latest version of Rocko (The kernel is not linux-yocto but NXP's
freescale linux-imx, maybe this could be a factor) :

ERROR: kernel-module-driver-0.1-r0 do_make_scripts: Function failed:
do_make_scripts (log file is located at
/ws/yocto-rocko/build/tmp/work/mach_1717-linux-gnueabi/kernel-module-driver/0.1-r0/temp/log.do_make_scripts.23703)
ERROR: Logfile of failure stored in:
/ws/yocto-rocko/build/tmp/work/mach_1717-cwr-linux-gnueabi/kernel-module-driver/0.1-r0/temp/log.do_make_scripts.23703
Log data follows:
| DEBUG: Executing shell function do_make_scripts
| make: Entering directory
'/ws/rufilla/yocto-rocko/build/tmp/work-shared/mach-1717/kernel-source'
| make[1]: Entering directory
'/ws/rufilla/yocto-rocko/build/tmp/work-shared/mach-1717/kernel-build-artifacts'
|   HOSTCC  scripts/extract-cert
| /ws/yocto-rocko/build/tmp/work-shared/mach-1717/kernel-source/scripts/extract-cert.c:21:25:
fatal error: openssl/bio.h: No such file or directory
| compilation terminated.
| scripts/Makefile.host:107: recipe for target 'scripts/extract-cert' failed
| make[2]: *** [scripts/extract-cert] Error 1
| /ws/rufilla/yocto-rocko/build/tmp/work-shared/mach-1717/kernel-source/Makefile:560:
recipe for target 'scripts' failed
|

I checked the makefile and extract-cert is only compiled if
CONFIG_SYSTEM_TRUSTED_KEYRING is set which we have.

 I could install libssl-dev but it doesn't feel right installing this
and it's not in the system requirements plus the file openssl/bio.h is
in the recipe-sysroot-native directory of the kernel module WORK_DIR.


Any help would be greatly appreciated,
Marin.

