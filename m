Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCB76E00B57; Wed, 25 Apr 2018 01:57:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9551CE00B01
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 01:57:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w3P8vg6X023545
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Apr 2018 01:57:42 -0700 (PDT)
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Wed, 25 Apr 2018 01:57:41 -0700
To: "Burton, Ross" <ross.burton@intel.com>
References: <CALw8SCWhMWJuQGDDbaG3fA617Qew9GvAapc+JvVU6d+9DoOafw@mail.gmail.com>
	<c9e549ba-42f6-1a79-ec63-c37ceb805364@windriver.com>
	<CAJTo0LYtg87SdW_SPuxTo+ifMxZN+qKJmnA4+PqC2R5fBgZ+kA@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <509dbc86-dd0b-0d58-9d26-286cd8a2d026@windriver.com>
Date: Wed, 25 Apr 2018 16:59:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYtg87SdW_SPuxTo+ifMxZN+qKJmnA4+PqC2R5fBgZ+kA@mail.gmail.com>
X-Originating-IP: [128.224.162.218]
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: gcc not found
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
X-List-Received-Date: Wed, 25 Apr 2018 08:57:44 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

After checking it again, I think removing the '/' would be sufficient.

do_unpack[cleandirs] = "${@d.getVar('S') if d.getVar('S') != 
d.getVar('WORKDIR') else os.path.join('${S}', 'patches')}"

Best Regards,
Chen Qi

On 04/25/2018 04:38 PM, Burton, Ross wrote:
> Plenty of recipes do that though...
>
> On 25 April 2018 at 09:36, ChenQi <Qi.Chen@windriver.com> wrote:
>> I guess the problem is caused by the following line.
>>
>> S = "${WORKDIR}/"
>>
>> Try setting it to some dir under ${WORKDIR}, and make sure source file is
>> under it.
>> Check if the problem is still there after the above change.
>>
>> Best Regards,
>> Chen Qi
>>
>>
>> On 04/25/2018 04:24 PM, Mirza Krak wrote:
>>> Hi.
>>>
>>> I have come across a somewhat strange error that I can not explain to
>>> my self, why it is occurring and hopefully someone on the list can
>>> provide some insight.
>>>
>>> I am currently on "rocko" on all my layers and the recipe that I
>>> having issues with is brcm-patchram-plus[1]. And even though this
>>> recipe is part of meta-rockchip it seems to be modeled after the
>>> hello.bb that is found in poky so I still think that this is a
>>> "generic" problem and not specific to brcm-patchram-plus[1].
>>>
>>> The issue I am having is that we get intermediate build errors on
>>> brcm-patchram-plus[1] on our build server. We have a nightly build
>>> that builds without "sstate" and this is where we are seeing the
>>> error. It does not always fail, but every once in while with the log
>>> pasted below.
>>>
>>> Doing a "bitbake -c cleansstate brcm-patchram-plus" and rebuilding
>>> solves it, but I would like to prevent it to happening in the first
>>> place.
>>>
>>> NOTE: Running task 2923 of 3702
>>>
>>> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb:do_fetch)
>>> NOTE: recipe netbase-1_5.4-r0: task do_install: Started
>>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_fetch: Started
>>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_fetch: Succeeded
>>> NOTE: Running task 2924 of 3702
>>>
>>> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb:do_prepare_recipe_sysroot)
>>> NOTE: recipe netbase-1_5.4-r0: task do_install: Succeeded
>>> NOTE: Running task 2925 of 3702
>>>
>>> (/home/worker/yocto/layers/poky/meta/recipes-core/netbase/netbase_5.4.bb:do_populate_sysroot)
>>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_prepare_recipe_sysroot:
>>> Started
>>> NOTE: recipe netbase-1_5.4-r0: task do_populate_sysroot: Started
>>> NOTE: recipe netbase-1_5.4-r0: task do_populate_sysroot: Succeeded
>>> NOTE: Running task 2926 of 3702
>>>
>>> (/home/worker/yocto/layers/poky/meta/recipes-core/netbase/netbase_5.4.bb:do_package)
>>> NOTE: recipe brcm-patchram-plus-0.1-r0: task
>>> do_prepare_recipe_sysroot: Succeeded
>>> NOTE: Running task 2927 of 3702
>>>
>>> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb:do_unpack)
>>> NOTE: recipe netbase-1_5.4-r0: task do_package: Started
>>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_unpack: Started
>>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_unpack: Succeeded
>>> NOTE: Running task 2928 of 3702
>>>
>>> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb:do_patch)
>>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_patch: Started
>>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_patch: Succeeded
>>> NOTE: Running task 2929 of 3702
>>>
>>> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb:do_configure)
>>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_configure: Started
>>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_configure: Succeeded
>>> NOTE: Running task 2930 of 3702
>>>
>>> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb:do_compile)
>>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_compile: Started
>>> ERROR: brcm-patchram-plus-0.1-r0 do_compile: Function failed:
>>> do_compile (log file is located at
>>>
>>> /home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-gnueabi/brcm-patchram-plus/0.1-r0/temp/log.do_compile.22289)
>>> ERROR: Logfile of failure stored in:
>>>
>>> /home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-gnueabi/brcm-patchram-plus/0.1-r0/temp/log.do_compile.22289
>>> Log data follows:
>>> | DEBUG: Executing shell function do_compile
>>> |
>>> /home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-gnueabi/brcm-patchram-plus/0.1-r0/temp/run.do_compile.22289:
>>> 100:
>>> /home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-gnueabi/brcm-patchram-plus/0.1-r0/temp/run.do_compile.22289:
>>> arm-custom-linux-gnueabi-gcc: not found
>>> | WARNING: exit code 127 from a shell command.
>>> | ERROR: Function failed: do_compile (log file is located at
>>>
>>> /home/worker/yocto/build/tmp/work/cortexa17hf-neon-vfpv4-custom-linux-gnueabi/brcm-patchram-plus/0.1-r0/temp/log.do_compile.22289)
>>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_compile: Failed
>>> ERROR: Task
>>> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb:do_compile)
>>> failed with exit code '1'
>>> NOTE: Running task 2931 of 3702
>>>
>>> (/home/worker/yocto/layers/meta-rockchip/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb:do_populate_lic)
>>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_populate_lic: Started
>>> NOTE: recipe brcm-patchram-plus-0.1-r0: task do_populate_lic: Succeeded
>>> NOTE: recipe netbase-1_5.4-r0: task do_package: Succeeded
>>> NOTE: recipe groff-native-1.22.3-r0: task do_compile: Succeeded
>>> NOTE: recipe perl-5.24.1-r0: task do_compile: Succeeded
>>> NOTE: Tasks Summary: Attempted 2931 tasks of which 0 didn't need to be
>>> rerun and 1 failed.
>>>
>>> [1].
>>> https://github.com/rockchip-linux/meta-rockchip/blob/master/recipes-bsp/brcm-patchram-plus/brcm-patchram-plus_0.1.bb
>>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto



