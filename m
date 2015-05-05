Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2227CE00998; Mon,  4 May 2015 21:36:42 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2165E00965
	for <yocto@yoctoproject.org>; Mon,  4 May 2015 21:36:37 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.9/8.14.9) with ESMTP id t454aVLg018263
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 4 May 2015 21:36:31 -0700 (PDT)
Received: from server.local (128.224.23.5) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 4 May 2015 21:36:30 -0700
Message-ID: <554848CE.8000108@windriver.com>
Date: Tue, 5 May 2015 00:36:30 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Timo Korthals <tkorthals@cit-ec.uni-bielefeld.de>, <yocto@yoctoproject.org>
References: <55463E32.6020805@cit-ec.uni-bielefeld.de>
	<554649D3.8050004@cit-ec.uni-bielefeld.de>
In-Reply-To: <554649D3.8050004@cit-ec.uni-bielefeld.de>
Subject: Re: fido: out-of-tree module build fails due to wrong Module.symvers reference
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
X-List-Received-Date: Tue, 05 May 2015 04:36:42 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-05-03 12:16 PM, Timo Korthals wrote:
> Dear yocto developers,
>
> the following "more generic" workaround worked also, which let's me
> assume that the "Module.symvers" in ${S} is somehow broken?
>
> Content of "linux-yocto_3.19.bbappend":
> do_install_append() {
>      cp -f ${KBUILD_OUTPUT}/Module.symvers ${STAGING_KERNEL_BUILDDIR}
> }

We have a race condition in the build artifacts copy routine in fido.
The fix missed the release, but we are working through the change now
(the latest variant was posted today).

So yes, what is being copied during the build may not be the proper
.symvers file at the moment, but once do_shared_workdir() is called
directly from the kernel do_install() routine, we'll have the proper
copy in place before your out of tree module builds.

Bruce

