Return-Path: <s.stirtzel@googlemail.com>
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF0C9E0157B
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 04:30:57 -0700 (PDT)
Received: by mail-ob0-f177.google.com with SMTP id f8so6428383obp.8
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 04:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=VqHwbGJKJVESd7aEbA0QeVCzkLtY+eTcDztKnYc+poY=;
	b=k9+QqO5z9nuXZKqZD/rU3z2HBiXcIWUiZiSO+msgt19MdjTKCdAgzEcRpta4fbEiCr
	LAues9MqnskeEnnJBHf42oMqZtO60MYqibpbeK2AA8pl4bvYt6i738A4Hmo9HcZQ9L53
	egzugdqqVDc77JusvJMhey7qFlHwyYrhSGp5XxjS0V+iFC+QQpQzGj57NQ9jyGM25Heo
	/9uki/WTC6yLkeiGi48ceUXSlwS3Qo4QfrrOI2+1JFFYkJGZUk92BaW35UAa6OrmROKr
	fRmWJpuxc11BSHUQ2GmQJeJWLjmKysM701GCA6XVvaBjjrygBfefwWFr257TMdCF40lG
	RFxg==
X-Received: by 10.60.80.167 with SMTP id s7mr14771058oex.38.1377689456426;
	Wed, 28 Aug 2013 04:30:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.60.44.66 with HTTP; Wed, 28 Aug 2013 04:30:36 -0700 (PDT)
In-Reply-To: <CAGiJk9eztTXvCR4UjbtXTqRbjN+nKR6KKGgrFqKAvO4TSzSCAg@mail.gmail.com>
References: <2C94F567F1334C30A5BBD2CA59576460@PAULD>
	<521D354E.1020909@mlbassoc.com>
	<8EB78E64DFE9436EAFB462E357C464EC@PAULD> <20130828072025.GC3544@jama>
	<DB63579B404D457F9DF825A744067092@PAULD>
	<CAGiJk9eztTXvCR4UjbtXTqRbjN+nKR6KKGgrFqKAvO4TSzSCAg@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
Date: Wed, 28 Aug 2013 13:30:36 +0200
Message-ID: <CAGiJk9chSv2CdBq4-TFJ77zeCtF-2QXjjh+WriQcUXJ5GgEEvA@mail.gmail.com>
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
X-List-Received-Date: Wed, 28 Aug 2013 11:30:58 -0000
Content-Type: text/plain; charset=UTF-8

2013/8/28 Samuel Stirtzel <s.stirtzel@googlemail.com>:
> 2013/8/28 Paul D. DeRocco <pderocco@ix.netcom.com>:
>>> From: Martin Jansa
>>>
>>> Are you sure that you're not building some unnecessary IMAGE_FSTYPES?
>>
>> No, I'm not sure.
>>
>>> Last time someone asked my why it takes so long I've added some debug
>>> output to do_rootfs and found out that only half of the time was opkg
>>> installing packages and the rest was various IMAGE_FSTYPES.
>>>
>>> e.g. tar.bz2 takes very long without pbzip2 or lbzip2
>>
>> Is there a standard way to use those in a build? Do I replace bzip2 with a
>> link to one of those? Or does Yocto build its own bzip2?
>>
>
> Hi,
>
> look/grep for IMAGE_FSTYPE, if there is a += "tar.bz2" or multiple
> identical += lines then you can be sure that do_rootfs is wasting
> time.
>
>
> A virtual package manager which only composes the package database in
> a multi-threaded way could be seen as a silver bullet here.
> Also pigz [1] and pbzip2 [2] could save some minutes / seconds
> depending on the image size.
>
>
> [1] http://zlib.net/pigz/
> [2] http://compression.ca/pbzip2/
>

Forgot to mention something important...

If you change:

COMPRESS_CMD_gz = "gzip -f -9 -c ${IMAGE_NAME}.rootfs.${type} >
${IMAGE_NAME}.rootfs.${type}.gz"
COMPRESS_CMD_bz2 = "bzip2 -f -k ${IMAGE_NAME}.rootfs.${type}"

in [...]/meta/classes/image_types.bbclass, then can try pbzip2 / pigz.



-- 
Regards
Samuel

