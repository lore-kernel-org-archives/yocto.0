Return-Path: <afenkart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 058BCE00C3D; Mon, 31 Jul 2017 02:31:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (afenkart[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f45.google.com (mail-vk0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D020E00BB7
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 02:31:18 -0700 (PDT)
Received: by mail-vk0-f45.google.com with SMTP id n125so33193417vke.1
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 02:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4Co8kfl6Aul2+8fO735vEPqnKueNnIL5GemsI+bfhu0=;
	b=eRLVDMvDE3oZ0HNaIwZ2fONeIuorosXhrEVjMM4l/U4d8vX3a3dESjd/Rrj9NapLgo
	iYyO2A7h4fsR2NhHOq7M1LYHImfSvPS6nrG0G2f7UHn11pSOFkQ0zRpnf15zZZn8i5fQ
	isfsRbka43e3lfwiX+2es126z6CRiUEpiRsmI3ihFy90bTIrSqa3vzflQ4t8Brq6IvKL
	9Gh9bAJP/8YtHzXQGH7y4hEiafnqP7DY5jjvklkfas9ixs884DU0DZ+58I8x1uRwGZss
	Z7vGpxAnQl5M+e4G4mJqtQu+YYFed/MTny4eHoQZmfXM+zOPUWdv27JRexHklavpzNta
	B+RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4Co8kfl6Aul2+8fO735vEPqnKueNnIL5GemsI+bfhu0=;
	b=aENXQZpDHpIt1pwuGEdkfgJzRWSs5e38F6MsOQzWGBsdjBnRsA2znGpVNKK9HNAmOe
	OzSnDA+P+I32GPH0HzvdUZi73jpZRHhccMWRUZPNixiip7sppRunz+z/COLFyECFA10r
	qVvFiScuf1qhENmLKdhaq4yIo45DMTy/b7inRw14BYqAV94iHZdxZQ1QClaHYJK1F7oL
	54Wkd3Gx5gU6Da0sdSJsfZ4pEii3tKYypH0sNqldk8nfVF9o1KVHOGzmPi0EE6fE8MDj
	Xwlrk6zfTSOzXmUKAI9+6fPcueOLigHOdlQpxSK7f42IFvXrjBtFZt3uDdPviJMYc6Bj
	mL/A==
X-Gm-Message-State: AIVw111ALr7QA+KsVc1awYIrA/HsvpBWZyjBuK/FOm374n5Mk3jb1uN2
	S/K9BQqpFy6PrLqUSDVfOQoBye0S7P19
X-Received: by 10.31.83.193 with SMTP id h184mr10606465vkb.17.1501493477892;
	Mon, 31 Jul 2017 02:31:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.13.209 with HTTP; Mon, 31 Jul 2017 02:31:17 -0700 (PDT)
In-Reply-To: <CALtMJEBbYsq5SGZOD+zof5viTJUcK_WqLVOxjex7s0oBXipMVA@mail.gmail.com>
References: <CALtMJEDs_oFkifuHe8gahxS25UEqP-gKCLfkH3HbZqsB8T8DPQ@mail.gmail.com>
	<990d598a-da7c-f568-96a0-d360902baf7e@denx.de>
	<CALtMJEBbYsq5SGZOD+zof5viTJUcK_WqLVOxjex7s0oBXipMVA@mail.gmail.com>
From: Andreas Fenkart <afenkart@gmail.com>
Date: Mon, 31 Jul 2017 11:31:17 +0200
Message-ID: <CALtMJECBGQruTEWRoH4ZN3WxJUBOPHYmk-z0kSsE-zkc1uahuQ@mail.gmail.com>
To: Stefano Babic <sbabic@denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: swupate.bblcass dependencies not triggering rebuild
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
X-List-Received-Date: Mon, 31 Jul 2017 09:31:21 -0000
Content-Type: text/plain; charset="UTF-8"

Hi

2017-07-28 15:20 GMT+02:00 Andreas Fenkart <afenkart@gmail.com>:
> Hi Stefano,
>
> 2017-06-14 10:32 GMT+02:00 Stefano Babic <sbabic@denx.de>:
>> Hi Andreas,
>>
>> On 13/06/2017 14:18, Andreas Fenkart wrote:
>>> Hi list,
>>>
>>> I want to create a swupdate file, which is a cpio file with rootfs and
>>> some metadata to control software update. My problem is, that it is not
>>> rebuilt everytime the rootfs changes. I checked in the cooker log.
>>>
>>> NOTE: recipe swupdate-image-1.0-r4: task do_populate_sysroot_setscene: Succeeded
>>> NOTE: Running noexec task 5475 of 5478 (ID: 27,
>>> meta-devel/recipes-core/images/swupdate-image.bb, do_build)
>>>
>>> I generated the dot files with bitbake -g swupdate, and while do_swuimage
>>> has to run before do_build, do_build does not depend directly on do_swuimage:
>>>
>>> swupdate-image.do_createlink -> swupdate-image.do_swuimage
>>> swupdate-image.do_install -> swupdate-image.do_createlink
>>> swupdate-image.do_populate_sysroot -> swupdate-image.do_install
>>> swupdate-image.do_build" -> swupdate-image.do_populate_sysroot
>>>
>>> $ bitbake-diffsigs -t swupdate-image do_build
>>> ERROR: No sigdata files found matching swupdate-image do_build
>>>
>>> $ bitbake-diffsigs -t swupdate-image do_populate_sysroot
>>> Unable to find matching sigdata for ....
>>> recipes-core/images/swupdate-image.bb.do_install with hashes
>>> c0bc8039e8dbe8d70939dd3db2ceb922 or e9d7b242613f323d4d6adff3d6d4881b
>>>
>>> $ bitbake-diffsigs -t swupdate-image do_install
>>> ERROR: No sigdata files found matching swupdate-image do_install
>>>
>>> $ bitbake-diffsigs -t swupdate-image do_createlink
>>> Hash for dependent task imagesswupdate-image.bb.do_swuimage changed
>>> from cec64d7e21b0375ff641427d5d631254 to
>>> 45510576a402839f4c4d4ac9b9eff578
>>>   Hash for dependent task imagesrootfs.bb.do_build changed from
>>> 876eb436b444f84efd355c0294b871bf to fabbabdd000427cdf5e721b59784d5c4
>>>   Unable to find matching sigdata for
>>> meta-devel/recipes-core/images/rootfs.bb.do_build with hashes
>>> 876eb436b444f84efd355c0294b871bf or fabbabdd000427cdf5e721b59784d5c4
>>>
>>> The dependency on rootfs is added here:
>>> https://github.com/sbabic/meta-swupdate/blob/master/classes/swupdate.bbclass#L64
>>> with IMAGE_DEPENDS="rootfs"
>>>
>>> Is it correct to 'depend' on :do_build? It seems rather uncommon.
>>
>> I think that the first attempt to set dependency here was with
>> do_rootfs, but this just works for rootfs, not for all other images. In
>> the history. commit b2f47aa9de53a98380b8677eb9e078db608b0ad3 changed
>> from do_populatesysroot to do_build because it was noted that it runs
>> too early.
>>
>> I am not sure if I have this issue, maybe it was sporadic. I wrote a
>> patch, really to fix an issue in the transition morty --> pyro, where I
>> changed the dependency as:
>> diff --git a/classes/swupdate.bbclass b/classes/swupdate.bbclass
>> index 44e4546..511f147 100644
>> --- a/classes/swupdate.bbclass
>> +++ b/classes/swupdate.bbclass
>> @@ -61,16 +61,23 @@ def swupdate_getdepends(d):
>>
>>      depstr = ""
>>      for dep in deps:
>> -        depstr += " " + dep + ":do_build"
>> +        if dep.find(":") != -1:
>> +            deptask = ""
>> +        else:
>> +            if (dep == "virtual/kernel") or (dep == "virtual/bootloader"):
>> +                deptask = ":do_deploy"
>> +            else:
>> +                deptask = ":do_image_complete"
>> +
>> +        depstr += " " + dep + deptask
>> +
>>      return depstr
>>
>>
>> So "do_image_complete" instead of "do_build", but I have to check
>> explicitely for kernel and bootloader because they have no
>> do_image_complete. But I do not know if this can be a correct solution.
>>
>>>
>>> I checked the latest swupdate-image.do_populate siginfo in sstate, which is
>>> pretty large, so adding just the task-dependencies:
>>> ..
>>> Tasks this task depends on:
>>> ['..-devel/recipes-core/images/swupdate-image.bb.do_install']
>>> This task depends on the checksums of files: []
>>> Hash for dependent task
>>> ./meta-devel/recipes-core/images/swupdate-image.bb.do_install is
>>> e9d7b242613f323d4d6adff3d6d4881b
>>> Computed Hash is d8b1d389351c25e0c4a519fb8fe9ddda
>>> ..
>>>
>>> Which makes me wonder, since bitbake-diffsig said do_install has no sigdata
>>>
>>
>> We have do_install[noexec] = "1" in the class - is this the reason ?
>
> I removed all the 'noexec' stamps from swupdate.bbclass, but still the
> cooker.log says, that none of the swupdate-image tasks needs
> execution:
>
> NOTE: Setscene stamp current for task
> 5(../recipes-core/images/swupdate-image.bb, do_populate_sysroot)
> NOTE: Setscene stamp current for task
> 6(../recipes-core/images/swupdate-image.bb, do_populate_lic)
> NOTE: Setscene stamp current for task
> 7(../recipes-core/images/swupdate-image.bb, do_packagedata)
> NOTE: Setscene stamp current for task
> 8(../recipes-core/images/swupdate-image.bb, do_package_qa)
> NOTE: Setscene stamp current for task
> 9(../recipes-core/images/swupdate-image.bb, do_package)
>
> The funny thing is, that bitbake swupdate-image actually triggers a built
> of the rootfs. But the task do_swuimage is not even mentioned in the
> cooker.log! Now only do_swuimage depends on rootfs:do_build, so
> how can bitbake built a dependency for task it's not running?
>
> This is yocto-2.0.2, quite old, but I'd expect this to work on that
> release still

I added this workaround, now it builds a new swupdate image
on every bitbake invocation:

--- a/yocto/dS/meta-digitalstrom-devel/classes/swupdate.bbclass
+++ b/yocto/dS/meta-digitalstrom-devel/classes/swupdate.bbclass
@@ -91,6 +91,7 @@ do_createlink () {
     ln -sf ${IMAGE_NAME}.swu ${IMAGE_LINK_NAME}.swu
 }

+do_swuimage[nostamp] = "1"
 python do_swuimage () {
     import shutil

I also experimented with switching the dependency from do_build
to the do_rootfs task, just in case the problem is that do_build has
no proper stamp (0 sized in the stamps folder). To no avail. It does
not seem to matter if swupdate class depends on do_rootfs or
do_build.
Only 'nostamp' forces the do_swuimage to be built reliably. This isn't
an issue in my case, since the rootfs is built on every bitbake
invocation anyway, even if all stamps of the containing packages are
still valid, and do_rootfs is the first task to be executed.

>
>>> I must admit that I feel pretty lost here.
>>
>> Best regards,
>> Stefano

Andi

