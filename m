Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5D48F4C80039
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2011 20:31:27 -0500 (CDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Fri, 1 Jul 2011 09:30:59 +0800
Received: from [192.168.0.101] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Fri, 1 Jul 2011
	09:30:58 +0800
From: NiQingliang <niqingliang@insigma.com.cn>
To: Saul Wold <sgw@linux.intel.com>
Date: Fri, 1 Jul 2011 09:34:24 +0800
In-Reply-To: <4E0D0CEE.1000907@linux.intel.com>
References: <1309399927.1876.7.camel@localhost.localdomain>
	<1865303E0DED764181A9D882DEF65FB6A1F4FC67BD@shsmsx502.ccr.corp.intel.com>
	<1309400982.1876.10.camel@localhost.localdomain>
	<1865303E0DED764181A9D882DEF65FB6A1F4FC67BF@shsmsx502.ccr.corp.intel.com>
	<1309403903.24059.8.camel@localhost.localdomain>
	<4E0D0CEE.1000907@linux.intel.com>
X-Mailer: Evolution 3.0.2 
Message-ID: <1309484065.10559.7.camel@localhost.localdomain>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dependency gui problem
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
X-List-Received-Date: Fri, 01 Jul 2011 01:31:30 -0000
X-Groupsio-MsgNum: 1761
Content-Type: multipart/mixed; boundary="=-ZquMiIMg0oX9KILAs0n0"

--=-ZquMiIMg0oX9KILAs0n0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

I'm using python2.7

I have setup a new file named "python" in build dir, whose content like
that:
#!/bin/bash
/usr/bin/env python2 $@

and add the build dir in env var "PATH".

If the python version error, I don't think I can see the GUI of bitbake.

after manually closed gui, the shell output is like attachement.

and I tried like this:
if I change some file in poky's recipes for the conf file, the "loading
cache" window will work normally, and I can see the progress bar
rolling.

but if I issue the cmd second time, it will hang.


On Fri, 2011-07-01 at 07:55 +0800, Saul Wold wrote:
> On 06/29/2011 08:18 PM, NiQingliang wrote:
> > I have added "-DDD -v", after close window "loading cache" manually, the
> > bitbake exited, and then I can see some DEBUG info on shell, but there
> > is no clue.
> >
> > how to dig out where it hangs:-(
> >
> 
> Can you capture the log and send it.  I noticed you are running on
> ArchLinux, can you confirm which version of Python you are using and
> which version of Poky you have?
> 
> You have to be using 2.6 or 2.7 Python.
> 
> Sau!
> 
> > On Thu, 2011-06-30 at 10:57 +0800, Cui, Dexuan wrote:
> >> NiQingliang wrote:
> >>> once builded, is after executed "bitbake core-image-minimal" and
> >>> generated the final image.
> >> I tried that just now on recent poky.git's master branch but can't reproduce the issue. :-(
> >> You may need to dig out where it hangs...
> >>
> >>> On Thu, 2011-06-30 at 10:18 +0800, Cui, Dexuan wrote:
> >>>> , and set env, follow cmd works normally.
> >>>>> bitbake -g -u depexp core-image-minimal
> >>>>>
> >>>>> but once builded, the cmd works abnormal, the symptom like that:
> >>>>> What does "once builded" mean?
> >>
> >> Thanks,
> >> -- Dexuan
> >

-- 
倪庆亮
TEL:    13588371863
E-MAIL: niqingliang@insigma.com.cn
BLOG:   http://niqingliang2003.wordpress.com


--=-ZquMiIMg0oX9KILAs0n0
Content-Disposition: attachment; filename="tmp.txt"
Content-Type: text/plain; name="tmp.txt"; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Content-Description: tmp.txt

DEBUG: Using cache in '/media/Datum/yocto/build_sa735/tmp/cache/bb_codeparser.dat' for codeparser cache
DEBUG: Clearing SRCREV cache due to cache policy of: clear
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/sanity.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/sanity.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/sanity.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/license.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/license.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/license.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/sstate.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/sstate.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/sstate.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/devshell.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/devshell.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/devshell.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/debian.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/debian.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/debian.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/insane.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/insane.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/insane.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/image-prelink.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/image-prelink.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/image-prelink.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/image-mklibs.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/image-mklibs.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/image-mklibs.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/package_ipk.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/package_ipk.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/package_ipk.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/prserv.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/prserv.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/prserv.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/packagedata.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/packagedata.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/packagedata.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/package.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/package.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/package.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/package_rpm.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/package_rpm.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/package_rpm.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/rm_work.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/rm_work.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/rm_work.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/logging.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/logging.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/logging.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/buildstats.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/buildstats.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/buildstats.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/metadata_scm.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/metadata_scm.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/metadata_scm.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/utility-tasks.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/utility-tasks.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/utility-tasks.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/utils.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/utils.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/utils.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/mirrors.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/mirrors.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/mirrors.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/staging.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/staging.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/staging.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/patch.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/patch.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/patch.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/classes/base.bbclass
DEBUG: BB /media/Datum/yocto/poky/meta/classes/base.bbclass: handle(data, include)
DEBUG: BB :0: inheriting classes/base.bbclass
DEBUG: LOAD /media/Datum/yocto/poky/meta/conf/abi_version.conf
DEBUG: CONF conf/bitbake.conf:654: including conf/abi_version.conf
DEBUG: LOAD /media/Datum/yocto/poky/meta/conf/sanity.conf
DEBUG: CONF conf/bitbake.conf:653: including conf/sanity.conf
DEBUG: LOAD /media/Datum/yocto/poky/meta/conf/documentation.conf
DEBUG: CONF conf/bitbake.conf:652: including conf/documentation.conf
DEBUG: LOAD /media/Datum/yocto/poky/meta/conf/distro/include/tclibc-eglibc.inc
DEBUG: BB /media/Datum/yocto/poky/meta/conf/distro/include/tclibc-eglibc.inc: handle(data, include)
DEBUG: CONF /media/Datum/yocto/poky/meta/conf/distro/defaultsetup.conf:13: including conf/distro/include/tclibc-eglibc.inc
DEBUG: LOAD /media/Datum/yocto/poky/meta/conf/distro/include/as-needed.inc
DEBUG: BB /media/Datum/yocto/poky/meta/conf/distro/include/as-needed.inc: handle(data, include)
DEBUG: CONF /media/Datum/yocto/poky/meta/conf/distro/include/tcmode-default.inc:66: including conf/distro/include/as-needed.inc
DEBUG: LOAD /media/Datum/yocto/poky/meta/conf/distro/include/tcmode-default.inc
DEBUG: BB /media/Datum/yocto/poky/meta/conf/distro/include/tcmode-default.inc: handle(data, include)
DEBUG: CONF /media/Datum/yocto/poky/meta/conf/distro/defaultsetup.conf:10: including conf/distro/include/tcmode-default.inc
DEBUG: LOAD /media/Datum/yocto/poky/meta/conf/distro/include/world-broken.inc
DEBUG: BB /media/Datum/yocto/poky/meta/conf/distro/include/world-broken.inc: handle(data, include)
DEBUG: CONF /media/Datum/yocto/poky/meta/conf/distro/defaultsetup.conf:4: including conf/distro/include/world-broken.inc
DEBUG: LOAD /media/Datum/yocto/poky/meta/conf/distro/include/default-distrovars.inc
DEBUG: BB /media/Datum/yocto/poky/meta/conf/distro/include/default-distrovars.inc: handle(data, include)
DEBUG: CONF /media/Datum/yocto/poky/meta/conf/distro/defaultsetup.conf:3: including conf/distro/include/default-distrovars.inc
DEBUG: LOAD /media/Datum/yocto/poky/meta/conf/distro/include/default-versions.inc
DEBUG: BB /media/Datum/yocto/poky/meta/conf/distro/include/default-versions.inc: handle(data, include)
DEBUG: CONF /media/Datum/yocto/poky/meta/conf/distro/defaultsetup.conf:2: including conf/distro/include/default-versions.inc
DEBUG: LOAD /media/Datum/yocto/poky/meta/conf/distro/include/default-providers.inc
DEBUG: BB /media/Datum/yocto/poky/meta/conf/distro/include/default-providers.inc: handle(data, include)
DEBUG: CONF /media/Datum/yocto/poky/meta/conf/distro/defaultsetup.conf:1: including conf/distro/include/default-providers.inc
DEBUG: LOAD /media/Datum/yocto/poky/meta/conf/distro/defaultsetup.conf
DEBUG: CONF conf/bitbake.conf:651: including conf/distro/defaultsetup.conf
DEBUG: LOAD /media/Datum/yocto/poky/meta-sa735/conf/distro/sa735.conf
DEBUG: CONF conf/bitbake.conf:650: including conf/distro/sa735.conf
DEBUG: CONF file 'conf/machine-sdk/${SDKMACHINE}.conf' not found
DEBUG: CONF conf/bitbake.conf:649: including conf/machine-sdk/${SDKMACHINE}.conf
DEBUG: LOAD /media/Datum/yocto/poky/meta/conf/machine/include/tune-ppce300c3.inc
DEBUG: BB /media/Datum/yocto/poky/meta/conf/machine/include/tune-ppce300c3.inc: handle(data, include)
DEBUG: CONF /media/Datum/yocto/poky/meta-sa735/conf/machine/mpc8314-sa735.conf:7: including conf/machine/include/tune-ppce300c3.inc
DEBUG: LOAD /media/Datum/yocto/poky/meta-sa735/conf/machine/mpc8314-sa735.conf
DEBUG: CONF conf/bitbake.conf:648: including conf/machine/mpc8314-sa735.conf
DEBUG: CONF file 'conf/target/INVALID-oe-INVALID.conf' not found
DEBUG: CONF conf/bitbake.conf:647: including conf/target/INVALID-oe-INVALID.conf
DEBUG: CONF file 'conf/build/x86_64-linux.conf' not found
DEBUG: CONF conf/bitbake.conf:646: including conf/build/x86_64-linux.conf
DEBUG: LOAD conf/local.conf
DEBUG: CONF conf/bitbake.conf:645: including conf/local.conf
DEBUG: CONF file 'conf/auto.conf' not found
DEBUG: CONF conf/bitbake.conf:644: including conf/auto.conf
DEBUG: CONF file 'conf/site.conf' not found
DEBUG: CONF conf/bitbake.conf:643: including conf/site.conf
DEBUG: LOAD /media/Datum/yocto/poky/meta/conf/bitbake.conf
DEBUG: LOAD /media/Datum/yocto/poky/meta-sa735/conf/layer.conf
DEBUG: Adding layer /media/Datum/yocto/poky/meta-sa735
DEBUG: LOAD /media/Datum/yocto/poky/meta/conf/layer.conf
DEBUG: Adding layer /media/Datum/yocto/poky/meta
DEBUG: LOAD /media/Datum/yocto/build_sa735/conf/bblayers.conf
DEBUG: Found bblayers.conf (/media/Datum/yocto/build_sa735/conf/bblayers.conf)
DEBUG: UI 'depexp' does not require extra cache!
DEBUG: Removed the following variables from the environment: GNOME_DESKTOP_SESSION_ID, XDG_DATA_HOME, WINDOWPATH, PROMPT_COMMAND, GNOME_KEYRING_CONTROL, PS3, HG, PS4, SHLVL, G_BROKEN_FILENAMES, WINDOWID, ORBIT_SOCKETDIR, BBFETCH2, XDG_CONFIG_HOME, XDG_CACHE_HOME, J2SDKDIR, QT_XFT, GDMSESSION, PKG_CONFIG_PATH, MOZ_PLUGIN_PATH, JAVA_HOME, XDG_CONFIG_DIRS, GTK_MODULES, GDM_LANG, BUILDDIR, J2REDIR, QTDIR

--=-ZquMiIMg0oX9KILAs0n0--
