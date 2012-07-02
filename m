Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E56CE01443
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2012 09:45:45 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 Jul 2012 09:45:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="160598414"
Received: from btwarden-mobl1.amr.corp.intel.com (HELO envy.home)
	([10.7.199.162])
	by orsmga001.jf.intel.com with ESMTP; 02 Jul 2012 09:45:44 -0700
Message-ID: <4FF1CFE0.1080801@linux.intel.com>
Date: Mon, 02 Jul 2012 09:44:16 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: Chris Larson <clarson@kergoth.com>
References: <CAGws1Tum5GZuXam-Cbo4tk3YBreetpvSy2LzcAUB4dV8BWqdKQ@mail.gmail.com>
	<CABcZANmYT+_+o2TiSs_KvFOo9Pv3m0rtNbvz=8BcjZXUwOs6Ug@mail.gmail.com>
In-Reply-To: <CABcZANmYT+_+o2TiSs_KvFOo9Pv3m0rtNbvz=8BcjZXUwOs6Ug@mail.gmail.com>
X-Enigmail-Version: 1.4.2
Cc: Yocto Project Mailing List <yocto@yoctoproject.org>
Subject: Re: How to use PRINC
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
X-List-Received-Date: Mon, 02 Jul 2012 16:45:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 07/02/2012 09:05 AM, Chris Larson wrote:
> On Mon, Jul 2, 2012 at 9:00 AM, Markus Hubig <mhubig@imko.de> wrote:
>> PRINC := "${@int(PRINC) + 2}"
> 
> This is the correct method to use in a bbappend. Start with 1,
> obviously, and bump it each time the bbappend changes.
> 

Scott, I believe this need updating in the dev-manual section "4.1.4.
Using .bbappend Files".

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



