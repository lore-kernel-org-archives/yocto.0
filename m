Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB980E011D3
	for <yocto@yoctoproject.org>; Sat,  3 Sep 2011 14:51:53 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Sep 2011 14:51:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="45030277"
Received: from unknown (HELO [10.255.14.30]) ([10.255.14.30])
	by orsmga001.jf.intel.com with ESMTP; 03 Sep 2011 14:51:53 -0700
Message-ID: <4E62A178.8030703@linux.intel.com>
Date: Sat, 03 Sep 2011 14:51:52 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0) Gecko/20110816 Thunderbird/6.0
MIME-Version: 1.0
To: Brian Duffy <brduffy@gmail.com>
References: <CAHrDPkp-=NLeqi-3MbM7EffJDGX=mHy0_Rkw4faz-Jgi8ro4rw@mail.gmail.com>
In-Reply-To: <CAHrDPkp-=NLeqi-3MbM7EffJDGX=mHy0_Rkw4faz-Jgi8ro4rw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto 1.1 Beta Questions
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
X-List-Received-Date: Sat, 03 Sep 2011 21:51:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/03/2011 11:43 AM, Brian Duffy wrote:
> Hi Yocto group. I am new to Yocto. I followed the starters guide and
> When running bitbake I get some errors. first it complains that pseudo
> is not available but required, and then it complains that bbpath is not
> set. What is pseudo? I have sudo installed and setup to work for me, but
> I don't know what pseudo is. Also, bitbake was not installed on my fresh
> install of Fedora 15 so I installed it through the package manager.  I

Which tar ball or git repo did you grab?

You should not have to install bitbake, as it's included as part of the 
Poky tarball or git repo.

> guess that was not included in the packages from the getting started
> guide. Where do I set the bbpath? I followed the getting started guide

Did you source the oe-init-build-env (either . ./oe-init-build-env )?

Was a build directory created with a conf directory?  That environment 
initializer should set the BBATH and other envorinment variables.

I am in and out of the #Yocto IRC, so I will try to connect with you 
there also.

Sau!


> and replaced the appropriate commands with the ones from Davids blog
> post for the latest release.
>
> thnx
>
> Brian
> --
> Duff
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

