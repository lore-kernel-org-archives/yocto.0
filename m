Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C479E00C8F; Fri,  9 Dec 2016 05:37:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 190F1E00C5B
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 05:37:53 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id uB9DbmAW027646
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 Dec 2016 05:37:49 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 9 Dec 2016 05:37:48 -0800
To: Bent Bisballe Nyeng <xbbn@mjolner.dk>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <5ee0797a85054ea6ab6a0d8f02f47856@drift35.mia.local>
	<30c3c6d7-9f12-e082-33bb-1a218c8f4bd5@windriver.com>
	<2fda8ea478a64bdeab42c01e2df6a943@drift35.mia.local>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <1f6d8fc5-2853-072f-72d5-785c5bd783f1@windriver.com>
Date: Fri, 9 Dec 2016 08:37:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <2fda8ea478a64bdeab42c01e2df6a943@drift35.mia.local>
Subject: Re: Kernel config incremental modification not working.
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
X-List-Received-Date: Fri, 09 Dec 2016 13:37:57 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-12-09 02:25 AM, Bent Bisballe Nyeng wrote:
> On 12/08/2016 05:06 PM, Bruce Ashfield wrote:
>> On 2016-12-08 09:06 AM, Bent Bisballe Nyeng wrote:
>>> Hi list
>>>
>>> I am working on a project based on the iMX6UL-EVK using the meta-fsl-arm
>>> layer for the kernel.
>>> In a local layer I have a bbappend recipe containing a patch for an
>>> extra kernel feature (a framebuffer device) in that kernel as well as a
>>> .cfg enabling said feature.
>>> The bbappend recipe is located in
>>> recipes-kernel/linux/linux-fslc-imx_%.bbappend and looks like this:
>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>>
>>> SRC_URI += " \
>>>         file://0001-mxc-4.1.patch \
>>>         file://ST7789S.cfg \
>>> "
>>>
>>> KERNEL_DEVICETREE = "imx6ul-14x14-evk.dtb"
>>>
>>> The .cfg is located in recipes-kernel/linux/linux-fslc-imx/ST7789S.cfg
>>> and looks like:
>>> CONFIG_FB_MXS_ST7789S_QVGA=y
>>>
>>> The 0001-mxc-4.1.patch patch is correctly applied but the .cfg is either
>>> ignored or overwritten by some later buyild step since the resulting
>>> .config after kernel compilation contains:
>>> # CONFIG_FB_MXS_ST7789S_QVGA is not set
>>>
>>> I have tried finding the script in the build/.../temp folder that takes
>>> care of the .cfg file patching but have not been able to find anything
>>> useful.
>>>
>>> Any hints as to where I should start looking for a solution?
>> Fragment processing using the kernel tools + auditing is only currently
>> available to kernel recipes that use the kernel-yocto bbclass. That
>> opt-in requirement was to ensure that existing recipes and workflows
>> weren't broken by the new features.
>>
>> Last time I checked, the meta-fsl* kernel recipes don't use the
>> kernel-yocto bbclass, so the fragment would be ignored.
>>
>> I'm taking the processing of fragments and making it universally
>> available in the upcoming 2.3 release, so what I just described
>> won't be an issue for much longer.
>>
>> In the mean time, you have a few options:
>>
>>   - in your bbappend, add "inherit kernel-yocto" and the processing
>>     of fragments will be enabled (I can't say that I've tested
>>     it against that recipe .. but the entire point of the new tasks
>>     is that they are transparent/don't break existing worflows)
>>
>>   - carry a defconfig in your layer, and add it to the SRC_URI. That
>>     defconfig would be the existing kernel recipe's defconfig + your
>>     options
>>
>>   - write a custom task that runs before configuration to add your
>>     options (cat, merge, etc, etc).
>>
>> I wouldn't really suggest the custom task route, but it is a valid
>> option, so I put it in my list.
>>
>> The quickest is probably the defconfig option, and then the new
>> inherit. If you had issues with the inherit, I could lend a hand to
>> debug what is wrong .. since I'll run into it eventually with my
>> feature work for the 2.3 release.
> Hi Bruce
>
> Thanks for the reply.
>
> A quick test shows that the linux-fslc-imx recipe doesn't respond well
> to the 'inherit kernel-yocto' solution failing in the do_kernel_checkout
> task with a "Bad substitution" error message.
> So I think I will go with the defconfig solution until the release of 2.3.
> Any estimate of when 2.3 will be shipping? And do you know if this will
> by any chance include the upcoming 4.9 LTS kernel?

April 2017, and it will have the 4.9 kernel + 4.10 (unless 4.11 really
hurries along).

>
> If you would like some more info on the failing task I'll be happy to
> supply it.

If you put the configuration you are using (bblayers, MACHINE) in an
email and send it directly to me, I'll find time to poke at it, I'm
interested to understand why it failed.

bruce

>
> Thanks for your help :-)
>
> Kind regards
> Bent Bisballe Nyeng
>


