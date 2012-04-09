Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AE45E0044D
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 12:50:17 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Apr 2012 12:50:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="126979213"
Received: from unknown (HELO envy.home) ([10.7.199.62])
	by orsmga001.jf.intel.com with ESMTP; 09 Apr 2012 12:50:17 -0700
Message-ID: <4F833D53.4020801@linux.intel.com>
Date: Mon, 09 Apr 2012 12:49:39 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Yang Shi <yang.shi@windriver.com>
References: <1332796758-9702-1-git-send-email-yang.shi@windriver.com>
	<1332796758-9702-3-git-send-email-yang.shi@windriver.com>
	<4F830EC9.4050804@linux.intel.com> <4F832BBD.1040608@windriver.com>
In-Reply-To: <4F832BBD.1040608@windriver.com>
X-Enigmail-Version: 1.4
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/2] sato: Remove questioned ISO image
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
X-List-Received-Date: Mon, 09 Apr 2012 19:50:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/09/2012 11:34 AM, Yang Shi wrote:
> On 4/9/2012 9:31 AM, Darren Hart wrote:
>>
>> On 03/26/2012 02:19 PM, Yang Shi wrote:
>>> [YOCTO #1487]
>>>
>>> For the liveCD image, interactive bootup is needed, but psplash prevents from
>>> booting interactively. In such case ISO image is not usable, so remove ISO image
>>> and the corresponding link and throw error info to warn outside to enable
>>> unionfs in kenrel.
>>
>> The psplash only prevents interaction on the vga console right? If the
>> BSP supports a serial console as well there is not a problem right?
> 
> Yes, I think so. When I was doing the test, I disabled splash so that I 
> can type 'enter' to make interaction move forward.
> 

In that case, deleting the iso links if Unionfs is not configured in
does not seem appropriate. A bbwarn might be appropriate, but failing
and destroying the deploy data is certainly not.

--
Darren

> Thanks,
> Yang
> 
>>
>> --
>> Darren
>>
>>> Signed-off-by: Yang Shi<yang.shi@windriver.com>
>>> ---
>>>   meta/recipes-sato/images/core-image-sato.bb |   16 ++++++++++++++++
>>>   1 files changed, 16 insertions(+), 0 deletions(-)
>>>
>>> diff --git a/meta/recipes-sato/images/core-image-sato.bb b/meta/recipes-sato/images/core-image-sato.bb
>>> index 11c3318..10e2239 100644
>>> --- a/meta/recipes-sato/images/core-image-sato.bb
>>> +++ b/meta/recipes-sato/images/core-image-sato.bb
>>> @@ -9,3 +9,19 @@ IMAGE_FEATURES += "apps-console-core ${SATO_IMAGE_FEATURES}"
>>>   LICENSE = "MIT"
>>>
>>>   inherit core-image
>>> +
>>> +LIVE = "${@base_contains('IMAGE_FSTYPES', 'live', 'yes', 'no', d)}"
>>> +
>>> +do_check_unionfs() {
>>> +        if [ "${NOISO}" = "1" ]; then
>>> +                return
>>> +        fi
>>> +
>>> +        if [ "${LIVE}" = "yes" ]&&  ! grep -q "CONFIG_UNION_FS=y" ${STAGING_KERNEL_DIR}/.config; then
>>> +                rm -f ${DEPLOY_DIR_IMAGE}/${IMAGE_LINK_NAME}.iso
>>> +                rm -f ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.iso
>>> +                bbfatal "Building LIVE CD without UNION FS enabled in kernel"
>>> +        fi
>>> +}
>>> +
>>> +addtask check_unionfs before do_build after do_bootimg
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

