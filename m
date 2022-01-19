Return-Path: <peter@berginkonsult.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BF79C433F5
	for <webhook@archiver.kernel.org>; Wed, 19 Jan 2022 12:56:25 +0000 (UTC)
Received: from mailrelay1-2.pub.mailoutpod1-cph3.one.com
 (mailrelay1-2.pub.mailoutpod1-cph3.one.com [46.30.212.0])
 by mx.groups.io with SMTP id smtpd.web12.5723.1642596982876694894
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jan 2022 04:56:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@berginkonsult.se header.s=rsa2 header.b=h2JQbY8q;
 spf=none, err=permanent DNS error (domain: berginkonsult.se, ip: 46.30.212.0,
 mailfrom: peter@berginkonsult.se)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=rsa2;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	 message-id:from:references:to:subject:from;
	bh=rLZYJaW7KAfUKiU/zyMsld9sr3dpmoIr1d67tq0a2b4=;
	b=h2JQbY8qaOdJd2wv5LduAg4woxaY/8jprkgnn/6Q2OEgt8gup1dmYyodhvBBB4qN0BK+hr7dbWcqT
	 5E9bNr+CzEM6xK/51IofsK5lDPLYVgZBJIgcvzVof+UDkrc7P6YEehY0Jp2xSUi4BRomT/3OZrmqJT
	 cmDK8BVaI7IJn64hwFi9xvTp36rOdoq/fLdblQMOModf/6Qt+4wX8egpYtYSRSBr+njjM2TN6/smol
	 syKy5VY4R2QaGNeCMU9MoIyXrhVELktMa+JbFoKbjWdrn24blkB1FbnPNf5dB2A8kyHhJoXCISemN9
	 POCpVGrN6lyBQ9A1evyDOV7b/vqIN5A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=ed2;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	 message-id:from:references:to:subject:from;
	bh=rLZYJaW7KAfUKiU/zyMsld9sr3dpmoIr1d67tq0a2b4=;
	b=MtB99ukrg7AAr5N6gtX0HgqB25D1ag0D8cYDXd4524gKUlVUE+GvVey/jvLVFIFo26fJuFmW98txx
	 YhLBn1cDQ==
X-HalOne-Cookie: 5e964e56652be88fb150d89cf7059e02bebbc1e9
X-HalOne-ID: 325cf859-7927-11ec-881c-d0431ea8a283
Received: from [192.168.12.23] (h-79-136-99-68.na.cust.bahnhof.se
 [79.136.99.68])
	by mailrelay1.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 325cf859-7927-11ec-881c-d0431ea8a283;
	Wed, 19 Jan 2022 12:56:19 +0000 (UTC)
Subject: Re: [yocto] Invalid checksums for SRC_URI ignored?
To: yocto@lists.yoctoproject.org
References: <f4fc69b8-7ead-d9c5-a52b-32bdf77b4143@bootlin.com>
From: Peter Bergin <peter@berginkonsult.se>
Message-ID: <4cb625ab-23f3-f0e0-f8c4-b4feb65caddd@berginkonsult.se>
Date: Wed, 19 Jan 2022 13:56:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <f4fc69b8-7ead-d9c5-a52b-32bdf77b4143@bootlin.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Jan 2022 12:56:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55911

Hi,

On 2022-01-19 13:16, Michael Opdenacker wrote:
> Greetings,
>
> I reused a simple "hello" recipe and added a non-matching checksum to it:
>
> ...
> SRC_URI = "file://helloworld.c"
> SRC_URI[md5sum] = "34f0efd76b4f18888888888833cdd129"
> ...
>
> The rest of the recipe comes from
> https://git.openembedded.org/openembedded-core/tree/meta-skeleton/recipes-skeleton/hello-single.
>
> Why doesn't Bitbake stop, reporting that the checksum doesn't match the
> source file?
> Anyway, why does the recipe build without a checksum? Shouldn't
> checksums be mandatory?

No they are not mandatory for all fetchers. They are only used for 
content downloaded from non-local archives. 
https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-fetching.html#the-download-fetch 


https://github.com/openembedded/bitbake/blob/32180d5057c818a69987aada482e82acf3c72ef2/lib/bb/fetch2/__init__.py#L1268

^^ here you can see the selection of URI's that automatically needs a 
checksum.

Best regards,
/Peter


