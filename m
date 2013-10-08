Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF45EE016A3
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2013 15:32:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r98MWW5U001300
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 8 Oct 2013 15:32:32 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.171) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Tue, 8 Oct 2013 15:32:32 -0700
Message-ID: <525487FF.6070608@windriver.com>
Date: Tue, 8 Oct 2013 18:32:31 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <CAOQ7t2bMdc5Wqeb0_b7M+wBCgVv6LtrEHpLfN5YS5Kgk-y=_mw@mail.gmail.com>
	<1381270579.26156.36.camel@dvhart-mobl4.amr.corp.intel.com>
In-Reply-To: <1381270579.26156.36.camel@dvhart-mobl4.amr.corp.intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@intel.com>
Subject: Re: do_kernel_configme error with poky-tiny distro
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
X-List-Received-Date: Tue, 08 Oct 2013 22:32:37 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-10-08 6:16 PM, Darren Hart wrote:
> On Fri, 2013-09-13 at 17:32 +0200, Carlo Caione wrote:
>> Hi,
>> when I try to compile a poky-tiny distro this is what I get:
>>
>
> Hi Carlos, thanks for reporting the failure.
>
>> ERROR: Function failed: do_kernel_configme (see
>> /home/carlo/work/RSR/yocto/build/tmp/work/qemux86-poky-linux/linux-yocto-tiny/3.8.11+gitAUTOINC+8482dcdf68f9f7501118f4c01fdcb8f851882997_dd089cb5ba37ea14e8f90a884bf2a5be64ed817d-r4.1/temp/log.do_kernel_configme.13385
>> for further information)
>> ERROR: Logfile of failure stored in:
>> /home/carlo/work/RSR/yocto/build/tmp/work/qemux86-poky-linux/linux-yocto-tiny/3.8.11+gitAUTOINC+8482dcdf68f9f7501118f4c01fdcb8f851882997_dd089cb5ba37ea14e8f90a884bf2a5be64ed817d-r4.1/temp/log.do_kernel_configme.13385
>> Log data follows:
>> | DEBUG: Executing shell function do_kernel_configme
>> | [INFO] doing kernel configme
>> | [INFO] Configuring target/machine combo: "tiny/qemux86"
>> | [INFO] collecting configs in ./meta/meta-series
>> | mv: cannot stat
>> `/home/carlo/work/RSR/yocto/build/tmp/work/qemux86-poky-linux/linux-yocto-tiny/3.8.11+gitAUTOINC+8482dcdf68f9f7501118f4c01fdcb8f851882997_dd089cb5ba37ea14e8f90a884bf2a5be64ed817d-r4.1/linux-qemux86-tiny-build/.tmp.config*':
>> No such file or directory
>> | creation of pre-processed config data failed
>> | config of "tiny/qemux86" failed
>> | ERROR: Function failed: do_kernel_configme (see
>> /home/carlo/work/RSR/yocto/build/tmp/work/qemux86-poky-linux/linux-yocto-tiny/3.8.11+gitAUTOINC+8482dcdf68f9f7501118f4c01fdcb8f851882997_dd089cb5ba37ea14e8f90a884bf2a5be64ed817d-r4.1/temp/log.do_kernel_configme.13385
>> for further information)
>> ERROR: Task 678
>> (/home/carlo/work/RSR/yocto/meta/recipes-kernel/linux/linux-yocto-tiny_3.8.bb,
>> do_kernel_configme) failed with exit code '1'
>>
>> Any hint? it seems like the config file for the BSP is missing.
>
> So:
>
> Yocto Release 1.4?
> MACHINE=qemux86
> DISTRO="poky-tiny"
> target linux-yocto-tiny
>
> ?
>
> I just built this successfully from the dylan branch using the same git
> hashes you have listed above for the meta and machine branches.
>
> Can you provide any additional information about your build environment?
> Maybe share your local.conf and bblayers.conf.

That's pretty much the only way to reproduce things, since i also built
all the tiny boards against 3.10 while introducing the support .. so I
know it works.

I can say that:

 
`/home/carlo/work/RSR/yocto/build/tmp/work/qemux86-poky-linux/linux-yocto-tiny/3.8.11+gitAUTOINC+8482dcdf68f9f7501118f4c01fdcb8f851882997_dd089cb5ba37ea14e8f90a884bf2a5be64ed817d-r4.1/linux-qemux86-tiny-build/.tmp.config*':
  No such file or directory

Typically means that there was an error in a config, or the wrong kern-tools
were used.

I've got a set of changes already queued for 1.6 that would improve the
error message here, but if we can reproduce this problem, we can fix it.

Bruce



>
> Hate to ask, but did you run out of disk space?
>


