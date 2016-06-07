Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEB23E00B7A; Tue,  7 Jun 2016 00:23:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com
	[209.85.215.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADAB8E009CD
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 00:23:52 -0700 (PDT)
Received: by mail-lf0-f66.google.com with SMTP id u74so270557lff.0
	for <yocto@yoctoproject.org>; Tue, 07 Jun 2016 00:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=i1B7994zzt7vilwOS0kZPkNENrcmOMlAc9PSF9C7ONM=;
	b=H3g71MYfOaqvP90JrwfDP+yV+Y3TcWnx0OqH1DZ29qc44lQ+naSJiedhaGJdnc3vFk
	b04uPd6s03n1es1StsOUsa1G1H9wgflQGmca7v2S5gqMUqjgkeSTCvyuBpYp78QHugTu
	ZIBsm84M1+GasoeEXxfmO8036TQMMbYkJrJtwUwNrnBJVQjkDMyo0fYgOtpjAz3cFowK
	8WyTnUC2rSlzjnpKu0iRVEkS3UxSbq/6OOW6rVJR0p8gQYfyx19KOkpGuxeNUJza2pvf
	d7E6FgTcYbpihFYCTQqAgs3ZpUPPMZmGEtx255tgM8xGrZvXwREpkjQXBJ/pIVhGUg/N
	BV8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=i1B7994zzt7vilwOS0kZPkNENrcmOMlAc9PSF9C7ONM=;
	b=MzkvDxm8h6BQPneNZ4gBKZPMTdbLbKs1Q8JS+0RUlnjM8hLEXd0ccgc+Dyp1Uj4GIY
	6zadoe0F2qG7kLsb4wiBtgJhz72Ljn33TVsrcYMkXWcFAOOxw80AiL7dJ37U3Mf2DBAL
	+6eMUaRyVAvP1sc6YtyUc4mjAZrALjmbJgjZ67qv/CIu4lQHpMOPqnmlz3/vDi/Cb0Ds
	Fy9OnJo8Ha7vfKxWwabIBlDELN0/kjCeyKB3OpXInwYZjnGISqrxHzGH7Gt+6bUUWGhF
	hDZ7ocEKr2KSO18MaiPKDAOXa/E96kjsoxvp+pLjFc1imGJjq4X/15DiQquBDCtnL16X
	l88Q==
X-Gm-Message-State: ALyK8tKmzdFbFqKrfQszXjXfdxbN7zjDv4IqRg/7ZMUJlNr27AOykTgTNdB/tKQEh1Q6lFjnP8qGQ/nLTAb8lw==
X-Received: by 10.25.8.7 with SMTP id 7mr2698104lfi.201.1465284230330; Tue, 07
	Jun 2016 00:23:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.147.147 with HTTP; Tue, 7 Jun 2016 00:23:49 -0700 (PDT)
In-Reply-To: <1464711861504.4240@seescan.com>
References: <1464704048-29897-1-git-send-email-bobadeshrikant@gmail.com>
	<1464711861504.4240@seescan.com>
From: Christian Ege <k4230r6@gmail.com>
Date: Tue, 7 Jun 2016 09:23:49 +0200
Message-ID: <CAALGJZa4g+_VmvMCb1NZm909kwwm7qbdTG=W7BEa3axVmzdGaA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: calibrator fails to run
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
X-List-Received-Date: Tue, 07 Jun 2016 07:23:55 -0000
Content-Type: text/plain; charset=UTF-8

Hello Frederick,

> Goal: Run a cross compiled executable called calibrator from git://git.ti.com/wilink8-wlan/18xx-ti-utils.git
>
> Here's my build script:
>
> export NFSROOT=/srv/imx/CS65X-dev
> export CROSS_COMPILE=/opt/prickle/1.7.2/sysroots/x86_64-pricklesdk-linux/usr/bin/arm-prickle-linux-gnueabi/arm-prickle-lin    ux-gnueabi-
> export NLVER=3
> export CFLAGS="-mfloat-abi=hard -I/opt/prickle/1.7.2/sysroots/cortexa9hf-vfp-neon-prickle-linux-gnueabi/usr/include/libnl3    "
>
> make
Maybe better use
source /opt/prickle/1.7.2/environment-setup-armv7ahf-vfp-neon-poky-linux-gnueabi

and after this you can use
export CROSS_COMPILE=arm-prickle-linux-gnueabi-

BTW I am using this recipe to compile the TI tools for my UDOO meta layer
https://github.com/graugans/meta-udoo/blob/krogoth/recipes-bsp/wl18xx-conf/wl18xx-conf.bb

Maybe this is an option for you too


From the output it looks like hardfp/softfp missmatch..

Regards,
Christian
> sudo make install NFSROOT=/srv/imx/CS65X-dev
>
> ----------------------------------------------------------------
>
> This will build the library and install it onto my system.
>
> However, when I run it, I get:
>
> root@yocto:~# /usr/bin/calibrator
> -sh: /usr/bin/calibrator: No such file or directory
>
> But the file does exist, and it even looks like the proper type of executable:
>
> root@yocto:~# file /usr/bin/calibrator
>
> /usr/bin/calibrator: ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Li
> nux 2.6.32, BuildID[sha1]=96e4d113a9e1a0e90fd60d8d0a59e19323457b5d, stripped
>
> Here's my hardware info:
>
> root@yocto:~# cat /proc/cpuinfo
> processor       : 0
> model name      : ARMv7 Processor rev 10 (v7l)
> BogoMIPS        : 1988.29
> Features        : swp half thumb fastmult vfp edsp neon vfpv3 tls
> CPU implementer : 0x41
> CPU architecture: 7
> CPU variant     : 0x2
> CPU part        : 0xc09
> CPU revision    : 10
>
> Hardware        : Freescale i.MX6 Quad/DualLite (Device Tree)
> Revision        : 0000
> Serial          : 0000000000000000
>
> Any ideas on where to start?
>
> Thanks.
>
> Frederick
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
http://ch.ege.io/

