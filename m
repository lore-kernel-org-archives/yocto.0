Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6EFE14C80287
	for <yocto@yoctoproject.org>; Wed,  3 Nov 2010 03:24:16 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn7 with SMTP id 7so484541iwn.35
	for <yocto@yoctoproject.org>; Wed, 03 Nov 2010 01:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type;
	bh=amtf/JNQYL8410vKSMIpCvwIV1tHO1xBqO6GS4UayCA=;
	b=EhwOFm01GPUEcvMFN/tBK2Jhfb/ZV2Io8jz/4orixysjBu72PhdOx7csUKm+g+3Qhh
	VAAYYDNfwgKKWkZBhpDvLjQtMYMDn09bzBWGS1MIazr0UW2DKk3Vd57OsIcQOyNIKlbN
	4pNNvbXLV6RK8GiSo+roZek0mTk796EIZjOKs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=GeIcV3gNLhJRtV3q08p96SugtFXjDuEh27MucIWY9/7OLCeFBbfFVihvnJHz1Bqqpq
	I9LYNmXtq/Y8YwTsTLNIq7zvMnwpl3RgmLAKOYJpgzeGxXVbQrW4Vd5n6qAoHQuBhmY8
	3OYTwWMZoX6T1bmdoEk4CERUrntzctx30PXiQ=
MIME-Version: 1.0
Received: by 10.42.230.65 with SMTP id jl1mr1028601icb.134.1288772655195; Wed,
	03 Nov 2010 01:24:15 -0700 (PDT)
Received: by 10.231.40.13 with HTTP; Wed, 3 Nov 2010 01:24:15 -0700 (PDT)
Date: Wed, 3 Nov 2010 09:24:15 +0100
Message-ID: <AANLkTi=p0jSowGAVwNrixt67hDR105fgkmJyRE-Eq0yd@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org
Subject: some yocto/poky issues and errors
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Nov 2010 08:24:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

Dear all,

Not sure whether I should sent this here or to the poky ML. Trying
here first, fee free to forward/redirect.

After my initial success of building poky 4.0 with the delivered
config, I decided to try to add my own layer (with some private
recipes), meanwhile also switching to MACHINE = "beagleboard". These
recipes build under OE.
In order to get things parsing I had to rework a few legacy staging
things (no big deal).

Also I got an error:
NOTE: Handling BitBake files: - (0053/0886) [ 5 %]NOTE: Error
expanding variable do_package
ERROR: string index out of range while parsing
/home/frans/yocto/poky-laverne-4.0/tv.axon.openembedded.2010/recipes/linux/linux-factory-sygtd1_2.6.34.bb

For now I removed the do_package function. No idea if that is sound.

After doing so the parsing goes well but I get an interesting
traceback, even if no recipe is given. See the log below.
I suspect this is because a var is referenced somewhere but the var is
not initialised. Guess this should not happen.
Then again my pythonese is not good enough to diagnose this.
Any suggestion is appreciated (meanwhile I'll try to use bisecting to
find the cause).

Best regards, Frans

