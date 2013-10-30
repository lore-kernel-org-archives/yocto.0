Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1846EE0173B
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 07:26:18 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r9UEQF6R028339
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 30 Oct 2013 07:26:16 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Wed, 30 Oct 2013 07:26:15 -0700
Message-ID: <527116F9.4090201@windriver.com>
Date: Wed, 30 Oct 2013 10:26:01 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Diego Sueiro <diego.sueiro@gmail.com>, Andrea Adami
	<andrea.adami@gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<525FE3C9.3070003@windriver.com>
	<CAMCfZKGUYAcO5FtOKC9iP_XZjRxJ_Xq12ERN=BL_JHA7FJW51w@mail.gmail.com>
	<5260BDA6.4020807@windriver.com>
	<CAMCfZKFf3iJCyjMgGQ=y6ng6Kh3_MeEMymgZTE=bTnLpBGN9Mg@mail.gmail.com>
	<5261974C.7010202@windriver.com> <5266A665.8030303@alphalem.com>
	<52686723.4080305@windriver.com>
	<CAMCfZKG1A_c-oy6KLZuctX4Nmca7f1ryBKRaR-sqFVVqNwuSrA@mail.gmail.com>
	<CADkTA4OWiOmDYDskpe6=uCX+XEE8R0C2aUxjCph+tAjdX=Ae2Q@mail.gmail.com>
	<526B18BC.5050302@alphalem.com>
	<CAMCfZKHuH4egX=Sid-fSaEscGBr_mX-3PC492syD1hD3+fY+rQ@mail.gmail.com>
	<526ECFF3.4060207@windriver.com>
	<CAMCfZKFnYB3DKSejuZ3JT-uwo=rNekOT3bUcFvuAHdnJnqFONg@mail.gmail.com>
	<CAAQYJAuCDgpYKA9VPA35pYEq31HRhxN3gM1S6LRrNqcJbTFK0Q@mail.gmail.com>
	<CAMCfZKFPhz4odA9iMZ5aWzWtT1XR8JX_EHxJQLXyVuy+S7KLqg@mail.gmail.com>
	<CAMCfZKHaRRVcx5YG+7DJ10-4DE_n9titOG7+aB3R+4H8iZjGvw@mail.gmail.com>
In-Reply-To: <CAMCfZKHaRRVcx5YG+7DJ10-4DE_n9titOG7+aB3R+4H8iZjGvw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Wed, 30 Oct 2013 14:26:19 -0000
Content-Type: multipart/alternative;
	boundary="------------050101050703010705080605"

