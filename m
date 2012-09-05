Return-Path: <wmills@ti.com>
Received: from comal.ext.ti.com (comal.ext.ti.com [198.47.26.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2F05E01385
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 07:20:45 -0700 (PDT)
Received: from dlelxv30.itg.ti.com ([172.17.2.17])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id q85EKepD023836;
	Wed, 5 Sep 2012 09:20:40 -0500
Received: from DLEE74.ent.ti.com (dlee74.ent.ti.com [157.170.170.8])
	by dlelxv30.itg.ti.com (8.13.8/8.13.8) with ESMTP id q85EKerq005068;
	Wed, 5 Sep 2012 09:20:40 -0500
Received: from dlelxv22.itg.ti.com (172.17.1.197) by DLEE74.ent.ti.com
	(157.170.170.8) with Microsoft SMTP Server id 14.1.323.3;
	Wed, 5 Sep 2012 09:20:40 -0500
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.102.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	q85EKe2Z020328;	Wed, 5 Sep 2012 09:20:40 -0500
Message-ID: <50475FB7.2080408@ti.com>
Date: Wed, 5 Sep 2012 10:20:39 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.27) Gecko/20120216 Thunderbird/3.1.19
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <50450DC6.20303@r-finger.com>	<CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>	<50451947.2090401@r-finger.com>	<CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>	<5045C2B7.1070406@r-finger.com>	<CADkTA4No3Y0K1eUF_w5OZApD7pfnmLD3YY2uiMG9rDe2okYtEg@mail.gmail.com>
	<504637F5.8090603@linux.intel.com> <504663C0.6050907@ti.com>
	<50468D68.50608@linux.intel.com>
In-Reply-To: <50468D68.50608@linux.intel.com>
Cc: yocto@yoctoproject.org, "Dmytriyenko, Denys" <denys@ti.com>
Subject: Re: yocto beagleboard.conf -- should it not go away?
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
X-List-Received-Date: Wed, 05 Sep 2012 14:20:46 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 09/04/2012 07:23 PM, Darren Hart wrote:
>
>
> On 09/04/2012 01:25 PM, William Mills wrote:
>
>> Darren: Is it true you can't get @ the Intel BSP's w/o also getting the
>> poky distro defs?  That does seem to mixing things a bit.  (I am not
>> claiming meta-ti is clean yet but I want to understand the Intel examples.)
>>
>
> It isn't something we test as part of the QA that we perform. I mostly
> expect people building meta-intel to be building with meta-yocto
> (although I wouldn't take a hard line on requiring it). That said, I
> removed meta-yocto from a meta-intel/meta-fri2 build and removed
> DISTRO=poky from my local.conf and successfully built and booted a
> core-image-minimal build on an FRI2 this afternoon without any changes.
>

Thanks!  My confidence is restored.

As long as including meta-yocto does not interfere with other BSPs or 
distros etc then there should be no harm in your assumption.

I would be interested to know what Mentor Graphics and Wind River do on 
their products.  Do they include meta-yocto? (YP is not all about 
comercial OS support but I know these orginatations have done the due 
diligence on layer compatibility for a non-poky distro.)


