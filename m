Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA5D3E017E8
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2013 19:14:30 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id rA43ERJ3013784
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 3 Nov 2013 19:14:27 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.21.6) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Sun, 3 Nov 2013 19:14:26 -0800
Message-ID: <52771111.5000604@windriver.com>
Date: Sun, 3 Nov 2013 22:14:25 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
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
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Mon, 04 Nov 2013 03:14:34 -0000
X-Groupsio-MsgNum: 16929
Content-Type: multipart/mixed; boundary="------------020107030701090901030801"

--------------020107030701090901030801
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
>        ${TOPDIR}/meta \
>        ${TOPDIR}/meta-yocto \
>        ${TOPDIR}/meta-yocto-bsp \
>        ${TOPDIR}/meta-openembedded/meta-oe \
>        ${TOPDIR}/meta-beagleboard/common-bsp \
>        ${TOPDIR}/meta-mine \
>        "
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
>                       "
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
>                       "
>
>     recipes-kernel/linux/linux-mainline-3.8/config-addons.cfg (scenario 2):
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

FYI: I went silent on this, since I was running a few experiments in the
background. Mainly on scenario 2, but I can say that I see the same 
behaviour
with scenario #1 as you do. Whether or not I use the yocto kernel tooling,
or the core kernel processing, I see exactly the same defconfig used.

The issue you are seeing is distinct from the kernel processing, since
the defconfig isn't treated any differently than anything else on the
SRC_URI from the fetcher point of view ... and it is the fetcher which
is matching file://defconfig from the meta-beagleboard layer before the
one you have in meta-mine, since FILESEXTRAPATHS are searched after the
FILESPATH for the elements in the SRC_URI. But I'm not a fetcher expert,
that's my understanding and empirical evidence.

As a debug, I called src_patches() in patches.bbclass explicitly, and
it is obvious that the source of the defconfig is from meta-beagleboard.
Renaming the file in meta-beagleboard, allows the one in meta-mine to
be found, since the search continues.

So for this question, your issue is with the ordering of the elements
on the SRC_URI, and you can have your layer prioritized by making sure
it is in the search paths first.

This may or may not contradict the docs, and there are several threads
ongoing about SRC_URI ordering in the various branches .. so I'm simply
watching and waiting on this one.

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
>         [INFO] validating against known patches  (beaglebone-standard-meta)
>

As for this. I debugged it over the weekend, and you wouldn't see this on
master, but the tools on the dylan branch aren't using the proper kern-tools
SRCREVS. As such, I backported a change from master, and switched the
kern-tools to use the dylan branch.

What you were seeing as a hang, was really just an extremely long run
of the patch processing, the 700+ patches in the beagleboard kernel
recipe were being detected multiple times, and expanding to 47K entries.

Which the patch I've attached here, I was able to patch and configure the
kernel with the same layers.  Note: the run still takes a long time, since
even applying 700 patches at a couple of seconds per patch .. takes a
good chunk of time.

I've added Paul Eggleton to the cc: list, since I'm not sure if dylan is
still being updated, but if it is, the patch I'm attaching should be
applied to fix the kern-tools situation in that branch.

Cheers,

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
>          >
>          > 2013/10/28 Bruce Ashfield <bruce.ashfield@windriver.com
>         <mailto:bruce.ashfield@windriver.com>>
>          >>
>          >> I'm using dylan for my yocto checkout (not oe-core
>         standalone, since
>          >> this is a yocto list/question),
>          >
>          > I thought that opemenbedded-core and poky were sharing the
>         same core
>          > components, classes and functions.
>          >
>          >>
>          >> My build shows:
>          >>
>          >> meta
>          >> meta-yocto
>          >> meta-yocto-bsp    =
>         "dylan:3dc4505f0e744177ae4ddff1e1ce8b31b95dfaa6"
>          >> meta-ti           =
>         "master:c14c386946e1ea341faeea292580e37d538d645d"
>          >> meta-alphalem     =
>         "master:a5c0e8ff51297a4090cd47d669b4fc9c94696908"
>          >> meta-alphalem-bsp =
>         "master:56086e4dc618e975c9a46491793041f0d18e47a2"
>          >>
>          >> Mike indicated that he was using dylan for meta-ti, but that
>         doesn't
>          >> make a difference either, since for our purposed. It's
>         kernel.bbclass
>          >> and the yocto kernel processing that matters.
>          >
>          > I'll build a setup with yocto (dylan), meta-beagleboard
>         (dylan) and
>          > meta-mine to check if I can reproduce the issues.
>          >
>          >>
>          >> In meta-alphalem-bsp, I have linux-mainline_3.2.bbappend,
>         with the
>          >> following content:
>          >>
>          >> > cat linux-mainline_3.2.bbappend
>          >> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.2:"
>          >>
>          >> inherit kernel
>          >> require recipes-kernel/linux/linux-yocto.inc
>          >>
>          >> COMPATIBLE_MACHINE = "(beagleboard)"
>          >>
>          >> SRC_URI_append = " file://defconfig"
>          >> SRC_URI_append = " file://my_frag.cfg"
>          >>
>          >> And I added a fragment which has:
>          >>
>          >> > cat my_frag.cfg
>          >> CONFIG_WATCHDOG_NOWAYOUT=y
>          >> CONFIG_NTFS_FS=y
>          >> CONFIG_NTFS_RW=y
>          >>
>          >> When both are applied to the kernel build, we should see
>         CONFIG_NTFS_FS
>          >> transition from =m to =y:
>          >>
>          >> > grep CONFIG_NTFS_FS *
>          >> defconfig:CONFIG_NTFS_FS=m
>          >> my_frag.cfg:CONFIG_NTFS_FS=y
>          >>
>          >> After invoking linux-mainline's configure task, I see the
>         following:
>          >>
>          >> > grep CONFIG_NTFS_FS linux-beagleboard-standard-build/.config
>          >> CONFIG_NTFS_FS=y
>          >>
>          >> And other elements of the defconfig and fragment are
>         properly applied
>          >> to the configuration phase.
>          >>
>          >> I'm also seeing good results on master, which means that I'm
>         at a
>          >> standstill to reproduce any problems.
>          >>
>          >> Diego: can you confirm for me what triggers you are seeing
>         that shows
>          >> the defconfig and fragment are not used. I assume the config
>         options
>          >> are not present, but I just want to be sure.
>          >
>          > For the full defconfig replacement after doing a do_configure
>         I've checked
>          > .config on ${S} and it did not included my CONFIGS.
>          > For config fragment it got stuck on do_patch task.
>          >
>          >
>          >
>          > Regards,
>          >
>          > --
>          > *dS
>          > Diego Sueiro
>          >
>          > /*long live rock 'n roll*/
>          >
>          > _______________________________________________
>          > yocto mailing list
>          > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>          > https://lists.yoctoproject.org/listinfo/yocto
>          >
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


