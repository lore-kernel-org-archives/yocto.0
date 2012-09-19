Return-Path: <evadeflow@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53B0CE004AB
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 10:15:38 -0700 (PDT)
Received: by obbtb18 with SMTP id tb18so1675870obb.35
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 10:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=0b4N5/gH56MS/Qc2wTlEYt/pFH6J/9JOcs59NhgMe/8=;
	b=UlYtu5Wi1tmUiuSn4wMHpSmhCyWLdhBWoCd8P4hmoviME/Y57wU4iHEYJniFxUgezy
	8Ar9uD3v8++XCW+W97vQ6oCzSVvzEyPmmvbO74vYoGN/JIHeOLGNO2sHEqHiD9jUyf6i
	HEdF0MLB1OOedW9UEan0okDVpKDDa1ly9LJTIWGwjSP9N8yyi2oD5fq41oi2N4klwsW/
	5jPxTQoGYB2MzkB2vTilj/vGdRhY5nq8AZNloWz0D+DmHQNttB3SbEpclDizJ8WR6TPR
	5w1Ov/UkYAHwyjvHRgU0YRt6UXTv2esrzC4X7c3oLt2ZIsUTXkIP3Dbftg5UI/g6yVwQ
	XNfg==
MIME-Version: 1.0
Received: by 10.182.217.38 with SMTP id ov6mr3495018obc.33.1348074935625; Wed,
	19 Sep 2012 10:15:35 -0700 (PDT)
Received: by 10.76.153.198 with HTTP; Wed, 19 Sep 2012 10:15:35 -0700 (PDT)
In-Reply-To: <5059F7ED.7030006@mlbassoc.com>
References: <CAMAb8ZO=KzrgNoW4VPADtCn27KUfviP4QL84_ia5sAUbj_9a3Q@mail.gmail.com>
	<5059F7ED.7030006@mlbassoc.com>
Date: Wed, 19 Sep 2012 13:15:35 -0400
Message-ID: <CAMAb8ZMUJa_MpkFfRqbwyZpMn6MAa=guE0bNc5+_J+Pkdae2FQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 19 Sep 2012 17:15:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

> Where did you get that meta-systemd layer?

From here:

  - http://git.yoctoproject.org/cgit/cgit.cgi/meta-systemd/


On Wed, Sep 19, 2012 at 12:50 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2012-09-19 10:34, Evade Flow wrote:
>>
>> Trying to build the meta-ivi discovery-image behind a firewall is
>> proving to be quite a challenge. I tried modifying my conf/local.conf
>> file as follows:
>>
>> CONNECTIVITY_CHECK_URIS=""
>> BB_GENERATE_MIRROR_TARBALLS = "1"
>> SOURCE_MIRROR_URL ?= "file:///home/evadeflow/projects/poky-mirror/"
>> INHERIT += "own-mirrors"
>>
>> and then ran:
>>
>> % bitbake discovery-image
>>
>> in a VM on my home laptop over the weekend. (I'm trying to build using
>> the meta-ivi layer, per the instructions in its README.) After grinding
>> and churning for some 60+ hours, it finally succeeded, leaving 11 GB of
>> 'stuff' in my poky-mirror folder.
>>
>> Then, I copied the poky-mirror folder to a firewalled machine at work
>> and added:
>>
>> BB_NO_NETWORK="1"
>>
>> to local.conf.  When I tried to bitbake discovery-image on this machine,
>> I got the following error:
>>
>>
>> NOTE: Running task 697 of 3568 (ID: 1374,
>>
>> /home/evadeflow/projects/poky-git/meta-systemd/recipes-kernel/kmod/kmod_7.bb,
>> do_fetch)
>> NOTE: package kmod-7-r0: task do_fetch: Started
>> ERROR: Function failed: Network access disabled through BB_NO_NETWORK
>> but access rquested with command git ls-remote
>> git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git v7 (for url
>> None)
>> ERROR: Logfile of failure stored in:
>>
>> /home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-neon-oe-linux-gnueabi/kmod-7-r0/temp/log.do_fetch.29423
>> Log data follows:
>> | ERROR: Function failed: Network access disabled through
>> BB_NO_NETWORK but access rquested with command git ls-remote
>> git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git v7 (for url
>> None)
>> NOTE: package kmod-7-r0: task do_fetch: Failed
>> ERROR: Task 1374
>>
>> (/home/evadeflow/projects/poky-git/meta-systemd/recipes-kernel/kmod/kmod_7.bb,
>> do_fetch) failed with exit code '1'
>> Waiting for 1 running tasks to finish:
>> 0: libusb1-1.0.8-r4 do_compile (pid 29232)
>> NOTE: package libusb1-1.0.8-r4: task do_compile: Succeeded
>> NOTE: Tasks Summary: Attempted 697 tasks of which 105 didn't need to
>> be rerun and 1 failed.
>>
>> Summary: 1 task failed:
>>
>> /home/evadeflow/projects/poky-git/meta-systemd/recipes-kernel/kmod/kmod_7.bb,
>> do_fetch
>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>> bitbake discovery-image  5338.15s user 995.52s system 187% cpu 56:12.92
>> total
>>
>> [NOTE: I'm on poky denzil@65ffa73, meta-ivi denzil@e068388, and
>> meta-systemd denzil@6a358e9. Also, that typo in the output
>> isn't mine, i.e., 'rquested' should be 'requested'.]
>>
>> Can anyone explain what's going on here? If I look in the poky-mirror
>> folder for kmod-related stuff, I see:
>>
>> % ls /home/evadeflow/projects/poky-mirror/*kmod*
>>
>> /home/evadeflow/projects/poky-mirror/git2_git.kernel.org.pub.scm.utils.kernel.kmod.kmod.git.tar.gz
>>
>> /home/evadeflow/projects/poky-mirror/git2_git.profusion.mobi.kmod.git.tar.gz
>>
>> I *think* this is what needs to be downloaded for this recipe(?) Why is
>> `git ls-remote` being run at all? I'm not sure whether this is the fault
>> of poky/oe-core, or of the meta-systemd layer. I'd just really wish it
>> worked. `:-}  Any advice?
>
>
> Where did you get that meta-systemd layer?  I can't find your
> recipe nor that revision (denzil@6a358e9) in the published version
> which is at git://git.openembedded.org/meta-openembedded according
> to http://www.openembedded.org/wiki/LayerIndex
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