--------------050101050703010705080605
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-10-29 11:31 AM, Diego Sueiro wrote:
> Bruce,
>
> I've created new build setup with this configuration:
>
>     BB_VERSION        = "1.18.0"
>     BUILD_SYS         = "x86_64-linux"
>     NATIVELSBSTRING   = "Ubuntu-12.10"
>     TARGET_SYS        = "arm-poky-linux-gnueabi"
>     MACHINE           = "beaglebone"
>     DISTRO            = "poky"
>     DISTRO_VERSION    = "1.4.2"
>     TUNE_FEATURES     = "armv7a vfp neon"
>     TARGET_FPU        = "vfp-neon"
>     meta
>     meta-yocto
>     meta-yocto-bsp    = "dylan:4e399f08d596197859214fdb3b06403b87bf8789"
>     meta-oe           = "dylan:a108b2203a997634f87ac687e81712badaf3c546"
>     common-bsp        = "dylan:7fdf9c670a10c5031a2d5555c15c45e453de8c21"
>     meta-mine         = "dylan:4e399f08d596197859214fdb3b06403b87bf8789"
>
> common-bsp comes from meta-beagleboard.
> meta-oe needed to be added because of machine_kernel_pr.bbclass.
>
> bblayers.conf:
>
>     LCONF_VERSION = "6"
>     BBPATH = "${TOPDIR}"
>     BBFILES ?= ""
>     BBLAYERS ?= " \
>       ${TOPDIR}/meta \
>       ${TOPDIR}/meta-yocto \
>       ${TOPDIR}/meta-yocto-bsp \
>     ${TOPDIR}/meta-openembedded/meta-oe \
>       ${TOPDIR}/meta-beagleboard/common-bsp \
>       ${TOPDIR}/meta-mine \
>       "
>
> meta-mine:
>
>     conf/layer.conf:
>
>         BBPATH .= ":${LAYERDIR}"
>         BBFILES += "${LAYERDIR}/recipes*/*/*.bb
>         ${LAYERDIR}/recipes*/*/*.bbappend"
>         BBFILE_COLLECTIONS += "my-layer"
>         BBFILE_PATTERN_my-layer := "^${LAYERDIR}/"
>         BBFILE_PRIORITY_my-layer = "10"
>
>     recipes-kernel/linux/linux-mainline_3.8.bbappend (scenario 1):
>
>         FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.8:"
>         COMPATIBLE_MACHINE_beaglebone = "(beaglebone)"
>         SRC_URI += " file://defconfig \
>                      "
>
>     recipes-kernel/linux/linux-mainline-3.8/defconfig (scenario 1):
>
>         http://pastebin.com/qd8B3C5K
>
>
>     recipes-kernel/linux/linux-mainline_3.8.bbappend (scenario 2):
>
>         FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.8:"
>         inherit kernel
>         require recipes-kernel/linux/linux-yocto.inc
>         COMPATIBLE_MACHINE_beaglebone = "(beaglebone)"
>         SRC_URI += " file://config-addons.cfg \
>                      "
>
>     recipes-kernel/linux/linux-mainline-3.8/config-addons.cfg
>     (scenario 2):
>
>         CONFIG_WATCHDOG_NOWAYOUT=y
>
>         CONFIG_NTFS_FS=y
>         CONFIG_NTFS_RW=y
>
>
>
> Results:
>
>   * Scenario 1: Full defconfig replacement
>
>     ${WORKDIR}/defconfig comes from meta-beagleboard instead of meta-mine
>
>     ${S}/.config comes from meta-beagleboard instead of meta-mine
>
>   * Scenario 2: Config fragments
>
>     "bitbake linux-mainline" got stuck on do_patch
>
>     log.do_patch:
>
>         DEBUG: Executing shell function do_patch
>
>         WARNING: no meta data branch found ...
>
>         Switched to branch 'linux-3.8.y'
>
>         [INFO] validating against known patches
>          (beaglebone-standard-meta)
>

.... AND, I can see this now as well. So you are definitely seeing a bug,
give me a few hours and I'll spin a fix, or find out what is configured
wrong and catch it before it causes problems.

Bruce

>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>
>
> 2013/10/29 Diego Sueiro <diego.sueiro@gmail.com 
> <mailto:diego.sueiro@gmail.com>>
>
>     2013/10/29 Andrea Adami <andrea.adami@gmail.com
>     <mailto:andrea.adami@gmail.com>>
>
>         I'll jump in one more time...
>
>         Have you tried putting defconfig and patch under <machine> subdir?
>
>         recipes-kernel/linux/linux-yocto-3.2/<machine>
>         defconfig
>         my-own.patch
>
>         I've recently added two similar entries for 3.10 and it works.
>         Afaik it was impossible to put a common patch under
>         /linux-yocto-.3.2
>         at the time.
>
>
>     Andrea,
>
>     I did it before and not worked.
>     I'll do it again just to make sure.
>
>
>     Regards,
>
>     --
>     *dS
>     Diego Sueiro
>
>     /*long live rock 'n roll*/
>
>
>     2013/10/29 Andrea Adami <andrea.adami@gmail.com
>     <mailto:andrea.adami@gmail.com>>
>
>         On Tue, Oct 29, 2013 at 11:33 AM, Diego Sueiro
>         <diego.sueiro@gmail.com <mailto:diego.sueiro@gmail.com>> wrote:
>         >
>         > 2013/10/28 Bruce Ashfield <bruce.ashfield@windriver.com
>         <mailto:bruce.ashfield@windriver.com>>
>         >>
>         >> I'm using dylan for my yocto checkout (not oe-core
>         standalone, since
>         >> this is a yocto list/question),
>         >
>         > I thought that opemenbedded-core and poky were sharing the
>         same core
>         > components, classes and functions.
>         >
>         >>
>         >> My build shows:
>         >>
>         >> meta
>         >> meta-yocto
>         >> meta-yocto-bsp    =
>         "dylan:3dc4505f0e744177ae4ddff1e1ce8b31b95dfaa6"
>         >> meta-ti           =
>         "master:c14c386946e1ea341faeea292580e37d538d645d"
>         >> meta-alphalem     =
>         "master:a5c0e8ff51297a4090cd47d669b4fc9c94696908"
>         >> meta-alphalem-bsp =
>         "master:56086e4dc618e975c9a46491793041f0d18e47a2"
>         >>
>         >> Mike indicated that he was using dylan for meta-ti, but
>         that doesn't
>         >> make a difference either, since for our purposed. It's
>         kernel.bbclass
>         >> and the yocto kernel processing that matters.
>         >
>         > I'll build a setup with yocto (dylan), meta-beagleboard
>         (dylan) and
>         > meta-mine to check if I can reproduce the issues.
>         >
>         >>
>         >> In meta-alphalem-bsp, I have linux-mainline_3.2.bbappend,
>         with the
>         >> following content:
>         >>
>         >> > cat linux-mainline_3.2.bbappend
>         >> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.2:"
>         >>
>         >> inherit kernel
>         >> require recipes-kernel/linux/linux-yocto.inc
>         >>
>         >> COMPATIBLE_MACHINE = "(beagleboard)"
>         >>
>         >> SRC_URI_append = " file://defconfig"
>         >> SRC_URI_append = " file://my_frag.cfg"
>         >>
>         >> And I added a fragment which has:
>         >>
>         >> > cat my_frag.cfg
>         >> CONFIG_WATCHDOG_NOWAYOUT=y
>         >> CONFIG_NTFS_FS=y
>         >> CONFIG_NTFS_RW=y
>         >>
>         >> When both are applied to the kernel build, we should see
>         CONFIG_NTFS_FS
>         >> transition from =m to =y:
>         >>
>         >> > grep CONFIG_NTFS_FS *
>         >> defconfig:CONFIG_NTFS_FS=m
>         >> my_frag.cfg:CONFIG_NTFS_FS=y
>         >>
>         >> After invoking linux-mainline's configure task, I see the
>         following:
>         >>
>         >> > grep CONFIG_NTFS_FS linux-beagleboard-standard-build/.config
>         >> CONFIG_NTFS_FS=y
>         >>
>         >> And other elements of the defconfig and fragment are
>         properly applied
>         >> to the configuration phase.
>         >>
>         >> I'm also seeing good results on master, which means that
>         I'm at a
>         >> standstill to reproduce any problems.
>         >>
>         >> Diego: can you confirm for me what triggers you are seeing
>         that shows
>         >> the defconfig and fragment are not used. I assume the
>         config options
>         >> are not present, but I just want to be sure.
>         >
>         > For the full defconfig replacement after doing a
>         do_configure I've checked
>         > .config on ${S} and it did not included my CONFIGS.
>         > For config fragment it got stuck on do_patch task.
>         >
>         >
>         >
>         > Regards,
>         >
>         > --
>         > *dS
>         > Diego Sueiro
>         >
>         > /*long live rock 'n roll*/
>         >
>         > _______________________________________________
>         > yocto mailing list
>         > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         > https://lists.yoctoproject.org/listinfo/yocto
>         >
>
>         I'll jump in one more time...
>
>         Have you tried putting defconfig and patch under <machine> subdir?
>
>         recipes-kernel/linux/linux-yocto-3.2/<machine>
>         defconfig
>         my-own.patch
>
>         I've recently added two similar entries for 3.10 and it works.
>         Afaik it was impossible to put a common patch under
>         /linux-yocto-.3.2
>         at the time.
>
>         Regards
>
>         Andrea
>
>
>


