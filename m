Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2430AE0144E
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 12:41:28 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 15 Aug 2013 12:41:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,887,1367996400"; d="scan'208";a="381547295"
Received: from unknown (HELO [10.255.14.106]) ([10.255.14.106])
	by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2013 12:41:27 -0700
Message-ID: <520D2EE7.30708@linux.intel.com>
Date: Thu, 15 Aug 2013 12:41:27 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: Leo Schwab <lschwab@sensity.com>
References: <CALb224_XTEf-9eX9d9ERZpHv7RRm_hGM8N8N6d+x-oSswrH-qA@mail.gmail.com>
	<520D205C.2060105@linux.intel.com>
	<CALb224-nFp88Eq_NqoPUo9pcDJ7KS6ysQbgcKuORPqDH2nUP7w@mail.gmail.com>
In-Reply-To: <CALb224-nFp88Eq_NqoPUo9pcDJ7KS6ysQbgcKuORPqDH2nUP7w@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How Does Yocto Fill In UBOOT_MACHINE?
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
X-List-Received-Date: Thu, 15 Aug 2013 19:41:31 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/15/2013 12:02 PM, Leo Schwab wrote:
> Thank you for replying:
>
> On Thu, Aug 15, 2013 at 11:39 AM, Saul Wold <sgw@linux.intel.com> wrote:
>> On 08/15/2013 11:15 AM, Leo Schwab wrote:
>>> ...Except I never told it to build 'ourboard'; I haven't modified
>>> conf/machine/ourboard.conf yet.  It should still be building
>>> mx6dl_sabresd_config.  So UBOOT_MACHINE is magically picking up a
>>> different value.  If I remove my .bbappend file, then it resumes using
>>> the target mx6dl_sabresd_config.
>>>
>> But you did indirectly, I have to assume that your default MACHINE is set
>> for "ourboard"
>
> Correct.
>
>> and what's happened here is when the bbappend was added, your
>> setting of UBOOT_MACHINE_ourboard is an override so it built using that
>> setting.
>> [ ... ]
>> You can see this in action by running a bitbake -e (prints the variable
>> contents and how they were determined).
>>
> Umm...  Actually, no I dont:
>
> ---
> $ bitbake -e
> [ ...blah, blah, blah...]
> # $UBOOT_MACHINE
> #   set /home/ewhac/devel/iMX6/fsl-community-bsp/sources/meta-belis3/conf/machine/ourboard.conf:12
> #     "mx6dl_sabresd_config"
> UBOOT_MACHINE="mx6dl_sabresd_config"
> [ ... ]
>
> Which is what I expected.
>
Not what I would expect, if you bbappend was in play correctly, here is 
my example:

# $UBOOT_MACHINE [4 operations]
#   set /srv/hdd/poky/meta/conf/machine/include/tune-ppce300c3.inc:13
#     "bogus"
#   finalize ast.py:328 [finalize]
#     "was: bogus"
#   override[mpc8315e-rdb]:set 
/srv/hdd/poky/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf:11
#     "MPC8315ERDB_config"
#   finalize override[mpc8315e-rdb]:
#     "MPC8315ERDB_config"
# computed:
#   "MPC8315ERDB_config"
UBOOT_MACHINE="MPC8315ERDB_config"

And the do_compile / oe_runmake is correct with the mpc...config


> Meanwhile, in the build log
> tmp/work/..../u-boot-imx/2009.08-r16/temp/run.do_compile.29091:
>
> ----
> do_compile() {
> 	if [ "" = "ld-is-gold" ] ; then
> 		sed -i 's/$(CROSS_COMPILE)ld/$(CROSS_COMPILE)ld.bfd/g' config.mk
> 	fi
> 	if [ "" = "ld-is-gold" ] ; then
> 		sed -i 's/$(CROSS_COMPILE)ld$/$(CROSS_COMPILE)ld.bfd/g' config.mk
> 	fi
>
> 	unset LDFLAGS
> 	unset CFLAGS
> 	unset CPPFLAGS
> 	oe_runmake mx6_ournode_config   # <---- ?!?!?!
> 	oe_runmake u-boot.bin
>
> }
> ----
>
> In the process of reproducing this output, some stuff happened that
> makes me think that bitbake's cache is mildly confused.  I'll try
> scrubbing it and see if things become more consistent.  I will also
> look into the OVERRIDES mechanism.
>

Might be a cache issue, but it should recompute the hashes when you add 
or remove the .bbappend.

What version of oe-core / bitbake are you working with?

Sound likeyou are trying a clean build, you could just try "bitbake -e 
u-boot" without doing a full build and check those two items, the -e 
will also give you the do_compile() task.

Sau!
> Schwab
>
>

