Return-Path: <scott.a.garman@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 582324C80132
	for <yocto@yoctoproject.org>; Mon,  1 Nov 2010 02:12:08 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Nov 2010 00:12:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,271,1286175600"; d="scan'208";a="852853979"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by fmsmga001.fm.intel.com with ESMTP; 01 Nov 2010 00:12:08 -0700
Received: from [10.255.12.110] (10.255.12.110) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Mon, 1 Nov 2010 01:12:07 -0600
Message-ID: <4CCE6846.6050105@intel.com>
Date: Mon, 1 Nov 2010 00:12:06 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BC34EF5F@orsmsx501.amr.corp.intel.com>
	<AANLkTinJYiqS9rTv6ioZUSdS5sbSob3WQ564T-6funmc@mail.gmail.com>
In-Reply-To: <AANLkTinJYiqS9rTv6ioZUSdS5sbSob3WQ564T-6funmc@mail.gmail.com>
Subject: Re: Some photos of the four architecture demo
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 01 Nov 2010 07:12:08 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/01/2010 12:07 AM, Frans Meulenbroeks wrote:
> Dave, the demo looked indeed quite impressive, and actually I was
> trying to fetch the sources, but ....
> git clone does not work for me. I've tried a few times and from
> different systems/locations.
> the poky master clones fine.
>
> frans@frans-desktop:~/yocto$ git clone git://git.pokylinux.org/meta-demo
> Initialized empty Git repository in /home/frans/yocto/meta-demo/.git/
> fatal: The remote end hung up unexpectedly
>
> Best regards, Frans

Hi Frans,

It looks like anonymous access to the git repository isn't enabled. I 
can clone it using ssh:// but not get the same error as you when using 
git://

We'll have someone resolve this later today. Thanks for reporting it.

Scott

