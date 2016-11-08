Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAAA3E0097C; Tue,  8 Nov 2016 03:35:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57EC1E00571
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 03:35:53 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 2660268A019; Tue,  8 Nov 2016 11:35:52 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 8628268A019;
	Tue,  8 Nov 2016 11:35:47 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 1C6DB67401F0;
	Tue,  8 Nov 2016 12:35:47 +0100 (CET)
To: yocto@yoctoproject.org
References: <20161106072515.3505-1-raj.khem@gmail.com>
	<CAK18fxEVW3NTsxOUbJQfM3XP6V7==G_V_dPG7P9-cjxVoWhpNg@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <ebb5bf5e-6ac5-a97d-09b3-d292f1f72995@mlbassoc.com>
Date: Tue, 8 Nov 2016 12:35:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAK18fxEVW3NTsxOUbJQfM3XP6V7==G_V_dPG7P9-cjxVoWhpNg@mail.gmail.com>
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
X-List-Received-Date: Tue, 08 Nov 2016 11:35:56 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-11-08 12:16, Andrei Gherzan wrote:
> On Sun, Nov 6, 2016 at 7:25 AM, Khem Raj <raj.khem@gmail.com> wrote:
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
>
> Merged to master. Thanks.

Sadly, the firmware revision went backwards in this change.
Do you want a new patch to play catch-up?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