--------------050101050703010705080605
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 13-10-29 11:31 AM, Diego Sueiro
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAMCfZKHaRRVcx5YG+7DJ10-4DE_n9titOG7+aB3R+4H8iZjGvw@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <div dir="ltr">Bruce,
        <div><br>
        </div>
        <div>I've created new build setup with this configuration:<br>
        </div>
        <div>
          <blockquote style="margin:0px 0px 0px
            40px;border:none;padding:0px">
            <div>
              <div>BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;= "1.18.0"</div>
              <div>BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; = "x86_64-linux"</div>
              <div>NATIVELSBSTRING &nbsp; = "Ubuntu-12.10"</div>
              <div>TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp;= "arm-poky-linux-gnueabi"</div>
              <div>MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; = "beaglebone"</div>
              <div>DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;= "poky"</div>
              <div>DISTRO_VERSION &nbsp; &nbsp;= "1.4.2"</div>
              <div>TUNE_FEATURES &nbsp; &nbsp; = "armv7a vfp neon"</div>
              <div>TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;= "vfp-neon"</div>
              <div>meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
              <div>meta-yocto &nbsp; &nbsp; &nbsp; &nbsp;</div>
              <div>meta-yocto-bsp &nbsp; &nbsp;=
                "dylan:4e399f08d596197859214fdb3b06403b87bf8789"</div>
              <div>meta-oe &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
                "dylan:a108b2203a997634f87ac687e81712badaf3c546"</div>
              <div>common-bsp &nbsp; &nbsp; &nbsp; &nbsp;=
                "dylan:7fdf9c670a10c5031a2d5555c15c45e453de8c21"</div>
              <div>meta-mine &nbsp; &nbsp; &nbsp; &nbsp; =
                "dylan:4e399f08d596197859214fdb3b06403b87bf8789"</div>
            </div>
            <div><br>
            </div>
          </blockquote>
        </div>
        <div>common-bsp comes from meta-beagleboard.</div>
        <div>meta-oe needed to be added because
          of&nbsp;machine_kernel_pr.bbclass.<br>
        </div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">bblayers.conf:</div>
        <div class="gmail_extra">
          <blockquote style="margin:0px 0px 0px
            40px;border:none;padding:0px">
            <div class="gmail_extra">
              <div class="gmail_extra">LCONF_VERSION = "6"<br>
              </div>
              <div class="gmail_extra">BBPATH = "${TOPDIR}"<br>
              </div>
              <div class="gmail_extra">BBFILES ?= ""</div>
              <div class="gmail_extra">BBLAYERS ?= " \<br>
              </div>
              <div class="gmail_extra">
                &nbsp; ${TOPDIR}/meta \</div>
              <div class="gmail_extra">&nbsp; ${TOPDIR}/meta-yocto \</div>
              <div class="gmail_extra">&nbsp; ${TOPDIR}/meta-yocto-bsp \</div>
              <div class="gmail_extra">&nbsp;
                ${TOPDIR}/meta-openembedded/meta-oe \</div>
              <div class="gmail_extra">
                &nbsp; ${TOPDIR}/meta-beagleboard/common-bsp \</div>
              <div class="gmail_extra">&nbsp; ${TOPDIR}/meta-mine \</div>
              <div class="gmail_extra">&nbsp; "</div>
              <div><br>
              </div>
            </div>
          </blockquote>
        </div>
        <div class="gmail_extra">meta-mine:<br>
        </div>
        <div class="gmail_extra">
          <blockquote style="margin:0px 0px 0px
            40px;border:none;padding:0px">
            <div class="gmail_extra">conf/layer.conf:</div>
          </blockquote>
        </div>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          <div class="gmail_extra">
            <blockquote style="margin:0px 0px 0px
              40px;border:none;padding:0px">
              <div class="gmail_extra">
                <div class="gmail_extra">BBPATH .= ":${LAYERDIR}"<br>
                </div>
                <div class="gmail_extra">BBFILES +=
                  "${LAYERDIR}/recipes*/*/*.bb
                  ${LAYERDIR}/recipes*/*/*.bbappend"<br>
                </div>
                <div class="gmail_extra">BBFILE_COLLECTIONS +=
                  "my-layer"<br>
                </div>
                <div class="gmail_extra">BBFILE_PATTERN_my-layer :=
                  "^${LAYERDIR}/"</div>
                <div class="gmail_extra">BBFILE_PRIORITY_my-layer = "10"</div>
                <div class="gmail_extra"><br>
                </div>
              </div>
            </blockquote>
          </div>
        </blockquote>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          <div class="gmail_extra">recipes-kernel/linux/linux-mainline_3.8.bbappend
            (scenario 1):<br>
          </div>
        </blockquote>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          <blockquote style="margin:0px 0px 0px
            40px;border:none;padding:0px">
            <div class="gmail_extra" style="">
              <div class="gmail_extra">FILESEXTRAPATHS_prepend :=
                "${THISDIR}/${PN}-3.8:"</div>
              <div class="gmail_extra">COMPATIBLE_MACHINE_beaglebone =
                "(beaglebone)"<br>
              </div>
              <div class="gmail_extra">SRC_URI += " <a class="moz-txt-link-freetext" href="file://defconfig">file://defconfig</a> \<br>
              </div>
              <div class="gmail_extra">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"</div>
            </div>
          </blockquote>
        </blockquote>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">recipes-kernel/linux/linux-mainline-3.8/defconfig
          (scenario 1):<br>
        </blockquote>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          <blockquote style="margin:0px 0px 0px
            40px;border:none;padding:0px"><a moz-do-not-send="true"
              href="http://pastebin.com/qd8B3C5K">http://pastebin.com/qd8B3C5K</a><br>
          </blockquote>
        </blockquote>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          <div class="gmail_extra"><br>
          </div>
          <div class="gmail_extra">recipes-kernel/linux/linux-mainline_3.8.bbappend
            (scenario 2):<br>
          </div>
        </blockquote>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          <blockquote style="margin:0px 0px 0px
            40px;border:none;padding:0px">
            <div class="gmail_extra">
              <div class="gmail_extra">FILESEXTRAPATHS_prepend :=
                "${THISDIR}/${PN}-3.8:"</div>
              <div class="gmail_extra">inherit kernel<br>
              </div>
              <div class="gmail_extra">require
                recipes-kernel/linux/linux-yocto.inc</div>
              <div class="gmail_extra">COMPATIBLE_MACHINE_beaglebone =
                "(beaglebone)"<br>
              </div>
              <div class="gmail_extra">SRC_URI += "
                <a class="moz-txt-link-freetext" href="file://config-addons.cfg">file://config-addons.cfg</a> \<br>
              </div>
              <div class="gmail_extra">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"</div>
            </div>
          </blockquote>
        </blockquote>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          recipes-kernel/linux/linux-mainline-3.8/config-addons.cfg
          (scenario 2):</blockquote>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          <blockquote style="margin:0px 0px 0px
            40px;border:none;padding:0px">
            <blockquote style="margin:0px 0px 0px
              40px;border:none;padding:0px">
            </blockquote>
          </blockquote>
        </blockquote>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          <blockquote style="margin:0px 0px 0px
            40px;border:none;padding:0px">CONFIG_WATCHDOG_NOWAYOUT=y<br>
            <blockquote style="margin:0px 0px 0px
              40px;border:none;padding:0px">
            </blockquote>
            CONFIG_NTFS_FS=y<br>
            CONFIG_NTFS_RW=y</blockquote>
        </blockquote>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Results:</div>
        <div class="gmail_extra">
          <div>
            <ul style="">
              <li style="">Scenario 1: Full defconfig&nbsp;replacement</li>
            </ul>
          </div>
        </div>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          <div class="gmail_extra">
            <div style="">${WORKDIR}/defconfig comes from
              meta-beagleboard instead of meta-mine<br>
            </div>
          </div>
        </blockquote>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          <div class="gmail_extra">
            <div style="">${S}/.config&nbsp;comes from meta-beagleboard
              instead of meta-mine</div>
          </div>
        </blockquote>
        <div class="gmail_extra">
          <ul style="">
            <li style="">Scenario 2: Config fragments</li>
          </ul>
        </div>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          <div class="gmail_extra">"bitbake linux-mainline" got stuck on
            do_patch</div>
        </blockquote>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          <div class="gmail_extra">log.do_patch:</div>
        </blockquote>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          <blockquote style="margin:0px 0px 0px
            40px;border:none;padding:0px">
            <div class="gmail_extra">
              DEBUG: Executing shell function do_patch<br>
            </div>
          </blockquote>
        </blockquote>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          <blockquote style="margin:0px 0px 0px
            40px;border:none;padding:0px">
            <div class="gmail_extra">
              <div class="gmail_extra" style="">WARNING: no meta data
                branch found ...</div>
            </div>
          </blockquote>
        </blockquote>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          <blockquote style="margin:0px 0px 0px
            40px;border:none;padding:0px">
            <div class="gmail_extra">
              <div class="gmail_extra" style="">Switched to branch
                'linux-3.8.y'</div>
            </div>
          </blockquote>
        </blockquote>
        <blockquote style="margin:0px 0px 0px
          40px;border:none;padding:0px">
          <blockquote style="margin:0px 0px 0px
            40px;border:none;padding:0px">
            <div class="gmail_extra">
              <div class="gmail_extra" style="">[INFO] validating
                against known patches &nbsp;(beaglebone-standard-meta)</div>
            </div>
          </blockquote>
        </blockquote>
      </div>
    </blockquote>
    <br>
    .... AND, I can see this now as well. So you are definitely seeing a
    bug,<br>
    give me a few hours and I'll spin a fix, or find out what is
    configured<br>
    wrong and catch it before it causes problems.<br>
    <br>
    Bruce<br>
    <br>
    <blockquote
cite="mid:CAMCfZKHaRRVcx5YG+7DJ10-4DE_n9titOG7+aB3R+4H8iZjGvw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra">
          <div>
            <br>
          </div>
        </div>
        <div class="gmail_extra"><br clear="all">
          <div>
            <div dir="ltr">
              <div>Regards,</div>
              <div><br>
              </div>
              --<br>
              *dS<br>
              Diego Sueiro<br>
              <br>
              /*long live rock 'n roll*/<br>
            </div>
          </div>
          <br>
          <br>
          <div class="gmail_quote">2013/10/29 Diego Sueiro <span
              dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:diego.sueiro@gmail.com" target="_blank">diego.sueiro@gmail.com</a>&gt;</span><br>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
              <div dir="ltr">
                <div class="gmail_extra"
                  style="font-family:arial,sans-serif;font-size:13px">
                  <div>
                    <div>
                      <div class="gmail_quote">2013/10/29 Andrea Adami&nbsp;<span
                          dir="ltr">&lt;<a moz-do-not-send="true"
                            href="mailto:andrea.adami@gmail.com"
                            target="_blank">andrea.adami@gmail.com</a>&gt;</span><br>
                        <blockquote class="gmail_quote"
                          style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
                          <div style="overflow:hidden">I'll jump in one
                            more time...<br>
                            <br>
                            Have you tried putting defconfig and patch
                            under &lt;machine&gt; subdir?<br>
                            <br>
