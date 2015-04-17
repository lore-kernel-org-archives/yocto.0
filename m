Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 647DAE009C2; Fri, 17 Apr 2015 06:27:45 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3A12E009C2
	for <yocto@yoctoproject.org>; Fri, 17 Apr 2015 06:27:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.9) with ESMTP id t3HDRdZH016539
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 17 Apr 2015 06:27:40 -0700 (PDT)
Received: from server.local (128.224.22.151) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 17 Apr 2015 06:27:49 -0700
Message-ID: <55310A4A.8000001@windriver.com>
Date: Fri, 17 Apr 2015 09:27:38 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: "Mills, Clayton" <cmills@tycoint.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <4ECB83F290E97A4F96082D1BDAF733360D0315@003FCH1MPN2-012.003f.mgd2.msft.net>
In-Reply-To: <4ECB83F290E97A4F96082D1BDAF733360D0315@003FCH1MPN2-012.003f.mgd2.msft.net>
Subject: Re: SRCREV issue with linux-yocto-custom do_validate_branches()
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
X-List-Received-Date: Fri, 17 Apr 2015 13:27:45 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-17 6:12 AM, Mills, Clayton wrote:
> Hi All,
>
> I'm having a little trouble with do_validate_branches() inherited by my linux-yocto-custom.
> I'm building the 3.14.28 kernel with ltsi kernel patch set applied, so was trying to set this up with a custom linux recipe in my bsp.

Out of curiosity, was something missing in the linux-yocto 3.14 LTSI
integration ? I'll comment on the specifics below, but I was wondering
about that high level point as well.

> Pointing to a branch in my own git repo that has the patch set pre-applied.
> I've got a clone of dizzy. Which I used yocto-bsp create to start my bsp layer.
>
> But the process stops in do_validate_branches() with the following error log:
> --------------------------------------------------------------------------------
> DEBUG: Executing shell function do_validate_branches
> usage: git cat-file (-t|-s|-e|-p|<type>|--textconv) <object>
>     or: git cat-file (--batch|--batch-check) < <list_of_objects>
>
> <type> can be one of: blob, tree, commit, tag
>      -t                    show object type
>      -s                    show object size
>      -e                    exit with zero when there's no error
>      -p                    pretty-print object's content
>      --textconv            for blob objects, run textconv on object's content
>      --batch[=<format>]    show info and content of objects fed from the standard input
>      --batch-check[=<format>]
>                            show info about objects fed from the standard input
>
> ERROR:  is not a valid commit ID.
> ERROR: The kernel source tree may be out of sync
> WARNING: exit code 1 from a shell command.

Do you have the entire log pastebin'd somewhere ? It would be nice to know
if this is the meta, or machine validation that is getting an empty commit.

