Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55313E00724;
	Mon,  7 Jan 2013 09:22:30 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Jan 2013 09:21:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,424,1355126400"; d="scan'208";a="268753172"
Received: from envy.jf.intel.com (HELO envy.home) ([10.7.199.53])
	by orsmga002.jf.intel.com with ESMTP; 07 Jan 2013 09:22:28 -0800
Message-ID: <50EB0454.7020703@linux.intel.com>
Date: Mon, 07 Jan 2013 09:22:28 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <1357271430-31116-1-git-send-email-raj.khem@gmail.com>
	<50EAF2F3.3030402@linux.intel.com>
	<CAMKF1soWojEn=xNYg6LRQDmg6=zsw6g7ck7K6ADzDGN0cefKRg@mail.gmail.com>
In-Reply-To: <CAMKF1soWojEn=xNYg6LRQDmg6=zsw6g7ck7K6ADzDGN0cefKRg@mail.gmail.com>
X-Enigmail-Version: 1.4.6
Cc: meta-intel@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [meta-intel][PATCH] layer.conf: Use .= for adding to BBPATH and += to BBFILES
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
X-List-Received-Date: Mon, 07 Jan 2013 17:22:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 01/07/2013 09:10 AM, Khem Raj wrote:
> On Mon, Jan 7, 2013 at 8:08 AM, Darren Hart <dvhart@linux.intel.com> wrote:
>> Hi Khem,
>>
>> On 01/03/2013 07:50 PM, Khem Raj wrote:
>>> Fixes parsing errors which is appearing after this commit to
>>> meta-openembedded
>>>
>>> http://cgit.openembedded.org/meta-openembedded/commit/?id=3c21a46020bd0816579648f684c41dbd6333583e
>>>
>>> This triggers
>>> exception NameError: name 'base_contains' is not defined
>>> without this change
>>
>> OK, so your solution is to avoid the immediate expansion operator (:=)
>> which caused base_contains added in the previous commit to fail to
>> expand at the time the meta-intel layer configs are parsed
>> and replace it with one of the append operators (.= or +=) that allows
>> for delayed variable expansion. This seems correct to me - but please
>> include this explanation in your commit message in the future.
>>
> 
> .= and += are explained in bb manual very well :)
> 
>> Also, please use the meta-intel mailing list for changes to meta-intel
>> (Cc'd now).
> 
> oh ok. I did not know if such a ml existed.
> 

Indeed they are - and I referred to it to make sure I understood your
patch. :-)

A good commit message should describe the intended approach so it
can be well understood without the manual. That allows the intent to be
verified with the manual rather than derived from the manual.

--
Darren

