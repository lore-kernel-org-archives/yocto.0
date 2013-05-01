Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00BA0E014C8
	for <yocto@yoctoproject.org>; Wed,  1 May 2013 13:49:13 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 May 2013 13:47:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,591,1363158000"; d="scan'208";a="306400624"
Received: from envy2.jf.intel.com (HELO envy2.home) ([10.7.199.54])
	by orsmga001.jf.intel.com with ESMTP; 01 May 2013 13:49:13 -0700
Message-ID: <51817FC8.5000905@linux.intel.com>
Date: Wed, 01 May 2013 13:49:12 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130110 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1304230955180.16781@oneiric>
In-Reply-To: <alpine.DEB.2.02.1304230955180.16781@oneiric>
X-Enigmail-Version: 1.5.1
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: kernel-dev manual: SCC Description File Reference seems incomplete
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 May 2013 20:49:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Robert,

Please Cc me on kernel-dev manual email (in general Cc'ing the author is
a good way to help ensure your comments get addressed).

Bruce has responded already, and I don't have anything to add in this case.

Thanks,

On 04/23/2013 06:59 AM, Robert P. J. Day wrote:
> 
>   currently psyching up to work my way through the kernel dev manual,
> and i noticed this:
> 
> http://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html#scc-reference
> 
> that reference list seems incomplete. at a *brief* glance:
> 
> * no mention of the "force" directive
> * no mention "include" directive has optional following keywords, such
>   as "nocfg" or "inherit"
> * no mention of kconf keyword "required", which i've seen on occasion
> 
>   again, that was a very brief observation, not meant to be a complete
> list.
> 
> rday
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

