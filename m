Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE917E011C9
	for <yocto@yoctoproject.org>; Sat,  6 Aug 2011 16:20:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Aug 2011 16:20:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,330,1309762800"; d="scan'208";a="36537480"
Received: from unknown (HELO [10.255.14.173]) ([10.255.14.173])
	by fmsmga002.fm.intel.com with ESMTP; 06 Aug 2011 16:20:36 -0700
Message-ID: <4E3DCC44.6050904@linux.intel.com>
Date: Sat, 06 Aug 2011 16:20:36 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <4E3D86A2.9080802@linux.intel.com>
In-Reply-To: <4E3D86A2.9080802@linux.intel.com>
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Yan,
	Xiaofeng" <Xiaofeng.Yan@windriver.com>,
	Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: 3 Failures in RC3
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
X-List-Received-Date: Sat, 06 Aug 2011 23:20:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/06/2011 11:23 AM, Saul Wold wrote:
>
> Folks,
>
> We currently have 3 failures on the RC3 build for M3. They are all
> related to LSB builds. If you are on the TO: line please review your
> issues as we need a prompt fix.
>
> 1348: Qt3 Fails to build for ARM LSB
>
> 1349: Shared State Information gets lost for Mips FSTests
> I am trying to reproduce this on the Autobuilder
>
I am still working on reproducing this one, might be autobuilder related 
as my local autobuilder build seems to be OK right now.
I have 2 sets of sstate for fstests, which may mean that something is 
different between the poky and poky-lsb builds.

On the autobuilder, the sstate directory was empty, so I can't verify
short of restarting the build again.

> 1450: ccache directory does not get created correct
oops 1350 is the correct bugid!

> I can reproduce this one very easily by building, saving the
> sstate-cache directory and then building again with a clean tmp
> directory. The ccache/x86-64-poky-linux directory does not get created
> and the kernel-configme task fail during the HOSTCC execution.
>
I have a fix for this one, in MUT and oe-contrib/sgw/stage.

> Please take a look or if you know of these issues, please let me know.
>
> Thanks
>

