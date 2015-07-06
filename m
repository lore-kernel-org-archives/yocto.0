Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 940F7E009E6; Mon,  6 Jul 2015 09:18:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (picmaster[at]mail.bg)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D839AE007A3
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 09:18:34 -0700 (PDT)
Received: from [192.168.0.62] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id 573B2600058A;
	Mon,  6 Jul 2015 19:18:33 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1436199513; bh=B+NNFInBYvDTMWZZkeW/k9DrX0JHkQsVIUOSkI0Bg/M=;
	h=Message-ID:Date:From:MIME-Version:To:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=sjW7Dy3BwU+GUaQUC95aGGntXXgOEujJHwU0/wAj8Pz0AIvqhkjjp/b1FeBiCAmID
	1FfVsRCOusvxssdo0iNXJy/3SLFxlkhH30Ct2+sncqGXaEA9qLMo+7wLlj6tc/TGYL
	J9zHVDD/6WU4dr88V3uGRBDczZpDQD3PU1moLeFU=
Message-ID: <559AAA59.9090007@mail.bg>
Date: Mon, 06 Jul 2015 19:18:33 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: Jonathan Liu <net147@gmail.com>, yocto@yoctoproject.org
References: <1435981717-29443-1-git-send-email-net147@gmail.com>
	<55976F44.5070106@mail.bg> <559A8572.6020203@gmail.com>
In-Reply-To: <559A8572.6020203@gmail.com>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: fetch from SVN instead of Git
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
X-List-Received-Date: Mon, 06 Jul 2015 16:18:37 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Jonathan,

On 07/06/2015 04:41 PM, Jonathan Liu wrote:
> Hi Nikolay,
>
> On 4/07/2015 3:29 PM, Nikolay Dimitrov wrote:
>> Hi Jonathan,
>>
>> On 07/04/2015 06:48 AM, Jonathan Liu wrote:
>>> Reduces the download time significantly.
>>>
>>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>>> ---
>>>   recipes-bsp/common/firmware.inc | 6 +++---
>>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/recipes-bsp/common/firmware.inc
>>> b/recipes-bsp/common/firmware.inc
>>> index ad3176a..100df3a 100644
>>> --- a/recipes-bsp/common/firmware.inc
>>> +++ b/recipes-bsp/common/firmware.inc
>>> @@ -1,7 +1,7 @@
>>> -RPIFW_SRCREV ?= "e42a747e8d5c4a2fb3e837d0924c7cc39999936a"
>>> +RPIFW_SRCREV ?= "461"
>>>   RPIFW_DATE ?= "20150206"
>>> -RPIFW_SRC_URI ?=
>>> "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
>>> -RPIFW_S ?= "${WORKDIR}/git"
>>> +RPIFW_SRC_URI ?=
>>> "svn://github.com/raspberrypi/firmware;protocol=https;module=trunk"
>>> +RPIFW_S ?= "${WORKDIR}/trunk"
>>>
>>>   SRC_URI = "${RPIFW_SRC_URI}"
>>>   SRCREV = "${RPIFW_SRCREV}"
>>>
>>
>> Just tested the download times for this repo:
>>
>> git (deep clone): 24m
>> svn: 3m8s
>> git (shallow clone): 40s
>>
>> Isn't it possible to use "--depth 1" for git clone? I would rather
>> prefer seeing this instead of just giving up and going back to svn...
>>
>> Regards,
>> Nikolay
> How would you clone a specific Git revision using --depth 1?
>
> Regards,
> Jonathan

git fetch --depth=1 git://repo.git $SHA1

Available in the latest git code.

A point to be made is that this feature requires cooperation from the
server side (uploadpack.allowReachableSHA1InWant config variable) which
can complicate thing somewhat, but we can probably start pushing the
server provider to accelerate the process :D.

Regards,
Nikolay

