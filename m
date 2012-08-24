Return-Path: <scott.a.garman@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62D42E011AD
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 08:42:22 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 24 Aug 2012 08:42:21 -0700
Received: by pbcxa7 with SMTP id xa7so3642950pbc.25
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 08:42:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=d2FcmOJ4cwgDACC6Jpzw3GbIguidS/PYM3qvAHorOSQ=;
	b=RbnOKxi6LC/yluYIHRUbpLjOSWuUARiBApm/Tf560o1b2fsDWFxJFSWoURuFHYA/kT
	GBm3gH4YKffKcFYNKLXBSEReRFkOwNyM2+2mjPcMI2tBdq/zeyShfRN8gN4rAsk2C/De
	0BdWFYuTWEoPVp4VtD/i9RCNuylyrFGeN7r1/7pHtA2B5NrKqfOT074RBRDpkg/wSjX3
	deplpedz0mJ4/mLVXMfTTiBIWHG/i1guxJYzFUuDnybXIZrgHLO5ZoC98LVb0fhJQRkg
	vUxmLdL95bTU5l+nd6s8/eXgMSWmHC7fywfZdBtutwgJ1O/AnqwtYoxkeYgJe93BRjqp
	1nSQ==
Received: by 10.68.225.199 with SMTP id rm7mr13972030pbc.150.1345822940943;
	Fri, 24 Aug 2012 08:42:20 -0700 (PDT)
Received: from [10.1.10.35] (c-50-137-42-92.hsd1.or.comcast.net.
	[50.137.42.92])
	by mx.google.com with ESMTPS id mr2sm8543250pbb.16.2012.08.24.08.42.19
	(version=SSLv3 cipher=OTHER); Fri, 24 Aug 2012 08:42:19 -0700 (PDT)
Message-ID: <5037A0D5.5050508@intel.com>
Date: Fri, 24 Aug 2012 08:42:13 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1208221629150.20737@oneiric>
	<5035E629.5010109@r-finger.com>
In-Reply-To: <5035E629.5010109@r-finger.com>
X-Gm-Message-State: ALoCoQkFs86dRlwzWHhqNif7LBh/1Wd1/OTIbVeZwpqv0NxXIlntFsr3I7qKc3LcU1erRdfaJGOs
Subject: Re: dev manual section on "customizing images" needs serious adjustment
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
X-List-Received-Date: Fri, 24 Aug 2012 15:42:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/23/2012 01:13 AM, Tomas Frydrych wrote:
> Hi,
>
> On 22/08/12 21:37, Robert P. J. Day wrote:
>> One way to get additional software into an image is to create a
>> custom image.
>
> The manual should make it clear that this is *the* canonical way to add
> software to your images. Modifications to local.conf are temporary
> tweaks for testing/debugging (i.e., you should never feel the need to
> commit your local.conf to some project version control system).
>
> Tomas

+1. If you add additional packages to core-image-minimal in your 
local.conf, you're no longer really building core-image-minimal.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

