Return-Path: <evadeflow@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC81BE0027F
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 15:30:46 -0700 (PDT)
Received: by ieak12 with SMTP id k12so528232iea.35
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 15:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Om7fUamjJUsefOqgLE2xc0LLSAmmGgfKzEk/hH6Zrbg=;
	b=WxGB8RqIwfjnUiYhdLMKV9MO7zMXzx+H5bjCctFEP+/ftOJHZKuUpsoesqWuKmkkIJ
	9za7qgcwQ5V2UPydAzKSKnxiIK6Gc0kaFA6AW4v37Im4Kv2EAsDtErGeD0nbpQWXDah+
	Ja9P2KMvquznbl8IslarJx43sTwKO0oElhg3nggeGxPpv5tPYettdR1u7qvGz496hKCd
	3nHoWT39glIpZAFNj4+0LqCOV1xXDeYfoR7JobEWhT/FTw7dBkq+IkZoVrMJ1Db+L73U
	JEMTqLU9wzy5qImcQkpRcI4tTr/3V6Irh8YZcXEmz8gmdI/L+VO4vUM5dPQkqpn9qFxw
	8LRg==
MIME-Version: 1.0
Received: by 10.182.53.103 with SMTP id a7mr4189940obp.3.1348093846089; Wed,
	19 Sep 2012 15:30:46 -0700 (PDT)
Received: by 10.76.153.198 with HTTP; Wed, 19 Sep 2012 15:30:45 -0700 (PDT)
In-Reply-To: <CAMAb8ZNHj29dcoSjjcF+XnULeyyZa=6MPyNtm-V4VAJ1jGFTHw@mail.gmail.com>
References: <CAMAb8ZO=KzrgNoW4VPADtCn27KUfviP4QL84_ia5sAUbj_9a3Q@mail.gmail.com>
	<5059F7ED.7030006@mlbassoc.com>
	<CAMAb8ZMUJa_MpkFfRqbwyZpMn6MAa=guE0bNc5+_J+Pkdae2FQ@mail.gmail.com>
	<5059FF96.7080907@mlbassoc.com>
	<CAMAb8ZNHj29dcoSjjcF+XnULeyyZa=6MPyNtm-V4VAJ1jGFTHw@mail.gmail.com>
Date: Wed, 19 Sep 2012 18:30:45 -0400
Message-ID: <CAMAb8ZOEXQ8FD=5apRwkifTdspixyXr1nEUhO1t_LNp2sy42AA@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: BB_NO_NETWORK and own-mirrors not working with meta-systemd
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
X-List-Received-Date: Wed, 19 Sep 2012 22:30:46 -0000
Content-Type: text/plain; charset=ISO-8859-1

> I'm just trying to build the thing. :-)  I'll try converting the tag
> name into a commit hash and see if that helps, thanks a lot...

::SIGH::  I changed the SRC_URI var in kmod.inc from this:

  SRC_URI = "git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git;protocol=git;tag=v${PV}"

to this:

  SRC_URI = "git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git;protocol=git"
  SRCREV="8885ced062131214448fae056ef453f094303805"

This is *still* trying to access the network:


NOTE: package kmod-7-r0: task do_fetch: Started
ERROR: Function failed: Network access disabled through BB_NO_NETWORK
but access rquested with command git ls-remote
git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git
8885ced062131214448 (for url None)
ERROR: Logfile of failure stored in:
/home/dwolfe/projects/poky-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-neon-oe-linux-gnueabi/kmod-7-r0/temp/log.do_fetch.11168
Log data follows:
| ERROR: Function failed: Network access disabled through
BB_NO_NETWORK but access rquested with command git ls-remote
git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git
8885ced062131214448 (for url None)
NOTE: package kmod-7-r0: task do_fetch: Failed
NOTE: package acl-2.2.51-r3: task do_fetch: Started
NOTE: package acl-2.2.51-r3: task do_fetch: Succeeded
ERROR: Task 1374
(/home/dwolfe/projects/poky-git/meta-systemd/recipes-kernel/kmod/kmod_7.bb,
do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 699 tasks of which 697 didn't need to
be rerun and 1 failed.

Summary: 1 task failed:
  /home/dwolfe/projects/poky-git/meta-systemd/recipes-kernel/kmod/kmod_7.bb,
do_fetch
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
bitbake discovery-image  16.51s user 2.65s system 112% cpu 17.031 total


Why is poky/bitbake/whatever running 'git ls-remote'? This seems like a
bug....


On Wed, Sep 19, 2012 at 1:33 PM, Evade Flow <evadeflow@gmail.com> wrote:
> I'm not sure how to answer your questions, unfortunately, this is all
> quite new to me. I'm not the maintainer of said layer, and don't know
> anything at all yet about 'layer etiquette'. There does seem to be a
> README.md file in meta-systemd, though:
>
>   - http://git.yoctoproject.org/cgit/cgit.cgi/meta-systemd/tree/README.md
>
> I'm just trying to build the thing. :-)  I'll try converting the tag
> name into a commit hash and see if that helps, thanks a lot...
>
>
> On Wed, Sep 19, 2012 at 1:23 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>> On 2012-09-19 11:15, Evade Flow wrote:
>>>>
>>>> Where did you get that meta-systemd layer?
>>>
>>>
>>>> From here:
>>>
>>>
>>>    - http://git.yoctoproject.org/cgit/cgit.cgi/meta-systemd/
>>
>>
>> Why are there conflicting meta-systemd layers (and pointers thereto)??
>> This layer in git.yoctoproject.org doesn't seem even "legal" - where is
>> the README that is expected with every layer?  Without it, I don't have
>> enough info to be able to report problems like yours...
>>
>> The reason your build fails with BB_NO_NETWORK is that the kmod_7.bb
>> recipe refers to a git tag, not a specific revision, which cannot be
>> resolved without using the network.
>>
>>
>>>
>>>
>>> On Wed, Sep 19, 2012 at 12:50 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>>
>>>> On 2012-09-19 10:34, Evade Flow wrote:
>>>>>
>>>>>
>>>>> Trying to build the meta-ivi discovery-image behind a firewall is
>>>>> proving to be quite a challenge. I tried modifying my conf/local.conf
>>>>> file as follows:
>>>>>
>>>>> CONNECTIVITY_CHECK_URIS=""
>>>>> BB_GENERATE_MIRROR_TARBALLS = "1"
>>>>> SOURCE_MIRROR_URL ?= "file:///home/evadeflow/projects/poky-mirror/"
>>>>> INHERIT += "own-mirrors"
>>>>>
>>>>> and then ran:
>>>>>
>>>>> % bitbake discovery-image
>>>>>
>>>>> in a VM on my home laptop over the weekend. (I'm trying to build using
>>>>> the meta-ivi layer, per the instructions in its README.) After grinding
>>>>> and churning for some 60+ hours, it finally succeeded, leaving 11 GB of
>>>>> 'stuff' in my poky-mirror folder.
>>>>>
>>>>> Then, I copied the poky-mirror folder to a firewalled machine at work
>>>>> and added:
>>>>>
>>>>> BB_NO_NETWORK="1"
>>>>>
>>>>> to local.conf.  When I tried to bitbake discovery-image on this machine,
>>>>> I got the following error:
>>>>>
>>>>>
>>>>> NOTE: Running task 697 of 3568 (ID: 1374,
>>>>>
>>>>>
>>>>> /home/evadeflow/projects/poky-git/meta-systemd/recipes-kernel/kmod/kmod_7.bb,
>>>>> do_fetch)
>>>>> NOTE: package kmod-7-r0: task do_fetch: Started
>>>>> ERROR: Function failed: Network access disabled through BB_NO_NETWORK
>>>>> but access rquested with command git ls-remote
>>>>> git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git v7 (for url
>>>>> None)
>>>>> ERROR: Logfile of failure stored in:
>>>>>
>>>>>
>>>>> /home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-neon-oe-linux-gnueabi/kmod-7-r0/temp/log.do_fetch.29423
>>>>> Log data follows:
>>>>> | ERROR: Function failed: Network access disabled through
>>>>> BB_NO_NETWORK but access rquested with command git ls-remote
>>>>> git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git v7 (for url
>>>>> None)
>>>>> NOTE: package kmod-7-r0: task do_fetch: Failed
>>>>> ERROR: Task 1374
>>>>>
>>>>>
>>>>> (/home/evadeflow/projects/poky-git/meta-systemd/recipes-kernel/kmod/kmod_7.bb,
>>>>> do_fetch) failed with exit code '1'
>>>>> Waiting for 1 running tasks to finish:
>>>>> 0: libusb1-1.0.8-r4 do_compile (pid 29232)
>>>>> NOTE: package libusb1-1.0.8-r4: task do_compile: Succeeded
>>>>> NOTE: Tasks Summary: Attempted 697 tasks of which 105 didn't need to
>>>>> be rerun and 1 failed.
>>>>>
>>>>> Summary: 1 task failed:
>>>>>
>>>>>
>>>>> /home/evadeflow/projects/poky-git/meta-systemd/recipes-kernel/kmod/kmod_7.bb,
>>>>> do_fetch
>>>>> Summary: There was 1 ERROR message shown, returning a non-zero exit
>>>>> code.
>>>>> bitbake discovery-image  5338.15s user 995.52s system 187% cpu 56:12.92
>>>>> total
>>>>>
>>>>> [NOTE: I'm on poky denzil@65ffa73, meta-ivi denzil@e068388, and
>>>>> meta-systemd denzil@6a358e9. Also, that typo in the output
>>>>> isn't mine, i.e., 'rquested' should be 'requested'.]
>>>>>
>>>>> Can anyone explain what's going on here? If I look in the poky-mirror
>>>>> folder for kmod-related stuff, I see:
>>>>>
>>>>> % ls /home/evadeflow/projects/poky-mirror/*kmod*
>>>>>
>>>>>
>>>>> /home/evadeflow/projects/poky-mirror/git2_git.kernel.org.pub.scm.utils.kernel.kmod.kmod.git.tar.gz
>>>>>
>>>>>
>>>>> /home/evadeflow/projects/poky-mirror/git2_git.profusion.mobi.kmod.git.tar.gz
>>>>>
>>>>> I *think* this is what needs to be downloaded for this recipe(?) Why is
>>>>> `git ls-remote` being run at all? I'm not sure whether this is the fault
>>>>> of poky/oe-core, or of the meta-systemd layer. I'd just really wish it
>>>>> worked. `:-}  Any advice?
>>>>
>>>>
>>>>
>>>> Where did you get that meta-systemd layer?  I can't find your
>>>> recipe nor that revision (denzil@6a358e9) in the published version
>>>> which is at git://git.openembedded.org/meta-openembedded according
>>>> to http://www.openembedded.org/wiki/LayerIndex
>>>>
>>>> --
>>>> ------------------------------------------------------------
>>>> Gary Thomas                 |  Consulting for the
>>>> MLB Associates              |    Embedded world
>>>> ------------------------------------------------------------
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------