>> https://lists.yoctoproject.org/listinfo/meta-intel
>>
>> Tom, any objection?
>>
>>
>>>
>>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>>
>>
>> Acked-by: Darren Hart <dvhart@linux.intel.com>
>>
>>
>>> ---
>>>  conf/layer.conf                    |    4 ++--
>>>  meta-cedartrail/conf/layer.conf    |    4 ++--
>>>  meta-chiefriver/conf/layer.conf    |    4 ++--
>>>  meta-crownbay/conf/layer.conf      |    4 ++--
>>>  meta-crystalforest/conf/layer.conf |    4 ++--
>>>  meta-emenlow/conf/layer.conf       |    4 ++--
>>>  meta-fri2/conf/layer.conf          |    4 ++--
>>>  meta-jasperforest/conf/layer.conf  |    4 ++--
>>>  meta-n450/conf/layer.conf          |    4 ++--
>>>  meta-nuc/conf/layer.conf           |    4 ++--
>>>  meta-romley/conf/layer.conf        |    4 ++--
>>>  meta-sugarbay/conf/layer.conf      |    4 ++--
>>>  meta-sys940x/conf/layer.conf       |    4 ++--
>>>  meta-tlk/conf/layer.conf           |    4 ++--
>>>  14 files changed, 28 insertions(+), 28 deletions(-)
>>>
>>> diff --git a/conf/layer.conf b/conf/layer.conf
>>> index e9c2b10..31132ab 100644
>>> --- a/conf/layer.conf
>>> +++ b/conf/layer.conf
>>> @@ -1,8 +1,8 @@
>>>  # We have a conf and classes directory, add to BBPATH
>>> -BBPATH := "${BBPATH}:${LAYERDIR}"
>>> +BBPATH .= ":${LAYERDIR}"
>>>
>>>  # We have recipes-* directories, add to BBFILES
>>> -BBFILES := "${BBFILES} ${LAYERDIR}/common/recipes-*/*/*.bb \
>>> +BBFILES += "${LAYERDIR}/common/recipes-*/*/*.bb \
>>>              ${LAYERDIR}/common/recipes-*/*/*.bbappend"
>>>
>>>  BBFILE_COLLECTIONS += "intel"
>>> diff --git a/meta-cedartrail/conf/layer.conf b/meta-cedartrail/conf/layer.conf
>>> index c19c4c1..0166b35 100644
>>> --- a/meta-cedartrail/conf/layer.conf
>>> +++ b/meta-cedartrail/conf/layer.conf
>>> @@ -1,8 +1,8 @@
>>>  # We have a conf and classes directory, add to BBPATH
>>> -BBPATH := "${BBPATH}:${LAYERDIR}"
>>> +BBPATH .= ":${LAYERDIR}"
>>>
>>>  # We have a recipes directory, add to BBFILES
>>> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>> +BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>>>       ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>
>>>  BBFILE_COLLECTIONS += "cedartrail"
>>> diff --git a/meta-chiefriver/conf/layer.conf b/meta-chiefriver/conf/layer.conf
>>> index 5dc3c02..6164f99 100644
>>> --- a/meta-chiefriver/conf/layer.conf
>>> +++ b/meta-chiefriver/conf/layer.conf
>>> @@ -1,8 +1,8 @@
>>>  # We have a conf and classes directory, add to BBPATH
>>> -BBPATH := "${BBPATH}:${LAYERDIR}"
>>> +BBPATH .= ":${LAYERDIR}"
>>>
>>>  # We have a recipes directory, add to BBFILES
>>> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>> +BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>>>       ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>
>>>  BBFILE_COLLECTIONS += "chiefriver"
>>> diff --git a/meta-crownbay/conf/layer.conf b/meta-crownbay/conf/layer.conf
>>> index cb17298..e6cc2a0 100644
>>> --- a/meta-crownbay/conf/layer.conf
>>> +++ b/meta-crownbay/conf/layer.conf
>>> @@ -1,8 +1,8 @@
>>>  # We have a conf and classes directory, add to BBPATH
>>> -BBPATH := "${BBPATH}:${LAYERDIR}"
>>> +BBPATH .= ":${LAYERDIR}"
>>>
>>>  # We have a recipes directory, add to BBFILES
>>> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>> +BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>>>       ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>
>>>  BBFILE_COLLECTIONS += "crownbay"
>>> diff --git a/meta-crystalforest/conf/layer.conf b/meta-crystalforest/conf/layer.conf
>>> index 6b802d6..daa2ba7 100644
>>> --- a/meta-crystalforest/conf/layer.conf
>>> +++ b/meta-crystalforest/conf/layer.conf
>>> @@ -1,8 +1,8 @@
>>>  # We have a conf and classes directory, add to BBPATH
>>> -BBPATH := "${BBPATH}:${LAYERDIR}"
>>> +BBPATH .= ":${LAYERDIR}"
>>>
>>>  # We have a recipes directory, add to BBFILES
>>> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>> +BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>>>       ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>
>>>  BBFILE_COLLECTIONS += "crystalforest"
>>> diff --git a/meta-emenlow/conf/layer.conf b/meta-emenlow/conf/layer.conf
>>> index a49ec47..b5832e4 100644
>>> --- a/meta-emenlow/conf/layer.conf
>>> +++ b/meta-emenlow/conf/layer.conf
>>> @@ -1,8 +1,8 @@
>>>  # We have a conf and classes directory, add to BBPATH
>>> -BBPATH := "${BBPATH}:${LAYERDIR}"
>>> +BBPATH .= ":${LAYERDIR}"
>>>
>>>  # We have recipes-* directories, add to BBFILES
>>> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>> +BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>>>       ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>
>>>  BBFILE_COLLECTIONS += "emenlow"
>>> diff --git a/meta-fri2/conf/layer.conf b/meta-fri2/conf/layer.conf
>>> index 4d140f9..0bb29a1 100644
>>> --- a/meta-fri2/conf/layer.conf
>>> +++ b/meta-fri2/conf/layer.conf
>>> @@ -1,8 +1,8 @@
>>>  # We have a conf and classes directory, add to BBPATH
>>> -BBPATH := "${BBPATH}:${LAYERDIR}"
>>> +BBPATH .= ":${LAYERDIR}"
>>>
>>>  # We have a recipes directory, add to BBFILES
>>> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>> +BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>>>       ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>
>>>  BBFILE_COLLECTIONS += "fri2"
>>> diff --git a/meta-jasperforest/conf/layer.conf b/meta-jasperforest/conf/layer.conf
>>> index 09f1647..b539733 100644
>>> --- a/meta-jasperforest/conf/layer.conf
>>> +++ b/meta-jasperforest/conf/layer.conf
>>> @@ -1,8 +1,8 @@
>>>  # We have a conf and classes directory, add to BBPATH
>>> -BBPATH := "${BBPATH}:${LAYERDIR}"
>>> +BBPATH .= ":${LAYERDIR}"
>>>
>>>  # We have a recipes directory, add to BBFILES
>>> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>> +BBFILES .= "${LAYERDIR}/recipes-*/*/*.bb \
>>>       ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>
>>>  BBFILE_COLLECTIONS += "jasperforest"
>>> diff --git a/meta-n450/conf/layer.conf b/meta-n450/conf/layer.conf
>>> index 4481121..ee53e54 100644
>>> --- a/meta-n450/conf/layer.conf
>>> +++ b/meta-n450/conf/layer.conf
>>> @@ -1,8 +1,8 @@
>>>  # We have a conf and classes directory, add to BBPATH
>>> -BBPATH := "${BBPATH}:${LAYERDIR}"
>>> +BBPATH .= ":${LAYERDIR}"
>>>
>>>  # We have recipes-* directories, add to BBFILES
>>> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>> +BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>>>       ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>
>>>  BBFILE_COLLECTIONS += "n450"
>>> diff --git a/meta-nuc/conf/layer.conf b/meta-nuc/conf/layer.conf
>>> index fb5b58a..174411f 100644
>>> --- a/meta-nuc/conf/layer.conf
>>> +++ b/meta-nuc/conf/layer.conf
>>> @@ -1,8 +1,8 @@
>>>  # We have a conf and classes directory, add to BBPATH
>>> -BBPATH := "${BBPATH}:${LAYERDIR}"
>>> +BBPATH .= ":${LAYERDIR}"
>>>
>>>  # We have a recipes directory, add to BBFILES
>>> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>> +BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>>>       ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>
>>>  BBFILE_COLLECTIONS += "nuc"
>>> diff --git a/meta-romley/conf/layer.conf b/meta-romley/conf/layer.conf
>>> index 8ce1a4d..7b6a5bc 100644
>>> --- a/meta-romley/conf/layer.conf
>>> +++ b/meta-romley/conf/layer.conf
>>> @@ -1,8 +1,8 @@
>>>  # We have a conf and classes directory, add to BBPATH
>>> -BBPATH := "${BBPATH}:${LAYERDIR}"
>>> +BBPATH .= ":${LAYERDIR}"
>>>
>>>  # We have a recipes directory, add to BBFILES
>>> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>> +BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>>>       ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>
>>>  BBFILE_COLLECTIONS += "romley"
>>> diff --git a/meta-sugarbay/conf/layer.conf b/meta-sugarbay/conf/layer.conf
>>> index eb8ec45..9576330 100644
>>> --- a/meta-sugarbay/conf/layer.conf
>>> +++ b/meta-sugarbay/conf/layer.conf
>>> @@ -1,8 +1,8 @@
>>>  # We have a conf and classes directory, add to BBPATH
>>> -BBPATH := "${BBPATH}:${LAYERDIR}"
>>> +BBPATH .= ":${LAYERDIR}"
>>>
>>>  # We have a recipes directory, add to BBFILES
>>> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>> +BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>>>       ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>
>>>  BBFILE_COLLECTIONS += "sugarbay"
>>> diff --git a/meta-sys940x/conf/layer.conf b/meta-sys940x/conf/layer.conf
>>> index 5d588ad..b14be6d 100644
>>> --- a/meta-sys940x/conf/layer.conf
>>> +++ b/meta-sys940x/conf/layer.conf
>>> @@ -1,8 +1,8 @@
>>>  # We have a conf and classes directory, add to BBPATH
>>> -BBPATH := "${BBPATH}:${LAYERDIR}"
>>> +BBPATH .= ":${LAYERDIR}"
>>>
>>>  # We have a recipes directory, add to BBFILES
>>> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>> +BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>>>       ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>
>>>  BBFILE_COLLECTIONS += "sys940x"
>>> diff --git a/meta-tlk/conf/layer.conf b/meta-tlk/conf/layer.conf
>>> index fc0da61..38b0e0c 100644
>>> --- a/meta-tlk/conf/layer.conf
>>> +++ b/meta-tlk/conf/layer.conf
>>> @@ -1,6 +1,6 @@
>>>  # We have a conf and classes directory, add to BBPATH
>>> -BBPATH := "${BBPATH}:${LAYERDIR}"
>>> +BBPATH .= ":${LAYERDIR}"
>>>
>>>  # We have recipes-* directories, add to BBFILES
>>> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>> +BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>>>       ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>
>>
>> --
>> Darren Hart
>> Intel Open Source Technology Center
>> Yocto Project - Technical Lead - Linux Kernel

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

