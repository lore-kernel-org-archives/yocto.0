Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F86EE00B45; Sun,  6 Nov 2016 09:17:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BF81E00BE0
	for <yocto@yoctoproject.org>; Sun,  6 Nov 2016 09:17:48 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id n85so13790136pfi.3
	for <yocto@yoctoproject.org>; Sun, 06 Nov 2016 09:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=U/dDTUn9W3xkKoqvCBDAsbcrfFix3nHF8sgBSBw6X0M=;
	b=XqKEo8xw/fGMTbonP9mRvE3OJcyoZzCtLGCt/g8opl0/uLznx2dEj8WP+zgpDdhVcu
	t4h5mUQ+f3QEfUTwwgH88PCNLNU9qn3QMaz2DCITAfWK1f+4dS9V/FbU5wwBZabd1Z5i
	Yhz0Hm0y43A/MoCNjmMZtoTCjmuSeSL5Jf/C+HIaCGcrOeLNRpzFnxTvqiZw4Pr5saYy
	qMPpVw5TkfjAfQB4ZtT2tJ+VKpk63HAHhuvHZw61uyX7Ytzuz0K7Rwuu8mV1I4SEg/SE
	U2cdFrqFDbCW6FSogjF3IKc81T8KD1J71n5bN4P3BCLNRAXBrUu9ccgf4TtodbT4WKYP
	qf3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding;
	bh=U/dDTUn9W3xkKoqvCBDAsbcrfFix3nHF8sgBSBw6X0M=;
	b=W2z5Ty8wkQEYO/I66auG/Q7fiy4G9wU8BZWhVdz+AuAhvO08mtTsxBuLRZiBoQs8Ww
	o61KP831iraUTAGPuzShpeqZnh1B22wxZ7IoRE/okoLcn3db4zci/P/FRK/MQbnQcYF4
	aXAZWmv42Z6jJhl3B3jfJvPn8T2cq9r+RqN0UNgbjed5gl6eX+9IRXSc997xs5LO8/yK
	ofLOUjJOhvv4EYrYUhztfVjJOpRnVg6noQVT9RSeJARH9jqEJZLWR4lWa8ti13IluJ7j
	laxBVgSlCguIJTKAJ/pTDamxEV/kIFteM7RDYrqI/vyYxmI+cQjjDUU/orudmRaop5lg
	97yA==
X-Gm-Message-State: ABUngvfL2kOvePi98YiOKQd5oTpPiOZL6VAu1bmd2W/B/U6IAf/+suNqzhvhKPW+hKJGNQ==
X-Received: by 10.98.5.195 with SMTP id 186mr6057363pff.117.1478452668128;
	Sun, 06 Nov 2016 09:17:48 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:187:c3d2:deb9:e508])
	by smtp.gmail.com with ESMTPSA id
	a7sm34154758pfl.87.2016.11.06.09.17.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 06 Nov 2016 09:17:47 -0800 (PST)
To: Paul Barker <paul@paulbarker.me.uk>
References: <20161106072515.3505-1-raj.khem@gmail.com>
	<20161106101407.5239767e@nuc.betafive.co.uk>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <22bb7c9a-dc4d-f1db-7c45-5fb123316f7e@gmail.com>
Date: Sun, 6 Nov 2016 09:17:46 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20161106101407.5239767e@nuc.betafive.co.uk>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] firmware: Use release tarballs
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
X-List-Received-Date: Sun, 06 Nov 2016 17:17:51 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 11/6/16 2:14 AM, Paul Barker wrote:
> On Sun,  6 Nov 2016 00:25:14 -0700
> Khem Raj <raj.khem@gmail.com> wrote:
> 
>> This is a binary repo and its quite large in size
>> we do not need the whole history of this repo since
>> most of stuff needed is binaries, therefore switch
>> to release tarballs
>>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  recipes-bsp/common/firmware.inc | 12 +++++++-----
>>  1 file changed, 7 insertions(+), 5 deletions(-)
>>
>> diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
>> index ed0782f..8862f58 100644
>> --- a/recipes-bsp/common/firmware.inc
>> +++ b/recipes-bsp/common/firmware.inc
>> @@ -1,8 +1,10 @@
>> -RPIFW_SRCREV ?= "413fc664838e81caeabdc4118dc51e138d5d6c71"
>> -RPIFW_DATE ?= "20161030"
>> -RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
>> -RPIFW_S ?= "${WORKDIR}/git"
>> +RPIFW_DATE ?= "20161020"
>> +RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
>> +RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
>>  
>>  SRC_URI = "${RPIFW_SRC_URI}"
>> -SRCREV = "${RPIFW_SRCREV}"
>> +SRC_URI[md5sum] = "d3c388c114af4c672dd3ee0ed8e984d3"
>> +SRC_URI[sha256sum] = "1c7c49d58800aab2dd1b5ff59a1e297934f9ea6f47ebdf0a3f90632561dc690b"
>> +
>>  PV = "${RPIFW_DATE}"
>> +
> 
> Khem,
> 
> This series doesn't apply to master for me. I'm a bit lost as to which
> patches I need to apply as some of your previous series has been merged
> to master but not all of it.
> 
> Could you point me at which patches I need to apply or at a branch
> where this is staged if it's public?

https://github.com/kraj/meta-raspberrypi/commits/kraj/master


> 
> Thanks,
> Paul Barker
> 