recipes-kernel/linux/linux-yocto-3.2/&lt;machine&gt;<br>
                            defconfig<br>
                            my-own.patch<br>
                            <br>
                            I've recently added two similar entries for
                            3.10 and it works.<br>
                            Afaik it was impossible to put a common
                            patch under /linux-yocto-.3.2<br>
                            at the time.</div>
                        </blockquote>
                      </div>
                      <br>
                    </div>
                  </div>
                  Andrea,</div>
                <div>
                  <div class="gmail_extra"
                    style="font-family:arial,sans-serif;font-size:13px">
                    <br>
                  </div>
                  <div class="gmail_extra"
                    style="font-family:arial,sans-serif;font-size:13px">
                    I did it before and not worked.</div>
                  <div class="gmail_extra"
                    style="font-family:arial,sans-serif;font-size:13px">I'll
                    do it again just to make sure.</div>
                </div>
                <div style="font-family:arial,sans-serif;font-size:13px">
                  <div><img moz-do-not-send="true"
                      src="https://mail.google.com/mail/u/0/images/cleardot.gif"
                      style="max-width: 100%;"></div>
                </div>
                <div>
                  <div
                    style="font-family:arial,sans-serif;font-size:13px">
                    <div class="gmail_extra">
                      <br>
                      <br clear="all">
                      <div>
                        <div dir="ltr">
                          <div>Regards,</div>
                          <div><br>
                          </div>
                          --<br>
                          *dS<br>
                          Diego Sueiro<br>
                          <br>
                          /*long live rock 'n roll*/</div>
                      </div>
                    </div>
                  </div>
                </div>
                <div>
                  <div>
                    <div class="gmail_extra">
                      <div>
                        <div dir="ltr">
                          <br>
                        </div>
                      </div>
                      <br>
                      <div class="gmail_quote">2013/10/29 Andrea Adami <span
                          dir="ltr">&lt;<a moz-do-not-send="true"
                            href="mailto:andrea.adami@gmail.com"
                            target="_blank">andrea.adami@gmail.com</a>&gt;</span><br>
                        <blockquote class="gmail_quote"
                          style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
                          <div>
                            <div>On Tue, Oct 29, 2013 at 11:33 AM, Diego
                              Sueiro &lt;<a moz-do-not-send="true"
                                href="mailto:diego.sueiro@gmail.com"
                                target="_blank">diego.sueiro@gmail.com</a>&gt;
                              wrote:<br>
                              &gt;<br>
                              &gt; 2013/10/28 Bruce Ashfield &lt;<a
                                moz-do-not-send="true"
                                href="mailto:bruce.ashfield@windriver.com"
                                target="_blank">bruce.ashfield@windriver.com</a>&gt;<br>
                              &gt;&gt;<br>
                              &gt;&gt; I'm using dylan for my yocto
                              checkout (not oe-core standalone, since<br>
                              &gt;&gt; this is a yocto list/question),<br>
                              &gt;<br>
                              &gt; I thought that opemenbedded-core and
                              poky were sharing the same core<br>
                              &gt; components, classes and functions.<br>
                              &gt;<br>
                              &gt;&gt;<br>
                              &gt;&gt; My build shows:<br>
                              &gt;&gt;<br>
                              &gt;&gt; meta<br>
                              &gt;&gt; meta-yocto<br>
                              &gt;&gt; meta-yocto-bsp &nbsp; &nbsp;=
                              "dylan:3dc4505f0e744177ae4ddff1e1ce8b31b95dfaa6"<br>
                              &gt;&gt; meta-ti &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
                              "master:c14c386946e1ea341faeea292580e37d538d645d"<br>
                              &gt;&gt; meta-alphalem &nbsp; &nbsp; =
                              "master:a5c0e8ff51297a4090cd47d669b4fc9c94696908"<br>
                              &gt;&gt; meta-alphalem-bsp =
                              "master:56086e4dc618e975c9a46491793041f0d18e47a2"<br>
                              &gt;&gt;<br>
                              &gt;&gt; Mike indicated that he was using
                              dylan for meta-ti, but that doesn't<br>
                              &gt;&gt; make a difference either, since
                              for our purposed. It's kernel.bbclass<br>
                              &gt;&gt; and the yocto kernel processing
                              that matters.<br>
                              &gt;<br>
                              &gt; I'll build a setup with yocto
                              (dylan), meta-beagleboard (dylan) and<br>
                              &gt; meta-mine to check if I can reproduce
                              the issues.<br>
                              &gt;<br>
                              &gt;&gt;<br>
                              &gt;&gt; In meta-alphalem-bsp, I have
                              linux-mainline_3.2.bbappend, with the<br>
                              &gt;&gt; following content:<br>
                              &gt;&gt;<br>
                              &gt;&gt; &gt; cat
                              linux-mainline_3.2.bbappend<br>
                              &gt;&gt; FILESEXTRAPATHS_prepend :=
                              "${THISDIR}/${PN}-3.2:"<br>
                              &gt;&gt;<br>
                              &gt;&gt; inherit kernel<br>
                              &gt;&gt; require
                              recipes-kernel/linux/linux-yocto.inc<br>
                              &gt;&gt;<br>
                              &gt;&gt; COMPATIBLE_MACHINE =
                              "(beagleboard)"<br>
                              &gt;&gt;<br>
                              &gt;&gt; SRC_URI_append = <a class="moz-txt-link-rfc2396E" href="file://defconfig">"
                              file://defconfig"</a><br>
                              &gt;&gt; SRC_URI_append = <a class="moz-txt-link-rfc2396E" href="file://my_frag.cfg">"
                              file://my_frag.cfg"</a><br>
                              &gt;&gt;<br>
                              &gt;&gt; And I added a fragment which has:<br>
                              &gt;&gt;<br>
                              &gt;&gt; &gt; cat my_frag.cfg<br>
                              &gt;&gt; CONFIG_WATCHDOG_NOWAYOUT=y<br>
                              &gt;&gt; CONFIG_NTFS_FS=y<br>
                              &gt;&gt; CONFIG_NTFS_RW=y<br>
                              &gt;&gt;<br>
                              &gt;&gt; When both are applied to the
                              kernel build, we should see CONFIG_NTFS_FS<br>
                              &gt;&gt; transition from =m to =y:<br>
                              &gt;&gt;<br>
                              &gt;&gt; &gt; grep CONFIG_NTFS_FS *<br>
                              &gt;&gt; defconfig:CONFIG_NTFS_FS=m<br>
                              &gt;&gt; my_frag.cfg:CONFIG_NTFS_FS=y<br>
                              &gt;&gt;<br>
                              &gt;&gt; After invoking linux-mainline's
                              configure task, I see the following:<br>
                              &gt;&gt;<br>
                              &gt;&gt; &gt; grep CONFIG_NTFS_FS
                              linux-beagleboard-standard-build/.config<br>
                              &gt;&gt; CONFIG_NTFS_FS=y<br>
                              &gt;&gt;<br>
                              &gt;&gt; And other elements of the
                              defconfig and fragment are properly
                              applied<br>
                              &gt;&gt; to the configuration phase.<br>
                              &gt;&gt;<br>
                              &gt;&gt; I'm also seeing good results on
                              master, which means that I'm at a<br>
                              &gt;&gt; standstill to reproduce any
                              problems.<br>
                              &gt;&gt;<br>
                              &gt;&gt; Diego: can you confirm for me
                              what triggers you are seeing that shows<br>
                              &gt;&gt; the defconfig and fragment are
                              not used. I assume the config options<br>
                              &gt;&gt; are not present, but I just want
                              to be sure.<br>
                              &gt;<br>
                              &gt; For the full defconfig replacement
                              after doing a do_configure I've checked<br>
                              &gt; .config on ${S} and it did not
                              included my CONFIGS.<br>
                              &gt; For config fragment it got stuck on
                              do_patch task.<br>
                              &gt;<br>
                              &gt;<br>
                              &gt;<br>
                              &gt; Regards,<br>
                              &gt;<br>
                              &gt; --<br>
                              &gt; *dS<br>
                              &gt; Diego Sueiro<br>
                              &gt;<br>
                              &gt; /*long live rock 'n roll*/<br>
                              &gt;<br>
                            </div>
                          </div>
                          <div>&gt;
                            _______________________________________________<br>
                            &gt; yocto mailing list<br>
                            &gt; <a moz-do-not-send="true"
                              href="mailto:yocto@yoctoproject.org"
                              target="_blank">yocto@yoctoproject.org</a><br>
                            &gt; <a moz-do-not-send="true"
                              href="https://lists.yoctoproject.org/listinfo/yocto"
                              target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
                            &gt;<br>
                            <br>
                          </div>
                          I'll jump in one more time...<br>
                          <br>
                          Have you tried putting defconfig and patch
                          under &lt;machine&gt; subdir?<br>
                          <br>
recipes-kernel/linux/linux-yocto-3.2/&lt;machine&gt;<br>
                          defconfig<br>
                          my-own.patch<br>
                          <br>
                          I've recently added two similar entries for
                          3.10 and it works.<br>
                          Afaik it was impossible to put a common patch
                          under /linux-yocto-.3.2<br>
                          at the time.<br>
                          <br>
                          Regards<br>
                          <span><font color="#888888"><br>
                              Andrea<br>
                            </font></span></blockquote>
                      </div>
                      <br>
                    </div>
                  </div>
                </div>
              </div>
            </blockquote>
          </div>
          <br>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------050101050703010705080605--
