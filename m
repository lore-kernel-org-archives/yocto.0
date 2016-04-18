Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A3F7E00D17; Mon, 18 Apr 2016 10:02:21 -0700 (PDT)
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
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E4E9E00C52
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 10:02:17 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id a140so129470511wma.0
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 10:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:date:message-id:in-reply-to:references:user-agent:subject
	:mime-version:content-transfer-encoding;
	bh=FxgFD9CmhCbOsjBtDU2nIswg7u3fpZLLoYoo/3gXJVY=;
	b=jjbQjwFR3HMtRiJayIhVmq/7RG9u0v6TuBiUK2IyhH2W6HVZcGsn0DlpiJoT1d4KiY
	+W2dXTCY7SZvjM4u0sIzyYPWooZg9MXxvKPUg9qaB0CoZjCmS37gFlm+gEwvh8U/znXT
	K9wZ+jHclbbJIzi0KcGawt0xlLSTtCtGqQxVPc9QrtpTc2VaOnwsxDYXS8NHcwwtISNN
	YHogp5cn3V8zdgfpJCs9/PGGoMx123j60u7Jy/NoPlYaOIMR9OF/Vkvm9DMIPj423uYr
	Vm1tiTzpoEFowK3KIbpyEWApJjm3DjcqU9SmTow+6hn5rIIAAUt0/bEtas7/OkRrKXsX
	PmDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:date:message-id:in-reply-to:references
	:user-agent:subject:mime-version:content-transfer-encoding;
	bh=FxgFD9CmhCbOsjBtDU2nIswg7u3fpZLLoYoo/3gXJVY=;
	b=dniP78feKAy7qZBVKgjq5ZrlG7JskQtSTP5OOc+PWSzxLa3M1xD4JA1tQsQ2viUi4D
	1efEK4TYiVnhWTd3BfrqsWHYzW6i1/rWl9juGhvjSWbw1Iw46GTUwGTWyNJvpxhdockq
	zlKo6jfBwa71gXS5hlhPS5759lKxB/fGUPTTZb5ROi3fivfMMnArUuez4URj0Nbdn9Wq
	tpDrP2q9R4EBPpQfd9Amw49pWRTuTxiR1sj9LMnfAqhTYRVvffXz9YahtMIK/2IOJh6K
	Aqule24SqRN1nEb4PDf0+4A8mHFabCfwBqN2mNm8S0iZI/ziz0CDFM0kMVMHXml8NiEU
	kUnQ==
X-Gm-Message-State: AOPr4FUqWBl4bYWGIeGtKkQYtSKiUfJW8ZcWzo31ETXK2TrSjFbaTzNIu84sj4IPrefqtg==
X-Received: by 10.194.63.226 with SMTP id j2mr4342728wjs.27.1460998936356;
	Mon, 18 Apr 2016 10:02:16 -0700 (PDT)
Received: from [192.168.23.165]
	(HSI-KBW-46-223-219-101.hsi.kabel-badenwuerttemberg.de.
	[46.223.219.101]) by smtp.gmail.com with ESMTPSA id
	u79sm54247041wmu.8.2016.04.18.10.02.14 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 18 Apr 2016 10:02:15 -0700 (PDT)
From: Christian Ege <k4230r6@gmail.com>
To: <yocto@yoctoproject.org>
Date: Mon, 18 Apr 2016 19:01:59 +0200
Message-ID: <1542a525358.27ac.b5f386b42cd5ccf91b9cb7358bc3020d@gmail.com>
In-Reply-To: <CAJ0mxBzThx7nJN_nUoJOgy-eeOQHTN7L=v_ozae4RRRwQUX_KQ@mail.gmail.com>
References: <CAJ0mxBzThx7nJN_nUoJOgy-eeOQHTN7L=v_ozae4RRRwQUX_KQ@mail.gmail.com>
User-Agent: AquaMail/1.6.1.5 (build: 26000005)
MIME-Version: 1.0
Subject: Hi, Re: Serial Timeout
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
X-List-Received-Date: Mon, 18 Apr 2016 17:02:21 -0000
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

Am 18. April 2016 5:14:34 nachm. schrieb Markus Haege <haemarkus@gmail.com>:

> Hello there,
>
> We use a Freescale imx6 with u-boot. Everything works fine, via serial
> loader we copy
> devictree, u-boot and kernel+initramfs to the board an it all starts. We
> can login but after
> 5 sec the connection breaks and no further input is possible via serial
> console.

Could be watchdog related. You habe an external watchdog or  power monitor 
in your system?

When you run from USB you should see a hid device after a reset.

> For the rootfs we use core-image-minimal and bundle it with little code via
> a configfile which
> I add to bitbake with -R. I found these instructions in the web. Don't find
> it now.
> But why everything stops after 5 sec? I searched the web for hours but
> don't find anything.

Those fixed timing smells like timer/watchdog ...
>
> Help is appreciated, thanks
>
> Markus

>
Best,
Christian
>
>
> ----------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>




