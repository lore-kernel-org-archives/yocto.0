Return-Path: <bob.feretich@rafresearch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F10F3E00A44; Tue,  6 May 2014 15:24:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	MISSING_HEADERS,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.2 MISSING_HEADERS Missing To: header
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.39.63.2 listed in list.dnswl.org]
Received: from nm4-vm1.access.bullet.mail.gq1.yahoo.com
	(nm4-vm1.access.bullet.mail.gq1.yahoo.com [216.39.63.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C75A1E00480
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 15:23:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1399415035; bh=2O+Q9bUJQc+IImWCQsa8lGOb5EnMIOnzqwWUEQjlkjw=;
	h=Received:Received:Received:X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:X-Rocket-Received:Message-ID:Date:From:User-Agent:MIME-Version:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=h73fnAiDNGJym4LpEhQx1VGa4WrgWiNfIPVmN8rTYblXDlyWd9PzFITBmBJ0AYguJFMODLxjKfZwcTPKxYhUwC/5axT4jYplROgGIx/As8xW5J1TMDKJ3WB6V6NJ1lmRwn8Qwkkw3gwKH8xwiq/YHLqdB2ASWc+srVY9arIoH3TulgFQbkPuM3DGjlqCwlMZ95IEd5I8DUy5kR+rX9+SmlazhvP/HLfqaDMwoWydUfReZGZTZHRk/M9lT6F0gXaNzYVD25erhs4xSSvWUb/QuvkG3B1fL/1hc5qC5cZVohCzSFWE/Ii7TVZ1YMw+nVoLMfKcAwxXKdYceymJR1bH/A==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.com;
	b=Ps+40PGQp5TpxRqS1GjXcQTTDTsGU8MJ5Kz1MWUAXsgxOkDwdsfzF1d85YcJ/xe0qORN4t7dvS+kBZMhtZgINiG5lFsARR9YL15Rw0vIgyCOcfF95p47xFfnH8O48qJp8jpwp42r42lT5MBsHIg68d9bVG0ZuVo/6XDFr2KqmcNV+JuFaEAMWRqhVkfIDRmukeuCHQ5F/YNun9iJLxW1jyhlyPEiiBv3lHzA8348zFDSh/Sl6uaENLmm7uoHiP+hHTmmtYJERwdHqZZN9mq1c+StyVX729FUyVSYdGn+yONvdRUSXT28QPxlE1O0DAwIDDpsY/bXaDp7F+PbtpFSCw==;
Received: from [216.39.60.170] by nm4.access.bullet.mail.gq1.yahoo.com with
	NNFMP; 06 May 2014 22:23:55 -0000
Received: from [67.195.23.144] by tm6.access.bullet.mail.gq1.yahoo.com with
	NNFMP; 06 May 2014 22:23:55 -0000
Received: from [127.0.0.1] by smtp116.sbc.mail.gq1.yahoo.com with NNFMP;
	06 May 2014 22:23:55 -0000
X-Yahoo-Newman-Id: 702571.94154.bm@smtp116.sbc.mail.gq1.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: xAPrebQVM1llZUGx1Y2.m2WL9NHAzPr0YGdqHOLhSiES5G1
	HGQuu6Tk4jJYXdbfbaPY9yFhFSO5EVLnrujUKgFmtSKsvIkoZBmAkZb2FT4U
	okbdoNMXVkGSEGKh7p8E2n7_cqv0UNi9y7TOsvWNC41k191qmR1cUgZsvxNx
	dvra0iP7mcfgU8OCEdV.hh3SfPzdWi_ubmCsNGgXu8obxFlhkmW70E9pOn2A
	1w3rURepRqp4TLNiLqEsqNZtJfQYOqgOtv9ZL0GIPrIQr2jWVDa_ygpkW1kL
	fse2JYPsWSG6L_XCn_.BK0mPth8yUwQerZ5hLm9rGsdOLQgYAHk4FU2Ax4iu
	H4TAd0f7DBWuBHY961NHyuVdWhJcQjtwgGLhUge9GacPPilIhGlSX.zGVcS_
	gfpFwicJjXr.hKP4RGvkhF_Ltu8S_pugW.DHsGp3Sv_GZ.RjG35pVowrZVuk
	ZC8jfk0NK4rEUbfy3NS4peYv8rNEpCF_bsw8lfwguz8w7pD.9zBwoCIENnm0
	hLJw1MfFn_WpfVUl1WP6QBwNPCPGPuPuX6LU7RJeaVyOg1Orf4nD6GAbkFbx
	rpjDTpr8RMRKpeNzuGE2DQsYvFqvaJd2MYLALRn7kg4SeAtZcSt6aoA6Q98r
	l5N3nuUwb5SWZZWoD3sBMQJPW27TF56evbUtkZ_aFWAG7GAcgV02tw9I7GmO xvA--
X-Yahoo-SMTP: jHZ71LyswBA8vPppSFebFmPnYvk1gIPKrFjcBqA_GiVlfXPeew--
X-Rocket-Received: from [192.168.1.101] (bob.feretich@71.131.8.66 with plain
	[67.195.15.5]) by smtp116.sbc.mail.gq1.yahoo.com with SMTP;
	06 May 2014 22:23:55 +0000 UTC
Message-ID: <536960F1.90609@rafresearch.com>
Date: Tue, 06 May 2014 15:23:45 -0700
From: Bob Feretich <bob.feretich@rafresearch.com>
User-Agent: Mozilla/5.0 (Windows NT 6.0;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
CC: yocto@yoctoproject.org
References: <53682429.6070103@rafresearch.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F962F9@ORSMSX101.amr.corp.intel.com>
	<14430763.86LsjAOQil@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <14430763.86LsjAOQil@peggleto-mobl5.ger.corp.intel.com>
Subject: Re: Definition of Yocto tasks
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
X-List-Received-Date: Tue, 06 May 2014 22:24:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


On 5/6/2014 2:38 AM, Paul Eggleton wrote:
> On Tuesday 06 May 2014 06:47:08 Rifenbark, Scott M wrote:
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>> bounces@yoctoproject.org] On Behalf Of Bob Feretich
>>> Sent: Monday, May 05, 2014 4:52 PM
>>> To: yocto@yoctoproject.org
>>> Subject: [yocto] Definition of Yocto tasks
>>>
>>> Is there a document that provides a detailed definition of what each these
>>> tasks do?
>>> Yocto, OE, and bitbake manuals tell us how to command a specific task to be
>>> run, but not what they do.
>>>
>>> The task name provides a good hint sometimes, but often that is not enough.
>>> Users shouldn't have to read the python code for this information. These
>>> descriptions should be a part of the yocto manual.
>>>
>>> Sections 5.3.4 to 5.3.11 of the Yocto mega-manual provide a good overview
>>> of some of these tasks in the context of a workflow, but doesn't mention
>>> most of these tasks and doesn't go into enough detail on the tasks it
>>> discusses.
>>>
>>> It wouldn't be appropriate to add more detail at that point in the manual,
>>> but it would be appropriate to include details regarding all of the tasks
>>> in an appendix.
>>>
>>> Examples...
>>> The manual states that do_fetch fetches source, but doesn't state that when
>>> git is used whether it performs a pull, fetch, or clone. What are the
>>> common failure conditions of do_fetch? And what should the user do to fix
>>> the problem?
>>>
>>> do_build is mentioned a few times, but there is no reference to it being
>>> the default task or what tasks are invoked by do_build and which are
>>> omitted.
>>>
>>> do_rm_work and do_wm_work_all are not mentioned at all.
>>>
>>> Result of listtasks:
>>> do_fetchall
>>> do_build
>>> do_devshell
>>> do_package_write_ipk
>>> do_cleansstate
>>> do_savedefconfig
>>> do_uboot_mkimage
>>> do_sizecheck
>>> do_strip
>>> do_packagedata_setscene
>>> do_configure
>>> do_clean
>>> do_deploy_setscene
>>> do_cleanall
>>> do_populate_lic
>>> do_populate_sysroot
>>> do_devicetree_image
>>> do_deploy
>>> do_menuconfig
>>> do_patch
>>> do_bundle_initramfs
>>> do_packagedata
>>> do_listtasks
>>> do_compile
>>> do_package_setscene
>>> do_populate_lic_setscene
>>> do_fetch
>>> do_checkuri
>>> do_compile_kernelmodules
>>> do_package_write_ipk_setscene
>>> do_package_write
>>> do_rm_work
>>> do_package
>>> do_unpack
>>> do_install
>>> do_checkuriall
>>> do_populate_sysroot_setscene
>>> do_rm_work_all
>>>
>>> I don't have the knowledge to create such an appendix, but I volunteer to
>>> be a proofreader.
>> An appendix for a reference of these tasks seems like a good idea.
> FYI, you may already have seen it but we have a bit of coverage for the common
> tasks in the following section of the manual:
>
>    http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#closer-look
This section seems to be a more polished version of the mega manual 
Sections 5.3.4 to 5.3.11. It provides an overview to the build process, 
but its still at a very high level (few details).
> If we wanted to add an appendix to list them all (and it might be worth us
> doing so) a good starting point would be the task descriptions in
> documentation.conf:
>
>    http://cgit.openembedded.org/openembedded-core/tree/meta/conf/documentation.conf
This file at least provides one sentence on most tasks. (do_setscene is 
missing, maybe more).
Regards,
Bob
>
> Cheers,
> Paul
>


