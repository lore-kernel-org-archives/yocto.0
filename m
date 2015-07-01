Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 457D7E00A85; Wed,  1 Jul 2015 09:44:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A34EE00A1E
	for <yocto@yoctoproject.org>; Wed,  1 Jul 2015 09:44:34 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 01 Jul 2015 09:44:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,387,1432623600"; d="scan'208";a="721129018"
Received: from ashussai-mobl1.amr.corp.intel.com (HELO
	swold-mobl.amr.corp.intel.com) ([10.254.105.108])
	by orsmga001.jf.intel.com with ESMTP; 01 Jul 2015 09:44:33 -0700
Message-ID: <559418F1.1060704@linux.intel.com>
Date: Wed, 01 Jul 2015 09:44:33 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Vipin Nair <vipin.jn@gmail.com>, yocto@yoctoproject.org
References: <CAFYg0UpeehEy41ethe90thM+hL3EzkPZWcuKJ_3OS2hN4kuESQ@mail.gmail.com>
	<CAFYg0Uq1yqubKPyn2r36h1xXRLTVQvzCvx=hYO3FvGpJzr1pfQ@mail.gmail.com>
In-Reply-To: <CAFYg0Uq1yqubKPyn2r36h1xXRLTVQvzCvx=hYO3FvGpJzr1pfQ@mail.gmail.com>
Subject: Re: With my layer, Systemd not invoking my application at startup
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
X-List-Received-Date: Wed, 01 Jul 2015 16:44:35 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/30/2015 08:35 PM, Vipin Nair wrote:
> Hi All,
>
> I have  created a layer (my first layer) and have build it with WindRiver
> media which uses Systemd for the startup services.
>
> As per my application need, I have to create a new user on the final image
> and change the owner permissions of certain files to the new user.
> Since I could not get it done on the build machine, I have written the post
> install script such that it gets executed on the  target board during the
> 1st boot cycle
> and from within the post install script I am creating the new user and
> changing the file ownership. And this works.
>
> But the only problem I have now is that, even though I register my service
> with Systemd at pre-install (or postinstall) section (using the systemctl
> enable command)
> my service is not getting launched by Systemd during the 1st boot. On
> subsequent reboots, it invokes my service at boot up.
>
> As part of debugging I just modified my postinstall script, such that it
> gets executed on the board (i.e without the exit 1)  and not executed on
> the 1st boot. After that I see that
> systemd invokes my service at boot up.  So I wonder if Systemd ignores the
> services for which post-install is not invoked at build machine ?
>
> Now I am confused on how to solve this problem.
>
> Only 2 approaches comes to my mind :
> 1) Run the postinstall on the board only (not on 1st boot)  - But with this
> (i.e running the postinstall section on board) I don't see the new user
> creation happening and as a result it fails to change the file ownership.
>
> 2) Somehow force systemd to invoke my service at startup (even with
> postinstall running during 1st boot)  - But I don't know what I have to do
> to achieve this.
>
> Here is the brief of my recipe file :
> -----------------------------------------------
>
> DEPENDS += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd',
> 'systemd-systemctl-native', '', d)}"
>
>
> do_install() {
> ------------
> ------------
> #if systemd configured
> install -m 0755 -d ${D}/lib/systemd/system
> cp ${WORKDIR}/${MA_BIN_DIR}/my_ser.service ${D}/lib/systemd/system/
> ------------
> ------------
> }
>
> pkg_preinst_${PN}() {
> ------------
> ------------
>
> if [  "$IS_SYSTEMD_CONFIGURED" = "yes" ] ; then
> systemctl --root=$D enable my_ser.service    # Have tried executing it only
> on postinstall, but it does not help.
> fi
> ------------
> ------------
> }
>
> pkg_postinst_${PN}() {
> ------------
> ------------
> if [  "$IS_SYSTEMD_CONFIGURED" = "yes" ] ; then
> systemctl --root=$D enable ma.service
> fi
>   if [ x"$D" = "x" ] ; then
>   # Create group and user
> groupadd test_grp
> useradd -r -s /sbin/nologin -g  test_grp test_usr

It appears you did not try to use the useradd bbclass here.

>   chown test_usr:test_grp /etc/test_folder/*
>   if [  "$IS_SYSTEMD_CONFIGURED" = "yes" ] ; then
> if [ "$1" == 1 ] || [ "$1" = 2 ] ; then  # only install and upgrade
> scenario, not to exeute on 1st boot
> systemctl daemon-reload
> systemctl start my_ser.service
> fi
> else
> exit 1
> fi
> }
>
> I am new to the yacto project and the layer approach. So kindly guide me on
> how to resolve this issue.
>
If you can send your full bb file, are you using the systemd bbclass as 
I suggested in a past email?

Sau!


> Also if this is not the right group to get help on this issue, please
> suggest about the relevant group.
>
> Thanks
> Vipin
>
>
>

