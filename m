Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57A5FE0123C
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 08:01:35 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 21 Dec 2011 08:01:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="49433572"
Received: from unknown (HELO envy.home) ([10.255.12.115])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Dec 2011 08:01:34 -0800
Message-ID: <4EF202CC.6090708@linux.intel.com>
Date: Wed, 21 Dec 2011 08:01:16 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
	<2ad76233b10f9e4a61a6ecb5490f92fecdc1f1e1.1324456294.git.dvhart@linux.intel.com>
	<20111221100909.GD12791@jama.jama.net>
In-Reply-To: <20111221100909.GD12791@jama.jama.net>
X-Enigmail-Version: 1.3.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 5/9] task-core-boot: Allow DISTRO to disable keymaps
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
X-List-Received-Date: Wed, 21 Dec 2011 16:01:35 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1



On 12/21/2011 02:09 AM, Martin Jansa wrote:
> On Wed, Dec 21, 2011 at 01:02:51AM -0800, Darren Hart wrote:
>> NOTE: I'm looking for a better way to do this.
>> 
>> keymaps pulls in gettext, which can't build without wide
>> character support.
>> 
>> Rather than have to add a -tiny variant of every MACHINE to drop
>> "keyboard" from the MACHINE_FEATURES, just enable the DISTRO to
>> define what gets added to RDEPENDS_task-core-boot when
>> MACHINE_FEATURES includes keyboard. By default, keep "keymaps",
>> but use DISTRO_KEYMAPS if it is set (to "" for example).
>> 
>> Signed-off-by: Darren Hart <dvhart@linux.intel.com> --- 
>> meta/recipes-core/tasks/task-core-boot.bb |    7 ++++++- 1 files
>> changed, 6 insertions(+), 1 deletions(-)
>> 
>> diff --git a/meta/recipes-core/tasks/task-core-boot.bb
>> b/meta/recipes-core/tasks/task-core-boot.bb index
>> 05c280d..e097836 100644 ---
>> a/meta/recipes-core/tasks/task-core-boot.bb +++
>> b/meta/recipes-core/tasks/task-core-boot.bb @@ -17,6 +17,11 @@ PR
>> = "r9" MACHINE_ESSENTIAL_EXTRA_RDEPENDS ?= "" 
>> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS ?= ""
>> 
>> +# +# Set by the distro configuration to empty if not supported 
>> +# +DISTRO_KEYMAPS ?= "keymaps"
> 
> Why not VIRTUAL-RUNTIME_keymaps like everywhere else?

That's an option. The term VIRTUAL-RUNTIME didn't seem to apply as
well to keymaps for me. Also, I felt that this was really a hack in
the wrong place that need a solution involving MACHINE_FEATURES.
Unfortunately I can't use oe_core_filter_out in the distro config file
and I'd prefer not to have to create machine config variants for every
- -tiny supported machine.

It could be a new task-core-tiny is the right fix (this is what I did
in my prototype meta-tiny layer), but I'd rather not have to add
another task-core* if it can be avoided.

- --
Darren

> 
> Cheers,
> 
>> + # Distro can override dev_manager provider 
>> VIRTUAL-RUNTIME_dev_manager ?= "udev" # Distro can override
>> login_manager provider @@ -37,7 +42,7 @@ RDEPENDS_task-core-boot
>> = "\ base-passwd \ busybox \ ${VIRTUAL-RUNTIME_initscripts} \ -
>> ${@base_contains("MACHINE_FEATURES", "keyboard", "keymaps", "",
>> d)} \ +    ${@base_contains("MACHINE_FEATURES", "keyboard",
>> "${DISTRO_KEYMAPS}", "", d)} \ modutils-initscripts \ netbase \ 
>> ${VIRTUAL-RUNTIME_login_manager} \ -- 1.7.6.4
>> 
>> _______________________________________________ yocto mailing
>> list yocto@yoctoproject.org 
>> https://lists.yoctoproject.org/listinfo/yocto
> 

- -- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iQEcBAEBAgAGBQJO8gLMAAoJEKbMaAwKp3642YkIAJdCxx7ySWjzzpC2+wT3GHEq
8CQ2j3C71gPVx/jYs6NxFNxVc/2b1V8WjgVB8y4RNtKwpY3Kn8aw7FGBqPW0fPsT
8hB58lCq6ziQlwWqjTQumi0zubRBuWlCt/rs4I/iJwtWQuNdTBAiWy5DdsEdAtv9
ou2GhGYRyPOKaGeD/2Inw3NQQh/CvcAZDRylU++c29Uo+f8b7jNvdclgS4bdK7It
RKNpj9l24K892BVVCJNHSqV1NHlq9MZhZwA9Earp6gRmpwz0Ra+CqXuarLenqjrA
NPppibL4wodNHe0Tx6qCjm7zG7pPiAu7VmjC2OOUAn6ToM+nePP7sS/IHitnsmQ=
=fTlx
-----END PGP SIGNATURE-----

