Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1192E011C8
	for <yocto@yoctoproject.org>; Sun,  7 Aug 2011 13:08:56 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Aug 2011 13:09:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,333,1309762800"; d="scan'208";a="36702840"
Received: from unknown (HELO [10.255.14.173]) ([10.255.14.173])
	by fmsmga002.fm.intel.com with ESMTP; 07 Aug 2011 13:09:05 -0700
Message-ID: <4E3EF0E0.5000107@linux.intel.com>
Date: Sun, 07 Aug 2011 13:09:04 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <4E3D86A2.9080802@linux.intel.com>	<4E3DCC44.6050904@linux.intel.com>
	<CAPhnLPBYMtEy-ny0Yo+QMHWU7chbk2zj4xG-rC1gqpGYMASTqA@mail.gmail.com>
In-Reply-To: <CAPhnLPBYMtEy-ny0Yo+QMHWU7chbk2zj4xG-rC1gqpGYMASTqA@mail.gmail.com>
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
X-List-Received-Date: Sun, 07 Aug 2011 20:08:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/07/2011 11:11 AM, Flanagan, Elizabeth wrote:
> On Sat, Aug 6, 2011 at 4:20 PM, Saul Wold<sgw@linux.intel.com>  wrote:
>> On 08/06/2011 11:23 AM, Saul Wold wrote:
>>>
>>> Folks,
>>>
>>> We currently have 3 failures on the RC3 build for M3. They are all
>>> related to LSB builds. If you are on the TO: line please review your
>>> issues as we need a prompt fix.
>>>
>>> 1348: Qt3 Fails to build for ARM LSB
>>>
>>> 1349: Shared State Information gets lost for Mips FSTests
>>> I am trying to reproduce this on the Autobuilder
>>>
>> I am still working on reproducing this one, might be autobuilder related as
>> my local autobuilder build seems to be OK right now.
>> I have 2 sets of sstate for fstests, which may mean that something is
>> different between the poky and poky-lsb builds.
>>
>> On the autobuilder, the sstate directory was empty, so I can't verify
>> short of restarting the build again.
>
> Look at http://autobuilder.yoctoproject.org/nightly/CURRENT/sstate-cache
>
> That is the saved sstate for that build.
>
I found the correct location in the autobuilder, but it seems that the 
sstate-cache is bad and should be removed, I thought we where removing 
sstate before starting a nightly?

The bad sets are:
sstate-fstests-mips-poky-linux-0.0+svnr426-r1-mips-2-1ac2de42c742acfe5b35e44bfe68e7c1_package.*
sstate-fstests-mips-poky-linux-0.0+svnr426-r1-mips-2-44cb8fcc9b29e00d9d339e641c333d1e_package.*

sstate-fstests-mips-poky-linux-0.0+svnr426-r1-mips-2-ad481871e7622c756a3262632dfb088c_deploy-rpm.*
sstate-fstests-mips-poky-linux-0.0+svnr426-r1-mips-2-79fefc65e6e34db9ae3bfbfdff6f9522_deploy-rpm.*

I think if those are removed or the sstate is reset for each nightly 
build the fstest issue will go away.

>>
>>> 1450: ccache directory does not get created correct
>>
>> oops 1350 is the correct bugid!
>>
>>> I can reproduce this one very easily by building, saving the
>>> sstate-cache directory and then building again with a clean tmp
>>> directory. The ccache/x86-64-poky-linux directory does not get created
>>> and the kernel-configme task fail during the HOSTCC execution.
>>>
>> I have a fix for this one, in MUT and oe-contrib/sgw/stage.
>>
>
> Is this also what is occurring during the meta-intel builds?
>
Yes, and as you may have noticed it's been fixed and I pushed it to the 
RC3 branch and re-built the meta-intel builds.

>>> Please take a look or if you know of these issues, please let me know.
>>>
>>> Thanks
>>>
>>
>

