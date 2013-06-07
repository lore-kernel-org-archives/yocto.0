Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9070EE00742
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 06:34:00 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 44AABF811E9; Fri,  7 Jun 2013 07:34:00 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9DAF3F811E2;
	Fri,  7 Jun 2013 07:33:58 -0600 (MDT)
Message-ID: <51B1E148.50103@mlbassoc.com>
Date: Fri, 07 Jun 2013 07:34:00 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAFMfyzKvAfk7o_r1d0EjJw=kHTEY4_AfkGdprxPAhmv9MSkt1A@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C379DD@ORSMSX103.amr.corp.intel.com>
	<CAFMfyzJb4U0AXTfC80TtizhX_AzOxuDk5D_Lkgz10SopdTGxWA@mail.gmail.com>
	<CAFMfyzJjrtEkON57=7+d433FMZo+memj8oMufqAWb5tTysydaQ@mail.gmail.com>
	<CAFyqS9rbE=8+MZxXMTqS=O+Xv+A4UEWnaKXb04xb=baps66Sig@mail.gmail.com>
In-Reply-To: <CAFyqS9rbE=8+MZxXMTqS=O+Xv+A4UEWnaKXb04xb=baps66Sig@mail.gmail.com>
Subject: Re: Application Development
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
X-List-Received-Date: Fri, 07 Jun 2013 13:34:00 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2013-06-07 07:10, Hans Beckérus wrote:
> On Fri, Jun 7, 2013 at 9:10 AM, DAMARLA Satya Swaroop
> <swaroop.damarla@gmail.com> wrote:
>> SHould we install development and debigging pacakages in the images when we
>> want to build a toolchain.. I mean this
>>
>>   "dbg-pkgs"       - add -dbg packages for all installed packages
>> #                     (adds symbol information for debugging/profiling)
>> #  "dev-pkgs"       - add -dev packages for all installed packages
>> #                     (useful if you want to develop against libs in the
>> image)
>>
>>
>> Greets,
>> Satya
>>
> I actually tried the 'bitbake <image> -c populate-sdk but it fails :(
> Any clues to what make things go wrong this time? Nothing provides
> meta-environment-arm??

Do you have "tools-sdk" set in your IMAGE_FEATURES?

