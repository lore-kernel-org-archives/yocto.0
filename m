Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04428E00E7D; Tue,  6 Mar 2018 11:39:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E77A5E00DEF
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 11:39:25 -0800 (PST)
Received: (qmail 19168 invoked by uid 1003); 6 Mar 2018 19:39:25 -0000
Received: from unknown (HELO ?192.168.11.100?)
	(philip@opensdr.com@73.152.143.112)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	6 Mar 2018 19:39:25 -0000
To: Giordon Stark <kratsg@gmail.com>
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
	<2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
	<CAFzUWGmBeaEDpmk_Xdkm2qO3=z3NBsMExvp_kr6iFgzSdGAZzQ@mail.gmail.com>
From: Philip Balister <philip@balister.org>
Message-ID: <987a403f-44b3-f075-7a08-53d0a7aeaf55@balister.org>
Date: Tue, 6 Mar 2018 14:39:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <CAFzUWGmBeaEDpmk_Xdkm2qO3=z3NBsMExvp_kr6iFgzSdGAZzQ@mail.gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe using CMake that requires python-six as part of compiling?
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
X-List-Received-Date: Tue, 06 Mar 2018 19:39:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit

On 03/06/2018 02:14 PM, Giordon Stark wrote:
> Hi Philip,
> 
> That was it indeed! I've gotten it working. I don't see "python-six-native"
> as a valid recipe in layers.openembedded.org. Is this a special case or is
> there a way to identify these sorts of packages in the future?

The python-six recipe should have a line like:

BBCLASSEXTEND = "native"

This tells bitbake it can build a native version by doing some tweaks to
the toolchain it uses and where to put the output.

Philip


> 
> open62541-0.3+git999-r0 do_compile: NOTE: open62541: compiling from
> external source tree /local/d4/gstark/poky/build/workspace/sources/open62541
> ERROR: open62541-0.3+git999-r0 do_package: QA Issue: open62541:
> Files/directories were installed but not shipped in any package:
>   /usr/lib/cmake
>   /usr/lib/cmake/open62541ConfigVersion.cmake
>   /usr/lib/cmake/open62541Targets.cmake
>   /usr/lib/cmake/open62541-config.cmake
>   /usr/lib/cmake/open62541Targets-debug.cmake
> Please set FILES such that these items are packaged. Alternatively if they
> are unneeded, avoid installing them or delete them within do_install.
> open62541: 5 installed and not shipped files. [installed-vs-shipped]
> ERROR: open62541-0.3+git999-r0 do_package: Fatal QA errors found, failing
> task.
> ERROR: open62541-0.3+git999-r0 do_package: Function failed: do_package
> ERROR: Logfile of failure stored in:
> /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/temp/log.do_package.14179
> ERROR: Task
> (/local/d4/gstark/poky/build/workspace/recipes/open62541/open62541_git.bb:do_package)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 506 tasks of which 492 didn't need to be
> rerun and 1 failed.
> 
> Summary: 1 task failed:
>   /local/d4/gstark/poky/build/workspace/recipes/open62541/open62541_git.bb:
> do_package
> Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
> 
> 
> I just need to remind myself of cleaning these files up :)
> 
> Giordon
> 
> On Tue, Mar 6, 2018 at 1:09 PM Philip Balister <philip@balister.org> wrote:
> 
>> On 03/06/2018 01:42 PM, Burton, Ross wrote:
>>> Add DEPENDS=python-six
>>
>> Maybe:
>>
>> DEPENDS = "python-six-native"
>>
>> Philip
>>
>>>
>>> Ross
>>>
>>> On 6 March 2018 at 18:11, Giordon Stark <kratsg@gmail.com> wrote:
>>>
>>>> Hi all,
>>>>
>>>> I'm struggling with what should be a simple-ish recipe (I think). I'm
>>>> writing a recipe implementation for
>> https://github.com/open62541/open62541
>>>>  (open62541). So I start with
>>>>
>>>> devtool add open62541 https://github.com/open62541/open62541.git
>>>>
>>>> then I edit this, so it currently looks like this for me:
>>>>
>>>> SUMMARY = "OPC UA implementation"
>>>> LICENSE = "MPL-2.0"
>>>> LIC_FILES_CHKSUM = "file://LICENSE;md5=815ca599c9df247a0c7f619bab123dad"
>>>> SRC_URI = "gitsm://github.com/open62541/open62541.git;protocol=https"
>>>> PV = "0.3+git${SRCPV}"
>>>> SRCREV = "a6b99dc0579a53207b7dfe1d16423c2c1daa467e"
>>>>
>>>> S = "${WORKDIR}/git"
>>>>
>>>> # NOTE: unable to map the following CMake package dependencies: Check
>>>> Sphinx ClangTools LATEX MbedTLS Valgrind
>>>> DEPENDS = "openssl"
>>>>
>>>> inherit cmake pythonnative
>>>>
>>>> # Specify any options you want to pass to cmake using EXTRA_OECMAKE:
>>>> EXTRA_OECMAKE = ""
>>>>
>>>> however, when I run devtool build open62541, I get  errors about "No
>>>> module named six":
>>>>
>>>> | make[2]: Leaving directory '/local/d4/gstark/poky/build/
>>>>
>> tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+git999'
>>>> | Traceback (most recent call last):
>>>> |   File "/local/d4/gstark/poky/build/workspace/sources/open62541/
>>>> tools/nodeset_compiler/nodeset_compiler.py", line 27, in <module>
>>>> |     from nodeset import *
>>>> |   File "/local/d4/gstark/poky/build/workspace/sources/open62541/
>>>> tools/nodeset_compiler/nodeset.py", line 30, in <module>
>>>> |     from nodes import *
>>>> |   File "/local/d4/gstark/poky/build/workspace/sources/open62541/
>>>> tools/nodeset_compiler/nodes.py", line 21, in <module>
>>>> |     from datatypes import *
>>>> |   File "/local/d4/gstark/poky/build/workspace/sources/open62541/
>>>> tools/nodeset_compiler/datatypes.py", line 29, in <module>
>>>> |     import six
>>>> | ImportError: No module named six
>>>> | CMakeFiles/open62541-generator-namespace.dir/build.make:71: recipe for
>>>> target 'src_generated/ua_namespace0.c' failed
>>>> | make[2]: *** [src_generated/ua_namespace0.c] Error 1
>>>> | make[2]: Leaving directory '/local/d4/gstark/poky/build/
>>>>
>> tmp/work/aarch64-poky-linux/open62541/0.3+git999-r0/open62541-0.3+git999'
>>>> | CMakeFiles/Makefile2:108: recipe for target
>> 'CMakeFiles/open62541-generator-namespace.dir/all'
>>>> failed
>>>> | make[1]: *** [CMakeFiles/open62541-generator-namespace.dir/all] Error
>> 2
>>>> | make[1]: *** Waiting for unfinished jobs....
>>>>
>>>> How do I get "python-six" added as part of pythonnative?
>>>>
>>>> Giordon
>>>>
>>>> --
>>>> Giordon Stark
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>
>>>
>>>
>>

