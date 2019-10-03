Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AF6EE00D98; Thu,  3 Oct 2019 11:44:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93A23E00D4A
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2019 11:44:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id x93Ii0js010893
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 Oct 2019 11:44:00 -0700 (PDT)
Received: from [172.25.44.5] (172.25.44.5) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Thu, 3 Oct 2019 11:44:00 -0700
To: phodina <phodina@protonmail.com>
References: <iKxrudTDXgn2XHKttVPFe-_xTAbPoQUMbSBzr7r6Xza3vohxh9wPCRrFZo7bf1bgrQj_DKCt-5Ky7-dagX_blQpi_uZbWfnAvp7TDCCbh0U=@protonmail.com>
	<8bb3f05c-966b-4076-6593-d042bb8240ad@gmail.com>
	<6v81ntCcT70rvm2b8GwiRAeNSZSIEec-hUpr0hIN7HYR9RySExiu50vZaZM0jXSjiu2PYGbQ5mKn1e0cv3q13NlyJ5rwb6cdV0h1mpb9jXc=@protonmail.com>
	<wNEOi-_A4sN9BRhUCA6bCldM2iWQIpgYPAYUaT3Gqku16wkJq_fXBk_jlOuoUZpFBv4T7_CqWpoA7Yl0I0rHbvrsYpI5g7FtdjQ36SyI2Xc=@protonmail.com>
	<bb902393-3fc3-6b68-f418-3c2a4d3b189c@gmail.com>
	<Ji28AOGAddYhx0MrDU5EjIkRSdwJCwFCsKtxE6zFAllu6lRRNxSKIJd_HoP2gWRr2U6Mkl1i-39AIVXKdnsWpiBIX40FA4DdGUqmy0zOGpA=@protonmail.com>
	<e9a77cdd-8f1a-69d9-2d09-aed56c7d13b3@windriver.com>
	<22BfbVtjbhONAXnU9qn5Y9CVM7XsrherXE1JZilwa7w2GWJIJOrFBWALmNOl10uWEfKSV99dcRjYTRCmUGPh6OcZbHUv5fyhYxhQw80UQIE=@protonmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <cfeb299f-82f4-a44f-729b-ae3a796a4739@windriver.com>
Date: Thu, 3 Oct 2019 14:43:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <22BfbVtjbhONAXnU9qn5Y9CVM7XsrherXE1JZilwa7w2GWJIJOrFBWALmNOl10uWEfKSV99dcRjYTRCmUGPh6OcZbHUv5fyhYxhQw80UQIE=@protonmail.com>
X-Originating-IP: [172.25.44.5]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Awkward line wrapping in bash
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
X-List-Received-Date: Thu, 03 Oct 2019 18:44:18 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 10/3/19 6:54 AM, phodina wrote:
> Hi,
> 
> so I managed to minimize the build image and run it in QEMU. Now I build only poky, open-embedded and our own layer, containing minimal recipes. The problem with the awkward line wrapping is still present. Sometimes it doesn't come up until I change the size of terminal window.

Is that on the master branch?

> 
> More interesting is that if I run `busybox sh` the issue is not present and the line wraps correctly.
> 
> The issue happens with ssh as well as serial.

Interesting.

> 
> I tried to install the `xterm` pkg which has `resize` binary for changing the terminal window size, but without any luck.

Why not?
I know that the meta-overc devs added xterm to get resize:
https://github.com/OverC/meta-overc/commit/729f50aef024db293986ff320713ddf46bcb300b

> 
> Kind regards
> Petr

Thanks for simplifying and testing again.
If you want to continue to debug that would be great but
you can also open a YP bugzilla defect. Include
as much info as you can and perhaps a screenshot/image.

../Randy
> 
> 
> Sent with ProtonMail Secure Email.
> 
> ‐‐‐‐‐‐‐ Original Message ‐‐‐‐‐‐‐
> On Thursday, September 19, 2019 8:45 PM, Randy MacLeod <randy.macleod@windriver.com> wrote:
> 
>> On 9/19/19 11:43 AM, phodina wrote:
>>
>>> Hi,
>>> based on André recommendation I commented out the PS1 variable and now I get `-sh-4.4#` for the prompt. I also checked and nothing is overwriting the variable.
>>> But I tried to change the size of the shell by using `stty cols 100 rows 40` as well as different sizes (smaller and bigger than 80 columns), but the amount of characters I get on the line stays at 81 followed by carrige return. However if I record the session with `script` I get the correct amount of characters per line.
>>
>> If you are able to reproduce this problem on the master, or a
>> stable (1) branch with one of the supported qemu or HW BSPs (2),
>> please open a defect in:
>> https://bugzilla.yoctoproject.org/
>>
>> Please report the branch, what layers you are using (hopefully you
>> can reproduce it with just oe-core/poky + a HW layer) and
>> with a standard image.
>>
>> ../Randy
>>
>> (1) https://wiki.yoctoproject.org/wiki/Releases
>>
>> (2):
>> The list here is a good start, I'm not sure about the FSL support and
>> I suspect that minnow board is no longer relevant.
>>
>> https://bugzilla.yoctoproject.org/describecomponents.cgi?product=BSPs
>>
>> If your hardware isn't listed, and you can't reproduce the issue
>> in qemu or supported HW, you should contact your HW supplier.
>>
>> --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
>>
>> Randy MacLeod
>>
>> ==============
>>
>> Wind River Linux
>>
>> =================
> 
> 


-- 
# Randy MacLeod
# Wind River Linux

