Return-Path: <rohit.borse@einfochips.com>
Received: from out15.sjc.mx.trendmicro.com (out15.sjc.mx.trendmicro.com
	[216.99.131.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3F4CE002AC
	for <yocto@yoctoproject.org>; Wed,  5 Feb 2014 21:28:23 -0800 (PST)
Received: from relay07.sjc.mx.trendmicro.com (unknown [10.30.239.130])
	by out15.sjc.mx.trendmicro.com (Postfix) with ESMTP id 06468980484
	for <yocto@yoctoproject.org>; Thu,  6 Feb 2014 05:28:22 +0000 (UTC)
Received: from pune.einfochips.com (unknown [121.241.186.85])
	by relay07.sjc.mx.trendmicro.com (Postfix) with ESMTP id 5A03798041C
	for <yocto@yoctoproject.org>; Thu,  6 Feb 2014 05:28:20 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by pune.einfochips.com (Postfix) with ESMTP id B2A754DE0009
	for <yocto@yoctoproject.org>; Thu,  6 Feb 2014 11:17:08 +0530 (IST)
X-Virus-Scanned: amavisd-new at pune.einfochips.com
Received: from pune.einfochips.com ([127.0.0.1])
	by localhost (pune.einfochips.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id itJt1q62KhPm for <yocto@yoctoproject.org>;
	Thu,  6 Feb 2014 11:17:08 +0530 (IST)
Received: from [10.110.1.204] (unknown [10.110.1.204])
	by pune.einfochips.com (Postfix) with ESMTPSA id 32DA04DE0006
	for <yocto@yoctoproject.org>; Thu,  6 Feb 2014 11:17:06 +0530 (IST)
Message-ID: <52F31E1C.40808@einfochips.com>
Date: Thu, 06 Feb 2014 11:01:08 +0530
From: Rohit Borse <rohit.borse@einfochips.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto <yocto@yoctoproject.org>
X-TM-AS-Product-Ver: IMHS-1.0.0.1430-7.0.0.1014-20484.004
X-TM-AS-Result: No--11.9256-5.0-31-10
X-TM-AS-Result-Detail: Spam:No-Score:-11.9256-Baseline:ModeratelyHigh-Other:Lowest
X-TMASE-MatchedRID: hwtUKlde9zEOuBY41QkXu6wOh3D3JSTGfkuZtv/FS5rUMPKrRLOfYfRm
	0kmqtH+DhYuVpiZdXAKaVxA361Hfi7pOYBSjv0PMALBxQHkJtWrQhlAYqQREy0cTQWdpiE3Vrcm
	mD7/hK1995l0nVeyiuHxoE2XK1UNlNadDKhhc0dlREF8sTZqvXCq2rl3dzGQ1Am3ZQHwG2q6gER
	bpW42T/YVdTyYlhWvNEX7xDFVtY+hd44xSlhnE0A==
X-TM-Deliver-Signature: c88ed3492d445d189dc6d77671d9ede7
Subject: Error while building SDK
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
X-List-Received-Date: Thu, 06 Feb 2014 05:28:27 -0000
X-Groupsio-MsgNum: 18011
Content-Type: multipart/mixed; boundary="------------040403030107080100080304"

--------------040403030107080100080304
Content-Type: text/plain;
	charset="ISO-8859-1";
	format="flowed"
Content-Transfer-Encoding: 7bit

Dear Support Team,
I am using Ubuntu 12.04 on installed on Virtual Box. I want to build 
bluegiga SDK (version= bluegiga-sdk-sstate_5.0.0-beta10_apx4devkit.tgz). 
But when I am builind SDK for APx4 module, I am getting error from 
command below onwards.

1. source init-sdk-env - status succes
2. bitbake bluegiga-console-image - throws error as attached in below file.

Do let me know if SDK build is supported on Ubuntu on VirtualBox?

Regards,
Rohit Borse


---------------------------------------------------------------------------------------------
Notice: 
This message has been scanned by Trend Micro Mail Security scanner and is believed to be clean
---------------------------------------------------------------------------------------------

--------------040403030107080100080304
Content-Type: text/x-log;
 name="SDKbuildError.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="SDKbuildError.log"

 bitbake bluegiga-console-image
Pseudo is not present but is required, building this first before the main build
DEBUG: Removed the following variables from the environment: GNOME_DESKTOP_SESSION_ID, LESSOPEN, GNOME_KEYRING_CONTROL, XDG_SESSION_PATH, LANGUAGE, SHLVL, MANDATORY_PATH, WINDOWID, BBFETCH2, GDMSESSION, XDG_SEAT_PATH, LESSCLOSE, XDG_CURRENT_DESKTOP, BUILDDIR, XDG_CONFIG_DIRS, DEFAULTS_PATH, UBUNTU_MENUPROXY, LS_COLORS
DEBUG: Found bblayers.conf (/home/shrinivas/Downloads/bluegiga-sdk/build/conf/bblayers.conf)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/build/conf/bblayers.conf
DEBUG: Adding layer /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/layer.conf
DEBUG: Adding layer /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta-yocto
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta-yocto/conf/layer.conf
DEBUG: Adding layer /home/shrinivas/Downloads/bluegiga-sdk/yocto/../meta/bluegiga-bsp
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/../meta/bluegiga-bsp/conf/layer.conf
DEBUG: Adding layer /home/shrinivas/Downloads/bluegiga-sdk/yocto/../meta/bluegiga-distro
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/../meta/bluegiga-distro/conf/layer.conf
DEBUG: Adding layer /home/shrinivas/Downloads/bluegiga-sdk/yocto/../meta/bluegiga-binary-utils
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/../meta/bluegiga-binary-utils/conf/layer.conf
DEBUG: Adding layer /home/shrinivas/Downloads/bluegiga-sdk/yocto/../meta/bluegiga-examples
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/../meta/bluegiga-examples/conf/layer.conf
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/bitbake.conf
DEBUG: CONF conf/bitbake.conf:652: including conf/abi_version.conf
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/abi_version.conf
DEBUG: CONF conf/bitbake.conf:653: including conf/site.conf
DEBUG: CONF file 'conf/site.conf' not found
DEBUG: CONF conf/bitbake.conf:654: including conf/auto.conf
DEBUG: CONF file 'conf/auto.conf' not found
DEBUG: CONF conf/bitbake.conf:655: including conf/local.conf
DEBUG: LOAD conf/local.conf
DEBUG: CONF conf/bitbake.conf:656: including conf/build/i686-linux.conf
DEBUG: CONF file 'conf/build/i686-linux.conf' not found
DEBUG: CONF conf/bitbake.conf:657: including conf/target/INVALID-oe-linux.conf
DEBUG: CONF file 'conf/target/INVALID-oe-linux.conf' not found
DEBUG: CONF conf/bitbake.conf:658: including conf/machine/apx4devkit.conf
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/../meta/bluegiga-bsp/conf/machine/apx4devkit.conf
DEBUG: CONF /home/shrinivas/Downloads/bluegiga-sdk/yocto/../meta/bluegiga-bsp/conf/machine/apx4devkit.conf:28: including conf/machine/include/tune-arm926ejs.inc
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/tune-arm926ejs.inc: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/tune-arm926ejs.inc
DEBUG: CONF /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/tune-arm926ejs.inc:3: including conf/machine/include/arm/arch-armv5-dsp.inc
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/arm/arch-armv5-dsp.inc: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/arm/arch-armv5-dsp.inc
DEBUG: CONF /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/arm/arch-armv5-dsp.inc:3: including conf/machine/include/arm/arch-armv5.inc
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/arm/arch-armv5.inc: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/arm/arch-armv5.inc
DEBUG: CONF /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/arm/arch-armv5.inc:12: including conf/machine/include/arm/arch-armv4.inc
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/arm/arch-armv4.inc: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/arm/arch-armv4.inc
DEBUG: CONF /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/arm/arch-armv4.inc:9: including conf/machine/include/arm/arch-arm.inc
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/arm/arch-arm.inc: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/arm/arch-arm.inc
DEBUG: CONF /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/arm/arch-armv4.inc:10: including conf/machine/include/arm/feature-arm-thumb.inc
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/arm/feature-arm-thumb.inc: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/arm/feature-arm-thumb.inc
DEBUG: CONF /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/arm/arch-armv5.inc:13: including conf/machine/include/arm/feature-arm-vfp.inc
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/arm/feature-arm-vfp.inc: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/machine/include/arm/feature-arm-vfp.inc
DEBUG: CONF conf/bitbake.conf:659: including conf/machine-sdk/${SDKMACHINE}.conf
DEBUG: CONF file 'conf/machine-sdk/${SDKMACHINE}.conf' not found
DEBUG: CONF conf/bitbake.conf:660: including conf/distro/bluegiga.conf
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/../meta/bluegiga-distro/conf/distro/bluegiga.conf
DEBUG: CONF /home/shrinivas/Downloads/bluegiga-sdk/yocto/../meta/bluegiga-distro/conf/distro/bluegiga.conf:7: including conf/distro/include/distro_version.inc
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/../meta/bluegiga-distro/conf/distro/include/distro_version.inc: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/../meta/bluegiga-distro/conf/distro/include/distro_version.inc
DEBUG: CONF /home/shrinivas/Downloads/bluegiga-sdk/yocto/../meta/bluegiga-distro/conf/distro/bluegiga.conf:8: including conf/distro/include/software_versions.inc
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/../meta/bluegiga-distro/conf/distro/include/software_versions.inc: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/../meta/bluegiga-distro/conf/distro/include/software_versions.inc
DEBUG: CONF conf/bitbake.conf:661: including conf/distro/defaultsetup.conf
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/defaultsetup.conf
DEBUG: CONF /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/defaultsetup.conf:1: including conf/distro/include/default-providers.inc
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/include/default-providers.inc: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/include/default-providers.inc
DEBUG: CONF /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/defaultsetup.conf:2: including conf/distro/include/default-versions.inc
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/include/default-versions.inc: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/include/default-versions.inc
DEBUG: CONF /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/defaultsetup.conf:3: including conf/distro/include/default-distrovars.inc
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/include/default-distrovars.inc: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/include/default-distrovars.inc
DEBUG: CONF /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/defaultsetup.conf:4: including conf/distro/include/world-broken.inc
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/include/world-broken.inc: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/include/world-broken.inc
DEBUG: CONF /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/defaultsetup.conf:7: including conf/distro/include/tcmode-default.inc
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/include/tcmode-default.inc: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/include/tcmode-default.inc
DEBUG: CONF /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/include/tcmode-default.inc:59: including conf/distro/include/as-needed.inc
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/include/as-needed.inc: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/include/as-needed.inc
DEBUG: CONF /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/defaultsetup.conf:10: including conf/distro/include/tclibc-eglibc.inc
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/include/tclibc-eglibc.inc: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/distro/include/tclibc-eglibc.inc
DEBUG: CONF conf/bitbake.conf:662: including conf/documentation.conf
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/documentation.conf
DEBUG: CONF conf/bitbake.conf:663: including conf/sanity.conf
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/conf/sanity.conf
DEBUG: BB configuration INHERITs:0: inheriting classes/base.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/base.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/base.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/base.bbclass:3: inheriting classes/patch.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/patch.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/patch.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/patch.bbclass:8: inheriting classes/terminal.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/terminal.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/terminal.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/base.bbclass:4: inheriting classes/staging.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/staging.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/staging.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/base.bbclass:6: inheriting classes/mirrors.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/mirrors.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/mirrors.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/base.bbclass:7: inheriting classes/utils.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/utils.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/utils.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/base.bbclass:8: inheriting classes/utility-tasks.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/utility-tasks.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/utility-tasks.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/base.bbclass:9: inheriting classes/metadata_scm.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/metadata_scm.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/metadata_scm.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/base.bbclass:10: inheriting classes/logging.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/logging.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/logging.bbclass
DEBUG: BB configuration INHERITs:0: inheriting classes/package_ipk.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/package_ipk.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/package_ipk.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/package_ipk.bbclass:1: inheriting classes/package.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/package.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/package.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/package.bbclass:41: inheriting classes/packagedata.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/packagedata.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/packagedata.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/package.bbclass:42: inheriting classes/prserv.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/prserv.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/prserv.bbclass
DEBUG: BB configuration INHERITs:0: inheriting classes/buildstats.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/buildstats.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/buildstats.bbclass
DEBUG: BB configuration INHERITs:0: inheriting classes/image-mklibs.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/image-mklibs.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/image-mklibs.bbclass
DEBUG: BB configuration INHERITs:0: inheriting classes/image-prelink.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/image-prelink.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/image-prelink.bbclass
DEBUG: BB configuration INHERITs:0: inheriting classes/insane.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/insane.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/insane.bbclass
DEBUG: BB configuration INHERITs:0: inheriting classes/debian.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/debian.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/debian.bbclass
DEBUG: BB configuration INHERITs:0: inheriting classes/devshell.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/devshell.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/devshell.bbclass
DEBUG: BB configuration INHERITs:0: inheriting classes/sstate.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/sstate.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/sstate.bbclass
DEBUG: BB configuration INHERITs:0: inheriting classes/license.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/license.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/license.bbclass
DEBUG: BB configuration INHERITs:0: inheriting classes/sanity.bbclass
DEBUG: BB /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/sanity.bbclass: handle(data, include)
DEBUG: LOAD /home/shrinivas/Downloads/bluegiga-sdk/yocto/meta/classes/sanity.bbclass
DEBUG: Clearing SRCREV cache due to cache policy of: clear
ERROR: Error parsing configuration files
Traceback (most recent call last):
  File "/home/shrinivas/Downloads/bluegiga-sdk/yocto/bitbake/lib/bb/cooker.py", line 197, in BBCooker.loadConfigurationData():
                 self.parseConfigurationFiles(self.configuration.prefile,
    >                                         self.configuration.postfile)
             except SyntaxError:
  File "/home/shrinivas/Downloads/bluegiga-sdk/yocto/bitbake/lib/bb/cooker.py", line 870, in BBCooker.parseConfigurationFiles(prefiles=[], postfiles=[]):
             if data.getVar("BB_WORKERCONTEXT", False) is None:
    >            bb.fetch.fetcher_init(data)
             bb.codeparser.parser_cache_init(data)
  File "/home/shrinivas/Downloads/bluegiga-sdk/yocto/bitbake/lib/bb/fetch2/__init__.py", line 228, in fetcher_init(d=<bb.data_smart.DataSmart object at 0x8faf8cc>):
                 pass
    >        revs.clear()
         else:
  File "/home/shrinivas/Downloads/bluegiga-sdk/yocto/bitbake/lib/bb/persist_data.py", line 142, in SQLTable.clear():
         def clear(self):
    >        self._execute("DELETE FROM %s;" % self.table)
     
  File "/home/shrinivas/Downloads/bluegiga-sdk/yocto/bitbake/lib/bb/persist_data.py", line 66, in SQLTable._execute(*query=('DELETE FROM BB_URI_HEADREVS;',)):
                 try:
    >                return self.cursor.execute(*query)
                 except sqlite3.OperationalError as exc:
OperationalError: attempt to write a readonly database


--------------040403030107080100080304--
