Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 753FBE01476
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 17:52:31 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Jan 2013 17:52:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,476,1355126400"; d="scan'208";a="244397039"
Received: from unknown (HELO [10.255.14.213]) ([10.255.14.213])
	by azsmga001.ch.intel.com with ESMTP; 15 Jan 2013 17:52:13 -0800
Message-ID: <50F607CC.7070406@linux.intel.com>
Date: Tue, 15 Jan 2013 17:52:12 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>, 
	Zhao Yi <yi.zhao@windriver.com>,
	"Serban, Laurentiu" <laurentiu.serban@intel.com>, 
	Otavio Salvador <otavio@ossystems.com.br>
References: <CAPhnLPDoOkB=-mzUQ55cdT998oqGev+hkOiLV9vEGNUqcSXj=g@mail.gmail.com>
In-Reply-To: <CAPhnLPDoOkB=-mzUQ55cdT998oqGev+hkOiLV9vEGNUqcSXj=g@mail.gmail.com>
Cc: McClintock Matthew-B29882 <B29882@freescale.com>, yocto@yoctoproject.org
Subject: Re: Weekly build availability.
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
X-List-Received-Date: Wed, 16 Jan 2013 01:52:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


QA Teams:

Please do FULL Pass testing on this as a PRE-M3 Full Pass so we have 
some idea of what's going on.

Git Rev: 9eb88ceb39b7d0b8ddc6487e61ce8edadef10ec4

On 01/15/2013 05:09 PM, Flanagan, Elizabeth wrote:
> The weekly build is available at:
>
> http://autobuilder.yoctoproject.org/pub/nightly/20130115-2
>
> Known issues:
>
> - The eclipse plugin needs to be built alone and moved manually. I'm
> doing this right now. This is due to moving the eclipse builder to a
> slightly overloaded machine. I'll be moving it back once I have idle
> time on the infrastructure.
> - p1022ds failed due to a libxml2_2.8.0 failure. it is also throwing
> warnings about missing patches.
> - nightly-fsl-arm core-image-x11 failed. Multiple providers for
> virtual/libgl and compile issues for beecrypt and avahi

> - nightly-ppc failed on oprofile

This is a known issue and there is a patch on stage/master_under_test 
for this
>
>
> -b
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

