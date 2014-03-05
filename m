Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A71D3E00A89
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 13:39:44 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Mar 2014 13:39:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,595,1389772800"; d="scan'208";a="493033664"
Received: from unknown (HELO [10.255.12.231]) ([10.255.12.231])
	by fmsmga002.fm.intel.com with ESMTP; 05 Mar 2014 13:39:42 -0800
Message-ID: <5317999E.2070007@linux.intel.com>
Date: Wed, 05 Mar 2014 13:39:42 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>, 
	Elizabeth Flanagan <elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>	<60198294855571725c0b3dea2c9b53f3c1b4d7e9.1394042358.git.elizabeth.flanagan@intel.com>
	<CAMKF1srnQu9DY4qgMpjWHQcgxYnJY=h-POK1ReLKi7hBiA0P4Q@mail.gmail.com>
In-Reply-To: <CAMKF1srnQu9DY4qgMpjWHQcgxYnJY=h-POK1ReLKi7hBiA0P4Q@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [AB PATCH 03/27] nightly-world-uclibc: uclibc target
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
X-List-Received-Date: Wed, 05 Mar 2014 21:39:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/05/2014 10:31 AM, Khem Raj wrote:
> On Wed, Mar 5, 2014 at 10:22 AM, Elizabeth Flanagan
> <elizabeth.flanagan@intel.com> wrote:
>>
>> This should add a uclibc world build (which will probably have
>> some issues at first)
>
> yay ! thanks

Yes, it will have issues, I ran a world build a while ago for this bug: 
  https://bugzilla.yoctoproject.org/show_bug.cgi?id=5431

So we currently have some idea, we should add any new bugs to block this 
one.

Will this run nightly or as requested?


Sau!
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

