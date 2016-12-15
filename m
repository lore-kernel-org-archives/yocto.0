Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7900E00DFA; Thu, 15 Dec 2016 07:21:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.176 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1C2FE00BF8
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 07:20:59 -0800 (PST)
Received: by mail-qt0-f176.google.com with SMTP id c47so59487695qtc.2
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 07:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=fZ5nNSBY34qvWg9GIpp/SF69McNG5hVOO/iXKtWKFvw=;
	b=Ul95s8EufE1ux1OUoTYAbLJmnHRvdCVFRy4O23bKg61yCLkEEtmdOZeHzXv/8pc7Iy
	x59cpBPX3uaJrrTIMUw50UQXj83d8ERPV0lrY4SOVD6zPl/mL+9xGZYg4cOnxen919ot
	O0Ho6dhDsm45rx7M9LQKW1rTJKjFFCSAolv8fX54/2cCnAigAtbYhiZYylsrRMpJMimo
	11c5S3coxzeb6yGZJJpCnhX1ZP1UaQpjYILYxdaYpIvSlQOCz8FnfA6u8ilJo1xjAAXj
	/ZsmDnC/97Oa33yyjG5jxHvJ3/XIoO0zwT5se4Ty5lzm9avvFmOofzMyalWdPSYfDTkU
	lH8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=fZ5nNSBY34qvWg9GIpp/SF69McNG5hVOO/iXKtWKFvw=;
	b=s5R/9A8K78eusm2xW48NWlG3k9VT8hiv2yPVNHN0q6Kf9N2h7iaLK6XCI84KlrpBV7
	wfAvepyD2iPA8FdohgpBudu76ZGfp5o84JgRnlRmTGm4CTOJg6W3nkTJXj2/eO02m5lP
	6ecuEVvs2TbakWqY7aEcm28JsZ04U8tqePoYMwSwfoDez1zd9MbLAiEPMJ/+SdyHjNFP
	iLF1jBgUkxCp/eEHHKgviUnHSKmJaTbmKfg1HC8gYjAKVDTf/qc69ixra+KhpPl9de9g
	+gEhy4GaR/j5zzQ87jFq0Hb5NSECOHatomuMPnzgGt0J4SpbZ6VAhAzs7KrfowXBUhHM
	Y9KQ==
X-Gm-Message-State: AIkVDXK6oC2NUF1dtbU/xhT+zz67mbu5/pauQch3+PqR3nWVbUyZJPXKRSWQYNO5Cbnq4gEuLg/KqPI/xeI+RA==
X-Received: by 10.200.0.132 with SMTP id c4mr1500588qtg.44.1481815258571; Thu,
	15 Dec 2016 07:20:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.88.21 with HTTP; Thu, 15 Dec 2016 07:20:57 -0800 (PST)
In-Reply-To: <20161215140913.5vx5ulxby74mp4rz@ad.chargestorm.se>
References: <5851F18E.3020401@gmail.com>
	<20161215140913.5vx5ulxby74mp4rz@ad.chargestorm.se>
From: "Daniel." <danielhilst@gmail.com>
Date: Thu, 15 Dec 2016 13:20:57 -0200
Message-ID: <CAF3SDA5yne+Qz=K9dt7_t_1KmUa73qbgVZM96n8OK-gUk8N6zg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: NFS rootfs: mount: only root can mount proc on /proc
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
X-List-Received-Date: Thu, 15 Dec 2016 15:21:03 -0000
Content-Type: text/plain; charset=UTF-8

2016-12-15 12:09 GMT-02:00 Anders Darander <anders@chargestorm.se>:
> Hi,
>
> * John Rama <john.rama01@gmail.com> [161215 02:58]:
>
>> The ideas I can come up with are followings, but those of them are not perfect..
>> 1. Run the bitbake as root account
>>   - would not run as root since the all of generated files are root permission even for the log files.
>
> Never do this. You've got no idea what bitbake might do to your
> computer...
>
>
>> 2. Change UID and GID whenever generating new image
>>   - I guess next build would fall into the trouble because of the owner change.
>
> Yes, that'll get you problems later on.
>
>> 3. Untar the tar ball under  {YOCTO_BUILD_DIR}//tmp//deploy/image/{TARGET}/*rootfs.tar.bz2 to  the export dir
>>   - takes additional time.. Not good.
>
> This is the right way to do it.
>
> If it takes to much time, create a script that runs bitbake and then
> untars the rootfs.

I do this all the time and have faced no problems regarding exploding
the tar. You may want to generate a .tar instead of a .tar.bz2. This
will safe the CPU from decrompressing so it should be faster...

Regards,
>
> Cheers,
> Anders
>
> --
> Anders Darander, Senior System Architect
> ChargeStorm AB / eStorm AB
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

