Return-Path: <s.stirtzel@googlemail.com>
Received: from mail-oa0-f42.google.com (mail-oa0-f42.google.com
	[209.85.219.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85B16E01570
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 01:50:18 -0700 (PDT)
Received: by mail-oa0-f42.google.com with SMTP id j10so40660oah.29
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 01:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=4N1QTbWK/OgFWXgtl/kl4PaKlcaFbtj/MlTkvAwA5Co=;
	b=VMgha2sM6cCOQPyPwx0OC91Uk9QoHvlcEXWjesUzgaxhzPYH1hYB6JvZk3Y2Sn3Z4t
	0frYx/4/utuUjuA65CWZYRVCyJVSrCGK9ysGfTpWX+jgbqTcu+Kp+wqVcfvkiHXSEI08
	2DCixXO3pAKVh0AfELRPT+JH1MEe0LjhlkoQCrtxeO3N3/+AjUwX60MMg7hAEKPFoK8l
	PFgdqIv7KWWVv3yHXzrvXDX4rbCYrDlUb3KV8ISUz6m0V/Pab0jrteSEFh+f4RySN6TB
	r3EyT0NnTQ4XYUOV99v3QyPwkzcCtQaHYOHFvmpr5CELjbXK9NyjJycZ1S71wSBvY7g/
	/q1g==
X-Received: by 10.182.230.135 with SMTP id sy7mr5601136obc.24.1377679817875;
	Wed, 28 Aug 2013 01:50:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.60.44.66 with HTTP; Wed, 28 Aug 2013 01:49:57 -0700 (PDT)
In-Reply-To: <DB63579B404D457F9DF825A744067092@PAULD>
References: <2C94F567F1334C30A5BBD2CA59576460@PAULD>
	<521D354E.1020909@mlbassoc.com>
	<8EB78E64DFE9436EAFB462E357C464EC@PAULD> <20130828072025.GC3544@jama>
	<DB63579B404D457F9DF825A744067092@PAULD>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
Date: Wed, 28 Aug 2013 10:49:57 +0200
Message-ID: <CAGiJk9eztTXvCR4UjbtXTqRbjN+nKR6KKGgrFqKAvO4TSzSCAg@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can anything be done about do_rootfs speed?
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
X-List-Received-Date: Wed, 28 Aug 2013 08:50:20 -0000
Content-Type: text/plain; charset=UTF-8

2013/8/28 Paul D. DeRocco <pderocco@ix.netcom.com>:
>> From: Martin Jansa
>>
>> Are you sure that you're not building some unnecessary IMAGE_FSTYPES?
>
> No, I'm not sure.
>
>> Last time someone asked my why it takes so long I've added some debug
>> output to do_rootfs and found out that only half of the time was opkg
>> installing packages and the rest was various IMAGE_FSTYPES.
>>
>> e.g. tar.bz2 takes very long without pbzip2 or lbzip2
>
> Is there a standard way to use those in a build? Do I replace bzip2 with a
> link to one of those? Or does Yocto build its own bzip2?
>

Hi,

look/grep for IMAGE_FSTYPE, if there is a += "tar.bz2" or multiple
identical += lines then you can be sure that do_rootfs is wasting
time.


A virtual package manager which only composes the package database in
a multi-threaded way could be seen as a silver bullet here.
Also pigz [1] and pbzip2 [2] could save some minutes / seconds
depending on the image size.


[1] http://zlib.net/pigz/
[2] http://compression.ca/pbzip2/



-- 
Regards
Samuel