>
> Hans
>
> | Note: adding Smart channel x86_64_nativesdk (25)
> |
> |
> | Note: adding Smart channel all (10)
> |
> |
> | Note: configuring RPM cross-install scriptlet_wrapper
> |
> | Updating cache...
> ######################################## [100%]
> |
> | Saving cache...
> |
> | Note: adding Smart RPM DB channel
> |
> | Note: to be installed:  nativesdk-packagegroup-sdk-host@all
> packagegroup-cross-canadian-arm@all
> | Loading cache...
> | Updating cache...
> ######################################## [100%]
> |
> | Computing transaction...error: Can't install
> packagegroup-cross-canadian-arm-1.0-r0@all: no package provides
> meta-environment-arm
> |
> | Saving cache...
> |
> | DEBUG: Python function do_populate_sdk finished
>
>
>
>
>>
>> On Thu, Jun 6, 2013 at 1:07 PM, DAMARLA Satya Swaroop
>> <swaroop.damarla@gmail.com> wrote:
>>>
>>> Hi Jessica & Philip,
>>>
>>> I have an issue... This is such a long error ... I even did a fresh build
>>> by deleting the "tmp" directory. The image build went very well but the
>>> toolchain is always giving me a error...
>>>
>>> | Selecting previously unselected package xz-dev.
>>> | Unpacking xz-dev (from .../xz-dev_5.1.2alpha-r0_armel.deb) ...
>>> | The following package disappeared from your system as
>>> | all files have been overwritten by other packages:
>>> |   avahi
>>> | log_check: Using
>>> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.4066
>>> as logfile
>>> | Logfile is clean
>>> | Installing NATIVESDK packages
>>> | Ign file: ./ InRelease
>>> | Ign file: ./ InRelease
>>> | Ign file: ./ Release.gpg
>>> | Ign file: ./ Release.gpg
>>> | Get:1 file: ./ Release [24 B]
>>> | Get:2 file: ./ Release [11 B]
>>> | Ign file: ./ Translation-en
>>> | Ign file: ./ Translation-en
>>> | Reading package lists...
>>> | W: Ignoring Provides line with DepCompareOp for package
>>> nativesdk-pkgconfig__pkg-config__
>>> | W: You may want to run apt-get update to correct these problems
>>> | Reading package lists...
>>> | Building dependency tree...
>>> | Reading state information...
>>> | Some packages could not be installed. This may mean that you have
>>> | requested an impossible situation or if you are using the unstable
>>> | distribution that some required packages have not yet been created
>>> | or been moved out of Incoming.
>>> | The following information may help to resolve the situation:
>>> |
>>> | The following packages have unmet dependencies:
>>> |  packagegroup-cross-canadian-arm : Depends: gdb-cross-canadian-arm but
>>> it is not installable
>>> |                                    Depends: gcc-cross-canadian-arm but
>>> it is not installable
>>> |                                    Depends: meta-environment-arm but it
>>> is not installable
>>> |                                    Depends: binutils-cross-canadian-arm
>>> but it is not installable
>>> | W: Ignoring Provides line with DepCompareOp for package
>>> nativesdk-pkgconfig__pkg-config__
>>> | W: You may want to run apt-get update to correct these problems
>>> | E: Unable to correct problems, you have held broken packages.
>>> | DEBUG: Python function do_populate_sdk finished
>>> | ERROR: Function failed: populate_sdk_image (see
>>> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.4066
>>> for further information)
>>> ERROR: Task 10
>>> (/home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skidata.bb,
>>> do_populate_sdk) failed with exit code '1'
>>> NOTE: Tasks Summary: Attempted 5020 tasks of which 4939 didn't need to be
>>> rerun and 1 failed.
>>>
>>> Summary: 1 task failed:
>>>
>>> /home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skidata.bb,
>>> do_populate_sdk
>>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>>>
>>> I am not able to install those packages as they say there are no
>>> installation candidate for them...
>>>
>>>
>>> On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica <jessica.zhang@intel.com>
>>> wrote:
>>>>
>>>> Hi Satya,
>>>>
>>>>
>>>>
>>>> Use bitbake image-name –c populate_sdk, this allows you to create a
>>>> toolchain with sysroot that match your target image that allows you to
>>>> develop app against…
>>>>
>>>>
>>>>
>>>> Cheers,
>>>>
>>>> Jessica
>>>>
>>>>
>>>>
>>>> From: yocto-bounces@yoctoproject.org
>>>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Satya Swaroop Damarla
>>>> Sent: Wednesday, June 05, 2013 6:05 AM
>>>> To: yocto@yoctoproject.org
>>>> Subject: [yocto] Application Development
>>>>
>>>>
>>>>
>>>> Hi Guys,
>>>>
>>>>
>>>>
>>>> I have an issue... I created a custom image based on NVIDIA Tegra2 with a
>>>> custom kernel. I installed  packages specific Tegra board and application
>>>> specific. Now we want to send the baord and the new linux image for
>>>> application development...
>>>>
>>>>
>>>>
>>>> As I went through ADT manual, I only found qemu based toolchains but I
>>>> want to create toolchain based on my rootfs and kernel... so that the
>>>> development team can develop a voip application for the board... I am kind
>>>> of stuck how to proceed in this issue...
>>>>
>>>>
>>>>
>>>> I really need a small way out and hopefully I will catch things
>>>> automatically..
>>>>
>>>>
>>>>
>>>> Cheers,
>>>>
>>>> Satya
>>>
>>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> On Fri, Jun 7, 2013 at 9:10 AM, DAMARLA Satya Swaroop
> <swaroop.damarla@gmail.com> wrote:
>> SHould we install development and debigging pacakages in the images when we
>> want to build a toolchain.. I mean this
>>
>>   "dbg-pkgs"       - add -dbg packages for all installed packages
>> #                     (adds symbol information for debugging/profiling)
>> #  "dev-pkgs"       - add -dev packages for all installed packages
>> #                     (useful if you want to develop against libs in the
>> image)
>>
>>
>> Greets,
>> Satya
>>
>>
>> On Thu, Jun 6, 2013 at 1:07 PM, DAMARLA Satya Swaroop
>> <swaroop.damarla@gmail.com> wrote:
>>>
>>> Hi Jessica & Philip,
>>>
>>> I have an issue... This is such a long error ... I even did a fresh build
>>> by deleting the "tmp" directory. The image build went very well but the
>>> toolchain is always giving me a error...
>>>
>>> | Selecting previously unselected package xz-dev.
>>> | Unpacking xz-dev (from .../xz-dev_5.1.2alpha-r0_armel.deb) ...
>>> | The following package disappeared from your system as
>>> | all files have been overwritten by other packages:
>>> |   avahi
>>> | log_check: Using
>>> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.4066
>>> as logfile
>>> | Logfile is clean
>>> | Installing NATIVESDK packages
>>> | Ign file: ./ InRelease
>>> | Ign file: ./ InRelease
>>> | Ign file: ./ Release.gpg
>>> | Ign file: ./ Release.gpg
>>> | Get:1 file: ./ Release [24 B]
>>> | Get:2 file: ./ Release [11 B]
>>> | Ign file: ./ Translation-en
>>> | Ign file: ./ Translation-en
>>> | Reading package lists...
>>> | W: Ignoring Provides line with DepCompareOp for package
>>> nativesdk-pkgconfig__pkg-config__
>>> | W: You may want to run apt-get update to correct these problems
>>> | Reading package lists...
>>> | Building dependency tree...
>>> | Reading state information...
>>> | Some packages could not be installed. This may mean that you have
>>> | requested an impossible situation or if you are using the unstable
>>> | distribution that some required packages have not yet been created
>>> | or been moved out of Incoming.
>>> | The following information may help to resolve the situation:
>>> |
>>> | The following packages have unmet dependencies:
>>> |  packagegroup-cross-canadian-arm : Depends: gdb-cross-canadian-arm but
>>> it is not installable
>>> |                                    Depends: gcc-cross-canadian-arm but
>>> it is not installable
>>> |                                    Depends: meta-environment-arm but it
>>> is not installable
>>> |                                    Depends: binutils-cross-canadian-arm
>>> but it is not installable
>>> | W: Ignoring Provides line with DepCompareOp for package
>>> nativesdk-pkgconfig__pkg-config__
>>> | W: You may want to run apt-get update to correct these problems
>>> | E: Unable to correct problems, you have held broken packages.
>>> | DEBUG: Python function do_populate_sdk finished
>>> | ERROR: Function failed: populate_sdk_image (see
>>> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sdk.4066
>>> for further information)
>>> ERROR: Task 10
>>> (/home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skidata.bb,
>>> do_populate_sdk) failed with exit code '1'
>>> NOTE: Tasks Summary: Attempted 5020 tasks of which 4939 didn't need to be
>>> rerun and 1 failed.
>>>
>>> Summary: 1 task failed:
>>>
>>> /home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skidata.bb,
>>> do_populate_sdk
>>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>>>
>>> I am not able to install those packages as they say there are no
>>> installation candidate for them...
>>>
>>>
>>> On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica <jessica.zhang@intel.com>
>>> wrote:
>>>>
>>>> Hi Satya,
>>>>
>>>>
>>>>
>>>> Use bitbake image-name –c populate_sdk, this allows you to create a
>>>> toolchain with sysroot that match your target image that allows you to
>>>> develop app against…
>>>>
>>>>
>>>>
>>>> Cheers,
>>>>
>>>> Jessica
>>>>
>>>>
>>>>
>>>> From: yocto-bounces@yoctoproject.org
>>>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Satya Swaroop Damarla
>>>> Sent: Wednesday, June 05, 2013 6:05 AM
>>>> To: yocto@yoctoproject.org
>>>> Subject: [yocto] Application Development
>>>>
>>>>
>>>>
>>>> Hi Guys,
>>>>
>>>>
>>>>
>>>> I have an issue... I created a custom image based on NVIDIA Tegra2 with a
>>>> custom kernel. I installed  packages specific Tegra board and application
>>>> specific. Now we want to send the baord and the new linux image for
>>>> application development...
>>>>
>>>>
>>>>
>>>> As I went through ADT manual, I only found qemu based toolchains but I
>>>> want to create toolchain based on my rootfs and kernel... so that the
>>>> development team can develop a voip application for the board... I am kind
>>>> of stuck how to proceed in this issue...
>>>>
>>>>
>>>>
>>>> I really need a small way out and hopefully I will catch things
>>>> automatically..
>>>>
>>>>
>>>>
>>>> Cheers,
>>>>
>>>> Satya
>>>
>>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

