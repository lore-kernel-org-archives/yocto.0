Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A5C6E00B3D; Tue,  6 Jun 2017 07:06:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F481E00A94
	for <yocto@yoctoproject.org>; Tue,  6 Jun 2017 07:06:09 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id 7so98412479wmo.1
	for <yocto@yoctoproject.org>; Tue, 06 Jun 2017 07:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Kn3FO0Ubk5rWb0ThfEgGzXCokl/w5DaD5S0G6ofXDCw=;
	b=YbSWseVOH/4VyxHdE14IorDjYCdjT83n/nhnuNhodMKrBRbNQoVpKip1cYclOU/2qw
	z5CRXG91a4StekVE/G8NtmZrkCrcxhpMTLvF5Wowoj4ua/IMrM9OVPMrZFfZgKvMNf5c
	4RJ24psnxFIC4mSdYqJ/LYgRDULZBKE0G94XEgU5iTiT9fw3NyYVEM6NFIWB9bLWiKVq
	3pzqNSg3YZimRsAgK7P9ISYqJhMOHiz9EuDXm0a4bQpJmrxs8Sy3uObxuzz4qb/kvSuV
	9mixvsTHDw9M3DDlgOew+NGRFe7yHBSfX9M+IRJ+tTTzKga6vgJhYJ1tm2GfsjnQZpni
	v3XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Kn3FO0Ubk5rWb0ThfEgGzXCokl/w5DaD5S0G6ofXDCw=;
	b=kYmfzF31lqFLO55K8oQ6qhoeY8B/QxVfyW8S0NCUWhnJgvBtzJfTUOg9R9Vu3V1wvK
	1T1llzvphYngFUeASA1NiW7OenMfG1c/kEStgK9M4wXH2H1wJo46EldUR9LRYF/k2erD
	R7MFzr20c0llVw9VHsulaqML6d2kPPkiqXm+fyZWg2HBbvmRLAD7hACjniz360cnFbl4
	KgW8opu9BAFd5LDFewQ+vGktldmE4jOacpcTMC7J3M2y0zCDlloQN0ouapa0eVbtJEYA
	8sjMDAaaZKz95u9zfasBizVe7r/xHn3r2pNt6nNdznurxwh5gBCczKgzFld/5KQ2yYlY
	bs7A==
X-Gm-Message-State: AODbwcB/4rRnBBrPJ4Ql4fngYwv9bVQp1DvIoKepwKSdi1AcDBQ79RGW
	/zPkF3j2ehyx6gL4cKx+KCB5Qv8wQA==
X-Received: by 10.80.147.195 with SMTP id o61mr20375032eda.178.1496757968099; 
	Tue, 06 Jun 2017 07:06:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.153.222 with HTTP; Tue, 6 Jun 2017 07:05:37 -0700 (PDT)
In-Reply-To: <CACHUKC+vL6KRQq0r24T8px1SteB4o76gFtVG-CccY2vYDm6ytA@mail.gmail.com>
References: <CACHUKC+vL6KRQq0r24T8px1SteB4o76gFtVG-CccY2vYDm6ytA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 6 Jun 2017 07:05:37 -0700
Message-ID: <CAMKF1spXCA_4W-wEkP+f3PVP-hq=0E0jTzVZieNfWqJTq2L4EA@mail.gmail.com>
To: Zhuoqun Cheng <czq@bu.edu>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The best way to change target architecture
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
X-List-Received-Date: Tue, 06 Jun 2017 14:06:13 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Jun 6, 2017 at 5:42 AM, Zhuoqun Cheng <czq@bu.edu> wrote:
> Hi Yocto Experts,
>
> I'm fairly new to Yocto and I've already tried my best to search for
> answers, but not happy with what I found.
>
> So here's the situation I've got:
>
> I'm using yocto to build the intel aero board image, following this link:
> https://github.com/intel-aero/meta-intel-aero/wiki/Quickstart-Guide#yocto-for-intel-aero
>
> Everything worked fine, until I wanted to change the target architecture
> from the default 64-bit x86 to 32-bit x86. What I did is three steps:
> 1. do a clean: bitbake -c clean intel-aero-image
> 2. change configuration, from "require conf/machine/intel-corei7-64.conf" to
> "require conf/machine/intel-core2-32.conf" in the file
> "meta-intel-aero/conf/machine/intel-aero.conf"
> 3. do a build: bitbake intel-aero-image
>
> Unfortunately, I got loads of errors, like "ERROR:
> linux-yocto-4.4.60+gitAUTOINC+2cc78e92f4-r0 do_package_qa: QA Issue:
> Architecture did not match (3 to 62) on
> work/core2-32-intel-common-poky-linux/linux-yocto/4.4.60+gitAUTOINC+2cc78e92f4-r0/packages-split/kernel-module-gspca-kinect/lib/modules/4.4.60-yocto-standard/kernel/drivers/media/usb/gspca/gspca_kinect.ko
> [arch]
> "
>
> Then I tried deleting all the files in the packages-split directory and
> rebuilding. It passed building the kernel (even though failed because some
> other package's arch mismatch), but those file I deleted never got generated
> again! Now I'm a bit worried.
>
> So I guess my question is:
> What is the correct procedures to follow to reuse a poky folder (already
> built once) for a different target architecture? I'm happy to accept any
> links and suggested readings.
>

there already is a definition for 32bit machine, if you want a pure
32bit rootfs all you need
to do is set MACHINE = "intel-core2-32" in local.conf


> Thanks a lot!
> Tom.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