frans@frans-desktop:~/yocto/poky-laverne-4.0$ bitbake -v -v -v -D -D -D
DEBUG: Removed the following variables from the environment:
GDM_KEYBOARD_LAYOUT, GNOME_DESKTOP_SESSION_ID, LESSOPEN, CVS_RSH,
GNOME_KEYRING_CONTROL, SPEECHD_PORT, SHLVL, MANDATORY_PATH, WINDOWID,
CVSROOT, GDMSESSION, LESSCLOSE, ORBIT_SOCKETDIR, GTK_MODULES,
HISTIGNORE, XDG_CONFIG_DIRS, DEFAULTS_PATH, OLDPWD, GDM_LANG,
HISTCONTROL, BUILDDIR, OE_TOPDIR, LS_COLORS
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/conf/bitbake.conf
DEBUG: CONF conf/bitbake.conf:637: including conf/site.conf
DEBUG: CONF file 'conf/site.conf' not found
DEBUG: CONF conf/bitbake.conf:638: including conf/auto.conf
DEBUG: CONF file 'conf/auto.conf' not found
DEBUG: CONF conf/bitbake.conf:639: including conf/local.conf
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/tv.axon.openembedded.gtd100/conf/local.conf
DEBUG: CONF conf/bitbake.conf:640: including conf/build/x86_64-linux.conf
DEBUG: CONF file 'conf/build/x86_64-linux.conf' not found
DEBUG: CONF conf/bitbake.conf:641: including conf/target/INVALID-INVALID.conf
DEBUG: CONF file 'conf/target/INVALID-INVALID.conf' not found
DEBUG: CONF conf/bitbake.conf:642: including conf/machine/beagleboard.conf
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/conf/machine/beagleboard.conf
DEBUG: CONF /home/frans/yocto/poky-laverne-4.0/meta/conf/machine/beagleboard.conf:17:
including conf/machine/include/tune-cortexa8.inc
DEBUG: BB /home/frans/yocto/poky-laverne-4.0/meta/conf/machine/include/tune-cortexa8.inc:
handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/conf/machine/include/tune-cortexa8.inc
DEBUG: CONF conf/bitbake.conf:643: including conf/machine-sdk/${SDKMACHINE}.conf
DEBUG: CONF file 'conf/machine-sdk/${SDKMACHINE}.conf' not found
DEBUG: CONF conf/bitbake.conf:644: including conf/distro/poky.conf
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/poky.conf
DEBUG: CONF /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/poky.conf:57:
including conf/distro/include/poky-default.inc
DEBUG: BB /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/include/poky-default.inc:
handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/include/poky-default.inc
DEBUG: CONF /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/include/poky-default.inc:52:
including conf/distro/include/as-needed.inc
DEBUG: BB /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/include/as-needed.inc:
handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/include/as-needed.inc
DEBUG: CONF /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/poky.conf:60:
including conf/distro/include/poky-eglibc.inc
DEBUG: BB /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/include/poky-eglibc.inc:
handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/include/poky-eglibc.inc
DEBUG: CONF /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/poky.conf:95:
including conf/distro/include/poky-fixed-revisions.inc
DEBUG: BB /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/include/poky-fixed-revisions.inc:
handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/include/poky-fixed-revisions.inc
DEBUG: CONF /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/poky.conf:96:
including conf/distro/include/preferred-xorg-versions.inc
DEBUG: BB /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/include/preferred-xorg-versions.inc:
handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/include/preferred-xorg-versions.inc
DEBUG: CONF /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/poky.conf:139:
including conf/distro/include/world-broken.inc
DEBUG: BB /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/include/world-broken.inc:
handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/include/world-broken.inc
DEBUG: CONF /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/poky.conf:140:
including conf/distro/include/distro_tracking_fields.inc
DEBUG: BB /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/include/distro_tracking_fields.inc:
handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/conf/distro/include/distro_tracking_fields.inc
DEBUG: CONF conf/bitbake.conf:645: including conf/documentation.conf
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/conf/documentation.conf
DEBUG: CONF conf/bitbake.conf:646: including conf/sanity.conf
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/conf/sanity.conf
DEBUG: CONF conf/bitbake.conf:647: including conf/abi_version.conf
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/conf/abi_version.conf
DEBUG: BB classes/base.bbclass: handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/classes/base.bbclass
DEBUG: BB :0: inheriting classes/patch.bbclass
DEBUG: BB /home/frans/yocto/poky-laverne-4.0/meta/classes/patch.bbclass:
handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/classes/patch.bbclass
DEBUG: BB :0: inheriting classes/staging.bbclass
DEBUG: BB /home/frans/yocto/poky-laverne-4.0/meta/classes/staging.bbclass:
handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/classes/staging.bbclass
DEBUG: BB :0: inheriting classes/mirrors.bbclass
DEBUG: BB /home/frans/yocto/poky-laverne-4.0/meta/classes/mirrors.bbclass:
handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/classes/mirrors.bbclass
DEBUG: BB :0: inheriting classes/utils.bbclass
DEBUG: BB /home/frans/yocto/poky-laverne-4.0/meta/classes/utils.bbclass:
handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/classes/utils.bbclass
DEBUG: BB :0: inheriting classes/utility-tasks.bbclass
DEBUG: BB /home/frans/yocto/poky-laverne-4.0/meta/classes/utility-tasks.bbclass:
handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/classes/utility-tasks.bbclass
DEBUG: BB :0: inheriting classes/metadata_scm.bbclass
DEBUG: BB /home/frans/yocto/poky-laverne-4.0/meta/classes/metadata_scm.bbclass:
handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/classes/metadata_scm.bbclass
DEBUG: BB classes/devshell.bbclass: handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/classes/devshell.bbclass
DEBUG: BB classes/package_ipk.bbclass: handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/classes/package_ipk.bbclass
DEBUG: BB :0: inheriting classes/package.bbclassmachine
DEBUG: BB /home/frans/yocto/poky-laverne-4.0/meta/classes/package.bbclass:
handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/classes/package.bbclass
DEBUG: BB :0: inheriting classes/packagedata.bbclass
DEBUG: BB /home/frans/yocto/poky-laverne-4.0/meta/classes/packagedata.bbclass:
handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/classes/packagedata.bbclass
DEBUG: BB classes/debian.bbclass: handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/classes/debian.bbclass
DEBUG: BB classes/poky.bbclass: handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/classes/poky.bbclass
DEBUG: BB classes/devshell.bbclass: handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/classes/devshell.bbclass
DEBUG: BB classes/insane.bbclass: handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/classes/insane.bbclass
DEBUG: BB classes/sstate.bbclass: handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/classes/sstate.bbclass
DEBUG: BB classes/sanity.bbclass: handle(data, include)
DEBUG: LOAD /home/frans/yocto/poky-laverne-4.0/meta/classes/sanity.bbclass
DEBUG: Using '${OE_TOPDIR}/tmp/cache/bb_persist_data.sqlite3' as the
persistent data cache
DEBUG: Clearing SRCREV cache due to cache policy of: clear
DEBUG: mkdirhier(${OE_TOPDIR}/tmp/cache)
DEBUG: Using cache in '${OE_TOPDIR}/tmp/cache/bb_codeparser.dat' for
codeparser cache
FATAL: Traceback (most recent call last):
  File "/home/frans/yocto/poky-laverne-4.0/scripts/..//bitbake//bin/bitbake",