>
> Greetings,
> Timo
>
>
> On 03.05.2015 17:26, Timo Korthals wrote:
>> Dear yocto developers,
>>
>> with the yocto projects < 1.8 we were able to build our out-of-tree
>> module without any linking failures, but since the upgrade to 1.8
>> there seems to be something wrong with the "Module.symvers".
>> For our external module we use exactly the same Makefile as you
>> proposed in hello-mod (but of course with another obj-m argument).
>> If we then build the module, the do_compile stage prints, what you can
>> find under [1].
>> I think the problem refers to a wrong "Module.symvers" which is used
>> by the MODPOST stage.
>>
>> I just searched for all "Module.symvers" files in my fido work folder,
>> after a full build:
>> -rw-r--r-- 1 myName staff 528483 Apr 29 17:59
>> /home/myName/fido/tmp/work/amiro-poky-linux-gnueabi/linux-yocto/3.19.2+gitAUTOINC+9e70b482d3_31b35da6a5-r0/linux-amiro-standard-build/Module.symvers
>> -rw-r--r-- 1 myName staff      0 May  3 16:22
>> /home/myName/fido/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/Module.symvers
>> -rw-r--r-- 1 myName staff 386012 Apr 29 17:58
>> /home/myName/fido/tmp/work-shared/amiro/kernel-build-artifacts/Module.symvers
>>
>> In my old (projects < 1.8) workfolder, the "Module.symvers" files,
>> where distributed as follows:
>> -rw-r--r-- 4 myName staff 528483 Mar 11 13:48
>> /home/myName/tmp/sysroots/amiro/usr/src/kernel/Module.symvers
>> -rw-r--r-- 4 myName staff 528483 Mar 11 13:48
>> /home/myName/tmp/work/amiro-poky-linux-gnueabi/linux-yocto/3.19+gitAUTOINC+8897ef68b3_bfa76d4957-r0/image/usr/src/kernel/Module.symvers
>> -rw-r--r-- 4 myName staff 528483 Mar 11 13:48
>> /home/myName/tmp/work/amiro-poky-linux-gnueabi/linux-yocto/3.19+gitAUTOINC+8897ef68b3_bfa76d4957-r0/linux-amiro-standard-build/Module.symvers
>> -rw-r--r-- 2 myName staff 528483 Mar 11 13:48
>> /home/myName/tmp/work/amiro-poky-linux-gnueabi/linux-yocto/3.19+gitAUTOINC+8897ef68b3_bfa76d4957-r0/packages-split/kernel-dev/usr/src/kernel/Module.symvers
>> -rw-r--r-- 2 myName staff 528483 Mar 11 13:48
>> /home/myName/tmp/work/amiro-poky-linux-gnueabi/linux-yocto/3.19+gitAUTOINC+8897ef68b3_bfa76d4957-r0/package/usr/src/kernel/Module.symvers
>> -rw-r--r-- 4 myName staff 528483 Mar 11 13:48
>> /home/myName/tmp/work/amiro-poky-linux-gnueabi/linux-yocto/3.19+gitAUTOINC+8897ef68b3_bfa76d4957-r0/sysroot-destdir/usr/src/kernel/Module.symvers
>> -rw-r--r-- 1 myName staff 0 Mar  3 10:08
>> /home/tkorthals/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/ov5647/Module.symvers
>> -rw-r--r-- 1 myName staff      0 Mar  3 10:08
>> /home/myName/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/ov5647/Module.symvers
>>
>> A small hotfix to solve my problem is just a copy of the
>> "Module.symvers" from the kernel build into my source folder of the
>> module, by the following extension in my "ov5647.bb":
>> # Copy the fiel containing all kernel modules
>> do_patchappend() {
>>     cp -f
>> /home/myName/fido/tmp/work/amiro-poky-linux-gnueabi/linux-yocto/3.19.2+gitAUTOINC+9e70b482d3_31b35da6a5-r0/linux-amiro-standard-build/Module.symvers
>> ${S}
>> }
>> addtask patchappend after do_configure before do_compile
>>
>> If I take the "Module.symvers" from
>> "kernel-build-artifacts/Module.symvers", the linkage fails because all
>> the symbols are missing which are important for the module.
>> Do you have any Idea, if this is a bug in the new 1.8 build
>> environment, or if I am doing something wrong?
>>
>> Greetings,
>> Timo
>>
>>
>>
>> [1]
>>
>> + module_do_compile
>> + unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
>> + oe_runmake
>> KERNEL_PATH=/home/myHome/fido/tmp/work-shared/amiro/kernel-source
>> KERNEL_VERSION=3.19.2-yocto-standard 'CC=arm-poky-linux-gnueabi-gcc  '
>> 'LD=arm-poky-linux-gnueabi-ld.bfd  ' 'AR=arm-poky-linux-gnueabi-ar '
>> O=/mnt$
>> + oe_runmake_call
>> KERNEL_PATH=/home/myHome/fido/tmp/work-shared/amiro/kernel-source
>> KERNEL_VERSION=3.19.2-yocto-standard 'CC=arm-poky-linux-gnueabi-gcc  '
>> 'LD=arm-poky-linux-gnueabi-ld.bfd  ' 'AR=arm-poky-linux-gnueabi-ar ' O$
>> + bbnote make -j 8 -e MAKEFLAGS=
>> KERNEL_SRC=/home/myHome/fido/tmp/work-shared/amiro/kernel-source
>> KERNEL_PATH=/home/myHome/fido/tmp/work-shared/amiro/kernel-source
>> KERNEL_VERSION=3.19.2-yocto-standard 'CC=arm-poky-$
>> + echo 'NOTE: make -j 8 -e MAKEFLAGS=
>> KERNEL_SRC=/home/myHome/fido/tmp/work-shared/amiro/kernel-source
>> KERNEL_PATH=/home/myHome/fido/tmp/work-shared/amiro/kernel-source
>> KERNEL_VERSION=3.19.2-yocto-standard CC=arm-p$
>> NOTE: make -j 8 -e MAKEFLAGS=
>> KERNEL_SRC=/home/myHome/fido/tmp/work-shared/amiro/kernel-source
>> KERNEL_PATH=/home/myHome/fido/tmp/work-shared/amiro/kernel-source
>> KERNEL_VERSION=3.19.2-yocto-standard CC=arm-poky-linu$
>> + make -j 8 -e MAKEFLAGS=
>> KERNEL_SRC=/home/myHome/fido/tmp/work-shared/amiro/kernel-source
>> KERNEL_PATH=/home/myHome/fido/tmp/work-shared/amiro/kernel-source
>> KERNEL_VERSION=3.19.2-yocto-standard 'CC=arm-poky-linux-g$
>>
>> make[1]: Entering directory
>> `/home/myHome/fido/tmp/work-shared/amiro/kernel-source'
>>
>> make[2]: Entering directory
>> `/home/myHome/fido/tmp/work-shared/amiro/kernel-build-artifacts'
>>
>>   LD
>> /home/myHome/fido/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/built-in.o
>>
>>   CC [M]
>> /home/myHome/fido/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/ov5647.o
>>
>>   Building modules, stage 2.
>>
>>   MODPOST 1 modules
>>
>> WARNING: "v4l2_ctrl_handler_setup"
>> [/home/myHome/fido/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/ov5647.ko]
>> undefined!
>> WARNING: "__v4l2_ctrl_s_ctrl_int64"
>> [/home/myHome/fido/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/ov5647.ko]
>> undefined!
>> WARNING: "v4l2_ctrl_handler_free"
>> [/home/myHome/fido/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/ov5647.ko]
>> undefined!
>> WARNING: "media_entity_init"
>> [/home/myHome/fido/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/ov5647.ko]
>> undefined!
>> WARNING: "v4l2_i2c_subdev_init"
>> [/home/myHome/fido/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/ov5647.ko]
>> undefined!
>> WARNING: "v4l2_ctrl_new_std_menu_items"
>> [/home/myHome/fido/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/ov5647.ko]
>> undefined!
>> WARNING: "v4l2_ctrl_new_std_menu"
>> [/home/myHome/fido/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/ov5647.ko]
>> undefined!
>> WARNING: "v4l2_ctrl_new_std"
>> [/home/myHome/fido/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/ov5647.ko]
>> undefined!
>> WARNING: "v4l2_ctrl_handler_init_class"
>> [/home/myHome/fido/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/ov5647.ko]
>> undefined!
>> WARNING: "media_entity_cleanup"
>> [/home/myHome/fido/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/ov5647.ko]
>> undefined!
>> WARNING: "v4l2_device_unregister_subdev"
>> [/home/myHome/fido/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/ov5647.ko]
>> undefined!
>>
>>   CC
>> /home/myHome/fido/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/ov5647.mod.o
>>
>>   LD [M]
>> /home/myHome/fido/tmp/work/amiro-poky-linux-gnueabi/ov5647/0.0-r0/ov5647.ko
>>
>> make[2]: Leaving directory
>> `/home/myHome/fido/tmp/work-shared/amiro/kernel-build-artifacts'
>>
>> make[1]: Leaving directory
>> `/home/myHome/fido/tmp/work-shared/amiro/kernel-source'
>>
>> + ret=0
>> + trap '' 0
>> + exit 0
>>
>> --
>>
>> Timo Korthals, M.Sc.
>> Universität Bielefeld
>> AG Kognitronik & Sensorik
>> Exzellenzcluster Cognitive Interaction Technology (CITEC)
>> Inspiration 1 (Zehlendorfer Damm 199)
>> 33619 Bielefeld - Germany
>>
>> Office  : 3.037
>> Phone   : +49 521 106-67368
>> eMail   : myHome@cit-ec.uni-bielefeld.de
>> Internet: http://www.ks.cit-ec.uni-bielefeld.de/
>>
>>
>>
>
> --
>
> Timo Korthals, M.Sc.
> Universität Bielefeld
> AG Kognitronik & Sensorik
> Exzellenzcluster Cognitive Interaction Technology (CITEC)
> Inspiration 1 (Zehlendorfer Damm 199)
> 33619 Bielefeld - Germany
>
> Office  : 3.037
> Phone   : +49 521 106-67368
> eMail   :tkorthals@cit-ec.uni-bielefeld.de
> Internet:http://www.ks.cit-ec.uni-bielefeld.de/
>
>
>


