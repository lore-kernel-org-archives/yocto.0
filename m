Return-Path: <leon@anavi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53DE6E00B45; Sun, 20 Dec 2015 14:19:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RDNS_NONE,T_DKIM_INVALID autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from anavi.org (unknown [91.215.217.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AACAE00A92
	for <yocto@yoctoproject.org>; Sun, 20 Dec 2015 14:19:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=anavi.org;
	s=default; 
	h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=1QN9kmRfPVtIfsj1qTSH/yQ47PBRpXNe4bKu6obR+gM=; 
	b=d/q8wXBZk6nhDIajdRl9OqFT8HKITqPUeWXWbSIw0IaZhdzxHHLvUa2/jnjmXZFnPUPoX+5PYRY2h7DmG9qDHVbcEXjT7Zo0nPhgl4AV15W6lAQdwN1xYuhXy5/kdK6BfvwMaBd3gxLihpkEPYRJJHlxF1kTqbmWpuyK3gCB66g=;
Received: from localhost ([::1]:56722 helo=voyager.icnhost.net)
	by voyager.icnhost.net with esmtpa (Exim 4.85)
	(envelope-from <leon@anavi.org>)
	id 1aAmKB-0003W3-UX; Mon, 21 Dec 2015 00:19:31 +0200
MIME-Version: 1.0
Date: Mon, 21 Dec 2015 00:19:31 +0200
From: Leon Anavi <leon@anavi.org>
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAMKF1soucg-GZjaqaLg1Ga=TpY5xeBb_16LkuPFr=RjJLzSDQg@mail.gmail.com>
References: <1450644797-13141-1-git-send-email-leon@anavi.org>
	<1450644797-13141-2-git-send-email-leon@anavi.org>
	<CAMKF1spDQ58i_Gp=1vr-8Pb1LG1Mek2h+x4OYQa2YGtBRLRMjQ@mail.gmail.com>
	<7d44aa926279b2629e6fce972f925346@anavi.org>
	<CAMKF1soucg-GZjaqaLg1Ga=TpY5xeBb_16LkuPFr=RjJLzSDQg@mail.gmail.com>
Message-ID: <c957f6f4c6629fa68fd021781e7ff900@anavi.org>
X-Sender: leon@anavi.org
User-Agent: Roundcube Webmail/1.0.5
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - voyager.icnhost.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - anavi.org
X-Get-Message-Sender-Via: voyager.icnhost.net: authenticated_id: leon@anavi.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/2] python-sense-hat: Add recipe to support Raspberry Pi Sense HAT
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
X-List-Received-Date: Sun, 20 Dec 2015 22:19:37 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

On 2015-12-21 00:01, Khem Raj wrote:
> On Sun, Dec 20, 2015 at 2:00 PM, Leon Anavi <leon@anavi.org> wrote:
>> On 2015-12-20 23:43, Khem Raj wrote:
>>> 
>>> On Sun, Dec 20, 2015 at 12:53 PM, Leon Anavi <leon@anavi.org> wrote:
>>>> 
>>>> Python module to control the Raspberry Pi Sense HAT used in
>>>> the Astro Pi mission. This recipe provides the officially
>>>> supported library for the Sense HAT with access to all of the
>>>> on-board sensors and the LED matrix.
>>>> 
>>>> Signed-off-by: Leon Anavi <leon@anavi.org>
>>>> ---
>>>>  recipes-devtools/python/python-sense-hat_2.1.0.bb | 31
>>>> +++++++++++++++++++++++
>>>>  1 file changed, 31 insertions(+)
>>>>  create mode 100644 
>>>> recipes-devtools/python/python-sense-hat_2.1.0.bb
>>>> 
>>>> diff --git a/recipes-devtools/python/python-sense-hat_2.1.0.bb
>>>> b/recipes-devtools/python/python-sense-hat_2.1.0.bb
>>>> new file mode 100644
>>>> index 0000000..0665536
>>>> --- /dev/null
>>>> +++ b/recipes-devtools/python/python-sense-hat_2.1.0.bb
>>>> @@ -0,0 +1,31 @@
>>>> +SUMMARY = "Python module to control the Raspberry Pi Sense HAT used 
>>>> in
>>>> the Astro Pi mission"
>>>> +HOMEPAGE = "https://github.com/RPi-Distro/python-sense-hat"
>>>> +SECTION = "devel/python"
>>>> +LICENSE = "BSD"
>>>> +LIC_FILES_CHKSUM =
>>>> "file://LICENCE.txt;md5=d80fe312e1ff5fbd97369b093bf21cda"
>>>> +
>>>> +SRCNAME = "sense-hat"
>>>> +
>>>> +SRC_URI =
>>>> "https://pypi.python.org/packages/source/s/${SRCNAME}/${SRCNAME}-${PV}.tar.gz"
>>>> +
>>>> +SRC_URI[md5sum] = "71217f15ea963040f06e2f50722186ca"
>>>> +SRC_URI[sha256sum] =
>>>> "c6c76707c0ea514e4b0f1f96f1b5b79755875891aae037df7434b6aad7b9dbca"
>>>> +
>>>> +S = "${WORKDIR}/${SRCNAME}-${PV}"
>>>> +
>>>> +inherit setuptools
>>>> +
>>>> +DEPENDS_${PN} += " \
>>> 
>>> 
>>> Just use DEPENDS here and remove -dev entries below, its implied with
>>> DEPENDS
>> 
>> 
>> Done. I resubmitted this patch again. Thank you for the help.
>> 
> 
> Looks good now. Thx

It was my pleasure. Thanks again for the feedback.

Btw a quick and easy way to test the result on Raspberry Pi with a Sense 
HAT:

wget 
https://github.com/leon-anavi/python-sense-hat-scripts/archive/master.zip
unzip master.zip
cd python-sense-hat-scripts-master/
python python-sense-hat-text.py

If everything is OK you should see red text "Hello" scrolling on the LED 
matrix of the Sense HAT.

Best regards,
Leon

> 
>> Best regards, Leon
>> 
>> 
>>> 
>>>> +               jpeg \
>>>> +               jpeg-dev \
>>>> +               zlib \
>>>> +               zlib-dev \
>>>> +               freetype \
>>>> +               freetype-dev \
>>>> +               "
>>>> +
>>>> +RDEPENDS_${PN} += " \
>>>> +               python-numpy \
>>>> +               python-rtimu \
>>>> +               python-imaging \
>>>> +               "
>>>> --
>>>> 2.5.0
>>>> 
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>> 
>> 
>> --
>> http://anavi.org/

-- 
http://anavi.org/

