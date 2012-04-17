Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFE14E013BA
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 08:37:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q3HFb4wd013632
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 08:37:04 -0700 (PDT)
Received: from msp-dhcp23.wrs.com (172.25.34.23) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 17 Apr 2012 08:37:03 -0700
Message-ID: <4F8D8E1F.2070203@windriver.com>
Date: Tue, 17 Apr 2012 10:37:03 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:11.0) Gecko/20120327 Thunderbird/11.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <1334624465.26744.4.camel@dongxiao-osel>
	<CAGiJk9fWzFjW5_T03JFNX9XE2n=XaR_EE2dT_3AtkQ9gjnqAQQ@mail.gmail.com>
In-Reply-To: <CAGiJk9fWzFjW5_T03JFNX9XE2n=XaR_EE2dT_3AtkQ9gjnqAQQ@mail.gmail.com>
Subject: Re: A question about PACKAGE_ARCH renaming
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
X-List-Received-Date: Tue, 17 Apr 2012 15:37:04 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 4/17/12 1:43 AM, Samuel Stirtzel wrote:
> 2012/4/17 Xu, Dongxiao<dongxiao.xu@intel.com>:
>> Hi,
>>
>> I am testing beagleboard with RPM, and there is a question I am confused
>> with that PACKAGE_ARCH is renamed for certain packages. For example the
>> "acl" package, whose expected PACKAGE_ARCH is "armv7a-vfp-neon", however
>> in RPM file, the arch is renamed to "armv7a", see
>> "acl-2.2.51-r2.armv7a.rpm". However IPK package still shows
>> "acl_2.2.51-r2_armv7a-vfp-neon.ipk".
>>
>> Could anybody give hint on this?
>
> Hi,
> if applications need to be machine / hardware specific they can
> indicate so by setting PACKAGE_ARCH.
>
> For example I use it for recipes that build different when other
> machine dependent packages are used by them:
> kde-workspace can use the OpenGL ES driver which is machine dependent
> so if it is used I set PACKAGE_ARCH = "${MACHINE_ARCH}".
>
> AFAIK the vfp-neon arch indicates that the package uses hard float (or
> "vector floating point") libraries instead of soft float.
> See mfloat-abi at http://gcc.gnu.org/onlinedocs/gcc/ARM-Options.html

Just want to clarify...

VFP indicates it's using the VFP hardware for floating point, but the ABI 
remains as the standard EABI.  (adding 'hf' means that it's using the 
EABI-hardware floating point ABI instead.  Original EABI is defined to allow 
multiple instruction sets, processor units, etc to interact with a compatible 
ABI.  While EABI-hf requires vfp support.)

--Mark

>>
>> Thanks,
>> Dongxiao
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>


