Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35152E0097C; Tue,  8 Nov 2016 03:05:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C9CFE00571
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 03:05:00 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 1237B68A019; Tue,  8 Nov 2016 11:04:58 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id B2D2668A019;
	Tue,  8 Nov 2016 11:04:56 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 388F867400ED;
	Tue,  8 Nov 2016 12:04:55 +0100 (CET)
To: yocto@yoctoproject.org
References: <20161031165208.16286-1-raj.khem@gmail.com>
	<20161031165208.16286-5-raj.khem@gmail.com>
	<20161108105754.GC19465@carbonA>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <c692300e-a7bd-e289-04f0-0de3abe00b9a@mlbassoc.com>
Date: Tue, 8 Nov 2016 12:04:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20161108105754.GC19465@carbonA>
Subject: Re: [meta-raspberrypi][PATCH 5/6] firmware: Update to 20161030
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
X-List-Received-Date: Tue, 08 Nov 2016 11:05:05 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-11-08 11:57, Andrei Gherzan wrote:
> On Mon, Oct 31, 2016 at 09:52:07AM -0700, Khem Raj wrote:
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  recipes-bsp/common/firmware.inc | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
>> index 6ce89a5..ed0782f 100644
>> --- a/recipes-bsp/common/firmware.inc
>> +++ b/recipes-bsp/common/firmware.inc
>> @@ -1,5 +1,5 @@
>> -RPIFW_SRCREV ?= "ec5a517ed6051974a5a09f7b7811d21c443a7c74"
>> -RPIFW_DATE ?= "20161020"
>> +RPIFW_SRCREV ?= "413fc664838e81caeabdc4118dc51e138d5d6c71"
>> +RPIFW_DATE ?= "20161030"
>>  RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
>>  RPIFW_S ?= "${WORKDIR}/git"
>>
>> --
>> 2.10.1
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> Merged to master. Thanks.
>
> --
> Andrei Gherzan
>
>
>

What about the patches to switch to tarballs for the firmware?
This seems much more sensible than sloshing around 6+GB GIT files...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

