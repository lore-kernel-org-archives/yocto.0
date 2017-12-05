Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FAADE00D6B; Tue,  5 Dec 2017 01:22:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f175.google.com (mail-ot0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD0B0E00C97
	for <yocto@yoctoproject.org>; Tue,  5 Dec 2017 01:22:10 -0800 (PST)
Received: by mail-ot0-f175.google.com with SMTP id s4so17310617ote.4
	for <yocto@yoctoproject.org>; Tue, 05 Dec 2017 01:22:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=8l/ELnj6iJo7d5Hkd3PvxZUjC8wsmDxqN0mL53aXzdE=;
	b=Tj8ACeIz31ObaT7YSgUkEOaSU5JHe7x6W9Ejnn6lzT8aGXrGscBafMlo0JjuLt5uwV
	pBuUi3RYDkVnILGCKqy/8dkVbfVhyYEvtwrsTylO+SBoUDFkXdBgvb8HMr+j6bngkVzM
	B0LcjbQPMyJeJXRxorQUavnspxvIpHVvAxSpIROqs6iPqa1U38fUgdl/woUwynXF62Jp
	aw/pifM7B32L5L7pQ7ZPm5svHxKismQDxXxPsiuiUe+X45MxnfecuQixQrFw1lihfIr9
	GDeTF3OdgyS8cYCBWEnYei/mpks4yxpmW4GokH0Qp+4IkZ79TvDFH4Gwu8mowYfTalQl
	AFQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8l/ELnj6iJo7d5Hkd3PvxZUjC8wsmDxqN0mL53aXzdE=;
	b=aSYWpKohSqbiOVnVWnnCZmb6rkcJ3AQjfLH6j66pmwb2tC0IVNxapGKA2lUlt3TmRZ
	+iNN960DW5VAgHyoATxk3xMZhZd1sOMo6Ghgh9nYkjOOCCZCOIrg01ZDvQDDgV4mgX0D
	TCA+RHBA55cNm9g1LXWW3P9wz2QQZiT0rxaWY67+mvH3uEUP4dC7vvdiDkQk2iGvEwgm
	s155zbZwhGEHMmJqzgmzpRIivr+DVfw65p45iF02MCxT17Hpk5DEnUQBePOZYTKT9iuT
	S2Cz67Q/LAweCVzBi6Oy0jPGfGj8YF1RF6bP+dH/Vbu9JQpAwxbqOthLj4WVe3+kL0xg
	3ORg==
X-Gm-Message-State: AJaThX59Sa/QlMyaEthHRXhXCdkPcWrrR4pDYBDQB8U5qt53/+EySeFJ
	j8g84fHX+wG+uDVWttFmsbVyCtl8tseZC2yTfBk6GIfg
X-Google-Smtp-Source: AGs4zMZWu7K/delvI90Ct9FGm5kFrbZrs69cimiY6zBiNi/ec4g1LuVZCJ8/6LNjHHE8NwIJcubdTtSj/lXkuWlc1qA=
X-Received: by 10.157.11.67 with SMTP id p3mr19318853otd.43.1512465729623;
	Tue, 05 Dec 2017 01:22:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.194 with HTTP; Tue, 5 Dec 2017 01:22:09 -0800 (PST)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Tue, 5 Dec 2017 10:22:09 +0100
Message-ID: <CAOT_U5ZfWRv=SYALeqFZui=974w3HaTZ1X+azg+U_jNV3axKJg@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Changing device tree inside of the devshell
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
X-List-Received-Date: Tue, 05 Dec 2017 09:22:11 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
I had to made some device tree changes inside of a devshell.
Just changed the .dts file and exited the shell.

I built the image after that and got the message:

...do_compile is tainted from a forced run
...do_deploy is tainted from a forced run

which made sense given the manual changes I've done.
However, the changes haven't made their way into the image.

Even when explicitly doing a deploy step (linux-senic is our kernel recipe):

bitbake linux-senic -C deploy

the correct .dtb doesn't find it's way into the image final image.

My assumption was that any changes done in the devshell would
be recognized and the required steps will be rerun automatically
on a full image build.
This ended false.
Anyone knows where the error might lay?