> ERROR: Function failed: do_validate_branches (log file is located at /opt/git/poky/build/tmp/work/mylayer-poky-linux-gnueabi/linux-yocto-custom/3.14.28+gitAUTOINC+7035c2a67d-r0/temp/log.do_validate_branches.56991)
> --------------------------------------------------------------------------------
>
>
> The do_validate_branches() code from kernel-yocto.bbclass is as follows...
> --------------------------------------------------------------------------------
> # Ensure that the branches (BSP and meta) are on the locations specified by
> # their SRCREV values. If they are NOT on the right commits, the branches
> # are corrected to the proper commit.
> do_validate_branches() {
>          set +e
>          cd ${S}
>          export KMETA=${KMETA}
>
>          machine_branch="${@ get_machine_branch(d, "${KBRANCH}" )}"
>
>          machine_srcrev="${SRCREV_machine}"
>
>          # if SRCREV is AUTOREV it shows up as AUTOINC there's nothing to
>          # check and we can exit early
>          if [ "${machine_srcrev}" = "AUTOINC" ]; then
>                  bbnote "SRCREV validation is not required for AUTOREV"
>          elif [ "${machine_srcrev}" = "" ] && [ "${SRCREV}" != "AUTOINC" ]; then
>                  # SRCREV_machine_<MACHINE> was not set. This means that a custom recipe
>                  # that doesn't use the SRCREV_FORMAT "machine_meta" is being built. In
>                  # this case, we need to reset to the give SRCREV before heading to patching
>                  bbnote "custom recipe is being built, forcing SRCREV to ${SRCREV}"
>                  force_srcrev="${SRCREV}"
>          else
>                  git cat-file -t ${machine_srcrev} > /dev/null
>                  if [ $? -ne 0 ]; then
>                          bberror "${machine_srcrev} is not a valid commit ID."
>                          bbfatal "The kernel source tree may be out of sync"
>                  fi
>                  force_srcrev=${machine_srcrev}
>          fi
>
>          ## KMETA branch validation.
>          target_meta_head="${SRCREV_meta}"
>          if [ "${target_meta_head}" = "AUTOINC" ] || [ "${target_meta_head}" = "" ]; then
>                  bbnote "SRCREV validation skipped for AUTOREV or empty meta branch"
>          else
>                  meta_head=`git show-ref -s --heads ${KMETA}`
>
>                  git cat-file -t ${target_meta_head} > /dev/null
>                  if [ $? -ne 0 ]; then
>                          bberror "${target_meta_head} is not a valid commit ID"
>                          bbfatal "The kernel source tree may be out of sync"
>                  fi
>                  if [ "$meta_head" != "$target_meta_head" ]; then
>                          bbnote "Setting branch ${KMETA} to ${target_meta_head}"
>                          git branch -m ${KMETA} ${KMETA}-orig
>                          git checkout -q -b ${KMETA} ${target_meta_head}
>                          if [ $? -ne 0 ];then
>                                  bbfatal "Could not checkout ${KMETA} branch from known hash ${target_meta_head}"
>                          fi
>                  fi
>          fi
>
>          git checkout -q -f ${machine_branch}
>          if [ -n "${force_srcrev}" ]; then
>                  # see if the branch we are about to patch has been properly reset to the defined
>                  # SRCREV .. if not, we reset it.
>                  branch_head=`git rev-parse HEAD`
>                  if [ "${force_srcrev}" != "${branch_head}" ]; then
>                          current_branch=`git rev-parse --abbrev-ref HEAD`
>                          git branch "$current_branch-orig"
>                          git reset --hard ${force_srcrev}
>                  fi
>          fi
> }
> --------------------------------------------------------------------------------
>
>
> It seems like the problem is...
> git cat-file -t ${machine_srcrev}
> But ${machine_srcrev} is an empty string when it gets to it.
>
> My linux-yocto-custom.bb in my bsp is as follows...
> --------------------------------------------------------------------------------
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
>
> SRC_URI = "git://joe_blogs@gitmaster/linux-stable.git;protocol=ssh;bareclone=1;branch=${KBRANCH}"
>
> SRC_URI += "file://mylayer.scc \
>              file://mylayer.cfg \
>              file://mylayer-user-config.cfg \
>              file://mylayer-user-patches.scc \
>             "
>
> KBRANCH = "v3.14.28-ltsi"
>
> LINUX_VERSION ?= "3.14.28"
> LINUX_VERSION_EXTENSION ?= "-ltsi"
>
> SRCREV="${AUTOREV}"
>
> PR = "r0"
> PV = "${LINUX_VERSION}+git${SRCPV}"
>
> COMPATIBLE_MACHINE_mymach = "mymach"
>
> # prepend to do_configure()
> # makes a link from the defconfig that is going to be used by
> # kernel_do_configure() to the defconfig we have set up in kernel souce
> do_configure_prepend () {
>          ln -sf "${WORKDIR}/linux-stable/arch/arm/configs/myconfig_defconfig" "${WORKDIR}/defconfig"
> }
> --------------------------------------------------------------------------------
>
>
> My thoughts are that ${machine_srcrev}, should be ${SRCREV_machine}, which should be "AUTOINC".
> Rather than the empty string it is evaluating as.
> Because of the SRCREV="${AUTOREV}" line in my bsp layer linux-yocto-custom.bb.
>
> Replacing a line in the kernel-yocto.bbclass as follows... (please excuse my self-created pseudo-diff, I'm in a rush)
> -    machine_srcrev="${SRCREV_machine}"
> +    machine_srcrev="${@ get_machine_branch(d, "${SRCREV}" )}"
>
> Seems make it resolve as "AUTOINC" and fix the problem.
> But I would have thought that ${SRCREV_machine} should be resolving as my machine branch ${SRCREV} anyway.
> So really this change shouldn't have done anything.
>
> So I guess what I'm wondering is, what am I missing about how and where "${SRCREV_machine}" is set and how it resolves?

You just need to set SRCREV_machine=" <your commit hash> " and things should
work. It's a variable like any other, and is triggered for use by the 
SRCREV_format
variable you'll see in the linux-yocto includes (and that sets it to 
meta_machine),
which indicates that both a _machine and _meta SRCREV are used for the 
recipes.

The reason that SRCREV is checked in those routines, is for 
compatibility with
recipes that don't use the same format, or existing recipes that only 
set SRCREV
.. and it's a game or corner cases (which was streamlined a bit more in the
1.8 release).

But in both of the validation cases, you should either be hitting this 
condition
for the machine branch:

elif [ "${machine_srcrev}" = "" ] && [ "${SRCREV}" != "AUTOINC" ]; then

and for meta:

if [ "${target_meta_head}" = "AUTOINC" ] || [ "${target_meta_head}" = "" 
]; then

In both cases, they'll skip validation and not try to cat that empty 
revision, but
looking at it more closely .. I can see that it might just be falling 
into the third
part of the test and going after the empty commit .. another path 
through the
maze!

Short-term, just set SRCREV_machine, or pick a fixed revision for your 
SRCREV
and you should pass the test.

Bruce

>
> Any help or comments would be appreciated.
>
> Cheers,
> Clayton Mills
>
> ________________________________
>
> This e-mail contains privileged and confidential information intended for the use of the addressees named above. If you are not the intended recipient of this e-mail, you are hereby notified that you must not disseminate, copy or take any action in respect of any information contained in it. If you have received this e-mail in error, please notify the sender immediately by e-mail and immediately destroy this e-mail and its attachments.


