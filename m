Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4C74E4C800AB
	for <yocto@yoctoproject.org>; Mon, 27 Jun 2011 22:50:18 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Jun 2011 20:50:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,436,1304319600"; d="scan'208";a="19083673"
Received: from unknown (HELO [10.255.13.102]) ([10.255.13.102])
	by orsmga002.jf.intel.com with ESMTP; 27 Jun 2011 20:50:17 -0700
Message-ID: <4E094F79.2000708@linux.intel.com>
Date: Mon, 27 Jun 2011 20:50:17 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <BANLkTikfTbJD=5SoQH5ukrTMK6u6Ob0kZQ@mail.gmail.com>
	<1307478020.15712.53.camel@rex>
In-Reply-To: <1307478020.15712.53.camel@rex>
Cc: yocto@yoctoproject.org
Subject: Re: Configuring CVS to work through a proxy?
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
X-List-Received-Date: Tue, 28 Jun 2011 03:50:18 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Daryl,

I have to apologize for not responding earlier. If this is still an
issue for you, please respond to Richard's questions below and I'll pick
it up from here.

--
Darren

On 06/07/2011 01:20 PM, Richard Purdie wrote:
> On Tue, 2011-06-07 at 10:47 -0700, Daryl Spitzer wrote:
>> I followed the "Building an Image" instructions in the Yocto Project
>> Quick Start (on a newly configured machine running Ubuntu 11.04 (64
>> bit), and got an error.  The contents of the failure logfile is:
>>
>> NOTE: fetch http://anonymous@autobuilder.yoctoproject.org/sources/config_cvs.sv.gnu.org__20080123.tar.gz
> 
> What is odd/interesting here is that its trying the http address for the
> cache of this. If I click the above link, I do get the file after a
> warning about the anonymous user. I wonder if that username is upsetting
> wget somehow and breaking our mirroring infrastructure?
> 
> "wget
> http://anonymous@autobuilder.yoctoproject.org/sources/config_cvs.sv.gnu.org__20080123.tar.gz"
> 
> does seem to work here for me...
> 
>> NOTE: Fetch cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=config;method=pserver;date=20080123
>> cvs [checkout aborted]: connect to cvs.sv.gnu.org(140.186.70.72):2401
>> failed: Connection timed out
>> ERROR: Function 'Fetcher failure for URL:
>> 'cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=config;method=pserver;date=20080123'.
>> Unable to fetch URL
>> cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=config;method=pserver;date=20080123
>> from any source.' failed
>>
>> I'm guessing this problem is because I haven't configured CVS to work
>> through my employer's HTTP proxy.
>>
>> I did a search, and didn't find any definitive instructions for
>> configuring CVS.  (In fact, I found
>> http://www.cygwin.com/ml/kawa/2003-q3/msg00069.html, which I'm hoping
>> is out-of-date since it talks about a patch, which—8 years ago at
>> least—wasn't included in GNU CVS.  I did try defining the CVS_PROXY
>> environment variable as directed in that page just in case the CVS
>> build I'm using includes that patch—but I got the same build error.)
>>
>> Can anyone point me to up-to-date instructions for configuring CVS to
>> work through a proxy?
> 
> Good questions. I know we have people with this working behind firewalls
> but I'm not sure how they have it working...
> 
> Does the wget command above work for you?
> 
> Cheers,
> 
> Richard
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

