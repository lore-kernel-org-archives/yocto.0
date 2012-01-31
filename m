Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F349E00B08
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2012 08:51:35 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 31 Jan 2012 08:51:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="61720048"
Received: from unknown (HELO [10.255.14.149]) ([10.255.14.149])
	by AZSMGA002.ch.intel.com with ESMTP; 31 Jan 2012 08:51:01 -0800
Message-ID: <4F281BF5.6040502@linux.intel.com>
Date: Tue, 31 Jan 2012 08:51:01 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CADzUK1+ATfTW6FAPGZ97WhstFm_hq-Msdbf9wQ6HG6gLtUjS8w@mail.gmail.com>
In-Reply-To: <CADzUK1+ATfTW6FAPGZ97WhstFm_hq-Msdbf9wQ6HG6gLtUjS8w@mail.gmail.com>
Subject: Re: How do I patch the kernel before it is built?
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
X-List-Received-Date: Tue, 31 Jan 2012 16:51:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 31/01/12 08:45, autif khan wrote:
> I could not find a way to patch the kernel source before its is built.
>
> I promise to update the Yocto wiki's How do I section when I have a
> working solution for the following :-)
>
> Here is what I am trying to do:
>
> 1) Patch the kernel (add VID/PID to hid_ignore_list in
> drivers/hid/hid-core.c and also to add the VID/PID to .h file)

We have some documentation which covers this:
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#dev-manual-kernel-appendix 


I'm not sure if it answers all of your questions, but hopefully it gets 
you closer.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

