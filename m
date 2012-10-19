Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6E88E00348
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 11:01:15 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Oct 2012 11:01:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,613,1344236400"; d="scan'208";a="208213211"
Received: from unknown (HELO [10.255.14.107]) ([10.255.14.107])
	by orsmga001.jf.intel.com with ESMTP; 19 Oct 2012 11:01:14 -0700
Message-ID: <50819565.5090604@linux.intel.com>
Date: Fri, 19 Oct 2012 11:01:09 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: Tomas Frydrych <tf@r-finger.com>
References: <508164D0.1020408@r-finger.com>
In-Reply-To: <508164D0.1020408@r-finger.com>
Cc: yocto@yoctoproject.org
Subject: Re: why was meta-dlna submodule history stripped out?
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
X-List-Received-Date: Fri, 19 Oct 2012 18:01:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/19/2012 07:33 AM, Tomas Frydrych wrote:
>
> Looking over meta-dlna in Yocto git I see it's little more than a fork
> of meta-guacamayo from guacamayo-project.org -- could someone please
> explain to me why the git history was stripped out from this 'combo' layer?
>
My apologies, I updated the MAINTAINER and README files.

> (I am delighted Intel is finding Guacamayo useful, but the obliteration
> of the history makes it look as if the credit for this official Yocto
> layer goes to Intel; I am sure that was not intentional.)
>
No this was not intentional, the combo-layer tool seems to do that. I 
used combo layer because we wanted to pull in the kvm changes so that 
this could be shown as a VM.

> I am also interested in knowing why the fork was deemed necessary in the
> first place, just in case it was for technical reasons that could be
> addressed at source.
>
In the first pass, there were mostly minor changes to cut this down to 
what was needed for the headless media server. As I moved to 1.3 there 
were more changes that I have made, you can see what's going on in the 
1.3wip branch of meta-dlna. If you want some of those changes in 
meta-guacamayo please take them.

My goal is to make the meta-dlna be more cut down and not require the
as much. If we can accomplish that directly with meta-guacamayo that 
would be awesome.

Right now I am fighting a dbus/rygel segfault.

Sau!

> Tomas
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

