Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C67FE01402
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 07:23:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q3UENbjX027869
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 30 Apr 2012 07:23:37 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 30 Apr 2012 07:23:37 -0700
Message-ID: <4F9EA067.5030806@windriver.com>
Date: Mon, 30 Apr 2012 10:23:35 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <82CCA538-B495-44B3-8E06-F13282FAC541@keylevel.com>
In-Reply-To: <82CCA538-B495-44B3-8E06-F13282FAC541@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: BSP kernel configuration redefines config options
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
X-List-Received-Date: Mon, 30 Apr 2012 14:23:49 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-04-30 10:20 AM, Chris Tapp wrote:
> I've got a BSP that has the following kernel configuration linux-yocto_3.0.bbappend:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
> COMPATIBLE_MACHINE_mybsp = "mybsp"
> KMACHINE_mybsp  = "yocto/standard/common-pc/base"
>
> SRC_URI += " file://defconfig"
>
> SRCREV_machine_pn-linux-yocto_mybsp ?= "d7e81e7f975c57c581ce13446adf023f95d9fd9f"
> SRCREV_meta_pn-linux-yocto_mybsp ?= "d386e09f316e03061c088d2b13a48605c20fb3a6"
>
> This builds ok, but I get a note that says "There were 43 kernel config options redefined during processing this BSP". I assume this is because the defconfig file is at odds with the kernel I've selected as the base for the BSP. Is it possible to get this note to 'go away' ?

Yes, that's exactly what would be triggering it. It's currently
not controlled via a flag, since it is technically a value add :)

But to make it go away, I'd just suggest overriding do_kernel_configcheck()
in your layer.

Cheers,

Bruce

>
> I'm running under 6.0.1 and haven't spotted anything in the user manuals that I think would help.
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


