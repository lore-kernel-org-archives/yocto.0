Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CB22E00A84; Mon,  8 Apr 2019 10:10:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f177.google.com (mail-it1-f177.google.com
	[209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B05A6E0097C
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 10:10:58 -0700 (PDT)
Received: by mail-it1-f177.google.com with SMTP id v8so498363itf.0
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2019 10:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=9aeAtjNF9EB5uMnphIAwpfihCT49AqwpNAL0Qd8m0Lo=;
	b=d+BVW27VBipCmqqELEsPA8sdffIbePH7luE194ZGr+wsy2lHeNL6ZoQVQTtMkaMzqj
	vPegIsJfQNt4GrWX0FsWvSanuvZJTQ1tK8a/pf2H0g9FyqKhdqVzEZwlY/2YSq7dm1it
	lIIP/BnayQuZCsKmQMwk3wC9EfDXtUrZLPM7uxCGrAbzxUuMrKLsRuf50LOOi5BM+6Jq
	Qm9r9810hoCkfV0IwXnLOtaruz3qRosYbxDqBNLim5xr/ajqU++7mStcWz5fV4CBzjVq
	SKpNERV+K6P0X6IAz55NvH+WCnn1eTbPbC3cRT9YAQbb9ndgHA0ixum0Ju4TI0I4r/mB
	3LRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=9aeAtjNF9EB5uMnphIAwpfihCT49AqwpNAL0Qd8m0Lo=;
	b=dtuf2ajPlNqzp/nM8vg/xvD46tee8KwWdCLgnbJMIoYxLgyS12h+vjynEUyfTl4dBV
	ZTIDidz/J1zvOZXsWWeKQmGU4m9rpal0ElYGudpG2Hwp2LtJ5biIQ79jxqi+A3MLhAKK
	1LM7ETjCob88PfbpmbF77OjphoDgMgdIla+imHXKoEPyFlUboaaLb/+zvAz2GJqw4zbY
	1hPHY9b/Rg59LXbMC3yOQSq45+QJcJKQOZ6UhIvioKJl7IVxwgS66o0cV9AIKo7uAOTV
	bsTE4fRfLYSXwroWmouwMIDIaFTkY4gAhhJ2qacQ9ua+GYLBaJ/QijEE2OKXAw5UhSpi
	LWRA==
X-Gm-Message-State: APjAAAUH8daJELeo/PrSG4NH8rP+o+xB9tbvdSCzN78eNIf3xWx+Vv9Q
	ldnUiAN+QwZ9NXFtVXlrSRUvxFTeGJZtopcyqxETTw4/
X-Google-Smtp-Source: APXvYqzFRv4wUBTDDQ/VL/2mZtFmGoCLBI2veAQUuDLp6Z9JPcIR7WVMHl5CQ7u9HUcRlYH/P/m/QAKa7vfcs4I/p1g=
X-Received: by 2002:a24:d643:: with SMTP id o64mr20980162itg.148.1554743449808;
	Mon, 08 Apr 2019 10:10:49 -0700 (PDT)
MIME-Version: 1.0
References: <6bf22911-f264-f7b2-13a3-a914f9b3d2dd@gmail.com>
	<CADz_WD7TRFmcu9YQ+mJ6_nHbKQ5eXp8Fii_AK7ZPDJwhTOVX2A@mail.gmail.com>
In-Reply-To: <CADz_WD7TRFmcu9YQ+mJ6_nHbKQ5eXp8Fii_AK7ZPDJwhTOVX2A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Apr 2019 18:10:38 +0100
Message-ID: <CAJTo0LbEnsy_Ha5EOHuw8cgzFxH_Kj1U8O7ZsXOje+=y_XsVNA@mail.gmail.com>
To: Nataliya Korovkina <malus.brandywine@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	Karshi Hasanov <karshi.hasanov@gmail.com>
Subject: Re: Installation help
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
X-List-Received-Date: Mon, 08 Apr 2019 17:10:59 -0000
Content-Type: text/plain; charset="UTF-8"

The better fix is to fix your network.  If you need a proxy, set it in
local.conf.

Ross

On Mon, 8 Apr 2019 at 18:09, Nataliya Korovkina
<malus.brandywine@gmail.com> wrote:
>
> Hello Karshi,
>
> I had the same message. I added:
>
> CONNECTIVITY_CHECK_URIS=""
>
> in conf/local.conf as a QUICK FIX. I hope someone has better solution, please?
>
> Thanks,
> Nataliya
>
>
> On Mon, Apr 8, 2019 at 12:43 PM Karshi Hasanov <karshi.hasanov@gmail.com> wrote:
>>
>> Hi all,
>>
>> I have followed the
>>
>> https://www.yoctoproject.org/docs/2.6.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html
>>
>> when issue the "bitbake core-image-minimal"
>>
>> I am keep getting this error:
>>
>> ERROR:  OE-core's config sanity checker detected a potential
>> misconfiguration.
>>      Either fix the cause of this error or at your own risk disable the
>> checker (see sanity.conf).
>>      Following is the list of potential problems / advisories:
>>
>>      Fetcher failure for URL: 'https://www.example.com/'. URL
>> https://www.example.com/ doesn't work.
>>      Please ensure your host's network is configured correctly,
>>      or set BB_NO_NETWORK = "1" to disable network access if
>>      all required sources are on local disk.
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
>
>
> Nataliya Korovkina
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

