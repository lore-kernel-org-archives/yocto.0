Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B24244C80B70
	for <yocto@yoctoproject.org>; Tue,  7 Dec 2010 10:30:10 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Dec 2010 08:30:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,311,1288594800"; d="scan'208";a="634000187"
Received: from unknown (HELO [10.255.13.6]) ([10.255.13.6])
	by fmsmga002.fm.intel.com with ESMTP; 07 Dec 2010 08:30:06 -0800
Message-ID: <4CFE610D.7030008@linux.intel.com>
Date: Tue, 07 Dec 2010 08:30:05 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Ke, Liping" <liping.ke@intel.com>
References: <789F9655DD1B8F43B48D77C5D30659733104C7B4@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659733104C7B4@shsmsx501.ccr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Garman,
	Scott A" <scott.a.garman@intel.com>
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
X-List-Received-Date: Tue, 07 Dec 2010 16:30:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/06/2010 11:29 PM, Ke, Liping wrote:
> Hi, Jessica&  Scott
>
> I am now looking@the task of User specified qemu config support, desc " We'll provide user an edit box which allows advanced qemu user to specify arbitrary qemu configuration to meet their needs, which the poky-qemu scrip will just append the config list towards the end of the list of parameters to bring up qemu, it also expect the poky-qemu script to do some basic sanity check on the user specifications to catch the obvious mistake"
>
>
> Currently, for the user experiences, the param parsing is without specific ordering. So the parsing shell code would be somewhat fixed. Since we're needing to append other user options directly, the options vary greatly. So my plan is all user options are put into "" and read in as one parameters for easier processing in the shell script, for example:
>
> ./poky-qemu qemuarm qemuarm.bin unfs_dir serial "-smp -hda /dev/myfda_file -m 256" (extra options for advance user)
>
So is this just going to be a text field in the GUI?  Will there be any 
sanity checking of the paramerters?  Or they are just passed directly 
and qemu can blow up if bad parameters are passed?

Sau!

>
> How do you think of it? All extra options are given within "" as one parameter.
>
> Thanks&  Regards,
> criping
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

