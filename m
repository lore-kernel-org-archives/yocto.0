Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43C81E00C59; Thu,  2 Nov 2017 16:25:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16A4DE00C44
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 16:25:18 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vA2NPF5S021503
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 2 Nov 2017 16:25:15 -0700 (PDT)
Received: from server.local (128.224.20.234) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.361.1;
	Thu, 2 Nov 2017 16:25:15 -0700
To: "Bishop, Mark (STRT)" <MBishop@smithsinterconnectinc.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1b231688863c4060b428c93d3b40fa0e@ERDCSEXCH01.SMITHSSII.NET>
	<980e80dba47f4e8787556a88ccade2fe@ERDCSEXCH01.SMITHSSII.NET>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <fe8d831d-4561-065a-d1b5-953168550fd9@windriver.com>
Date: Thu, 2 Nov 2017 19:25:14 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <980e80dba47f4e8787556a88ccade2fe@ERDCSEXCH01.SMITHSSII.NET>
Subject: Re: do_kernel_checkout() not using the correct directory
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
X-List-Received-Date: Thu, 02 Nov 2017 23:25:20 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2017-11-02 4:16 PM, Bishop, Mark (STRT) wrote:
> I changed the code in  arm/layers/core/meta/classes/kernel-yocto.bbclass
> 
> From:
> .
> else
>                  # case: we have no git repository at all.
>                  # To support low bandwidth options for building the kernel, we'll just
>                  # convert the tree to a git repo and let the rest of the process work unchanged
> 
>                  # if ${S} hasn't been set to the proper subdirectory a default of "linux" is
>                  # used, but we can't initialize that empty directory. So check it and throw a
>                  # clear error
> 
>                  cd ${S}
>                  if [ ! -f "Makefile" ]; then
> ..
> 
> To:
> else
>                  # case: we have no git repository at all.
>                  # To support low bandwidth options for building the kernel, we'll just
>                  # convert the tree to a git repo and let the rest of the process work unchanged
> 
>                  # if ${S} hasn't been set to the proper subdirectory a default of "linux" is
>                  # used, but we can't initialize that empty directory. So check it and throw a
>                  # clear error
> 
>                  if [ -d "${WORKDIR}/trunk/" ]; then
>                          source_workdir="${WORKDIR}/trunk"
>                          if [ "${source_dir}" != "${source_workdir}" ]; then
>                                  rm -rf ${S}
>                                  mv ${WORKDIR}/trunk ${S}
>                          fi
>                  fi
> 
>                  cd ${S}
>                  if [ ! -f "Makefile" ]; then
> 
> And everything is working but it seems that this would be the wrong way to do this as this is me editing a base class file.
> 

Yah, not a great idea to modify the base class.

It may be working, but if you actually add a patch to the SRC_URI,
it will fail, since the rest of the code also needs a git
repository (to apply patches, merge branches, etc, etc). You may
or may not have done that, but where you put that sample code *should*
let the tgz processing do the right thing and create a simple git
repo.

I wrote that code (a long time ago now!) to work with git trees or
tgz's. Anything that isn't dropping the source into a location that
is different than that, won't work (as you found out and worked
around).

You could add your own task that runs before do_kernel_checkout to
put the svn checkout into ${S}, and then do_checkout_checkout will
do its work as normal.

You can add that task in your kernel recipe, or in a bbappend to
a kernel recipe.

i.e.

addtask kernel_svn_precondition before do_kernel_checkout after do_unpack

do_kernel_svn_precondition() {
                   if [ -d "${WORKDIR}/trunk/" ]; then
                           source_workdir="${WORKDIR}/trunk"
                           if [ "${source_dir}" != "${source_workdir}" 
]; then
                                   rm -rf ${S}
                                   mv ${WORKDIR}/trunk ${S}
                           fi
                   fi
}

Maybe someone else will have a better idea, but that is mine :D

Cheers,

Bruce

