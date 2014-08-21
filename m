Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81888E004F2; Thu, 21 Aug 2014 12:31:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D45F3E0044A
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 12:30:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s7LJUgJi017527
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Aug 2014 12:30:42 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Thu, 21 Aug 2014 12:30:42 -0700
Message-ID: <53F648D3.2090205@windriver.com>
Date: Thu, 21 Aug 2014 15:30:27 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <4EAABF91-29AE-4B7D-9FEE-07C87F37197D@keylevel.com>	<53F40306.2080500@windriver.com>	<728404FF-F7F0-4371-AF09-D8C73ABA784C@keylevel.com>	<CADkTA4PKUNKFkWrz-BEud-mvNTVLUykLq_M-AMvJJWXOaxZZaA@mail.gmail.com>
	<79C4CC9D-34AA-485F-B7A7-F35FD86A3CE3@keylevel.com>
	<53F63A54.4030401@windriver.com>
	<4FC2BFFB-9FBD-43BA-AAF4-EE9CBB8126E7@keylevel.com>
In-Reply-To: <4FC2BFFB-9FBD-43BA-AAF4-EE9CBB8126E7@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Kernel driver for Turbosight TBS6285 DVB card
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
X-List-Received-Date: Thu, 21 Aug 2014 19:31:09 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-08-21 03:11 PM, Chris Tapp wrote:
>
> On 21 Aug 2014, at 19:28, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
>
>> On 14-08-21 04:17 AM, Chris Tapp wrote:
>>> On 21 Aug 2014, at 05:08, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>>>
>>>> On Wed, Aug 20, 2014 at 4:11 PM, Chris Tapp <opensource@keylevel.com> wrote:
>>>>> Hi Bruce,
>>>>>
>>>>> Thanks for the feedback.
>>>>>
>>>>> On 20 Aug 2014, at 03:08, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
>>>>>
>>>>>> On 2014-08-19, 5:26 PM, Chris Tapp wrote:
>>>>>>> I need to include the kernel driver for the Turbosight TBS6285 DVB card in an image.
>>>>>>>
>>>>>>> The official bundle at http://www.tbsdtv.com/download/document/common/tbs-linux-drivers_v140707.zip includes the drivers and a load of other "stuff" (e.g. a full V4L build).
>>>>>>>
>>>>>>> LinuxTV.org have the drivers extracted into a .tar.bz2 at (e.g.) http://linuxtv.org/downloads/drivers/linux-media-LATEST.tar.bz2, so I plan to use this as the download source.
>>>>> This bit is wrong - I need to use the .tar.bz within the .zip.
>>>>>
>>>>>>> So far I have a recipe which downloads from this URL and extracts the files into the work area and ${WORKAREA}/drivers/media includes a Makefile and Kconfig.
>>>>>>>
>>>>>>> I've looked at the Yocto documentation, but this doesn't seem to be a good match for the "Out of tree" kernel module case.
>>>>>> Hmm. At a glance, I'd say that it does sound like a typical out of
>>>>>> tree module build.
>>>>> Ah, ok - to my (untrained) eye the use-case looked completely different based on the example.
>>>>>
>>>>>> Did you try adopting the meta-skeleton hello-mod recipe and point it
>>>>>> at that source directory ?
>>>>> I have now (with the above change). However, it looks as if something within the build is referencing the host file system when building.
>>>>>
>>>>> I'm building for ValleyIsland 32-bit:
>>>>>
>>>>>   1) If I configure the drivers for 32-bit there is a linker error complaining that elf 32 and elf 64 aren't compatible (host is 64 bit);
>>>> Hmm. The target arch should be used for this build. Are you enabling a
>>>> multi lib config
>>>> as well ?
>>> Not that I know of ;-)
>>>
>>> The build uses a .version file to specify the kernel. The top makefile creates this using 'uname -r' by default. I can run 'make dir DIR="..." in do_configure() to specify the path to the yocto kernel files, which seems to fix this (after modifying another makefile, which prepends "../" to the DIR path).
>>
>> Definite host contamination there. You likely want the code, but
>> not the build infrastructure in this case.
>>
>>>
>>>>   2) Everything appears to build if I target 64-bit, but the installer tries to modify /lib/modules/3.2.0-67/..., which is also part of the host.
>>>>
>>>> Do the Makefile's that come in that archive (I haven't gone to look)
>>>> have a custom
>>>> install rule ? If so, that's likely the problem. If the kernel's build
>>>> system is triggered
>>>> (i.e. the makefile follows the conventions), everything will be
>>>> installed to the proper
>>>> location.
>>> The installer uses DESTDIR to select the installation path - I've not worked out how this gets set yet or how I can set it from within my recipe.
>>>
>>> Is there a trick I can use to get the kernel's build system to manage things?
>>
>> In this case, you really need to replace (or patch) the existing Makefile
>> that comes with the package.
>>
>> The hello-mod example I pointed out has makefile that shows the right
>> definitions to allow the kernel's build system to enter the directory, build
>> and install the modules.
>
> I've made some good progress, but still not quite there.
>
> I've got a do_compile() that basically does:
>
>    make DIR=${STAGING_KERNEL_DIR}
>
> The appears to build the modules correctly - testing will tell ;-)
>
> I've then got similar in do_install():
>
>    make DIR=${STAGING_KERNEL_DIR} DESTDIR=${D}
>
> That's 99% there - the modules get put in image/lib/modules/3.10.40-ltsi/...
> They should be in image/lib/modules/3.10.40-ltsi-yocto-standard/... - not sure yet how to fix this one.
>

The kernel-abiversion should have all the details to get the mdoules
installed in the right place. See the use of the file in the various
module bbclasses.

export KERNEL_VERSION = 
"${@base_read_file('${STAGING_KERNEL_DIR}/kernel-abiversion')}"

Bruce

> There is also a packaging QA issue causing a build failure (some files aren't used), but an INSANE_SKIP installed-vs-shipped fixes that one for now.
>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>
>
>
>


