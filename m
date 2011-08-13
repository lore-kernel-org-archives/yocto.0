Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A83EAE011F0
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2011 18:24:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7D1NNv0004889
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 12 Aug 2011 18:23:53 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 12 Aug 2011 18:22:59 -0700
Message-ID: <4E45D1F2.6040902@windriver.com>
Date: Fri, 12 Aug 2011 21:22:58 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <56EF2FAC-D4B5-4EC7-ADC1-6AE0848A51FD@keylevel.com>
In-Reply-To: <56EF2FAC-D4B5-4EC7-ADC1-6AE0848A51FD@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Configuring a layer to support multiple targets
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
X-List-Received-Date: Sat, 13 Aug 2011 01:24:03 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-12 06:31 PM, Chris Tapp wrote:
> What is the best way to configure a layer to support multiple targets
> that share a common base?
>
> For example, a set of targets that use the Vortex86DX SOC share common
> peripherals and also have per-variant peripherals.
>
> I was thinking:
>
> 1) Have a conf/machine file for each variant;
> 2) Make these use an include for the Vortex86DX SOC.
>
> However, I can't work out how to get a per-machine defconfig file. Is
> there some way of using the machine name to do this? Can I just use

What's your yocto release / base kernel ? IF you happen to
be using linux-yocto there are several ways to avoid using
defconfigs at all, and share your common base of kernel
configuration items.

Cheers,

Bruce

>
> FILESEXTRAPATHS := "${THISDIR}/${PN}/${MACHINE}"
>
> in a kernel .bbappend file?
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


