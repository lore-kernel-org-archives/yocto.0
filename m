Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6333E0027F
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 09:55:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q7OGtw1Q006661
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 09:55:58 -0700 (PDT)
Received: from msp-dhcp13.wrs.com (172.25.34.13) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Fri, 24 Aug 2012 09:55:59 -0700
Message-ID: <5037B21E.4060004@windriver.com>
Date: Fri, 24 Aug 2012 11:55:58 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:14.0) Gecko/20120713 Thunderbird/14.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <B69A6542-B9AD-4E9E-9806-8C344D30B29F@gmail.com>
	<CAMKF1srGqCXGdYPmOh9XXOV3uXTj4P6NvD6QdsBrNsiXC1e6_A@mail.gmail.com>
	<EA466178-7AF0-4E00-9D24-88A40709B2D1@gmail.com>
In-Reply-To: <EA466178-7AF0-4E00-9D24-88A40709B2D1@gmail.com>
Subject: Re: TARGET_FPU not getting populated for powerpc 405/440 fpu-hard targets
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
X-List-Received-Date: Fri, 24 Aug 2012 16:56:00 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 8/24/12 11:49 AM, Elvis Dowson wrote:
> Hi Khem,
>
> On Aug 24, 2012, at 8:35 PM, Khem Raj wrote:
>
>> On Fri, Aug 24, 2012 at 9:27 AM, Elvis Dowson <elvis.dowson@gmail.com
>> <mailto:elvis.dowson@gmail.com>> wrote:
>>> I just observed that TARGET_FPU is not getting populated, when you do
>>> a build for fpu-hard targets. For fpu-soft targets, it displays TARGET_FPU =
>>> "soft", but for fpu-hard targets, it display TARGET_FPU = "".
>>
>> that means default is hard for this architecture. This option is
>> essentially used to configure gcc
>> unless your fpu is special like fsl one's you are good here.
>
> The FPU unit is an IP core, that is attached to a generic PowerPC405 or
> PowerPC440 embedded processor core on the FPGA, which by default doesn't contain
> an FPU unit.
>
> In the Xilinx FPGA hardware project, I have to add this FPU unit, and there are
> some additional options that I can see relevant to this setup with the FPU unit,
> such as -mxilinx-fpu and -mfpu=dp_full
>
> Should I specify them in TUNE_CCARGS (as shown below)
> or TUNE_FEATURES_tune-ppc405e (not done below) or specify the same values for
> both variables ?
>
> TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES", "ppc405e", "-mcpu=405fp
> -mxilinx-fpu -mfpu=dp_full", "", d)}"
>
> AVAILTUNES += "ppc405e"
> TUNE_FEATURES_tune-ppc405e = "m32 ppc405e fpu-hard"

fpu-hard is the classic PowerPC FPU unit.  If that is what these ip blocks 
implement then there is nothing further required.

If the unit does NOT include a classic PowerPC FPU, then you should not be using 
fpu-hard.

If it -also- implements additional FPU instructions via the -m...fpu stuff 
specific to the IP blocks, then that is where the target_fpu comes in and some 
other changes will be necessary.... It's been a while since I worked through 
this, but the e500 stuff may be a reasonable example of how to implement it.

--Mark

> Best regards,
>
> Elvis Dowson
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