--------------020107030701090901030801
Content-Type: application/mbox;
	name="0001-kern-tools-use-dylan-branch.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="0001-kern-tools-use-dylan-branch.patch"

RnJvbSBkNGY0YTNlMzlmYTc1ZDY0ODM0Mzc3MGQ5NmMwZWU3YTBhODA5MDVkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBCcnVjZSBBc2hmaWVsZCA8YnJ1Y2UuYXNoZmllbGRAd2luZHJp
dmVyLmNvbT4KRGF0ZTogU3VuLCAzIE5vdiAyMDEzIDAwOjIwOjEwIC0wNDAwClN1YmplY3Q6IFtQ
QVRDSF0ga2Vybi10b29sczogdXNlIGR5bGFuIGJyYW5jaAoKVGhpcyBzd2l0Y2hlcyB0aGUga2Vy
bi10b29scyB0byB1c2UgdGhlIG1hdGNoZWQgZHlsYW4gYnJhbmNoIHRoYXQgaXMgbWFpbnRhaW5l
ZAp0byB3b3JrIGFnYWluc3QgdGhlIGR5bGFuIHJlbGVhc2Ugb2YgeW9jdG8vb2UtY29yZS4KCkFz
IHBhcnQgb2YgdGhpcyBzd2l0Y2gsIHdlIGFsc28gdXBkYXRlIHRoZSBTUkNSRVYgdG8gbWF0Y2gg
dGhlIGxhdGVzdCBmaXhlcyBmb3IKdGhlIGR5bGFuIGtlcm5lbC10b29scy4KClNpZ25lZC1vZmYt
Ynk6IEJydWNlIEFzaGZpZWxkIDxicnVjZS5hc2hmaWVsZEB3aW5kcml2ZXIuY29tPgotLS0KIG1l
dGEvcmVjaXBlcy1rZXJuZWwva2Vybi10b29scy9rZXJuLXRvb2xzLW5hdGl2ZV9naXQuYmIgfCA0
ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvbWV0YS9yZWNpcGVzLWtlcm5lbC9rZXJuLXRvb2xzL2tlcm4tdG9vbHMtbmF0
aXZlX2dpdC5iYiBiL21ldGEvcmVjaXBlcy1rZXJuZWwva2Vybi10b29scy9rZXJuLXRvb2xzLW5h
dGl2ZV9naXQuYmIKaW5kZXggYTg2ZGRhMy4uM2Y3MzFlYyAxMDA2NDQKLS0tIGEvbWV0YS9yZWNp
cGVzLWtlcm5lbC9rZXJuLXRvb2xzL2tlcm4tdG9vbHMtbmF0aXZlX2dpdC5iYgorKysgYi9tZXRh
L3JlY2lwZXMta2VybmVsL2tlcm4tdG9vbHMva2Vybi10b29scy1uYXRpdmVfZ2l0LmJiCkBAIC00
LDEzICs0LDEzIEBAIExJQ19GSUxFU19DSEtTVU0gPSAiZmlsZTovL2dpdC90b29scy9rZ2l0O2Jl
Z2lubGluZT01O2VuZGxpbmU9OTttZDU9ZDhkMWQ3MjlhNzBjCiAKIERFUEVORFMgPSAiZ2l0LW5h
dGl2ZSBndWlsdC1uYXRpdmUiCiAKLVNSQ1JFViA9ICIxYTNjNTk1MjZkNmFiZTk1NjYyODIwYjk0
OTNjOGE2MmRhYjUyZDc5IgorU1JDUkVWID0gIjI3MDBjNWQxYzIxNDc2NmYwMWU2OGJkZmEyNTA0
OWZhMWE1OTYwYmMiCiBQUiA9ICJyMTIiCiBQViA9ICIwLjErZ2l0JHtTUkNQVn0iCiAKIGluaGVy
aXQgbmF0aXZlCiAKLVNSQ19VUkkgPSAiZ2l0Oi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcveW9jdG8t
a2VybmVsLXRvb2xzLmdpdDtwcm90b2NvbD1naXQiCitTUkNfVVJJID0gImdpdDovL2dpdC55b2N0
b3Byb2plY3Qub3JnL3lvY3RvLWtlcm5lbC10b29scy5naXQ7cHJvdG9jb2w9Z2l0O2JyYW5jaD1k
eWxhbiIKIFMgPSAiJHtXT1JLRElSfSIKIAogZG9fY29tcGlsZSgpIHsgCi0tIAoxLjguMS4yCgo=

--------------020107030701090901030801--
