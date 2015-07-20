Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C77E6E009C5; Mon, 20 Jul 2015 10:56:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E317E008D4
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 10:56:42 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A5363F811DB; Mon, 20 Jul 2015 11:56:41 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id F1FDAF811DA;
	Mon, 20 Jul 2015 11:56:40 -0600 (MDT)
Message-ID: <55AD366B.3080104@mlbassoc.com>
Date: Mon, 20 Jul 2015 11:56:59 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <55AD13AC.3010802@mlbassoc.com>		<CAJTo0LY=mS1xJ5kW-ogFNY=T60qpyWP0MofdTK4_XKckzh5mfg@mail.gmail.com>		<55AD1D0E.1020402@mlbassoc.com>	<1437411518.27687.43.camel@linuxfoundation.org>
	<55AD2C96.8060402@mlbassoc.com> <55AD2EF2.6030306@mlbassoc.com>
In-Reply-To: <55AD2EF2.6030306@mlbassoc.com>
Subject: Re: New/unfamiliar messages
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
X-List-Received-Date: Mon, 20 Jul 2015 17:56:48 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-20 11:25, Gary Thomas wrote:
> On 2015-07-20 11:15, Gary Thomas wrote:
>> On 2015-07-20 10:58, Richard Purdie wrote:
>>> On Mon, 2015-07-20 at 10:08 -0600, Gary Thomas wrote:
>>>> On 2015-07-20 09:39, Burton, Ross wrote:
>>>>>
>>>>> On 20 July 2015 at 16:28, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>>>>>
>>>>>         NOTE: Stamp /home/local/rpi2_2015-03-05/tmp/stamps/i686-linux/dbus-native/1.8.16-r0 is not reachable, removing related manifests
>>>>>             ... many more
>>>>>
>>>>>      What do these mean and should I be worried about seeing them?
>>>>>
>>>>>
>>>>> That basically means that e.g. the dbus-native in the layers is newer than the version in the sysroot, so it is now removing dbus-native 1.8.16 from the sysroot so it can later
>>>>> install 1.8.<something newer>.  Now this code has pretty much proven itself we can probably remove those messages.
>>>>>
>>>>> Previously it just wrote over the top and hoped for the best, with logic to error out if one native recipe wrote over another recipe's files.  This was good for determinism but
>>>>> bad
>>>>> for moving files between recipes or renaming recipes (which was impossible).
>>>>
>>>> Thanks for the explanation.  I can see that the code for this
>>>> is fairly new (early June) and I must have not seen many of these
>>>> so it grabbed my attention.  The build tree in question was last
>>>> touched in March, so there obviously were many cases of this
>>>> situation.
>>>>
>>>> Related query: I tend to build & rebuild in the same tree (typically
>>>> only one platform per build tree) over long periods of time (like my
>>>> RaspberryPi2 tree which I've had around for many months).  Over time,
>>>> there may be a lot of updated builds and I end up with many "duplicated"
>>>> trees in my tmp/work (I don't use rm_work), e.g.
>>>>     tmp/work/x86_64-linux/libfontenc-native/1_1.1.3-r0
>>>>     tmp/work/x86_64-linux/libfontenc-native/1_1.1.2-r0
>>>>     tmp/work/x86_64-linux/glib-2.0-native/1_2.44.1-r0
>>>>     tmp/work/x86_64-linux/glib-2.0-native/1_2.44.0-r0
>>>>
>>>> Is there a [simple] way to remove just the old/redundant trees?
>>>
>>> The code you're talking about above now does this (without rm_work)!
>>
>> Interesting - why then do I still have redundant (tmp/work/...) trees?
>>
>
> Answering my own question; I assume this is because I may have some
> build artifacts from other images I may have built in this tree and
> the messages (and removal) only apply to the image(s) I built today?
>

Well that theory is blown up :-(  I had in my tree:
drwxrwxr-x 8 gthomas gthomas 4096 May 28 11:29 tmp/work/x86_64-linux/yasm-native/1.2.0-r0
drwxrwxr-x 8 gthomas gthomas 4096 Jul 16 09:30 tmp/work/x86_64-linux/yasm-native/1.3.0-r0

So I thought I'd test my hypothesis by trying a build of yasm-native:
$ bitbake yasm-native
NOTE: Started PRServer with DBfile: /local/p0382-cutting-edge_2014-11-21/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 56915, PID: 32139
Parsing recipes: 100% |##################################################################################| Time: 00:01:27
Parsing of 1323 .bb files complete (0 cached, 1323 parsed). 1763 targets, 97 skipped, 0 masked, 0 errors.
NOTE: Stamp /local/p0382-cutting-edge_2014-11-21/tmp/stamps/x86_64-linux/qemu-native/2.3.0-r1 is not reachable, removing related manifests
NOTE: Stamp /local/p0382-cutting-edge_2014-11-21/tmp/stamps/x86_64-linux/gtk-update-icon-cache-native/3.4.4-r0 is not reachable, removing related manifests
NOTE: Stamp /local/p0382-cutting-edge_2014-11-21/tmp/stamps/cortexa9hf-vfp-neon-amltd-linux-gnueabi/speex/1.2rc1-r2 is not reachable, removing related manifests
NOTE: Stamp /local/p0382-cutting-edge_2014-11-21/tmp/stamps/cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi/libdrm/2.4.59-r0 is not reachable, removing related manifests
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.27.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-13.10"
TARGET_SYS        = "arm-amltd-linux-gnueabi"
MACHINE           = "teton-p0382"
DISTRO            = "amltd"
DISTRO_VERSION    = "1.8+snapshot-20150720"
TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard cortexa9"
TARGET_FPU        = "vfp-neon"
meta              = "cutting-edge:0f8d89ce66cfffccc9911d6c61470a585173b79d"
meta-oe           = "cutting-edge:bd2eab9d5b5fb0c030528aeba706f5a24429bf4f"
meta-demos        = "master:40d5e8595e6f2fffab978ef8f672512bc78563ba"
meta-amltd        = "cutting-edge:526a81399cd4e8212b73f697bb28ae9b7db91912"
meta-teton-imx6-p0382 = "cutting-edge:3f8803e5822a8b55898f8194638e51a5ea1625b3"
meta-fsl-arm      = "cutting-edge:cf94bf962184cbc3d9c1ba7e2d6e8751eebfad77"
meta-fsl-arm-extra = "cutting-edge:60398d3a0b1e5f18a5348fafede7dd3c58abfbac"
meta-fsl-demos    = "master:1ae8a2d8e9899f0182fa5227acc2b7b6c78039ff"
meta-webserver    = "master:788c2ed48b961935f8381cb2c4fe54d68602b05c"
meta-browser      = "cutting-edge:fdb555cdaa1ae090f97bf6ab9736e4c158509a92"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 65 tasks of which 8 didn't need to be rerun and all succeeded.

So some things got cleaned up, but not yasm-native:
$ ls tmp/work/x86_64-linux/yasm-native
1.2.0-r0  1.3.0-r0

I like the idea here, but it doesn't seem to be quite what I expect.
Maybe I'm [still] missing the point a bit?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

