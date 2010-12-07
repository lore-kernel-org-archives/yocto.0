Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 98FDF4C80A74
	for <yocto@yoctoproject.org>; Tue,  7 Dec 2010 03:04:18 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Dec 2010 01:04:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="684650337"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga001.jf.intel.com with ESMTP; 07 Dec 2010 01:04:18 -0800
Received: from [10.255.13.239] (10.255.13.239) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Tue, 7 Dec 2010 02:04:17 -0700
Message-ID: <4CFDF890.40901@intel.com>
Date: Tue, 7 Dec 2010 01:04:16 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: "Ke, Liping" <liping.ke@intel.com>
References: <789F9655DD1B8F43B48D77C5D30659733104C7B4@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659733104C7B4@shsmsx501.ccr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: param format about qeme extra options parse in
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
X-List-Received-Date: Tue, 07 Dec 2010 09:04:18 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/06/2010 11:29 PM, Ke, Liping wrote:
> Hi, Jessica&  Scott
>
> I am now looking@the task of User specified qemu config support, desc
> " We'll provide user an edit box which allows advanced qemu user to
> specify arbitrary qemu configuration to meet their needs, which the
> poky-qemu scrip will just append the config list towards the end of
> the list of parameters to bring up qemu, it also expect the poky-qemu
> script to do some basic sanity check on the user specifications to
> catch the obvious mistake"
>
>
> Currently, for the user experiences, the param parsing is without
> specific ordering. So the parsing shell code would be somewhat fixed.
> Since we're needing to append other user options directly, the
> options vary greatly. So my plan is all user options are put into ""
> and read in as one parameters for easier processing in the shell
> script, for example:
>
> ./poky-qemu qemuarm qemuarm.bin unfs_dir serial "-smp -hda
> /dev/myfda_file -m 256" (extra options for advance user)
>
>
> How do you think of it? All extra options are given within "" as one
> parameter.

Sounds reasonable to me.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

