Return-Path: <jfabernathy@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8543E0120C
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 12:31:56 -0800 (PST)
Received: by mail-gh0-f176.google.com with SMTP id g10so932829ghb.35
	for <yocto@yoctoproject.org>; Wed, 05 Dec 2012 12:31:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=uyCyfjgDncmhhgmNBDThE/cU4gVOfHQJIgP5hCXJTSI=;
	b=HUCh7t51t187SpQB040+uzrMFhVBKCCmdWKVs5vG5YnK31hz3CuRvEKP89GTqBSt6Y
	hOmjoZ0rG20GLB2gi+fJ3Cfzwymy6fpspEc3H8eA0dTzyx0amR9W2jIqbe3o6Kfa9Tcr
	GjT9DRaxEEQhllRhu3TCbL0/0d+wCEceArk56w+F0Nxei4dAcgsc85smDciNn64/S2ZD
	JgirV80mc5FBy3UdCc+Zxg0SGD+U5kKfgQLXAGb2wjWVTKkpAxL2z2q8ks5oPhgv0tHq
	cYT6h0wqe8d0H0KBMRB/jQPc1iIRxl7jxgbzbEXMf1vTFGoDaGNWOoPyOc+eEvvLJ3YB
	o02Q==
Received: by 10.236.124.231 with SMTP id x67mr22712732yhh.41.1354739516403;
	Wed, 05 Dec 2012 12:31:56 -0800 (PST)
Received: from [192.168.0.54] (cpe-174-097-157-052.nc.res.rr.com.
	[174.97.157.52])
	by mx.google.com with ESMTPS id s21sm6254660yhb.5.2012.12.05.12.31.54
	(version=SSLv3 cipher=OTHER); Wed, 05 Dec 2012 12:31:55 -0800 (PST)
Message-ID: <50BFAF3C.7090204@gmail.com>
Date: Wed, 05 Dec 2012 15:31:56 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <50BFADD0.20606@gmail.com> <20121205202844.GH3396@jama.jama.net>
In-Reply-To: <20121205202844.GH3396@jama.jama.net>
Cc: yocto@yoctoproject.org
Subject: Re: problems adding extra packages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Dec 2012 20:31:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/05/2012 03:28 PM, Martin Jansa wrote:
> On Wed, Dec 05, 2012 at 03:25:52PM -0500, Jim Abernathy wrote:
>> In the past on denzil, I'd get images working then start adding specific
>> packages like this:
>>
>> LICENSE_FLAGS_WHITELIST = "commercial"
>> CORE_IMAGE_EXTRA_INSTALL ?= "gst-fluendo-mp3"
>> CORE_IMAGE_EXTRA_INSTALL ?= "web-webkit"
>> CORE_IMAGE_EXTRA_INSTALL ?= "myvideos"
>> CORE_IMAGE_EXTRA_INSTALL ?= "myaudios"
> did you use '+=' before?
>
> Cheers,
You'd think by now, my keyboard would know to put the + and not the ?.  :-)

Thanks for spotting that. I looked right past it.

Jim A

>> Today, I got chiefriver bsp working on my hardware and then wanted to
>> add my video and audio files into the image along with extra software.
>> It didn't get added and the image is basically the same size. No errors
>> on just bitbaking again.  I was trying to avoid deleting tmp and
>> starting over again.  Has something changed with Danny?
>>
>> Along with the CORE_IMAGE_EXTRA_INSTALL additions, I added my layer in
>> bblayer.conf to pick up myvideos, etc.
>>
>> Jim A
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