> 
> 
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Bishop, Mark (STRT)
> Sent: Thursday, November 02, 2017 1:48 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] do_kernel_checkout() not using the correct directory
> 
> I am trying to compile a kernel located in SVN.
> 
> I get this error message:
> ERROR: linux-xlnx-4.9-xilinx-v2017.2+git20-r0 do_kernel_checkout: S /tmp/stride/work-shared/plnx_arm/kernel-source is not set to the linux source directory. Check
> ERROR: linux-xlnx-4.9-xilinx-v2017.2+git20-r0 do_kernel_checkout: the recipe and set S to the proper extracted subdirectory
> ERROR: linux-xlnx-4.9-xilinx-v2017.2+git20-r0 do_kernel_checkout: Function failed: do_kernel_checkout (log file is located at /tmp/stride/work/plnx_arm-xilinx-linux-gnueabi/linux-xlnx/4.9-xilinx-v2017.2+git20-r0/temp/log.do_kernel_checkout.34928)
> ERROR: Logfile of failure stored in: /tmp/stride/work/plnx_arm-xilinx-linux-gnueabi/linux-xlnx/4.9-xilinx-v2017.2+git20-r0/temp/log.do_kernel_checkout.34928
> ERROR: Task (/opt/pkg/petalinux/2017.2/components/yocto/source/arm/layers/meta-xilinx/recipes-kernel/linux/linux-xlnx_4.9.bb:do_kernel_checkout) failed with exit code '1'
> 
> And my kernel gets downloaded to:
> /tmp/stride/work/plnx_arm-xilinx-linux-gnueabi/linux-xlnx/4.9-xilinx-v2017.2+git20-r0/trunk
> But Yocto is looking for it in /tmp/stride/work-shared/plnx_arm/kernel-source
> Which is why it is failing in kernel-yocto.bbclass when I try and compile a kernel located in SVN.
> 
> If it is a git repo it gets copied into /tmp/stride/work-shared/plnx_arm/kernel-source and things work nicely.
> 
> 
> do_kernel_checkout() {
> ...
> if [ -d "${WORKDIR}/git/" ]; then
>         # case: git repository
>                  # if S is WORKDIR/git, then we shouldn't be moving or deleting the tree.
>                  if [ "${source_dir}" != "${source_workdir}" ]; then
>                          if [ -d "${source_workdir}/.git" ]; then
>                                  # regular git repository with .git
>                                  rm -rf ${S}
>                                  mv ${WORKDIR}/git ${S}
>                          else
>                                  # create source for bare cloned git repository
>                                  git clone ${WORKDIR}/git ${S}
>                                  rm -rf ${WORKDIR}/git
>                          fi
>                  fi
>                  cd ${S}
> else
>                  # case: we have no git repository at all.
>                  # To support low bandwidth options for building the kernel, we'll just
>                  # convert the tree to a git repo and let the rest of the process work unchanged
> 
>                  # if ${S} hasn't been set to the proper subdirectory a default of "linux" is
>                  # used, but we can't initialize that empty directory. So check it and throw a
>                  # clear error
> 
>                  cd ${S}
>                  if [ ! -f "Makefile" ]; then
>                          bberror "S ${S} is not set to the linux source directory. Check "
>                          bbfatal "the recipe and set S to the proper extracted subdirectory"
>                  fi
> ..
> 
> ${S} is set to /tmp/stride/work-shared/plnx_arm/kernel-source when I need one of the two things to happen:
> A) ${S} set to  ${WORKDIR}/trunk             OR
> B) ${WORKDIR}/trunk copied to ${S}/
> 
> I could modify that file directly on my machine and move on, but is there a way I can create an .bbappend or something that will change ${S}
> 
> I'm pretty new to Yocto and I'd like to have a solution that resides in my project folder instead of having to modify Yocto files so that when I do tool installs on new development machines I can just checkout my project data and have it work.  I'm using Petalinux, so the process would be install that, then checkout the project and then build it, with the correct ${S} directory flowing into kernel-yocto.bbclass:do_kernel_checkout()
> 
> I'm new Yocto but I've been reading a ton and am looking for some advice.
> 
> 
> 
> 
> This e-mail contains proprietary information some or all of which may be legally privileged. It is intended for the recipient only. If an addressing or transmission error has misdirected this e-mail, please notify the authority by replying to this e-mail. If you are not the intended recipient you must not use, disclose, distribute, copy, print, or rely on this e-mail. In addition, information contained in or attached to this e-mail may be subject to either 22 C.F.R. Parts 120?130, or 15 C.F.R. Parts 730-774. These regulations prohibit the release or disclosure of certain information contained herein to anyone who is not a U.S. citizen or permanent resident alien, without a license first having been issued. Failure to observe such requirements is a violation of U.S. law that carries serious penalties.
> 
> 


