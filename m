Return-Path: <amittomer25@gmail.com>
Received: from mail-we0-f173.google.com (mail-we0-f173.google.com
	[74.125.82.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6102E0166B
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 11:49:37 -0700 (PDT)
Received: by mail-we0-f173.google.com with SMTP id u57so8711793wes.32
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 11:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=1F9qrypENEu2Xl2PN4rZFUn2pvwWcBeQ40CK1vqVPvU=;
	b=XkT60C/Sh/JOvs6OMdFCuYXPxlVxux4+YNqjPv76EKC0napaTx5ktRwWefCJdfMm2U
	u0MAFMRgzNDbjwbUKCsgprY5JCweRNAOZT1xHtD11whofmnAkK865d4C9t8Q8LHxIYlr
	4c0OWz8NrO0zDqdZR3nwtZ/vPEL5Wn71rkAaDhMQo3hrK/ZqVWy3+kvy5qami4RBLRqm
	HSBfZx8fZxrLTlm+kf0OU+lBTCNz2D9Q7jM89VZsjKKIpn1b3bn1BHYx6y9rh7X5vO6W
	ptHOnNwZZhYSnLAoeMebPPMMfzP8Snyp4a8js1HEjxveGffRQf22Ym6u8ZFHVrPL9AdP
	r0xQ==
MIME-Version: 1.0
X-Received: by 10.180.36.80 with SMTP id o16mr15976799wij.1.1382467775661;
	Tue, 22 Oct 2013 11:49:35 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Tue, 22 Oct 2013 11:49:35 -0700 (PDT)
In-Reply-To: <mailman.3219.1382466220.2694.yocto@yoctoproject.org>
References: <mailman.3219.1382466220.2694.yocto@yoctoproject.org>
Date: Wed, 23 Oct 2013 00:19:35 +0530
Message-ID: <CABHD4K-Lc02oucembX68e4RngTv-9C4bFN_z9efcBLfH4QqXFA@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, czyhit@126.com
Subject: Re: yocto Digest, Vol 37, Issue 81
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
X-List-Received-Date: Tue, 22 Oct 2013 18:49:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

Have you added your recipe file to CORE_IMAGE_EXTRA_INSTALL of your local.conf?

Thanks,
Amit

On Tue, Oct 22, 2013 at 11:53 PM,  <yocto-request@yoctoproject.org> wrote:
> Send yocto mailing list submissions to
>         yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
>         yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
>         yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>
>
> Today's Topics:
>
>    1. Re: Custom defconfig is not used (Mike Lewis)
>    2. Re: [meta-selinux][PATCH 0/5] Resend: Remove python
>       dependency from refpol. (Philip Tricca)
>    3. Re: how to add a new bb(xerces-c)? (Bill Martin)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Tue, 22 Oct 2013 09:23:01 -0700
> From: Mike Lewis <mikelewis@alphalem.com>
> To: bruce.ashfield@windriver.com
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Custom defconfig is not used
> Message-ID: <5266A665.8030303@alphalem.com>
> Content-Type: text/plain; charset=ISO-8859-1; format=flowed
>
> Hi Bruce,
>
> I'm trying to accomplish the nearly the same thing (i.e. adding config
> fragment) and I'm having the same issue at the do_patch step. Were you
> able to reproduce this on your end?
>
> Thanks,
> Mike
>
> On 10/18/2013 01:17 PM, Bruce Ashfield wrote:
>> On 13-10-18 05:17 AM, Diego Sueiro wrote:
>>>
>>> 2013/10/18 Bruce Ashfield <bruce.ashfield@windriver.com
>>> <mailto:bruce.ashfield@windriver.com>>
>>>
>>>     I fell behind today .. i had 2300 unread email to start this
>>> morning :)
>>>     Is there a way that I can get a copy of your recipes and layers ? If
>>>     I can do a build myself, I can easily debug and fix this ..
>>>     otherwise, we'll
>>>     go back and forth many times debugging.
>>>
>>>     Cheers,
>>>
>>>     Bruce
>>>
>>>
>>> I'm using the environment provided by Angstrom from it's github setup
>>> scripts.
>>> If you want to exactly reproduce it you need to:
>>>
>>>     git clone https://github.com/Angstrom-distribution/setup-scripts.git
>>>     cd setup-scripts
>>>     git checkout angstrom-v2013.06-yocto1.4
>>>     MACHINE=beaglebone ./oebb.sh config beaglebone
>>>
>>> Here is the setup and files for meta-mine:
>>>
>>> bblayers.conf:
>>>
>>>     BBLAYERS = \"
>>>
>>>         ...
>>>         ${TOPDIR}/sources/meta-mine \
>>>         "
>>>
>>> meta-mine/conf/layer.conf:
>>>
>>>     # We have a conf and classes directory, append to BBPATH
>>>     BBPATH .= ":${LAYERDIR}"
>>>     # We have a recipes directory, add to BBFILES
>>>     BBFILES += "${LAYERDIR}/recipes*/*/*.bb
>>>     ${LAYERDIR}/recipes*/*/*.bbappend"
>>>     BBFILE_COLLECTIONS += "mine-layer"
>>>     BBFILE_PATTERN_mine-layer := "^${LAYERDIR}/"
>>>     BBFILE_PRIORITY_mine-layer = "10"
>>>     LAYERDEPENDS_mine-layer = "angstrom-layer"
>>>
>>> meta-mine/recipes-kernel/linux/linux-mainline_3.8.bbappend:
>>>
>>>     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.8:"
>>>     inherit kernel
>>>     require recipes-kernel/linux/linux-yocto.inc
>>>     COMPATIBLE_MACHINE_beaglebone = "(beaglebone)"
>>>     SRC_URI += " file://config-addons.cfg "
>>>
>>> meta-mine/recipes-kernel/linux/linux-mainline-3.8/config-addons.cfg:
>>>
>>>     CONFIG_WATCHDOG_NOWAYOUT=y
>>>     CONFIG_NTFS_FS=y
>>>     CONFIG_NTFS_RW=y
>>>
>>>
>>>
>>> But I think that instead of using the whole Angstrom you can just use
>>> poky and meta-beagleboard/common-bsp on dylan branch.
>>
>> Great. I'll launch some test builds and see what breaks (or works) :)
>>
>> Bruce
>>
>>>
>>>
>>> Regards,
>>>
>>> --
>>> *dS
>>> Diego Sueiro
>>>
>>> /*long live rock 'n roll*/
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> ------------------------------
>
> Message: 2
> Date: Tue, 22 Oct 2013 12:50:49 -0400
> From: Philip Tricca <flihp@twobit.us>
> To: Joe MacDonald <joe@deserted.net>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-selinux][PATCH 0/5] Resend: Remove python
>         dependency from refpol.
> Message-ID: <5266ACE9.8040309@twobit.us>
> Content-Type: text/plain; charset=ISO-8859-1
>
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA512
>
> On 10/22/2013 11:37 AM, Joe MacDonald wrote:
>> [Re: [yocto] [meta-selinux][PATCH 0/5] Resend: Remove python
>> dependency from refpol.] On 13.10.21 (Mon 16:01) Joe MacDonald
>> wrote:
>>
>>> [Re: [yocto] [meta-selinux][PATCH 0/5] Resend: Remove python
>>> dependency from refpol.] On 13.10.21 (Mon 10:57) Joe MacDonald
>>> wrote:
>>>
>>>> Thought I'd best (finally) follow up to the list on this.
>>>> I've been talking to Philip offline.  These are in the queue
>>>> for integration but some surprising things have cropped up
>>>> along the way and the integration is being delayed a bit.
>>>>
>>>> I'll be grabbing the other meta-selinux update at the same
>>>> time.
>>>
>>> Further to this, I've finished the merge of this batch and the
>>> two other submissions I've seen for meta-selinux today.  I
>>> haven't yet pushed them to meta-selinux on git.yoctoproject.org.
>>> I'm going to let it cool off until at least tomorrow since this
>>> one proved to be much more problematic than I think it should
>>> have been.  In the meantime, I've pushed the pending changes to
>>> my github project:
>>>
>>> https://github.com/joeythesaint/meta-selinux.git
>>>
>>> on the contrib/joeythesaint branch.
>>
>> Six of the seven commits that were on that branch are now in the
>> official meta-selinux master branch.  The last is the
>> bzip-compressed policy update.
>>
>> Thanks Philip.
>
> Sure thing Joe. Thanks for spending the time to get these integrated.
>
> - - Philip
>
>>
>> -J.
>>
>>>
>>> -J.
>>>
>>>>
>>>> -J.
>>>>
>>>> [[yocto] [meta-selinux][PATCH 0/5] Resend: Remove python
>>>> dependency from refpol.] On 13.10.17 (Thu 19:06) Philip Tricca
>>>> wrote:
>>>>
>>>>> This is a resend of an earlier patch set that never made it
>>>>> to the list AFAIK.
>>>>>
>>>>> The reference policy package currently pulls in a lot of
>>>>> python stuff that isn't strictly necessary to boot an
>>>>> SELinux system and load a policy. AFAIK this is caused by the
>>>>> mix of python and C utilities in policycoreutils.
>>>>>
>>>>> This patch set breaks the policycoreutils recipe up into
>>>>> multiple packages, one for each utility. In this way we can
>>>>> have the refpol etc pull in only the utilities necessary for
>>>>> normal operation. This happens to be only the utilities
>>>>> written in C and thus we can remove python completely in a
>>>>> minimal image.
>>>>>
>>>>> I've attempted to localize these changes as much as possible
>>>>> so this patch set should have minimal impact on recipes
>>>>> outside of the policycoreutils. An example image reicpe is
>>>>> added to demonstrate a minimal image with only the utilities
>>>>> required to load a policy and manipulate the policy store
>>>>> (add / remove policy modules) at runtime.
>>>>>
>>>>> Regards, - Philip
>>>>>
>>>>> Philip Tricca (5): Break policycoreutils out into separate
>>>>> Remove unnecessary RDEPENDS_${BPN}. Remove runtime
>>>>> dependency on Add packagegroup and image recipe for Add
>>>>> packagegroup for policycoreutils
>>>>>
>>>>> .../images/core-image-selinux-minimal.bb           |   15 ++
>>>>>  .../packagegroups/packagegroup-core-selinux.bb     |    4 +-
>>>>>  .../packagegroups/packagegroup-selinux-minimal.bb  |   26
>>>>> +++ .../packagegroup-selinux-policycoreutils.bb        |
>>>>> 36 ++++ recipes-security/refpolicy/refpolicy_common.inc    |
>>>>> 2 +- recipes-security/selinux/policycoreutils.inc       | 179
>>>>> +++++++++++++++++-- 6 files changed, 245 insertions(+), 17
>>>>> deletions(-)
>>>>>
>>>>> _______________________________________________ yocto
>>>>> mailing list yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.12 (GNU/Linux)
> Comment: Using GnuPG with Icedove - http://www.enigmail.net/
>
> iQIcBAEBCgAGBQJSZqzpAAoJEDL3fnXC4dO6Z6UP/0UoTumQK0wIlyk4YviqsTKr
> E0F62JvgzCgf9BLadGmbBSEvgS9Zg50fGr+wM4p0wc7TW2egNnQrPQRa70Y2ycjL
> jEQhBRuW6HFTSNZYTsrrt20IjE7nTQEDQnvSZW18lDMKbSyWHdrLGL9lgqWKjiRC
> mf0g6cyO4CNnhxdYIZvWTNWoDdbDTQRpyzWhO2S4YkM7Vkh7lvg3IPadGwTAd6MM
> nGS6iLKaaaUcqw/i5axOwd8xH2C0/MGDPPYkRwcxAjU7nuH4uOS5uaq5k0dGiuLF
> IRp374YwCOypcPtmZT0w3C80CmJSC6e2fxHeH8xQNWBnsFSweG3sT/9DGhVYeZky
> HuvkFFFKmsbSfZHFuTQsH5AiV3YaHQTOgWCefQ22xCDEB03t52E6IPY0rAzlxXIi
> apL8fhtHjlQ0GaY5yoV7n6+KyfqlQm7WpHXAqowfWEYS3P/pVPJe4pTq+PrzadF2
> o5DpGVR5Du2QzLBsFZetFIrLg3kKYkq9011RHwBFl9frsVxTYAdBm58GvceBJL1K
> wecuveTH30KhYjiDzMZTNL3Tm/vMJLL/CzIWF5NdrMwCUt8+TwFGJvB7a2QEssS0
> 14SMdPKjtvbGutlAkOT/9T/1HrpIZhoZtkwEnyKgdXEk469+Vp6aBHjf52JPHyFn
> 5JJhKda01naDs+KA9G6p
> =uocy
> -----END PGP SIGNATURE-----
>
>
> ------------------------------
>
> Message: 3
> Date: Tue, 22 Oct 2013 11:23:33 -0700
> From: Bill Martin <billmartin544@gmail.com>
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] how to add a new bb(xerces-c)?
> Message-ID:
>         <CAJGS5=HTuyPuqropAOjys6oiz-Adx=K9b1dci+zC0d4FPbMQ9w@mail.gmail.com>
> Content-Type: text/plain; charset="iso-8859-1"
>
> I have been tasked to add xerces-c too. There is an OE recipe already for
> this (you can google it).
>
> However your recipe seems to run into the same problem that I get. The
> solution is not just to look at config.log and log.do_config. They display
> the symptoms. The one who responded to your post implies the fix is in the
> recipe by just adding extra config flags to point to the correct libraries.
>
> I can run ./configure outside of yocto and send in the libraries I want.
> But the OEEXTRACONFS I added in my recipe had no effect on the libraries.
> Note that the auto tools is forcing the enable-poison-system directories,
> as it should. But the cause is further up the "food chain" so to speak.
>
> The problem seems to be with a bug in lib tools that Hans Beckerus found.
>
> http://www.mail-archive.com/yocto@yoctoproject.org/msg15325.html
>
> Essentially it's to do with the with-libtool-sysroot usage in the libtool.
> I have not tried Hans' solution yet but will today.  Hopefully this info is
> enough to get you started so you can make your own fix and use xerces-c.
>
> thanks
>
> Bill
>
>
>
>
> Message: 2
> Date: Fri, 27 Sep 2013 13:35:55 +0800 (CST)
> From: ??? <czyhit@126.com>
> To: yocto@yoctoproject.org
> Subject: [yocto] how to add a new bb(xerces-c)?
> Message-ID: <bfe9b2.4f09.1415dea90ad.Coremail.czyhit@126.com>
> Content-Type: text/plain; charset="gbk"
>
> Hello, everyone!
> I try to add a new bb(xerces-c) to my image, bb is as followings:
>
>
> DESCRIPTION = "Xerces-C++ is a validating XML parser written in a portable
> subset of C++."
> HOMEPAGE = "http://xerces.apache.org/xerces-c/"
> LICENSE = "Apache"
> LIC_FILES_CHKSUM = "file://src/xercesc/dom/DOM.hpp;endline=22;md5=
> 9986d741cab88a8b7bc4a19d3c1b8106 \
> file://src/xercesc/parsers/XercesDOMParser.hpp;endline=21;md5=
> 85be7b6e587aa51e4f30c262f1cd695e \
> file://src/xercesc/xinclude/XIncludeDOMDocumentProcessor.hpp;endline=23;md5=
> 4236d3c0f2537b3df547a97d60f93dc0"
>
>
> PR = "r1"
>
>
> DEPENDS = "curl icu"
>
>
> SRC_URI = "http://mirror.bit.edu.cn/apache//xerces/c/3/sources/xerces
> -c-${PV}.tar.gz"
>
>
> SRC_URI[md5sum] = "6a8ec45d83c8cfb1584c5a5345cb51ae"
> SRC_URI[sha256sum] = "a42785f71e0b91d5fd273831c87410
> ce60a73ccfdd207de1b805d26d44968736"
>
>
> inherit autotools
>
>
> S = "${WORKDIR}/xerces-c-${PV}/"
>
>
> EXTRA_OECONF = "\
> --enable-netaccessor-curl \
> --enable-transcoder-icu \
> --enable-msgloader-icu \
> "
>
>
> but when configure come into the error:
> ERROR: This autoconf log indicates errors, it looked at host include and/or
> library paths while determining system capabilities.
> Rerun configure task after fixing this. The path was '/home/caozhiyan/fsl-
> community-bsp/build-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/
> xerces-c/3.1.1-r1/xerces-c-3.1.1'
> ERROR: Function failed: do_qa_configure
> ERROR: Logfile of failure stored in: /home/caozhiyan/fsl-community-
> bsp/build-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xerces
> -c/3.1.1-r1/temp/log.do_configure.19932
> ERROR: Task 5 (/home/caozhiyan/fsl-community-bsp/sources/meta-
> fsl-hc1200/recipes-hc1200/xerces-c/xerces-c_3.1.1.bb, do_configure) failed
> with exit code '1'
>
>
> who can show me how to port the autotools-based project? Thanks.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20131022/49e9a997/attachment.html>
>
> ------------------------------
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 37, Issue 81
> *************************************

