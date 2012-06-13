Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D91B2E006D9
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 13:49:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q5DKnwN3009277
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Jun 2012 13:49:58 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 13 Jun 2012 13:49:58 -0700
Message-ID: <4FD8FCEB.5010105@windriver.com>
Date: Wed, 13 Jun 2012 16:49:47 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Ross Burton <ross.burton@intel.com>
References: <21DFE0D0610B43B982449CB678019727@intel.com>
In-Reply-To: <21DFE0D0610B43B982449CB678019727@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: More useful generic-x86 machine
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
X-List-Received-Date: Wed, 13 Jun 2012 20:50:00 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-06-13 04:44 PM, Ross Burton wrote:
> Hi,
>
> My current test hardware for Yocto work is a Celeron-class Sandy Bridge-based micro PC. As is to be expected for a machine like this, it's got modern Intel graphics and wireless. Neither of which are supported by atom-pc, as it's nominally a "generic netbook" image.
>
> Let's face it -- it's a really bad generic netbook image, it's really a Asus eeePC701-and-similar image. Specifically, only one wifi driver, only i915 GPU driver, and so on.
>
> I'm not arguing for a true generic kernel such as Fedora maintains which boots on almost everything, just a new machine with more flexibility. Including both i915 and i965 GPU drivers covers everything Intel-driven from the earliest netbook to the latest Ivy Bridge[1].  Including the iwl wifi drivers at least covers a good proportion of devices out there.  There are probably a few more drivers that are common and give big gains in support.  Not exactly boot on everything, but certainly boot on many.
>
> Thoughts?

Send patches, and define the machine. But it has to be something
that we can actually *test* and maintain. We don't define 'what if'
and 'in case' configurations. We define embedded/tight configurations
that should be extended for particular machines.

The common-pc is a bit old, so I'd suggest sending patches to that
base and we can consider them on a 1:1 basis. As long as it isn't
overly generic, and hits a defined/closed set of machines and drivers,
patches won't be denied.

Even better, just branch from one of the existing configs and add more,
that way the extensions are separate from the base.

Cheers,

Bruce

>
> Ross
>
> [1] Ignoring Cedar Trail, but that's already in meta-intel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


