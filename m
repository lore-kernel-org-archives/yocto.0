Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1E494C80120
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2011 17:18:46 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Aug 2011 15:18:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,302,1309762800"; d="scan'208";a="36832829"
Received: from unknown (HELO [10.255.14.76]) ([10.255.14.76])
	by fmsmga001.fm.intel.com with ESMTP; 01 Aug 2011 15:18:45 -0700
Message-ID: <4E372645.7000205@linux.intel.com>
Date: Mon, 01 Aug 2011 15:18:45 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13
	Lightning/1.0b3pre Thunderbird/3.1.10
MIME-Version: 1.0
To: Jeff Mitchell <jmitchell@ll.mit.edu>
References: <4E36E879.8070407@ll.mit.edu>
In-Reply-To: <4E36E879.8070407@ll.mit.edu>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Magic/File problems
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
X-List-Received-Date: Mon, 01 Aug 2011 22:18:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/01/2011 10:55 AM, Jeff Mitchell wrote:
> On my host system I have the "file" utility version 5.05. The version in
> poky/in my build directories is version 5.04. I'm seeing a lot of builds
> fail with the following:
>
> | error: magic_load(ms, /usr/share/misc/magic) failed: File 5.4 supports
> only version 7 magic files. `/usr/share/misc/magic.mgc' is version 8
>
> Note that the version there is 5.4; this doesn't match anything as far
> as I can tell.
>
> Any ideas?

Jeff,

Which version of poky are you working with? There was a problem that we 
had with file at one point and thought was fixed. If you check in your
tmp/sysroots directory for the host machine, do you have a file.real?

We needed to create a cover script which correctly pointed file to the 
right magic.mgc file.

Hope that helped.

Sau!

>
> Thanks,
> Jeff
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