line 216, in <module>
    ret = main()
  File "/home/frans/yocto/poky-laverne-4.0/scripts/..//bitbake//bin/bitbake",
line 177, in main
    cooker = bb.cooker.BBCooker(configuration, server)
  File "/home/frans/yocto/poky-laverne-4.0/scripts/..//bitbake/lib/bb/cooker.py",
line 85, in __init__
    self.parseConfigurationFiles(self.configuration.file)
  File "/home/frans/yocto/poky-laverne-4.0/scripts/..//bitbake/lib/bb/cooker.py",
line 555, in parseConfigurationFiles
    bb.event.fire(bb.event.ConfigParsed(), self.configuration.data)
  File "/home/frans/yocto/poky-laverne-4.0/scripts/..//bitbake/lib/bb/event.py",
line 98, in fire
    fire_class_handlers(event, d)
  File "/home/frans/yocto/poky-laverne-4.0/scripts/..//bitbake/lib/bb/event.py",
line 68, in fire_class_handlers
    ret = bb.utils.better_eval("tmpHandler(e)", locals)
  File "/home/frans/yocto/poky-laverne-4.0/scripts/..//bitbake/lib/bb/utils.py",
line 373, in better_eval
    return eval(source, _context, locals)
  File "<string>", line 1, in <module>
AttributeError: 'NoneType' object has no attribute 'find'

