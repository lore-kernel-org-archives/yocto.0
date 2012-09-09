Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab01.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C320E0145F
	for <yocto@yoctoproject.org>; Sat,  8 Sep 2012 17:00:54 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 35EBC40B24; Sun,  9 Sep 2012 00:00:54 +0000 (UTC)
Date: Sun, 9 Sep 2012 00:00:54 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20120909000054.GA10766@ab01.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-12-10)
Subject: Warning! Some failures happened on pkg-report system!
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
X-List-Received-Date: Sun, 09 Sep 2012 00:00:54 -0000
X-Groupsio-MsgNum: 9245
Content-Type: multipart/mixed; boundary="tThc/1wpZn/ma/RB"
Content-Disposition: inline

--tThc/1wpZn/ma/RB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=46rom git://git.yoctoproject.org/poky-contrib
 * [new branch]      stage/master_under_test -> stage
Pseudo is not present but is required, building this first before the main =
build
DEBUG: Removed the following variables from the environment: _, WebHome, BU=
ILDDIR, LogRestore, LogHome, ConfigFile, PokyHome, FunctionHome, SHLVL, BBF=
ETCH2, Log
DEBUG: UI 'knotty' does not require extra cache!
DEBUG: Found bblayers.conf (/srv/www/vhosts/packages.yoctoproject.org/pkg-r=
eport/poky/build/conf/bblayers.conf)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/bblayers.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/layer.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta-yocto
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/layer.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta-yocto-bsp
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto-bsp/conf/layer.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/bitbake.conf
DEBUG: CONF conf/bitbake.conf:672: including conf/abi_version.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/abi_version.conf
DEBUG: CONF conf/bitbake.conf:673: including conf/site.conf
DEBUG: CONF file 'conf/site.conf' not found
DEBUG: CONF conf/bitbake.conf:674: including conf/auto.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:2: including conf/distro/include/recipe_color.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/recipe_color.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/recipe_color.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:3: including conf/distro/include/distro_alias.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/distro_alias.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/distro_alias.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:4: including conf/distro/include/maintainers.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/maintainers.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/maintainers.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:5: including conf/distro/include/upstream_tracking.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/upstream_tracking.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/upstream_tracking.inc
ERROR: Unable to parse conf/bitbake.conf: ParseError at /srv/www/vhosts/pac=
kages.yoctoproject.org/pkg-report/poky/meta-yocto/conf/distro/include/upstr=
eam_tracking.inc:1098: unparsed line: 'CHECK_DATE_pn-poppler-data "Aug 31,2=
012"'
DEBUG: Removed the following variables from the environment: _, WebHome, BU=
ILDDIR, LogRestore, LogHome, ConfigFile, PokyHome, FunctionHome, SHLVL, BBF=
ETCH2, Log
DEBUG: UI 'knotty' does not require extra cache!
DEBUG: Found bblayers.conf (/srv/www/vhosts/packages.yoctoproject.org/pkg-r=
eport/poky/build/conf/bblayers.conf)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/bblayers.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/layer.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta-yocto
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/layer.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta-yocto-bsp
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto-bsp/conf/layer.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/bitbake.conf
DEBUG: CONF conf/bitbake.conf:672: including conf/abi_version.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/abi_version.conf
DEBUG: CONF conf/bitbake.conf:673: including conf/site.conf
DEBUG: CONF file 'conf/site.conf' not found
DEBUG: CONF conf/bitbake.conf:674: including conf/auto.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:2: including conf/distro/include/recipe_color.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/recipe_color.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/recipe_color.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:3: including conf/distro/include/distro_alias.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/distro_alias.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/distro_alias.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:4: including conf/distro/include/maintainers.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/maintainers.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/maintainers.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:5: including conf/distro/include/upstream_tracking.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/upstream_tracking.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/upstream_tracking.inc
ERROR: Unable to parse conf/bitbake.conf: ParseError at /srv/www/vhosts/pac=
kages.yoctoproject.org/pkg-report/poky/meta-yocto/conf/distro/include/upstr=
eam_tracking.inc:1098: unparsed line: 'CHECK_DATE_pn-poppler-data "Aug 31,2=
012"'
Pseudo is not present but is required, building this first before the main =
build
DEBUG: Removed the following variables from the environment: _, WebHome, BU=
ILDDIR, LogRestore, LogHome, ConfigFile, PokyHome, FunctionHome, SHLVL, BBF=
ETCH2, Log
DEBUG: UI 'knotty' does not require extra cache!
DEBUG: Found bblayers.conf (/srv/www/vhosts/packages.yoctoproject.org/pkg-r=
eport/poky/build/conf/bblayers.conf)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/bblayers.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/layer.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta-yocto
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/layer.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta-yocto-bsp
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto-bsp/conf/layer.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/bitbake.conf
DEBUG: CONF conf/bitbake.conf:672: including conf/abi_version.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/abi_version.conf
DEBUG: CONF conf/bitbake.conf:673: including conf/site.conf
DEBUG: CONF file 'conf/site.conf' not found
DEBUG: CONF conf/bitbake.conf:674: including conf/auto.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:2: including conf/distro/include/recipe_color.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/recipe_color.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/recipe_color.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:3: including conf/distro/include/distro_alias.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/distro_alias.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/distro_alias.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:4: including conf/distro/include/maintainers.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/maintainers.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/maintainers.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:5: including conf/distro/include/upstream_tracking.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/upstream_tracking.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/upstream_tracking.inc
ERROR: Unable to parse conf/bitbake.conf: ParseError at /srv/www/vhosts/pac=
kages.yoctoproject.org/pkg-report/poky/meta-yocto/conf/distro/include/upstr=
eam_tracking.inc:1098: unparsed line: 'CHECK_DATE_pn-poppler-data "Aug 31,2=
012"'
DEBUG: Removed the following variables from the environment: _, WebHome, BU=
ILDDIR, LogRestore, LogHome, ConfigFile, PokyHome, FunctionHome, SHLVL, BBF=
ETCH2, Log
DEBUG: UI 'knotty' does not require extra cache!
DEBUG: Found bblayers.conf (/srv/www/vhosts/packages.yoctoproject.org/pkg-r=
eport/poky/build/conf/bblayers.conf)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/bblayers.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/layer.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta-yocto
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/layer.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta-yocto-bsp
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto-bsp/conf/layer.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/bitbake.conf
DEBUG: CONF conf/bitbake.conf:672: including conf/abi_version.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/abi_version.conf
DEBUG: CONF conf/bitbake.conf:673: including conf/site.conf
DEBUG: CONF file 'conf/site.conf' not found
DEBUG: CONF conf/bitbake.conf:674: including conf/auto.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:2: including conf/distro/include/recipe_color.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/recipe_color.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/recipe_color.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:3: including conf/distro/include/distro_alias.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/distro_alias.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/distro_alias.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:4: including conf/distro/include/maintainers.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/maintainers.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/maintainers.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:5: including conf/distro/include/upstream_tracking.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/upstream_tracking.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/upstream_tracking.inc
ERROR: Unable to parse conf/bitbake.conf: ParseError at /srv/www/vhosts/pac=
kages.yoctoproject.org/pkg-report/poky/meta-yocto/conf/distro/include/upstr=
eam_tracking.inc:1098: unparsed line: 'CHECK_DATE_pn-poppler-data "Aug 31,2=
012"'
Pseudo is not present but is required, building this first before the main =
build
DEBUG: Removed the following variables from the environment: _, WebHome, BU=
ILDDIR, LogRestore, LogHome, ConfigFile, PokyHome, FunctionHome, SHLVL, BBF=
ETCH2, Log
DEBUG: UI 'knotty' does not require extra cache!
DEBUG: Found bblayers.conf (/srv/www/vhosts/packages.yoctoproject.org/pkg-r=
eport/poky/build/conf/bblayers.conf)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/bblayers.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/layer.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta-yocto
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/layer.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta-yocto-bsp
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto-bsp/conf/layer.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/bitbake.conf
DEBUG: CONF conf/bitbake.conf:672: including conf/abi_version.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/abi_version.conf
DEBUG: CONF conf/bitbake.conf:673: including conf/site.conf
DEBUG: CONF file 'conf/site.conf' not found
DEBUG: CONF conf/bitbake.conf:674: including conf/auto.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:2: including conf/distro/include/recipe_color.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/recipe_color.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/recipe_color.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:3: including conf/distro/include/distro_alias.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/distro_alias.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/distro_alias.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:4: including conf/distro/include/maintainers.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/maintainers.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/maintainers.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:5: including conf/distro/include/upstream_tracking.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/upstream_tracking.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/upstream_tracking.inc
ERROR: Unable to parse conf/bitbake.conf: ParseError at /srv/www/vhosts/pac=
kages.yoctoproject.org/pkg-report/poky/meta-yocto/conf/distro/include/upstr=
eam_tracking.inc:1098: unparsed line: 'CHECK_DATE_pn-poppler-data "Aug 31,2=
012"'
DEBUG: Removed the following variables from the environment: _, WebHome, BU=
ILDDIR, LogRestore, LogHome, ConfigFile, PokyHome, FunctionHome, SHLVL, BBF=
ETCH2, Log
DEBUG: UI 'knotty' does not require extra cache!
DEBUG: Found bblayers.conf (/srv/www/vhosts/packages.yoctoproject.org/pkg-r=
eport/poky/build/conf/bblayers.conf)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/bblayers.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/layer.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta-yocto
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/layer.conf
DEBUG: Adding layer /srv/www/vhosts/packages.yoctoproject.org/pkg-report/po=
ky/meta-yocto-bsp
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto-bsp/conf/layer.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/bitbake.conf
DEBUG: CONF conf/bitbake.conf:672: including conf/abi_version.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta/=
conf/abi_version.conf
DEBUG: CONF conf/bitbake.conf:673: including conf/site.conf
DEBUG: CONF file 'conf/site.conf' not found
DEBUG: CONF conf/bitbake.conf:674: including conf/auto.conf
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:2: including conf/distro/include/recipe_color.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/recipe_color.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/recipe_color.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:3: including conf/distro/include/distro_alias.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/distro_alias.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/distro_alias.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:4: including conf/distro/include/maintainers.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/maintainers.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/maintainers.inc
DEBUG: CONF /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/build=
/conf/auto.conf:5: including conf/distro/include/upstream_tracking.inc
DEBUG: BB /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-yo=
cto/conf/distro/include/upstream_tracking.inc: handle(data, include)
DEBUG: LOAD /srv/www/vhosts/packages.yoctoproject.org/pkg-report/poky/meta-=
yocto/conf/distro/include/upstream_tracking.inc
ERROR: Unable to parse conf/bitbake.conf: ParseError at /srv/www/vhosts/pac=
kages.yoctoproject.org/pkg-report/poky/meta-yocto/conf/distro/include/upstr=
eam_tracking.inc:1098: unparsed line: 'CHECK_DATE_pn-poppler-data "Aug 31,2=
012"'
Traceback (most recent call last):
  File "lastchktime_to_log.py", line 50, in <module>
    chktime =3D date(chktime[0],chktime[1],chktime[2])
TypeError: an integer is required
REPORT-SYSTEM-UPDATE ERROR: Run lastchktime_to_log.py faild!
Now updating daily_check database, please wait for a minute......
Now updating pkginfotable,please wait a minute........
['Package', 'Version', 'Upver', 'License', 'Section', 'Home', 'Release', 'D=
epends', 'BugTracker', 'PE', 'Description', 'Status', 'Tracking', 'URI', 'M=
AINTAINER']
['lsbsetup', '1.0', 'INVALID', 'GPLv2', 'console/utils', 'unknown', 'r4', '=
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  ', 'None', 'None', 'auto-setup environment for lsb test', 'MATCH', '0.=
9', 'file://LSB_Setup.sh', 'Yi Zhao <yi.zhao@windriver.com>']
['lsbtest', '1.0', 'INVALID', 'GPLv2', 'console/utils', 'unknown', 'r1', ' =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  ', 'None', 'None', 'automate test for lsb', 'MATCH', '1.0', 'file://LSB=
_Test.sh', 'Yi Zhao <yi.zhao@windriver.com>']
['tiny-init', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r1', ' virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'N=
one', 'None', 'Basic init system for poky-tiny', 'MATCH', 'N/A', 'file://in=
it', 'None']
['lsbinitscripts', '9.03', '9.03', 'GPLv2', 'base', 'unknown', 'r3', ' virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
popt glib-2.0', 'None', 'None', 'SysV init scripts which only is used in an=
 LSB image', 'MATCH', 'N/A', 'http://pkgs.fedoraproject.org/repo/pkgs/inits=
cripts/initscripts-9.03.tar.bz2/668fa2762b57ef75436303857847bba3/initscript=
s-9.03.tar.bz2', 'None']
['pigz', '2.2.5', '2.2.5', 'Zlib', 'console/utils', 'http://zlib.net/pigz/'=
, 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  zlib', 'None', 'None', 'pigz, which stands for parallel imple=
mentation of gzip, is a fully functional replacement for gzip that exploits=
 multiple processors and multiple cores to the hilt when compressing data. =
pigz was written by Mark Adler, and uses the zlib and pthread libraries.', =
'MATCH', 'N/A', 'http://zlib.net/pigz/pigz-2.2.5.tar.gz', 'None']
['cracklib', '2.8.19', 'N/A', 'LGPLv2.1+', 'base', 'http://sourceforge.net/=
projects/cracklib', 'r0', 'autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib', '=
None', 'None', 'A pro-active password checker library', 'ErrParseDir:/crack=
lib/:-:cracklib-2.8.19.tar.gz:downloads.sourceforge.net/cracklib/cracklib-2=
=2E8.19.tar.gz', '2.8.19', 'http://downloads.sourceforge.net/cracklib/crack=
lib-2.8.19.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['gawk', '4.0.1', '4.0.1', 'GPLv3', 'console/utils', 'www.gnu.org/software/=
gawk', 'r1', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'bug-gawk@gnu.org'=
, 'None', 'A program that you can use to select particular records in a fil=
e and perform operations upon them.', 'MATCH', '4.0.0', 'ftp://ftp.gnu.org/=
gnu/gawk/gawk-4.0.1.tar.gz', 'Radu Moisan <radu.moisan@intel.com>']
['cpio', '2.11', '2.11', 'GPLv3', 'base', 'http://www.gnu.org/software/cpio=
/', 'r3', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  texinfo-native', 'None',=
 'None', 'GNU cpio is a tool for creating and extracting archives, or copyi=
ng files from one place to another. It handles a number of cpio formats as =
well as reading and writing tar files.', 'MATCH', '2.11', 'ftp://ftp.gnu.or=
g/gnu/cpio/cpio-2.11.tar.gz', 'Scott Garman <scott.a.garman@intel.com>']
['bash', '4.2', '4.2', 'GPLv3+', 'base/shell', 'http://cnswww.cns.cwru.edu/=
~chet/bash/bashtop.html', 'r4', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  nc=
urses bison-native', 'None', 'None', 'An sh-compatible command language int=
erpreter.', 'MATCH', '4.1', 'ftp://ftp.gnu.org/gnu/bash/bash-4.2.tar.gz;nam=
e=3Dtarball', 'Saul Wold <sgw@linux.intel.com>']
['nativesdk-bash', '4.2', '4.2', 'GPLv3+', 'base/shell', 'http://cnswww.cns=
=2Ecwru.edu/~chet/bash/bashtop.html', 'r4', 'autoconf-native automake-nativ=
e libtool-native gnu-config-native virtual/nativesdk-gettext gettext-native=
 virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-lin=
ux-compilerlibs virtual/nativesdk-libc nativesdk-ncurses bison-native', 'No=
ne', 'None', 'An sh-compatible command language interpreter.', 'MATCH', 'N/=
A', 'ftp://ftp.gnu.org/gnu/bash/bash-4.2.tar.gz;name=3Dtarball', 'None']
['zypper', '1.5.3-git1+2c5bb6ceb99ecd950ef993e43d77bf0569ea0582', '11.0', '=
GPLv2+', 'base', 'http://gitorious.org/opensuse/zypper', 'r3', 'autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  li=
bzypp augeas  cmake-native ', 'None', 'None', 'The ZYpp Linux Software mana=
gement framework', 'UPDATE', 'git', 'git://github.com/openSUSE/zypper.git;p=
rotocol=3Dgit', 'Mark Hatle <mark.hatle@windriver.com>']
['psmisc', '22.19', 'N/A', 'GPLv2', 'base', 'unknown', 'r0', 'autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native virtual/g=
ettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ncurses virtual/libintl', 'None', 'None', 'The p=
smisc package contains utilities for managing processes on your system: pst=
ree, killall and fuser.  The pstree command displays a tree structure of al=
l of the running processes on your system.  The killall command sends a spe=
cified signal (SIGTERM if nothing is specified) to processes identified by =
name.  The fuser command identifies the PIDs of processes that are using sp=
ecified files or filesystems.', 'ErrParseDir:/psmisc/:-:psmisc-22.19.tar.gz=
:downloads.sourceforge.net/psmisc/psmisc-22.19.tar.gz', '22.19', 'http://do=
wnloads.sourceforge.net/psmisc/psmisc-22.19.tar.gz', 'Saul Wold <sgw@linux.=
intel.com>']
['lsb', '4.1', 'N/A', 'GPLv2+', 'console/utils', 'http://prdownloads.source=
forge.net/lsb', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'None', 'None', 'LSB support for OpenEmbedde=
d', 'ErrParseDir:/project/lsb/lsb_release/1.4/:1.4:lsb-release-1.4.tar.gz:d=
ownloads.sourceforge.net/project/lsb/lsb_release/1.4/lsb-release-1.4.tar.gz=
', '4.1', 'http://downloads.sourceforge.net/project/lsb/lsb_release/1.4/lsb=
-release-1.4.tar.gz', 'Yi Zhao <yi.zhao@windriver.com>']
['foomatic-filters', '4.0.17', '4.0.17', 'GPLv2+', 'base', 'unknown', 'r0',=
 'autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc   cups perl libxml2', 'None', 'None', 'Foomatic is a printer data=
base designed to make it easier to set up common printers for use with UNIX=
-like operating systems.It provides the "glue" between a print spooler (lik=
e CUPS or lpr) and the printer, by processing files sent to the printer.  T=
his package consists of filters used by the printer spoolers to convert the=
 incoming PostScript data into the printer\'s native format using a printer=
-specific, but spooler-independent PPD file. ', 'MATCH', 'N/A', 'http://www=
=2Eopenprinting.org/download/foomatic/foomatic-filters-4.0.17.tar.gz', 'Sau=
l Wold <sgw@linux.intel.com>']
['sysklogd', '1.5', '1.5', 'GPLv2+ & BSD', 'base', 'http://www.infodrom.org=
/projects/sysklogd/', 'r7', ' virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc   update-rc.d update-rc.d-native', 'None',=
 'None', 'The sysklogd package implements two system log daemons: syslogd, =
klogd', 'MATCH', '1.5', 'http://www.infodrom.org/projects/sysklogd/download=
/sysklogd-1.5.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['shadow-securetty', '4.1.4.3', 'INVALID', 'MIT', 'base utils', 'unknown', =
'r1', ' ', 'None', 'None', 'Provider of the machine specific securetty file=
', 'MATCH', 'N/A', 'file://securetty', 'Scott Garman <scott.a.garman@intel.=
com>']
['lighttpd', '1.4.31', '1.4.31', 'BSD', 'net', 'http://www.lighttpd.net/', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib libpcr=
e update-rc.d-native', 'http://redmine.lighttpd.net/projects/lighttpd/issue=
s', 'None', 'Lightweight high-performance web server', 'MATCH', '1.4.29', '=
http://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.31.tar.bz=
2', 'Valentin Popa <valentin.popa@intel.com>']
['shadow-sysroot', '4.1.4.3', 'INVALID', 'BSD | Artistic-1.0', 'base utils'=
, 'http://pkg-shadow.alioth.debian.org', 'r3', ' virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  base-passwd', 'https:/=
/alioth.debian.org/tracker/?group_id=3D30580', 'None', 'Shadow utils requir=
ements for useradd.bbclass', 'MATCH', 'N/A', 'file://login.defs_shadow-sysr=
oot', 'None']
['groff', '1.20.1', '1.21', 'GPLv2', 'base', 'ftp://ftp.gnu.org/gnu/groff/'=
, 'r2', 'autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  groff-native', 'None', 'None', 'The groff (GNU troff) sof=
tware is a typesetting package which reads plain text mixed with formatting=
 commands and produces formatted output.', 'UPDATE', '1.21', 'ftp://ftp.gnu=
=2Eorg/gnu/groff/groff-1.20.1.tar.gz', 'None']
['mktemp', '1.7', '1.7', 'ISC', 'console/utils', 'http://www.mktemp.org/', =
'r3', 'autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  ', 'http://www.mktemp.org/bugs', 'None', 'Allow safe tempor=
ary file creation from shell scripts.', 'MATCH', '1.7', 'ftp://ftp.mktemp.o=
rg/pub/mktemp/mktemp-1.7.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['groff-native', '1.20.1', '1.21', 'GPLv2', 'base', 'ftp://ftp.gnu.org/gnu/=
groff/', 'r2', 'autoconf-native automake-native libtool-native gnu-config-n=
ative  ', 'None', 'None', 'The groff (GNU troff) software is a typesetting =
package which reads plain text mixed with formatting commands and produces =
formatted output.', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/groff/groff-1.2=
0.1.tar.gz', 'None']
['libpam', '1.1.6', '1.1.6', 'GPLv2+ | BSD', 'base', 'https://fedorahosted.=
org/linux-pam/', 'r1', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bison flex =
flex-native cracklib', 'https://fedorahosted.org/linux-pam/newticket', 'Non=
e', 'Linux-PAM (Pluggable Authentication Modules for Linux), a flexible mec=
hanism for authenticating users', 'MATCH', '1.1.5', 'http://linux-pam.org/l=
ibrary/Linux-PAM-1.1.6.tar.bz2', 'Scott Garman <scott.a.garman@intel.com>']
['shadow', '4.1.4.3', '4.1.5.1', 'BSD | Artistic-1.0', 'base utils', 'http:=
//pkg-shadow.alioth.debian.org', 'r12', 'autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  ', 'https://alioth.debian.org/tracker/?group_id=3D30580', 'None', 'To=
ols to change and administer password and group data', 'UPDATE', '4.1.4.3',=
 'http://pkg-shadow.alioth.debian.org/releases/shadow-4.1.4.3.tar.bz2', 'Sc=
ott Garman <scott.a.garman@intel.com>']
['shadow-native', '4.1.4.3', '4.1.5.1', 'BSD | Artistic-1.0', 'base utils',=
 'http://pkg-shadow.alioth.debian.org', 'r7', 'autoconf-native automake-nat=
ive libtool-native gnu-config-native gettext-minimal-native  ', 'https://al=
ioth.debian.org/tracker/?group_id=3D30580', 'None', 'Tools to change and ad=
minister password and group data', 'UPDATE', 'N/A', 'http://pkg-shadow.alio=
th.debian.org/releases/shadow-4.1.4.3.tar.bz2', 'Scott Garman <scott.a.garm=
an@intel.com>']
['libnewt', '0.52.14', '0.52.14', 'LGPLv2', 'libs', 'https://fedorahosted.o=
rg/newt/', 'r1', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  slang popt', 'None', 'None', 'Newt is a programm=
ing library for color text mode, widget based user interfaces.  Newt can be=
 used to add stacked windows, entry widgets, checkboxes, radio buttons, lab=
els, plain text fields, scrollbars, etc., to text mode user interfaces.  Th=
is package also contains the shared library needed by programs built with n=
ewt, as well as a /usr/bin/dialog replacement called whiptail.  Newt is bas=
ed on the slang library.', 'MATCH', '0.52.14', 'https://fedorahosted.org/re=
leases/n/e/newt/newt-0.52.14.tar.gz', 'Kai Kang <kai.kang@windriver.com>']
['ltp', '20120903', 'N/A', 'GPLv2 & GPLv2+ & LGPLv2+ & LGPLv2.1+ & BSD-2-Cl=
ause', 'console/utils', 'http://ltp.sourceforge.net', 'r0', 'autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  attr =
libaio', 'None', 'None', 'The Linux Test Project is a joint project with SG=
I, IBM, OSDL, and Bull with a goal to deliver test suites to the open sourc=
e community that validate the reliability, robustness, and stability of Lin=
ux. The Linux Test Project is a collection of tools for testing the Linux k=
ernel and related features.', 'ErrParseDir:/ltp/:-:ltp-full-20120903.bz2:do=
wnloads.sourceforge.net/ltp/ltp-full-20120903.bz2', '20120903', 'http://dow=
nloads.sourceforge.net/ltp/ltp-full-20120903.bz2', 'Mihai Lindner <mihaix.l=
indner@linux.intel.com>']
['cwautomacros-native', '20110201', 'N/A', 'GPLv2', 'base', 'http://cwautom=
acros.berlios.de/', 'r0', ' ', 'None', 'None', 'cwautomacros: a collection =
of autoconf m4 macros', 'ErrParseDir:/cwautomacros/:-:cwautomacros-20110201=
=2Etar.bz2:download.berlios.de/cwautomacros/cwautomacros-20110201.tar.bz2',=
 'N/A', 'http://download.berlios.de/cwautomacros/cwautomacros-20110201.tar.=
bz2', 'Cristian Iorga <cristian.iorga@intel.com>']
['gperf', '3.0.4', '3.0.4', 'GPLv3+', 'base', 'http://www.gnu.org/software/=
gperf', 'r0', 'autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ', 'None', 'None', 'GNU gperf is a perfect hash fun=
ction generator', 'MATCH', '3.0.4', 'ftp://ftp.gnu.org/gnu/gperf/gperf-3.0.=
4.tar.gz', 'Scott Garman <scott.a.garman@intel.com>']
['gperf-native', '3.0.4', '3.0.4', 'GPLv3+', 'base', 'http://www.gnu.org/so=
ftware/gperf', 'r0', 'autoconf-native automake-native libtool-native gnu-co=
nfig-native  ', 'None', 'None', 'GNU gperf is a perfect hash function gener=
ator', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gperf/gperf-3.0.4.tar.gz', 'S=
cott Garman <scott.a.garman@intel.com>']
['quota', '4.00', 'N/A', 'BSD & GPLv2+ & LGPLv2.1+', 'base', 'http://source=
forge.net/projects/linuxquota/', 'r1', 'autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native virtual/gettext gettext-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  ', 'http://sourceforge.net/tracker/?group_id=3D18136&atid=3D118136', '=
None', 'display disk usage and limits', 'ErrParseDir:/project/linuxquota/qu=
ota-tools/4.00/:4.00:quota-4.00.tar.gz:downloads.sourceforge.net/project/li=
nuxquota/quota-tools/4.00/quota-4.00.tar.gz', '4.00', 'http://downloads.sou=
rceforge.net/project/linuxquota/quota-tools/4.00/quota-4.00.tar.gz', 'Crist=
ian Iorga <cristian.iorga@intel.com>']
['cwautomacros', '20110201', 'N/A', 'GPLv2', 'base', 'http://cwautomacros.b=
erlios.de/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  ', 'None', 'None', 'cwautomacros: a collection of =
autoconf m4 macros', 'ErrParseDir:/cwautomacros/:-:cwautomacros-20110201.ta=
r.bz2:download.berlios.de/cwautomacros/cwautomacros-20110201.tar.bz2', '201=
10201', 'http://download.berlios.de/cwautomacros/cwautomacros-20110201.tar.=
bz2', 'Cristian Iorga <cristian.iorga@intel.com>']
['chkconfig', '1.3.58', '1.3.58', 'GPLv2', 'base', 'http://fedorahosted.org=
/releases/c/h/chkconfig', 'r2', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  li=
bnewt popt', 'None', 'None', 'Chkconfig is a basic system utility.  It upda=
tes and queries runlevel information for system services.  Chkconfig manipu=
lates the numerous symbolic links in /etc/rc.d, to relieve system administr=
ators of some of the drudgery of manually editing the symbolic links.', 'MA=
TCH', '1.3.58', 'http://fedorahosted.org/releases/c/h/chkconfig/chkconfig-1=
=2E3.58.tar.bz2', 'Wenzong Fan <wenzong.fan@windriver.com>']
['sat-solver', '0.0-git1+0a7378d5f482f477a01cf1690d76871ab8bdcc32', '7e565d=
33c8ddc94afd5b3b84f42e340cf20345c7', 'BSD', 'base', 'http://http://en.opens=
use.org/openSUSE:Libzypp_satsolver', 'r14', 'pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libc=
heck rpm zlib expat db  cmake-native ', 'None', 'None', 'Sat Solver', 'UPDA=
TE', '0.0-git1+e74e0bfd23e4e95064d08e13efb5de9caf433f40', 'git://github.com=
/openSUSE/sat-solver.git;protocol=3Dgit', 'Mark Hatle <mark.hatle@windriver=
=2Ecom>']
['byacc', '20120526', '20120526', 'PD', 'devel', 'unknown', 'r0', 'autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 ', 'None', 'None', 'A parser generator utility that reads a grammar specif=
ication from a file and generates an LR(1) parser for it.  The parsers cons=
ist of a set of LALR(1) parsing tables and a driver routine written in the =
C programming language.', 'MATCH', '20120115', 'ftp://invisible-island.net/=
byacc/byacc-20120526.tgz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>=
']
['byacc-native', '20120526', '20120526', 'PD', 'devel', 'unknown', 'r0', 'a=
utoconf-native automake-native libtool-native gnu-config-native  ', 'None',=
 'None', 'A parser generator utility that reads a grammar specification fro=
m a file and generates an LR(1) parser for it.  The parsers consist of a se=
t of LALR(1) parsing tables and a driver routine written in the C programmi=
ng language.', 'MATCH', 'N/A', 'ftp://invisible-island.net/byacc/byacc-2012=
0526.tgz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['tzdata', '2012d', 'N/A', 'PD', 'base', 'ftp://elsie.nci.nih.gov/pub/', 'r=
2', ' tzcode-native', 'None', 'None', 'Timezone data', 'ErrParseDir:/tz/rel=
eases/:-:tzdata2012d.tar.gz:ftp.iana.org/tz/releases/tzdata2012d.tar.gz', '=
2012d', 'ftp://ftp.iana.org/tz/releases/tzdata2012d.tar.gz;name=3Dtzdata', =
'Radu Moisan <radu.moisan@intel.com>']
['grep', '2.9', '2.9', 'GPLv3', 'console/utils', 'http://savannah.gnu.org/p=
rojects/grep/', 'r2', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'http://s=
avannah.gnu.org/bugs/?group=3Dgrep', 'None', 'GNU grep utility', 'MATCH', '=
2.9', 'ftp://ftp.gnu.org/gnu/grep/grep-2.9.tar.gz', 'Scott Garman <scott.a.=
garman@intel.com>']
['screen', '4.0.3', '4.0.3', 'GPLv2+', 'console/utils', 'http://www.gnu.org=
/software/screen/', 'r3', 'autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  ncurses           ', 'https://savannah.=
gnu.org/bugs/?func=3Dadditem&group=3Dscreen', 'None', 'Screen is a full-scr=
een window manager that multiplexes a physical terminal between several pro=
cesses, typically interactive shells.', 'MATCH', '4.0.3', 'ftp://ftp.gnu.or=
g/gnu/screen/screen-4.0.3.tar.gz;name=3Dtarball', 'Valentin Popa <valentin.=
popa@intel.com>']
['findutils', '4.4.2', '4.4.2', 'GPLv3+', 'console/utils', 'http://www.gnu.=
org/software/findutils/', 'r6', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bi=
son-native', 'http://savannah.gnu.org/bugs/?group=3Dfindutils', 'None', 'Th=
e GNU Find Utilities are the basic directory searching utilities of the GNU=
 operating system. These programs are typically used in conjunction with ot=
her programs to provide modular and powerful directory search and file loca=
ting capabilities to other commands.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/g=
nu/findutils/findutils-4.4.2.tar.gz', 'Radu Moisan <radu.moisan@intel.com>']
['findutils-native', '4.4.2', '4.4.2', 'GPLv3+', 'console/utils', 'http://w=
ww.gnu.org/software/findutils/', 'r6', 'autoconf-native automake-native lib=
tool-native gnu-config-native gettext-minimal-native  bison-native', 'http:=
//savannah.gnu.org/bugs/?group=3Dfindutils', 'None', 'The GNU Find Utilitie=
s are the basic directory searching utilities of the GNU operating system. =
These programs are typically used in conjunction with other programs to pro=
vide modular and powerful directory search and file locating capabilities t=
o other commands.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/findutils/findut=
ils-4.4.2.tar.gz', 'Radu Moisan <radu.moisan@intel.com>']
['xdg-utils', '1.0.2', '1.1.0', 'MIT', 'base', 'unknown', 'r0', 'autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  '=
, 'None', 'None', 'The xdg-utils package is a set of simple scripts that pr=
ovide basic desktop integration functions for any Free Desktop, such as Lin=
ux. They are intended to provide a set of defacto standards. The following =
scripts are provided at this time: xdg-desktop-icon xdg-desktop-menu xdg-em=
ail xdg-icon-resource xdg-mime xdg-open xdg-screensaver ', 'UPDATE', '1.0.2=
', 'http://portland.freedesktop.org/download/xdg-utils-1.0.2.tgz', 'Valenti=
n Popa <valentin.popa@intel.com>']
['zip', '3.0', 'N/A', 'BSD-3-Clause', 'console/utils', 'http://www.info-zip=
=2Eorg', 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'None', 'None', 'Archiver for .zip files', 'ErrPars=
eDir:/pub/infozip/src/:-:zip30.tgz:ftp.info-zip.org/pub/infozip/src/zip30.t=
gz', '3.0', 'ftp://ftp.info-zip.org/pub/infozip/src/zip30.tgz', 'Radu Moisa=
n <radu.moisan@intel.com>']
['zip-native', '3.0', 'N/A', 'BSD-3-Clause', 'console/utils', 'http://www.i=
nfo-zip.org', 'r1', ' ', 'None', 'None', 'Archiver for .zip files', 'ErrPar=
seDir:/pub/infozip/src/:-:zip30.tgz:ftp.info-zip.org/pub/infozip/src/zip30.=
tgz', 'N/A', 'ftp://ftp.info-zip.org/pub/infozip/src/zip30.tgz', 'Radu Mois=
an <radu.moisan@intel.com>']
['libarchive', '2.8.5', '2.8.5', 'BSD', 'devel', 'http://code.google.com/p/=
libarchive/', 'r0', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  libxml2', 'None', 'None', 'C library and comm=
and-line tools for reading and writing tar, cpio, zip, ISO, and other archi=
ve formats', 'MATCH', '2.8.5', 'http://libarchive.googlecode.com/files/liba=
rchive-2.8.5.tar.gz', 'Kai Kang <kai.kang@windriver.com>']
['ethtool', '3.5', '3.5', 'GPLv2+', 'console/network', 'http://www.kernel.o=
rg/pub/software/network/ethtool/', 'r0', 'autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'A sm=
all utility for examining and tuning the settings of your ethernet-based ne=
twork interfaces.', 'MATCH', '2.6.36', 'http://kernel.org/pub/software/netw=
ork/ethtool/ethtool-3.5.tar.gz', 'Valentin Popa <valentin.popa@intel.com>']
['cups', '1.4.6', '1.4.6', 'GPLv2 LGPLv2', 'console/utils', 'unknown', 'r6'=
, 'autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  gnutls libpng jpeg dbus dbus-glib zlib libusb        ', 'None',=
 'None', 'An Internet printing system for Unix.', 'MATCH', '1.5.0', 'ftp://=
ftp.easysw.com/pub/cups/1.4.6/cups-1.4.6-source.tar.bz2', 'None']
['libuser', '0.57.1', '0.57.1', 'LGPLv2', 'base', 'https://fedorahosted.org=
/libuser/', 'r2', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  popt libpam glib=
-2.0 xz-native docbook-utils-native linuxdoc-tools-native', 'https://fedora=
hosted.org/libuser/newticket', 'None', 'The libuser library implements a st=
andardized interface for manipulating and administering user and group acco=
unts', 'MATCH', '0.57.1', 'https://fedorahosted.org/releases/l/i/libuser/li=
buser-0.57.1.tar.xz', 'Valentin Popa <valentin.popa@intel.com>']
['man', '1.6f', '1.6f', 'GPLv2', 'console/utils', 'http://primates.ximian.c=
om/~flucifredi/man', 'r5', ' virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  groff less', 'None', 'None', 'A set of doc=
umentation tools: man, apropos and whatis', 'MATCH', '1.6f', 'http://primat=
es.ximian.com/~flucifredi/man/man-1.6f.tar.gz', 'None']
['nativesdk-libarchive', '2.8.5', '2.8.5', 'BSD', 'devel', 'http://code.goo=
gle.com/p/libarchive/', 'r0', 'autoconf-native automake-native libtool-nati=
ve gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/native=
sdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk-libxml=
2', 'None', 'None', 'C library and command-line tools for reading and writi=
ng tar, cpio, zip, ISO, and other archive formats', 'MATCH', 'N/A', 'http:/=
/libarchive.googlecode.com/files/libarchive-2.8.5.tar.gz', 'None']
['iputils', 's20101006', '20101006', 'BSD & GPLv2+', 'console/network', 'ht=
tp://www.skbuff.net/iputils', 'r6', ' virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  openssl docbook-utils-native sgml=
spl-native', 'None', 'None', 'Utilities for the IP protocol, including trac=
eroute6, tracepath, tracepath6, ping, ping6 and arping.', 'UPDATE', 's20100=
418', 'http://www.skbuff.net/iputils/iputils-s20101006.tar.bz2', 'Radu Mois=
an <radu.moisan@intel.com>']
['texinfo', '4.13a', '4.13a', 'GPLv3+', 'console/utils', 'http://www.gnu.or=
g/software/texinfo/', 'r5', 'autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib n=
curses texinfo-native', 'None', 'None', 'Texinfo is a documentation system =
that can produce both online information and printed output from a single s=
ource file. The GNU Project uses the Texinfo file format for most of its do=
cumentation.', 'MATCH', '4.13a', 'ftp://ftp.gnu.org/gnu/texinfo/texinfo-4.1=
3a.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['texinfo-native', '4.13a', '4.13a', 'GPLv3+', 'console/utils', 'http://www=
=2Egnu.org/software/texinfo/', 'r5', 'autoconf-native automake-native libto=
ol-native gnu-config-native gettext-minimal-native  zlib-native ncurses-nat=
ive', 'None', 'None', 'Texinfo is a documentation system that can produce b=
oth online information and printed output from a single source file. The GN=
U Project uses the Texinfo file format for most of its documentation.', 'MA=
TCH', 'N/A', 'ftp://ftp.gnu.org/gnu/texinfo/texinfo-4.13a.tar.gz', 'Saul Wo=
ld <sgw@linux.intel.com>']
['sudo', '1.8.5p2', '1.8.6', 'ISC & BSD & Zlib', 'admin', 'http://www.sudo.=
ws', 'r1', 'autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc    ', 'http://www.sudo.ws/bugs/', 'None', 'Sudo (superu=
ser do) allows a system administrator to give certain users (or groups of u=
sers) the ability to run some (or all) commands as root while logging all c=
ommands and arguments.', 'UPDATE', '1.8.5p2', 'http://ftp.sudo.ws/sudo/dist=
/sudo-1.8.5p2.tar.gz', 'Scott Garman <scott.a.garman@intel.com>']
['tzcode-native', '2011i', '2011i', 'PD', 'base', 'unknown', 'r1', ' ', 'No=
ne', 'None', 'tzcode, timezone zoneinfo utils -- zic, zdump, tzselect', 'MA=
TCH', 'N/A', 'ftp://ftp.iana.org/tz/releases/tzcode2011i.tar.gz;name=3Dtzco=
de', 'None']
['at', '3.1.13', '3.1.13', 'GPLv2+', 'base', 'unknown', 'r3', 'autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  fle=
x flex-native initscripts ', 'None', 'None', 'At allows for commands to be =
run at a particular time.  Batch will execute commands when the system load=
 levels drop to a particular level.', 'MATCH', '3.1.13', 'ftp://ftp.debian.=
org/debian/pool/main/a/at/at_3.1.13.orig.tar.gz', 'Scott Garman <scott.a.ga=
rman@intel.com>']
['logrotate', '3.8.1', '3.8.2', 'GPLv2', 'console/utils', 'https://fedoraho=
sted.org/releases/l/o/logrotate', 'r0', ' virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  coreutils popt', 'None', 'Non=
e', 'Rotates, compresses, removes and mails system log files', 'UPDATE', 'c=
heck', 'https://fedorahosted.org/releases/l/o/logrotate/logrotate-3.8.1.tar=
=2Egz', 'Robert Yang <liezhi.yang@windriver.com>']
['diffutils', '3.2', '3.2', 'GPLv3+', 'base', 'unknown', 'r7.0', 'autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native virtu=
al/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ', 'None', 'None', 'Diffutils contains the G=
NU diff, diff3, sdiff, and cmp utilities. These programs are usually used f=
or creating patch files.', 'MATCH', '3.2', 'ftp://ftp.gnu.org/gnu/diffutils=
/diffutils-3.2.tar.gz', 'Radu Moisan <radu.moisan@intel.com>']
['sysstat', '10.0.5', 'N/A', 'GPLv2+', 'console/utils', 'http://sebastien.g=
odard.pagesperso-orange.fr/', 'r1.1', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  ', 'None', 'None', 'The sysstat utilities are a collection of performan=
ce monitoring tools for Linux.', 'ErrParseDir:/sebastien.godard/:-:sysstat-=
10.0.5.tar.gz:pagesperso-orange.fr/sebastien.godard/sysstat-10.0.5.tar.gz',=
 '10.0.5', 'http://pagesperso-orange.fr/sebastien.godard/sysstat-10.0.5.tar=
=2Egz', 'Saul Wold <sgw@linux.intel.com>']
['sed', '4.2.1', '4.2.1', 'GPLv3+', 'console/utils', 'http://www.gnu.org/so=
ftware/sed/', 'r5', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'No=
ne', 'sed is a Stream EDitor.', 'MATCH', '4.2.1', 'ftp://ftp.gnu.org/gnu/se=
d/sed-4.2.1.tar.gz', 'Valentin Popa <valentin.popa@intel.com>']
['sed-native', '4.2.1', '4.2.1', 'GPLv3+', 'console/utils', 'http://www.gnu=
=2Eorg/software/sed/', 'r5', 'autoconf-native automake-native libtool-nativ=
e gnu-config-native gettext-minimal-native  ', 'None', 'None', 'sed is a St=
ream EDitor.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/sed/sed-4.2.1.tar.gz'=
, 'Valentin Popa <valentin.popa@intel.com>']
['bc', '1.06', '1.06', 'GPLv2+ & LGPLv2.1', 'base', 'http://www.gnu.org/sof=
tware/bc/bc.html', 'r2', 'autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  flex', '', 'None', 'An arbitrary precisi=
on calculator language.', 'MATCH', '1.06', 'ftp://ftp.gnu.org/gnu/bc/bc-1.0=
6.tar.gz', 'Radu Moisan <radu.moisan@intel.com>']
['libzypp', '0.0-git1+15b6c52260bbc52b3d8e585e271b67e10cc7c433', '11.0', 'G=
PLv2+', 'base', 'http://en.opensuse.org/Portal:Libzypp', 'r23', 'autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native virtua=
l/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  rpm boost curl libxml2 zlib sat-solver expat =
openssl udev libproxy', 'None', 'None', 'The ZYpp Linux Software management=
 framework', 'UPDATE', 'git', 'git://github.com/openSUSE/libzypp.git;protoc=
ol=3Dgit', 'Mark Hatle <mark.hatle@windriver.com>']
['ghostscript', '9.05', '9.06', 'GPLv3', 'console/utils', 'http://www.ghost=
script.com', 'r3', 'autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ghostscript-native tiff jpeg fontconfig cups',=
 'None', 'None', 'Ghostscript is used for PostScript/PDF preview and printi=
ng.  Usually as a back-end to a program such as ghostview, it can display P=
ostScript and PDF documents in an X11 environment. Furthermore, it can rend=
er PostScript and PDF files as graphics to be printed on non-PostScript pri=
nters. Supported printers include common dot-matrix, inkjet and laser model=
s. Package gsfonts contains a set of standard fonts for Ghostscript. ', 'UP=
DATE', '9.05', 'http://downloads.ghostscript.com/public/ghostscript-9.05.ta=
r.gz', 'Kai Kang <kai.kang@windriver.com>']
['ghostscript-native', '9.05', '9.06', 'GPLv3', 'console/utils', 'http://ww=
w.ghostscript.com', 'r3', 'autoconf-native automake-native libtool-native g=
nu-config-native  ', 'None', 'None', 'Ghostscript is used for PostScript/PD=
F preview and printing.  Usually as a back-end to a program such as ghostvi=
ew, it can display PostScript and PDF documents in an X11 environment. Furt=
hermore, it can render PostScript and PDF files as graphics to be printed o=
n non-PostScript printers. Supported printers include common dot-matrix, in=
kjet and laser models. Package gsfonts contains a set of standard fonts for=
 Ghostscript. ', 'UPDATE', 'N/A', 'http://downloads.ghostscript.com/public/=
ghostscript-9.05.tar.gz', 'Kai Kang <kai.kang@windriver.com>']
['ed', '1.6', '1.6', 'GPLv3+', 'base', 'http://www.gnu.org/software/ed/', '=
r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  ', '', 'None', 'a line-oriented text editor', 'MATCH', '1.6', 'f=
tp://ftp.gnu.org/gnu/ed/ed-1.6.tar.gz', 'Radu Moisan <radu.moisan@intel.com=
>']
['man-pages', '3.42', '3.42', 'GPLv2+', 'console/utils', 'http://www.kernel=
=2Eorg/pub/linux/docs/man-pages', 'r0', ' virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'The Linux=
 man-pages project documents the Linux kernel and C library interfaces that=
 are employed by user programs', 'MATCH', 'N/A', 'http://kernel.org/pub/lin=
ux/docs/man-pages/Archive/man-pages-3.42.tar.gz', 'None']
['wget', '1.14', '1.14', 'GPLv3', 'console/network', 'unknown', 'r16.0', 'a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  openssl', 'None', 'None', 'A console=
 URL download utility featuring HTTP, FTP, and more.', 'MATCH', 'N/A', 'ftp=
://ftp.gnu.org/gnu/wget/wget-1.14.tar.gz', 'None']
['procps', '3.2.8', '3.2.8', 'GPLv2+ & LGPLv2+', 'base', 'http://procps.sf.=
net', 'r9', 'autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ncurses', 'None', 'None', 'Procps contains a set of s=
ystem utilities that provide system information about processes using the /=
proc filesystem. The package \\ includes the programs ps, top, vmstat, w, k=
ill, and skill.', 'MATCH', '3.2.8', 'http://procps.sourceforge.net/procps-3=
=2E2.8.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['stat', '3.3', '3.3', 'GPLv2', 'console/utils', 'unknown', 'r0', ' virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', =
'None', 'None', 'Display all information about a file that the stat() call =
provides and all information a filesystem that statfs() provides.', 'MATCH'=
, '3.3', 'ftp://metalab.unc.edu/pub/Linux/utils/file/stat-3.3.tar.gz', 'Rad=
u Moisan <radu.moisan@intel.com>']
['stat-native', '3.3', '3.3', 'GPLv2', 'console/utils', 'unknown', 'r0', ' =
', 'None', 'None', 'Display all information about a file that the stat() ca=
ll provides and all information a filesystem that statfs() provides.', 'MAT=
CH', 'N/A', 'ftp://metalab.unc.edu/pub/Linux/utils/file/stat-3.3.tar.gz', '=
Radu Moisan <radu.moisan@intel.com>']
['polkit-gnome', '0.102', '0.102', 'LGPLv2+', 'base', 'http://www.packageki=
t.org/', 'r2', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  polkit dbus-glib gconf gtk+ gtk-d=
oc-stub-native', 'http://bugzilla.gnome.org/', 'None', 'PolicyKit-gnome pro=
vides an Authentication Agent for PolicyKit that integrates well with the G=
NOME desktop environment', 'MATCH', 'N/A', 'http://hal.freedesktop.org/rele=
ases/polkit-gnome-0.102.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['polkit', '0.104', '0.104', 'LGPLv2+', 'base', 'http://code.google.com/p/p=
olkit/', 'r6', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  expat glib-2.0 intltool-native go=
bject-introspection-stub gtk-doc-stub-native', 'None', 'None', 'The polkit =
package is an application-level toolkit for defining and handling the polic=
y that allows unprivileged processes to speak to privileged processes.', 'M=
ATCH', '0.104', 'http://hal.freedesktop.org/releases/polkit-0.104.tar.gz', =
'Cristian Iorga <cristian.iorga@intel.com>']
['mdadm', '3.2.5', '3.2.5', 'GPLv2 & GPLv2+', 'base', 'http://www.kernel.or=
g/pub/linux/utils/raid/mdadm/', 'r1', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  ', 'n/a', 'None', ' A tool =
for managing Soft RAID under Linux', 'MATCH', '3.2.5', 'http://kernel.org/p=
ub/linux/utils/raid/mdadm/mdadm-3.2.5.tar.bz2', 'Laurentiu Palcu <laurentiu=
=2Epalcu@intel.com>']
['tcp-wrappers', '7.6', '7.6', 'BSD', 'console/network', 'unknown', 'r9', '=
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  ', 'None', 'None', 'Tools for monitoring and filtering incoming reques=
ts for tcp       services.', 'MATCH', 'N/A', 'ftp://ftp.porcupine.org/pub/s=
ecurity/tcp_wrappers_7.6.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['bzip2', '1.0.6', '1.0.6', 'BSD-4-Clause', 'console/utils', 'http://www.bz=
ip.org/', 'r5', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  ', 'None', 'None', 'bzip2 compresses files using =
the Burrows-Wheeler block-sorting text compression algorithm, and Huffman c=
oding. Compression is generally considerably better than that achieved by m=
ore conventional LZ77/LZ78-based compressors, and approaches the performanc=
e of the PPM family of statistical compressors.', 'MATCH', '1.0.6', 'http:/=
/www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz', 'Radu Moisan <radu.moisan@intel.co=
m>']
['nativesdk-bzip2', '1.0.6', '1.0.6', 'BSD-4-Clause', 'console/utils', 'htt=
p://www.bzip.org/', 'r5', 'autoconf-native automake-native libtool-native g=
nu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-=
i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc', 'None', 'None', 'b=
zip2 compresses files using the Burrows-Wheeler block-sorting text compress=
ion algorithm, and Huffman coding. Compression is generally considerably be=
tter than that achieved by more conventional LZ77/LZ78-based compressors, a=
nd approaches the performance of the PPM family of statistical compressors.=
', 'MATCH', 'N/A', 'http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz', 'None']
['blktool', '4-6', '4', 'GPLv2+', 'base', 'http://packages.debian.org/unsta=
ble/admin/blktool', 'r0', 'autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  glib-2.0', 'None', 'None', 'blktool is =
used for querying and/or changing settings of a block device. It is like hd=
parm but a more general tool, as it works on SCSI, IDE and SATA devices.', =
'UPDATE', '4-6', 'ftp://ftp.debian.org/debian/pool/main/b/blktool/blktool_4=
=2Eorig.tar.gz;name=3Dtarball', 'Scott Garman <scott.a.garman@intel.com>']
['gamin', '0.1.10', '0.1.10', 'LGPLv2+', 'base', 'http://people.gnome.org/~=
veillard/gamin/', 'r4', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0', 'None', 'None=
', 'Gamin is a file and directory monitoring system defined to be a subset =
of the FAM (File Alteration Monitor) system.', 'MATCH', '0.1.10', 'http://w=
ww.gnome.org/~veillard/gamin/sources/gamin-0.1.10.tar.gz', 'Radu Moisan <ra=
du.moisan@intel.com>']
['parted', '3.1', '3.1', 'GPLv3+', 'console/tools', 'http://www.gnu.org/sof=
tware/parted/parted.html', 'r0', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native virtual/gettext gett=
ext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  ncurses readline util-linux', 'None', 'None', 'parted, the =
GNU partition resizing program', 'MATCH', '3.0', 'ftp://ftp.gnu.org/gnu/par=
ted/parted-3.1.tar.xz', 'Valentin Popa <valentin.popa@intel.com>']
['parted-native', '3.1', '3.1', 'GPLv3+', 'console/tools', 'http://www.gnu.=
org/software/parted/parted.html', 'r0', 'pkgconfig-native autoconf-native a=
utomake-native libtool-native gnu-config-native gettext-minimal-native  ncu=
rses-native readline-native util-linux-native', 'None', 'None', 'parted, th=
e GNU partition resizing program', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/p=
arted/parted-3.1.tar.xz', 'Valentin Popa <valentin.popa@intel.com>']
['mailx', '12.5', '12.5', 'BSD & MPL-1', 'console/network', 'http://heirloo=
m.sourceforge.net/mailx.html', 'r2', 'autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  openssl', 'None', 'None', 'M=
ailx is derived from Berkeley Mail and is intended provide the functionalit=
y of the POSIX mailx command with additional support for MIME, IMAP, POP3, =
SMTP, and S/MIME.', 'MATCH', '12.5', 'ftp://ftp.debian.org/debian/pool/main=
/h/heirloom-mailx/heirloom-mailx_12.5.orig.tar.gz;name=3Darchive', 'Kai Kan=
g <kai.kang@windriver.com>']
['libdumpvalue-perl-native', '1.16', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'lib=
s', 'http://search.cpan.org/~flora/Dumpvalue/', 'r0', ' perl-native perl-na=
tive', 'None', 'None', 'Perl module for provides screen dump of Perl data.'=
, 'ErrParseDir:/CPAN/authors/id/F/FL/FLORA/:-:Dumpvalue-1.16.tar.gz:search.=
cpan.org/CPAN/authors/id/F/FL/FLORA/Dumpvalue-1.16.tar.gz', 'N/A', 'http://=
search.cpan.org/CPAN/authors/id/F/FL/FLORA/Dumpvalue-1.16.tar.gz', 'None']
['slang', '2.2.4', '2.2.4', 'GPLv2', 'libs', 'http://www.jedsoft.org/slang/=
', 'r11', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  pcre', 'None', 'None', "S-Lang is an interpreted langua=
ge and a programming library.  The S-Lang language was designed so that it =
can be easily embedded into a program to provide the program with a powerfu=
l extension language. The S-Lang library, provided in this package, provide=
s the S-Lang extension language.  S-Lang's syntax resembles C, which makes =
it easy to recode S-Lang procedures in C if you need to.", 'MATCH', '2.2.4'=
, 'ftp://space.mit.edu/pub/davis/slang/v2.2/slang-2.2.4.tar.bz2', 'Kai Kang=
 <kai.kang@windriver.com>']
['libi18n-collate-perl', '1.02', '1.02', 'Artistic-1.0 | GPL-1.0+', 'libs',=
 'http://search.cpan.org/~flora/I18N-Collate/', 'r0', ' virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-nati=
ve', 'None', 'None', 'This module provides you with objects that will colla=
te according to your national character set, provided that the POSIX setloc=
ale() function is supported on your system.', 'MATCH', 'N/A', 'http://searc=
h.cpan.org/CPAN/authors/id/F/FL/FLORA/I18N-Collate-1.02.tar.gz', 'None']
['libi18n-collate-perl-native', '1.02', '1.02', 'Artistic-1.0 | GPL-1.0+', =
'libs', 'http://search.cpan.org/~flora/I18N-Collate/', 'r0', ' perl-native =
perl-native', 'None', 'None', 'This module provides you with objects that w=
ill collate according to your national character set, provided that the POS=
IX setlocale() function is supported on your system.', 'MATCH', 'N/A', 'htt=
p://search.cpan.org/CPAN/authors/id/F/FL/FLORA/I18N-Collate-1.02.tar.gz', '=
None']
['libpod-plainer-perl', '1.03', '1.03', 'Artistic-1.0 | GPL-1.0+', 'libs', =
'http://search.cpan.org/dist/Pod-Plainer/', 'r0', ' virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-native',=
 'None', 'None', "Pod::Plainer uses Pod::Parser which takes Pod with the (n=
ew) 'C<< .. >>' constructs and returns the old(er) style with just 'C<>'; '=
<' and '>' are replaced by 'E<lt>' and 'E<gt>'. This can be used to pre-pro=
cess Pod before using tools which do not recognise the new style Pods.", 'M=
ATCH', 'N/A', 'http://search.cpan.org/CPAN/authors/id/R/RM/RMBARKER/Pod-Pla=
iner-1.03.tar.gz', 'None']
['libclass-isa-perl', '0.36', '0.36', 'Artistic-1.0 | GPL-1.0+', 'libs', 'h=
ttp://search.cpan.org/dist/Class-ISA/', 'r0', ' virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-native', 'No=
ne', 'None', 'Suppose you have a class (like Food::Fish::Fishstick) that is=
 derived, via its @ISA, from one or more superclasses (as Food::Fish::Fishs=
tick is from Food::Fish,Life::Fungus, and Chemicals), and some of those sup=
erclasses may themselves each bederived, via its @ISA, from one or more sup=
erclasses (as above).When, then, you call a method in that class ($fishstic=
k->calories), Perl first searchesthere for that method, but if it\'s not th=
ere, it goes searching in its superclasses, andso on, in a depth-first (or =
maybe "height-first" is the word) search. In the above example,it\'d first =
look in Food::Fish, then Food, then Matter, then Life::Fungus, then Life, t=
henChemicals.This library, Class::ISA, provides functions that return that =
list -- the list(in order) of names of classes Perl would search to find a =
method, with no duplicates.', 'MATCH', 'N/A', 'http://search.cpan.org/CPAN/=
authors/id/S/SM/SMUELLER/Class-ISA-0.36.tar.gz', 'None']
['libpod-plainer-perl-native', '1.03', '1.03', 'Artistic-1.0 | GPL-1.0+', '=
libs', 'http://search.cpan.org/dist/Pod-Plainer/', 'r0', ' perl-native perl=
-native', 'None', 'None', "Pod::Plainer uses Pod::Parser which takes Pod wi=
th the (new) 'C<< .. >>' constructs and returns the old(er) style with just=
 'C<>'; '<' and '>' are replaced by 'E<lt>' and 'E<gt>'. This can be used t=
o pre-process Pod before using tools which do not recognise the new style P=
ods.", 'MATCH', 'N/A', 'http://search.cpan.org/CPAN/authors/id/R/RM/RMBARKE=
R/Pod-Plainer-1.03.tar.gz', 'None']
['libfile-checktree-perl', '4.41', '4.41', 'Artistic-1.0 | GPL-1.0+', 'libs=
', 'http://search.cpan.org/~flora/File-CheckTree/', 'r0', ' virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-=
native', 'None', 'None', 'The validate() routine takes a single multiline s=
tring consisting of directives, each containing a filename plus a file test=
 to try on it. (The file test may also be a "cd", causing subsequent relati=
ve filenames to be interpreted relative to that directory.) After the file =
test you may put || die to make it a fatal error if the file test fails. Th=
e default is || warn. The file test may optionally have a "!\' prepended to=
 test for the opposite condition. If you do a cd and then list some relativ=
e filenames, you may want to indent them slightly for readability. If you s=
upply your own die() or warn() message, you can use $file to interpolate th=
e filename. Filetests may be bunched: "-rwx" tests for all of -r, -w, and -=
x. Only the first failed test of the bunch will produce a warning. The rout=
ine returns the number of warnings issued.', 'MATCH', 'N/A', 'http://search=
=2Ecpan.org/CPAN/authors/id/F/FL/FLORA/File-CheckTree-4.41.tar.gz', 'None']
['minicom', '2.6.1', 'N/A', 'GPLv2+', 'console/network', 'unknown', 'r1', '=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  ncurses', 'None', 'None', 'Minicom =
is a text-based modem control and terminal emulation program for Unix-like =
operating systems', 'ErrParseDir:/frs/download.php/3700/:-:minicom-2.6.1.ta=
r.gz:alioth.debian.org/frs/download.php/3700/minicom-2.6.1.tar.gz', '2.6.1'=
, 'http://alioth.debian.org/frs/download.php/3700/minicom-2.6.1.tar.gz', 'C=
ristian Iorga <cristian.iorga@intel.com>']
['libfile-checktree-perl-native', '4.41', '4.41', 'Artistic-1.0 | GPL-1.0+'=
, 'libs', 'http://search.cpan.org/~flora/File-CheckTree/', 'r0', ' perl-nat=
ive perl-native', 'None', 'None', 'The validate() routine takes a single mu=
ltiline string consisting of directives, each containing a filename plus a =
file test to try on it. (The file test may also be a "cd", causing subseque=
nt relative filenames to be interpreted relative to that directory.) After =
the file test you may put || die to make it a fatal error if the file test =
fails. The default is || warn. The file test may optionally have a "!\' pre=
pended to test for the opposite condition. If you do a cd and then list som=
e relative filenames, you may want to indent them slightly for readability.=
 If you supply your own die() or warn() message, you can use $file to inter=
polate the filename. Filetests may be bunched: "-rwx" tests for all of -r, =
-w, and -x. Only the first failed test of the bunch will produce a warning.=
 The routine returns the number of warnings issued.', 'MATCH', 'N/A', 'http=
://search.cpan.org/CPAN/authors/id/F/FL/FLORA/File-CheckTree-4.41.tar.gz', =
'None']
['libclass-isa-perl-native', '0.36', '0.36', 'Artistic-1.0 | GPL-1.0+', 'li=
bs', 'http://search.cpan.org/dist/Class-ISA/', 'r0', ' perl-native perl-nat=
ive', 'None', 'None', 'Suppose you have a class (like Food::Fish::Fishstick=
) that is derived, via its @ISA, from one or more superclasses (as Food::Fi=
sh::Fishstick is from Food::Fish,Life::Fungus, and Chemicals), and some of =
those superclasses may themselves each bederived, via its @ISA, from one or=
 more superclasses (as above).When, then, you call a method in that class (=
$fishstick->calories), Perl first searchesthere for that method, but if it\=
's not there, it goes searching in its superclasses, andso on, in a depth-f=
irst (or maybe "height-first" is the word) search. In the above example,it\=
'd first look in Food::Fish, then Food, then Matter, then Life::Fungus, the=
n Life, thenChemicals.This library, Class::ISA, provides functions that ret=
urn that list -- the list(in order) of names of classes Perl would search t=
o find a method, with no duplicates.', 'MATCH', 'N/A', 'http://search.cpan.=
org/CPAN/authors/id/S/SM/SMUELLER/Class-ISA-0.36.tar.gz', 'None']
['libconvert-asn1-perl-native', '0.22', '0.26', 'Artistic-1.0 | GPL-1.0+', =
'libs', 'unknown', 'r3', ' perl-native perl-native', 'None', 'None', 'Conve=
rt::ASN1 - ASN.1 Encode/Decode library', 'UPDATE', 'N/A', 'http://search.cp=
an.org/CPAN/authors/id/G/GB/GBARR/Convert-ASN1-0.22.tar.gz', 'Bogdan Marine=
scu <bogdan.a.marinescu@intel.com>']
['libconvert-asn1-perl', '0.22', '0.26', 'Artistic-1.0 | GPL-1.0+', 'libs',=
 'unknown', 'r3', '  perl perl-native', 'None', 'None', 'Convert::ASN1 - AS=
N.1 Encode/Decode library', 'UPDATE', '0.22', 'http://search.cpan.org/CPAN/=
authors/id/G/GB/GBARR/Convert-ASN1-0.22.tar.gz', 'Bogdan Marinescu <bogdan.=
a.marinescu@intel.com>']
['libtimedate-perl', '1.20', '1.20', 'Artistic-1.0 | GPL-1.0+', 'libs', 'un=
known', 'r4', '  perl perl-native', 'None', 'None', 'TimeDate - parser for =
absolute times', 'MATCH', '1.20', 'http://search.cpan.org/CPAN/authors/id/G=
/GB/GBARR/TimeDate-1.20.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@inte=
l.com>']
['libtimedate-perl-native', '1.20', '1.20', 'Artistic-1.0 | GPL-1.0+', 'lib=
s', 'unknown', 'r4', ' perl-native perl-native', 'None', 'None', 'TimeDate =
- parser for absolute times', 'MATCH', 'N/A', 'http://search.cpan.org/CPAN/=
authors/id/G/GB/GBARR/TimeDate-1.20.tar.gz', 'Bogdan Marinescu <bogdan.a.ma=
rinescu@intel.com>']
['libxml-namespacesupport-perl-native', '1.11', '1.11', 'Artistic-1.0 | GPL=
-1.0+', 'libs', 'unknown', 'r2', ' perl-native perl-native', 'None', 'None'=
, 'XML::NamespaceSupport offers a simple way to process namespace-based XML=
 names.                 It also helps maintain a prefix-to-namespace URI ma=
p, and provides a number of                 basic checks. ', 'MATCH', 'N/A'=
, 'http://search.cpan.org/CPAN/authors/id/P/PE/PERIGRIN/XML-NamespaceSuppor=
t-1.11.tar.gz', 'None']
['time', '1.7', '1.7', 'GPLv2+', 'utils', 'http://www.gnu.org/software/time=
/', 'r2', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ', 'None', 'None', 'time measures many of the CPU resou=
rces, such as time and memory, that other programs use.', 'MATCH', '1.7', '=
ftp://ftp.gnu.org/gnu/time/time-1.7.tar.gz', 'Saul Wold <sgw@linux.intel.co=
m>']
['which', '2.20', '2.20', 'GPLv3+', 'libs', 'http://ftp.gnu.org/gnu/which/'=
, 'r3', 'autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  cwautomacros-native', 'None', 'None', 'which - shows the =
full path of (shell) commands.', 'MATCH', '2.20', 'ftp://ftp.gnu.org/gnu/wh=
ich/which-2.20.tar.gz', 'Radu Moisan <radu.moisan@intel.com>']
['libdumpvalue-perl', '1.16', '1.16', 'Artistic-1.0 | GPL-1.0+', 'libs', 'h=
ttp://search.cpan.org/~flora/Dumpvalue/', 'r0', ' virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-native', '=
None', 'None', 'Perl module for provides screen dump of Perl data.', 'MATCH=
', 'N/A', 'http://search.cpan.org/CPAN/authors/id/F/FL/FLORA/Dumpvalue-1.16=
=2Etar.gz', 'None']
['augeas', '0.10.0', '0.10.0', 'LGPLv2.1+', 'base', 'http://augeas.net/', '=
r3', 'autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  readline libxml2', 'https://fedorahosted.org/augeas/report/1=
', 'None', 'Augeas configuration API', 'MATCH', 'N/A', 'http://augeas.net/d=
ownload/augeas-0.10.0.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['watchdog', '5.12', 'N/A', 'GPL-2.0+', 'base', 'http://watchdog.sourceforg=
e.net/', 'r1', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  ', 'http://sourceforge.net/tracker/?group_id=3D172=
030&atid=3D860194', 'None', 'Watchdog is a daemon that checks if your syste=
m is still working. If programs in user space are not longer executed it wi=
ll reboot the system.', 'ErrParseDir:/watchdog/:-:watchdog-5.12.tar.gz:down=
loads.sourceforge.net/watchdog/watchdog-5.12.tar.gz', '5.12', 'http://downl=
oads.sourceforge.net/watchdog/watchdog-5.12.tar.gz', 'Radu Moisan <radu.moi=
san@intel.com>']
['libxml-sax-perl-native', '0.99', '0.99', 'Artistic-1.0 | GPL-1.0+', 'libs=
', 'unknown', 'r1', ' libxml-namespacesupport-perl-native perl-native perl-=
native', 'None', 'None', 'XML::SAX consists of several framework classes fo=
r using and building Perl SAX2 XML parsers, filters, and drivers.  It is de=
signed around the need to be able to "plug in" different SAX parsers to an =
application without requiring programmer intervention.  Those of you famili=
ar with the DBI will be right at home.  Some of the designs come from the J=
ava JAXP specification (SAX part), only without the javaness.', 'MATCH', 'N=
/A', 'http://search.cpan.org/CPAN/authors/id/G/GR/GRANTM/XML-SAX-0.99.tar.g=
z', 'Kai Kang <kai.kang@windriver.com>']
['libidn', '1.25', '1.25', '(LGPLv2.1+ | LGPLv3) & GPLv3+', 'libs', 'http:/=
/www.gnu.org/software/libidn/', 'r1', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native pkgconfig-native virtual/gettext=
 gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'None', 'None', 'Implementation of the Stringprep, =
Punycode and IDNA specifications defined by the IETF Internationalized Doma=
in Names (IDN) working group.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/libi=
dn/libidn-1.25.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['msmtp', '1.4.24', '1.4.24', 'GPLv3', 'console/network', 'http://msmtp.sou=
rceforge.net/', 'r4', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib gnutls'=
, 'None', 'None', 'A sendmail replacement for use in MTAs like mutt', 'MATC=
H', 'N/A', 'http://sourceforge.net/projects/msmtp/files/msmtp/1.4.24/msmtp-=
1.4.24.tar.bz2', 'None']
['libxml-namespacesupport-perl', '1.11', '1.11', 'Artistic-1.0 | GPL-1.0+',=
 'libs', 'unknown', 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc   perl perl-native', 'None', 'None', 'XML::N=
amespaceSupport offers a simple way to process namespace-based XML names.  =
               It also helps maintain a prefix-to-namespace URI map, and pr=
ovides a number of                 basic checks. ', 'MATCH', 'N/A', 'http:/=
/search.cpan.org/CPAN/authors/id/P/PE/PERIGRIN/XML-NamespaceSupport-1.11.ta=
r.gz', 'None']
['libxml-sax-perl', '0.99', '0.99', 'Artistic-1.0 | GPL-1.0+', 'libs', 'unk=
nown', 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc   libxml-namespacesupport-perl-native perl perl-native', =
'None', 'None', 'XML::SAX consists of several framework classes for using a=
nd building Perl SAX2 XML parsers, filters, and drivers.  It is designed ar=
ound the need to be able to "plug in" different SAX parsers to an applicati=
on without requiring programmer intervention.  Those of you familiar with t=
he DBI will be right at home.  Some of the designs come from the Java JAXP =
specification (SAX part), only without the javaness.', 'MATCH', 'N/A', 'htt=
p://search.cpan.org/CPAN/authors/id/G/GR/GRANTM/XML-SAX-0.99.tar.gz', 'Kai =
Kang <kai.kang@windriver.com>']
['libtirpc', '0.2.2', 'N/A', 'BSD', 'libs/network', 'http://sourceforge.net=
/projects/libtirpc/', 'r0', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc   xz-native', 'http:/=
/sourceforge.net/tracker/?group_id=3D183075&atid=3D903784', 'None', 'Libtir=
pc is a port of Suns Transport-Independent RPC library to Linux', 'ErrParse=
Dir:/libtirpc/:-:libtirpc-0.2.2.tar.bz2:downloads.sourceforge.net/libtirpc/=
libtirpc-0.2.2.tar.bz2', '0.2.2', 'http://downloads.sourceforge.net/libtirp=
c/libtirpc-0.2.2.tar.bz2;name=3Dlibtirpc', 'Cristian Iorga <cristian.iorga@=
intel.com>']
['net-tools', '1.60-23', '1.60', 'GPLv2+', 'base', 'http://net-tools.berlio=
s.de/', 'r2', 'virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'http://bugs.debian.o=
rg/net-tools', 'None', 'A collection of programs that form the base set of =
the NET-3 networking distribution for the Linux operating system', 'UPDATE'=
, '1.60-23', 'ftp://ftp.debian.org/debian/pool/main/n/net-tools/net-tools_1=
=2E60.orig.tar.gz;name=3Dtarball', 'Cristian Iorga <cristian.iorga@intel.co=
m>']
['pigz-native', '2.2.5', '2.2.5', 'Zlib', 'console/utils', 'http://zlib.net=
/pigz/', 'r0', ' zlib-native', 'None', 'None', 'pigz, which stands for para=
llel implementation of gzip, is a fully functional replacement for gzip tha=
t exploits multiple processors and multiple cores to the hilt when compress=
ing data. pigz was written by Mark Adler, and uses the zlib and pthread lib=
raries.', 'MATCH', 'N/A', 'http://zlib.net/pigz/pigz-2.2.5.tar.gz', 'None']
['xz', '5.1.2alpha', '5.1.2alpha', 'GPLv2+ & GPLv3+ & LGPLv2.1+', 'base', '=
http://tukaani.org/xz/', 'r0', 'autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', =
'None', 'None', 'utils for managing LZMA compressed files', 'MATCH', '5.0.3=
', 'http://tukaani.org/xz/xz-5.1.2alpha.tar.gz', 'Laurentiu Palcu <laurenti=
u.palcu@intel.com>']
['xz-native', '5.1.2alpha', '5.1.2alpha', 'GPLv2+ & GPLv3+ & LGPLv2.1+', 'b=
ase', 'http://tukaani.org/xz/', 'r0', 'autoconf-native automake-native libt=
ool-native gnu-config-native gettext-minimal-native  ', 'None', 'None', 'ut=
ils for managing LZMA compressed files', 'MATCH', 'N/A', 'http://tukaani.or=
g/xz/xz-5.1.2alpha.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['gzip', '1.5', '1.5', 'GPLv3+', 'console/utils', 'http://www.gnu.org/softw=
are/gzip/', 'r0', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'None', 'None', 'GNU Gzip is a popular data =
compression program originally written by Jean-loup Gailly for the GNU proj=
ect. Mark Adler wrote the decompression part', 'MATCH', '1.5', 'ftp://ftp.g=
nu.org/gnu/gzip/gzip-1.5.tar.gz', 'Scott Garman <scott.a.garman@intel.com>']
['texi2html', '5.0', '5.0', 'GPLv2', 'console/utils', 'http://www.nongnu.or=
g/texi2html/', 'r2', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'N=
one', 'Perl script that converts Texinfo to HTML', 'MATCH', '5.0', 'http://=
download.savannah.gnu.org/releases/texi2html/texi2html-5.0.tar.bz2', 'Saul =
Wold <sgw@linux.intel.com>']
['cronie', '1.4.8', '1.4.8', 'ISC & BSD', 'utils', 'https://fedorahosted.or=
g/cronie/', 'r3', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc    update-rc.d-native base-passwd shadow-native =
shadow-sysroot shadow', 'mmaslano@redhat.com', 'None', 'Cronie contains the=
 standard UNIX daemon crond that runs specified programs at scheduled times=
 and related tools. It is based on the original cron and has security and c=
onfiguration enhancements like the ability to use pam and SELinux.', 'MATCH=
', '1.4.8', 'https://fedorahosted.org/releases/c/r/cronie/cronie-1.4.8.tar.=
gz', 'Radu Moisan <radu.moisan@intel.com>']
['mingetty', '1.08', 'N/A', 'GPLv2', 'console/utils', 'http://sourceforge.n=
et/projects/mingetty/', 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  ', 'None', 'None', ' A compact getty pr=
ogram for virtual consoles only', 'ErrParseInterDir:/project/mingetty/minge=
tty/1.08/mingetty-1.08.tar.gz:1.08:-:cdnetworks-kr-1.dl.sourceforge.net/pro=
ject/mingetty/mingetty/1.08/mingetty-1.08.tar.gz', '1.08', 'http://cdnetwor=
ks-kr-1.dl.sourceforge.net/project/mingetty/mingetty/1.08/mingetty-1.08.tar=
=2Egz', 'Kai Kang <kai.kang@windriver.com>']
['lsof', '4.86', '4.86', 'BSD', 'devel', 'unknown', 'r0', ' virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', =
'None', 'Lsof is a Unix-specific diagnostic tool. Its name stands for LiSt =
Open Files, and it does just that.', 'MATCH', '4.84', 'ftp://lsof.itap.purd=
ue.edu/pub/tools/unix/lsof/lsof_4.86.tar.bz2', 'Bogdan Marinescu <bogdan.a.=
marinescu@intel.com>']
['less', '444', 'N/A', 'GPLv3+ | BSD-2-Clause', 'console/utils', 'http://ww=
w.greenwoodsoftware.com/', 'r3', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  ncurses', 'None', 'None', 'Less =
is a program similar to more, i.e. a terminal based program for viewing tex=
t files and the output from other programs. Less offers many features beyon=
d those that more does.', 'ErrParseDir:/less/:-:less-444.tar.gz:www.greenwo=
odsoftware.com/less/less-444.tar.gz', '444', 'http://www.greenwoodsoftware.=
com/less/less-444.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['xinetd', '2.3.15', '2.3.15', 'BSD', 'base', 'http://www.xinetd.org', 'r1'=
, 'autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc   update-rc.d-native', 'None', 'None', 'Highly configurable, mod=
ular and secure inetd', 'MATCH', '2.3.14', 'http://www.xinetd.org/xinetd-2.=
3.15.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['pax', '3.4', '3.4', 'BSD', 'base', 'http://www.openbsd.org/cgi-bin/cvsweb=
/src/bin/pax/', 'r2', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'http://www.openbsd.org/query-pr.html', =
'None', 'pax (Portable Archive eXchange) is the POSIX standard archive tool=
', 'MATCH', '3.4', 'ftp://ftp.suse.com/pub/people/kukuk/pax/pax-3.4.tar.bz2=
', 'Valentin Popa <valentin.popa@intel.com>']
['rpcbind', '0.2.0', 'N/A', 'BSD', 'console/network', 'http://sourceforge.n=
et/projects/rpcbind/', 'r3', 'autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  libtirpc quota update-rc.d-native', =
'http://sourceforge.net/tracker/?group_id=3D201237&atid=3D976751', 'None', =
'The rpcbind utility is a server that converts RPC                program n=
umbers into universal addresses.', 'ErrParseDir:/rpcbind/:-:rpcbind-0.2.0.t=
ar.bz2:downloads.sourceforge.net/rpcbind/rpcbind-0.2.0.tar.bz2', '0.2.0', '=
http://downloads.sourceforge.net/rpcbind/rpcbind-0.2.0.tar.bz2', 'Cristian =
Iorga <cristian.iorga@intel.com>']
['hdparm', '9.39', 'N/A', 'BSD', 'console/utils', 'unknown', 'r3', ' virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ',=
 'None', 'None', 'hdparm is a Linux shell utility for viewing and manipulat=
ing various IDE drive and driver parameters.', 'ErrParseDir:/hdparm/:-:hdpa=
rm-9.39.tar.gz:downloads.sourceforge.net/hdparm/hdparm-9.39.tar.gz', '9.39'=
, 'http://downloads.sourceforge.net/hdparm/hdparm-9.39.tar.gz', 'Radu Moisa=
n <radu.moisan@intel.com>']
['tar-replacement-native', '1.26', '1.26', 'GPLv3', 'base', 'http://www.gnu=
=2Eorg/software/tar/', 'r3', 'autoconf-native automake-native libtool-nativ=
e gnu-config-native gettext-minimal-native  ', 'None', 'None', 'GNU tar sav=
es many files together into a single tape or disk archive, and can restore =
individual files from the archive.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu=
/tar/tar-1.26.tar.bz2', 'None']
['mc', '4.8.4', '4.8.4', 'GPLv3', 'console/utils', 'http://www.midnight-com=
mander.org/', 'r0', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ncurses glib-2=
=2E0', 'None', 'None', 'Midnight Commander is an ncurses based file manager=
=2E', 'MATCH', '4.8.1', 'http://www.midnight-commander.org/downloads/mc-4.8=
=2E4.tar.bz2', 'Saul Wold <sgw@linux.intel.com>']
['libaio', '0.3.109', '0.3.109', 'LGPLv2.1+', 'base', 'http://lse.sourcefor=
ge.net/io/aio.html', 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  ', 'None', 'None', 'Asynchronous input/out=
put library that uses the kernels native interface', 'MATCH', '0.3.109', 'f=
tp://ftp.debian.org/debian/pool/main/liba/libaio/libaio_0.3.109.orig.tar.gz=
', 'Saul Wold <sgw@linux.intel.com>']
['tar', '1.26', '1.26', 'GPLv3', 'base', 'http://www.gnu.org/software/tar/'=
, 'r3', 'autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'GNU ta=
r saves many files together into a single tape or disk archive, and can res=
tore individual files from the archive.', 'MATCH', '1.26', 'ftp://ftp.gnu.o=
rg/gnu/tar/tar-1.26.tar.bz2', 'Scott Garman <scott.a.garman@intel.com>']
['libenv-perl-native', '1.03', '1.03', 'Artistic-1.0 | GPL-1.0+', 'libs', '=
http://search.cpan.org/~flora/Env/', 'r0', ' perl-native perl-native', 'Non=
e', 'None', 'Perl maintains environment variables in a special hash named %=
ENV. For when this access method is inconvenient, the Perl module Env allow=
s environment variables to be treated as scalar or array variables.', 'MATC=
H', 'N/A', 'http://search.cpan.org/CPAN/authors/id/F/FL/FLORA/Env-1.03.tar.=
gz', 'None']
['qemugl', '0.0+git1+d888bbc723c00d197d34a39b5b7448660ec1b1c0', '33466cd83c=
2a9d7d3fb9fe437fb6a4d6fbd866b9', 'MIT', 'x11/drivers', 'http://savannah.non=
gnu.org/projects/qemugl', 'r11', ' virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  virtual/libx11 xproto glproto libxfi=
xes', 'None', 'None', 'QEMU i386 OpenGL passtrough', 'UPDATE', '0.0+git0+d8=
88bbc723c00d197d34a39b5b7448660ec1b1c0', 'git://git.yoctoproject.org/qemugl=
;protocol=3Dgit', 'Saul Wold <sgw@linux.intel.com>']
['nativesdk-qemugl', '0.0+git1+d888bbc723c00d197d34a39b5b7448660ec1b1c0', '=
33466cd83c2a9d7d3fb9fe437fb6a4d6fbd866b9', 'MIT', 'x11/drivers', 'http://sa=
vannah.nongnu.org/projects/qemugl', 'r11', 'virtual/i586-pokysdk-linux-gcc-=
crosssdk virtual/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesd=
k-libc virtual/nativesdk-libx11 nativesdk-xproto nativesdk-glproto nativesd=
k-libxfixes', 'None', 'None', 'QEMU i386 OpenGL passtrough', 'UPDATE', 'N/A=
', 'git://git.yoctoproject.org/qemugl;protocol=3Dgit', 'None']
['mesa-demos', '8.0.1', '8.0.1', 'MIT & PD', 'x11', 'http://mesa3d.org', 'r=
3', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  virtual/libx11 virtual/libgl glew', 'https:/=
/bugs.freedesktop.org', 'None', 'This package includes the demonstration ap=
plication, such as glxgears. These applications can be used for Mesa valida=
tion and benchmarking.', 'MATCH', 'N/A', 'ftp://ftp.freedesktop.org/pub/mes=
a/demos/8.0.1/mesa-demos-8.0.1.tar.bz2', 'None']
['iptables', '1.4.15', '1.4.15', 'GPLv2+', 'base', 'http://www.netfilter.or=
g/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'http://bugzilla.netfilter.org/', 'None', 'iptables=
 is the userspace command line program used to configure and control networ=
k packet filtering code in Linux.', 'MATCH', '1.4.13', 'http://netfilter.or=
g/projects/iptables/files/iptables-1.4.15.tar.bz2', 'Cristian Iorga <cristi=
an.iorga@intel.com>']
['mesa-dri', '8.0.4', '8.0.4', 'MIT', 'x11', 'http://mesa3d.org', 'r3.1', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  libxml2-native makedepend-native flex-native biso=
n-native  python-native  mesa-dri-glsl-native libdrm expat udev xf86driprot=
o glproto virtual/libx11 libxext libxxf86vm libxdamage libxfixes dri2proto'=
, 'https://bugs.freedesktop.org', '2', 'Mesa is an open-source implementati=
on of the OpenGL specification - a system for rendering interactive 3D grap=
hics.  A variety of device drivers allows Mesa to be used in many different=
 environments ranging from software emulation to complete hardware accelera=
tion for modern GPUs. Mesa is used as part of the overall Direct Rendering =
Infrastructure and X.org environment.', 'MATCH', 'N/A', 'ftp://ftp.freedesk=
top.org/pub/mesa/8.0.4/MesaLib-8.0.4.tar.bz2', 'Valentin Popa <valentin.pop=
a@intel.com>']
['mesa-dri-glsl-native', '8.0.4', '8.0.4', 'GPLv3+', 'x11', 'http://mesa3d.=
org', 'r0', ' makedepend-native', 'https://bugs.freedesktop.org', 'None', '=
gl shader language specific build from mesa-dri', 'MATCH', 'N/A', 'ftp://ft=
p.freedesktop.org/pub/mesa/8.0.4/MesaLib-8.0.4.tar.bz2', 'Valentin Popa <va=
lentin.popa@intel.com>']
['startup-notification', '0.12', '0.12', 'LGPLv2+', 'libs', 'http://www.fre=
edesktop.org/wiki/software/startup-notification/', 'r2', 'pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  virtual/libx11 libsm xcb-util', 'https://bugs.freedesktop.org/ente=
r_bug.cgi?product=3DSpecifications', 'None', 'Startup-notification contains=
 a reference implementation of the startup notification protocol.', 'MATCH'=
, 'N/A', 'http://www.freedesktop.org/software/startup-notification/releases=
/startup-notification-0.12.tar.gz', 'Radu Moisan <radu.moisan@intel.com>']
['mesa-xlib', '8.0.4', '8.0.4', 'MIT', 'x11', 'http://mesa3d.org', 'r3.2', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  libxml2-native makedepend-native flex-native bis=
on-native  python-native  mesa-dri-glsl-native xf86driproto glproto virtual=
/libx11 libxext libxxf86vm libxdamage libxfixes', 'https://bugs.freedesktop=
=2Eorg', '2', 'Mesa is an open-source implementation of the OpenGL specific=
ation - a system for rendering interactive 3D graphics.  A variety of devic=
e drivers allows Mesa to be used in many different environments ranging fro=
m software emulation to complete hardware acceleration for modern GPUs. Mes=
a is used as part of the overall Direct Rendering Infrastructure and X.org =
environment.', 'MATCH', 'N/A', 'ftp://ftp.freedesktop.org/pub/mesa/8.0.4/Me=
saLib-8.0.4.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['x11-common', '0.1', 'INVALID', 'GPLv2', 'x11', 'unknown', 'r47', ' ', 'No=
ne', 'None', 'Common X11 scripts and configuration files', 'MATCH', 'N/A', =
'file://etc', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['xserver-nodm-init', '1.0', 'INVALID', 'GPLv2', 'x11', 'unknown', 'r30', '=
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc   update-rc.d-native base-passwd shadow-native shadow-sysroot shadow', =
'None', 'None', 'Simple Xserver Init Script (no dm)', 'MATCH', 'N/A', 'file=
://xserver-nodm', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['fontconfig', '2.9.0', '2.10.1', 'MIT-style & MIT & PD', 'libs', 'http://w=
ww.fontconfig.org', 'r0', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  expat freetype zlib', =
'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dfontconfig', 'None', =
"Fontconfig is a font configuration and customization library, which does n=
ot depend on the X Window System. It is designed to locate fonts within the=
 system and select them according to requirements specified by applications=
=2E Fontconfig is not a rasterization library, nor does it impose a particu=
lar rasterization library on the application. The X-specific library 'Xft' =
uses fontconfig along with freetype to specify and rasterize fonts.", 'UPDA=
TE', '2.9.0', 'http://fontconfig.org/release/fontconfig-2.9.0.tar.gz', 'Lau=
rentiu Palcu <laurentiu.palcu@intel.com>']
['fontconfig-native', '2.9.0', '2.10.1', 'MIT-style & MIT & PD', 'libs', 'h=
ttp://www.fontconfig.org', 'r0', 'pkgconfig-native autoconf-native automake=
-native libtool-native gnu-config-native  freetype-native expat-native zlib=
-native', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dfontconfig'=
, 'None', "Fontconfig is a font configuration and customization library, wh=
ich does not depend on the X Window System. It is designed to locate fonts =
within the system and select them according to requirements specified by ap=
plications. Fontconfig is not a rasterization library, nor does it impose a=
 particular rasterization library on the application. The X-specific librar=
y 'Xft' uses fontconfig along with freetype to specify and rasterize fonts.=
", 'UPDATE', 'N/A', 'http://fontconfig.org/release/fontconfig-2.9.0.tar.gz'=
, 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['libdrm', '2.4.39', '2.4.39', 'MIT', 'x11/base', 'http://dri.freedesktop.o=
rg', 'r2.0', 'pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  libpthread-stubs udev cairo  libpci=
access', 'None', 'None', 'The runtime library for accessing the kernel DRM =
services.  DRM stands for \\"Direct Rendering Manager\\", which is the kern=
el portion of the \\"Direct Rendering Infrastructure\\" (DRI).  DRI is requ=
ired for many hardware accelerated OpenGL drivers.', 'MATCH', '2.4.34', 'ht=
tp://dri.freedesktop.org/libdrm/libdrm-2.4.39.tar.bz2', 'Laurentiu Palcu <l=
aurentiu.palcu@intel.com>']
['clutter-gst-1.8', '1.4.6', '1.4.6', 'LGPLv2+', 'base', 'http://www.clutte=
r-project.org/', 'r0', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  gstreamer gst-plugins-bas=
e clutter-1.8 gstreamer gtk-doc-stub-native', 'None', 'None', 'Clutter GStr=
eamer', 'MATCH', 'N/A', 'http://source.clutter-project.org/sources/clutter-=
gst/1.4/clutter-gst-1.4.6.tar.bz2', 'Ross Burton <ross.burton@intel.com>']
['clutter-gtk-1.8', '0.11.4', '0.11.4', 'LGPLv2', 'base', 'http://www.clutt=
er-project.org/', 'r0', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native virtual/gettext gettext-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  gtk+ clutter-1.8 gtk-doc-stub-native', 'None', 'None', 'Clutter GTK+=
', 'MATCH', 'N/A', 'http://source.clutter-project.org/sources/clutter-gtk/0=
=2E11/clutter-gtk-0.11.4.tar.bz2', 'Ross Burton <ross.burton@intel.com>']
['glew', '1.7.0', 'N/A', 'MIT', 'x11', 'http://glew.sourceforge.net/', 'r1'=
, 'autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  virtual/libx11 virtual/libgl libxext libxi libxmu', 'http://sou=
rceforge.net/tracker/?group_id=3D67586', 'None', 'The OpenGL Extension Wran=
gler Library (GLEW) is a cross-platform open-source C/C++ extension loading=
 library.', 'ErrParseInterDir:/project/glew/glew/1.7.0/glew-1.7.0.tgz:1.7.0=
:-:downloads.sourceforge.net/project/glew/glew/1.7.0/glew-1.7.0.tgz', '1.7.=
0', 'http://downloads.sourceforge.net/project/glew/glew/1.7.0/glew-1.7.0.tg=
z', 'Saul Wold <sgw@linux.intel.com>']
['clutter-box2d', '0.12.1+git1+de5452e56b537a11fd7f9453d048ff4b4793b5a2', '=
0.12.1', 'LGPLv2.1+', 'base', 'http://www.clutter-project.org/', 'r1', 'pkg=
config-native autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc   clutter-1.8 gtk-doc-stub-native', 'None', 'None', '=
Clutter Box2D', 'MATCH', 'N/A', 'git://git.gnome.org/clutter-box2d.git', 'R=
oss Burton <ross.burton@intel.com>']
['clutter-1.8', '1.8.4', '1.8.4', 'LGPLv2.1+', 'base', 'http://www.clutter-=
project.org/', 'r2', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  virtual/libx11 pango glib-2.0 libxfixes libxi json-glib cogl atk virtua=
l/libgl gtk-doc-stub-native', 'None', 'None', 'Clutter graphics library', '=
MATCH', '1.8.4', 'http://source.clutter-project.org/sources/clutter/1.8/clu=
tter-1.8.4.tar.bz2', 'Ross Burton <ross.burton@intel.com>']
['cogl', '1.8.2', '1.8.2', 'LGPLv2.1+', 'base', 'http://wiki.clutter-projec=
t.org/wiki/Cogl', 'r2', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native virtual/gettext gettext-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  virtual/libx11 pango glib-2.0 libxfixes gdk-pixbuf libxi virtual/lib=
gl libxcomposite gtk-doc-stub-native', 'None', 'None', 'a modern 3D graphic=
s API with associated utility APIs', 'MATCH', '1.8.2', 'http://source.clutt=
er-project.org/sources/cogl/1.8/cogl-1.8.2.tar.bz2', 'Ross Burton <ross.bur=
ton@intel.com>']
['mini-x-session', '0.1', 'INVALID', 'GPLv2', 'x11', 'http://www.yoctoproje=
ct.org', 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'http://bugzilla.pokylinux.org', 'None', 'Mini X se=
ssion files for poky', 'MATCH', 'N/A', 'file://mini-x-session', 'None']
['pong-clock', '1.0', 'INVALID', 'GPLv2+', 'base', 'unknown', 'r0', ' virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  v=
irtual/libx11 xdmcp xau', 'None', 'None', 'A clock combined with a game of =
pong', 'MATCH', '1.0', 'file://pong-clock-no-flicker.c', 'Valentin Popa <va=
lentin.popa@intel.com>']
['makedepend', '1.0.4', '1.0.4', 'MIT-X', 'x11/utils', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  xproto util-macros', 'https://bugs.freedes=
ktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The makedepend program reads =
each sourcefile in sequence and parses it like a C-preprocessor, processing=
 all #include, #define,  #undef, #ifdef, #ifndef, #endif, #if, #elif and #e=
lse directives so that it can correctly tell which #include, directives wou=
ld be used in a compilation. Any #include, directives can reference files h=
aving other #include directives, and parsing will occur in these files as w=
ell.', 'MATCH', '1.0.4', 'http://xorg.freedesktop.org/releases/individual/u=
til/makedepend-1.0.4.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.c=
om>']
['tslib', '1.0', 'N/A', 'LGPLv2', 'base', 'http://tslib.berlios.de/', 'r20'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ', 'None', 'None', 'Tslib is an abstraction la=
yer for touchscreen panel events, as well as a filter stack for the manipul=
ation of those events. Tslib is generally used on embedded devices to provi=
de a common user space interface to touchscreen functionality.', 'ErrParseD=
ir:/tslib/:-:tslib-1.0.tar.bz2:download.berlios.de/tslib/tslib-1.0.tar.bz2'=
, '1.0', 'http://download.berlios.de/tslib/tslib-1.0.tar.bz2', 'Radu Moisan=
 <radu.moisan@intel.com>']
['makedepend-native', '1.0.4', '1.0.4', 'MIT-X', 'x11/utils', 'http://www.x=
=2Eorg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive gnu-config-native  xproto-native util-macros-native', 'https://bugs.fr=
eedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The makedepend program r=
eads each sourcefile in sequence and parses it like a C-preprocessor, proce=
ssing all #include, #define,  #undef, #ifdef, #ifndef, #endif, #if, #elif a=
nd #else directives so that it can correctly tell which #include, directive=
s would be used in a compilation. Any #include, directives can reference fi=
les having other #include directives, and parsing will occur in these files=
 as well.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individua=
l/util/makedepend-1.0.4.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@inte=
l.com>']
['xcursor-transparent-theme', '0.1.1', '0.1.1', 'GPLv2', 'x11/base', 'http:=
//www.matchbox-project.org/', 'r4', 'autoconf-native automake-native libtoo=
l-native gnu-config-native  ', 'http://bugzilla.openedhand.com/', 'None', '=
Transparent xcursor theme for handheld systems', 'MATCH', 'N/A', 'http://ma=
tchbox-project.org/sources/utils/xcursor-transparent-theme-0.1.1.tar.gz', '=
Laurentiu Palcu <laurentiu.palcu@intel.com>']
['gccmakedep', '1.0.2', '1.0.2', 'MIT-X', 'x11/utils', 'http://www.x.org', =
'r3', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxorg', '1', "create dependencies in makefiles usi=
ng 'gcc -M'", 'MATCH', '1.0.2', 'http://xorg.freedesktop.org/releases/indiv=
idual/util/gccmakedep-1.0.2.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@=
intel.com>']
['cairo-native', '1.12.2', '1.12.2', 'MPL-1 & LGPLv2.1', 'libs', 'http://ca=
irographics.org', 'r0', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native gnu-config-native  libpng-native fontconfig-native pixman-nat=
ive glib-2.0-native virtual/libx11-native libsm-native libxrender-native', =
'http://bugs.freedesktop.org', 'None', 'Cairo is a multi-platform library p=
roviding anti-aliased vector-based rendering for multiple target backends. =
Paths consist of line segments and cubic splines and can be rendered at any=
 width with various join and cap styles. All colors may be specified with o=
ptional translucence (opacity/alpha) and combined using the extended Porter=
/Duff compositing algebra as found in the X Render Extension.', 'MATCH', 'N=
/A', 'http://cairographics.org/releases/cairo-1.12.2.tar.xz', 'Valentin Pop=
a <valentin.popa@intel.com>']
['util-macros', '1.17', '1.17', 'MIT & MIT-style', 'x11/utils', 'http://www=
=2Ex.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  ', 'https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxorg', '1', 'M4 autotools macros used by various =
X.org programs.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/ind=
ividual/util/util-macros-1.17.tar.gz', 'None']
['util-macros-native', '1.17', '1.17', 'MIT & MIT-style', 'x11/utils', 'htt=
p://www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native lib=
tool-native gnu-config-native  ', 'https://bugs.freedesktop.org/enter_bug.c=
gi?product=3Dxorg', '1', 'M4 autotools macros used by various X.org program=
s.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/util/=
util-macros-1.17.tar.gz', 'None']
['xorg-cf-files', '1.0.4', '1.0.4', 'MIT-X', 'x11/utils', 'http://www.x.org=
', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  font-util', 'https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3Dxorg', 'None', 'Data files for the imake utility=
', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/util/xo=
rg-cf-files-1.0.4.tar.gz', 'None']
['nativesdk-util-macros', '1.17', '1.17', 'MIT & MIT-style', 'x11/utils', '=
http://www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native =
libtool-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk vi=
rtual/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc', 'h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'M4 autotoo=
ls macros used by various X.org programs.', 'MATCH', 'N/A', 'http://xorg.fr=
eedesktop.org/releases/individual/util/util-macros-1.17.tar.gz', 'None']
['imake', '1.0.5', '1.0.5', 'MIT-X', 'x11/utils', 'http://www.x.org', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros xproto xorg-cf-files', 'https://bug=
s.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Imake is used to gen=
erate Makefiles from a template, a set of cpp macro functions, and a per-di=
rectory input file called an Imakefile. This allows machine dependencies (s=
uch as compiler options, alternate command names, and special make rules) t=
o be kept separate from the descriptions of the various items to be built.'=
, 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/util/ima=
ke-1.0.5.tar.gz', 'Radu Moisan <radu.moisan@intel.com>']
['xorg-cf-files-native', '1.0.4', '1.0.4', 'MIT-X', 'x11/utils', 'http://ww=
w.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative gnu-config-native  font-util-native', 'https://bugs.freedesktop.org/e=
nter_bug.cgi?product=3Dxorg', 'None', 'Data files for the imake utility', '=
MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/util/xorg-c=
f-files-1.0.4.tar.gz', 'None']
['imake-native', '1.0.5', '1.0.5', 'MIT-X', 'x11/utils', 'http://www.x.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native gn=
u-config-native  util-macros-native xproto-native xorg-cf-files-native', 'h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Imake is u=
sed to generate Makefiles from a template, a set of cpp macro functions, an=
d a per-directory input file called an Imakefile. This allows machine depen=
dencies (such as compiler options, alternate command names, and special mak=
e rules) to be kept separate from the descriptions of the various items to =
be built.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individua=
l/util/imake-1.0.5.tar.gz', 'Radu Moisan <radu.moisan@intel.com>']
['libxtst', '1.2.1', '1.2.1', 'MIT-style', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros libxext recordproto inputproto=
 libxi', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', =
'This extension is a minimal set of client and server extensions required t=
o completely test the X11 server with no user intervention.', 'MATCH', '1.1=
=2E0', 'http://xorg.freedesktop.org/releases/individual/lib/libXtst-1.2.1.t=
ar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libx11', '1.5.0', '1.5.0', 'MIT & MIT-style & BSD', 'x11/libs', 'http://w=
ww.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native virtual/gettext gettext-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
util-macros util-macros xtrans libxdmcp libxau             bigreqsproto xpr=
oto xextproto xcmiscproto             xf86bigfontproto kbproto inputproto l=
ibxcb             xproto-native', 'https://bugs.freedesktop.org/enter_bug.c=
gi?product=3Dxorg', '1', "This package provides a client interface to the X=
 Window System, otherwise known as 'Xlib'.  It provides a complete API for =
the basic functions of the window system.", 'MATCH', '1.4.99.1', 'http://xo=
rg.freedesktop.org/releases/individual/lib/libX11-1.5.0.tar.bz2', 'Valentin=
 Popa <valentin.popa@intel.com>']
['cairo', '1.12.2', '1.12.2', 'MPL-1 & LGPLv2.1', 'libs', 'http://cairograp=
hics.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  libpng fontconfig pixman glib-2=
=2E0 virtual/libx11 libsm libxrender', 'http://bugs.freedesktop.org', 'None=
', 'Cairo is a multi-platform library providing anti-aliased vector-based r=
endering for multiple target backends. Paths consist of line segments and c=
ubic splines and can be rendered at any width with various join and cap sty=
les. All colors may be specified with optional translucence (opacity/alpha)=
 and combined using the extended Porter/Duff compositing algebra as found i=
n the X Render Extension.', 'MATCH', '1.9.10', 'http://cairographics.org/re=
leases/cairo-1.12.2.tar.xz', 'Valentin Popa <valentin.popa@intel.com>']
['mx', '1.4.6', '1.4.6', 'LGPLv2.1', 'base', 'unknown', 'r0', 'autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native virtual/=
gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  clutter-1.8 dbus-glib libxrandr gdk-pixbuf star=
tup-notification', 'None', 'None', 'Clutter based widget library', 'MATCH',=
 'N/A', 'http://source.clutter-project.org/sources/mx/1.4/mx-1.4.6.tar.bz2'=
, 'Saul Wold <sgw@linux.intel.com>']
['libx11-native', '1.5.0', '1.5.0', 'MIT & MIT-style & BSD', 'x11/libs', 'h=
ttp://www.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native gnu-config-native gettext-minimal-native  util-macros-native =
util-macros-native xtrans-native libxdmcp-native libxau-native bigreqsproto=
-native xproto-native xextproto-native xcmiscproto-native xf86bigfontproto-=
native kbproto-native inputproto-native libxcb-native xproto-native', 'http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', "This package =
provides a client interface to the X Window System, otherwise known as 'Xli=
b'.  It provides a complete API for the basic functions of the window syste=
m.", 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/l=
ibX11-1.5.0.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libxrender', '0.9.7', '0.9.7', 'MIT-style', 'x11/libs', 'http://www.x.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros virtual/libx11 renderproto =
xproto xdmcp', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg',=
 '1', 'The X Rendering Extension (Render) introduces digital image composit=
ion as the foundation of a new rendering model within the X Window System. =
Rendering geometric figures is accomplished by client-side tessellation int=
o either triangles or trapezoids.  Text is drawn by loading glyphs into the=
 server and rendering sets of them.', 'MATCH', '0.9.5', 'http://xorg.freede=
sktop.org/releases/individual/lib/libXrender-0.9.7.tar.bz2', 'Valentin Popa=
 <valentin.popa@intel.com>']
['libxrender-native', '0.9.7', '0.9.7', 'MIT-style', 'x11/libs', 'http://ww=
w.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative gnu-config-native  util-macros-native virtual/libx11-native renderpro=
to-native xproto-native xdmcp-native', 'https://bugs.freedesktop.org/enter_=
bug.cgi?product=3Dxorg', '1', 'The X Rendering Extension (Render) introduce=
s digital image composition as the foundation of a new rendering model with=
in the X Window System. Rendering geometric figures is accomplished by clie=
nt-side tessellation into either triangles or trapezoids.  Text is drawn by=
 loading glyphs into the server and rendering sets of them.', 'MATCH', 'N/A=
', 'http://xorg.freedesktop.org/releases/individual/lib/libXrender-0.9.7.ta=
r.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['nativesdk-libx11', '1.5.0', '1.5.0', 'MIT & MIT-style & BSD', 'x11/libs',=
 'http://www.x.org', 'r1', 'pkgconfig-native autoconf-native automake-nativ=
e libtool-native gnu-config-native virtual/nativesdk-gettext gettext-native=
 virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-lin=
ux-compilerlibs virtual/nativesdk-libc nativesdk-util-macros nativesdk-util=
-macros nativesdk-xtrans nativesdk-libxdmcp nativesdk-libxau nativesdk-bigr=
eqsproto nativesdk-xproto nativesdk-xextproto nativesdk-xcmiscproto natives=
dk-xf86bigfontproto nativesdk-kbproto nativesdk-inputproto nativesdk-libxcb=
 xproto-native', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg=
', '1', "This package provides a client interface to the X Window System, o=
therwise known as 'Xlib'.  It provides a complete API for the basic functio=
ns of the window system.", 'MATCH', 'N/A', 'http://xorg.freedesktop.org/rel=
eases/individual/lib/libX11-1.5.0.tar.bz2', 'None']
['libxtrap', '1.0.0', '1.0.0', 'MIT-X', 'x11/libs', 'http://www.x.org', 'r1=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros libxt trapproto libxext', 'https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXTrap provid=
es an interface to the DEC-XTRAP extension, which allows for capture and sy=
nthesis of core input events.', 'MATCH', '1.0.0', 'http://xorg.freedesktop.=
org/releases/individual/lib/libXTrap-1.0.0.tar.bz2', 'Valentin Popa <valent=
in.popa@intel.com>']
['nativesdk-libxrender', '0.9.7', '0.9.7', 'MIT-style', 'x11/libs', 'http:/=
/www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/=
nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk-=
util-macros virtual/nativesdk-libx11 nativesdk-renderproto nativesdk-xproto=
 nativesdk-xdmcp', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxo=
rg', '1', 'The X Rendering Extension (Render) introduces digital image comp=
osition as the foundation of a new rendering model within the X Window Syst=
em. Rendering geometric figures is accomplished by client-side tessellation=
 into either triangles or trapezoids.  Text is drawn by loading glyphs into=
 the server and rendering sets of them.', 'MATCH', 'N/A', 'http://xorg.free=
desktop.org/releases/individual/lib/libXrender-0.9.7.tar.bz2', 'None']
['libxprintapputil', '1.0.1', '1.0.1', 'MIT-X', 'x11/libs', 'http://www.x.o=
rg', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  util-macros libxp libxt libxprintutil=
', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libxp=
rintapputil provides utility Xpau APIs allowing client applications to acce=
ss information about and control Xprint jobs from an Xprint server.', 'MATC=
H', '1.0.1', 'http://xorg.freedesktop.org/releases/individual/lib/libXprint=
AppUtil-1.0.1.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libx11-diet', '1.5.0', '1.5.0', 'MIT & MIT-style & BSD', 'x11/libs', 'htt=
p://www.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  util-macros bigreqsproto x=
proto xextproto xtrans libxau xcmiscproto             libxdmcp xf86bigfontp=
roto kbproto inputproto xproto-native', 'https://bugs.freedesktop.org/enter=
_bug.cgi?product=3Dxorg', '1', "This package provides a client interface to=
 the X Window System, otherwise known as 'Xlib'.  It provides a complete AP=
I for the basic functions of the window system.  Support for XCB, UDC, XCMS=
 and XLOCALE is disabled in this version.", 'MATCH', 'N/A', 'http://xorg.fr=
eedesktop.org/releases/individual/lib/libX11-1.5.0.tar.bz2', 'Kai Kang <kai=
=2Ekang@windriver.com>']
['libxfontcache', '1.0.5', '1.0.5', 'MIT-X', 'x11/libs', 'http://www.x.org'=
, 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-macros libxext fontcacheproto zlib'=
, 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'FontCa=
che is an extension that is used by X-TrueType to cache information about f=
onts.', 'MATCH', '1.0.5', 'http://xorg.freedesktop.org/releases/individual/=
lib/libXfontcache-1.0.5.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libxxf86vm', '1.1.2', '1.1.2', 'MIT', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros libxext xf86vidmodeproto', 'https=
://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXxf86vm pro=
vides an interface to the XFree86-VidModeExtension extension, which allows =
client applications to get and set video mode timings in extensive detail. =
 It is used by the xvidtune program in particular.', 'MATCH', '1.1.0', 'htt=
p://xorg.freedesktop.org/releases/individual/lib/libXxf86vm-1.1.2.tar.bz2',=
 'Valentin Popa <valentin.popa@intel.com>']
['libxt', '1.1.3', '1.1.3', 'MIT & MIT-style', 'x11/libs', 'http://www.x.or=
g', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  util-macros util-linux libxcb libsm vi=
rtual/libx11 kbproto libxdmcp', 'https://bugs.freedesktop.org/enter_bug.cgi=
?product=3Dxorg', '1', 'The Intrinsics are a programming library tailored t=
o the special requirements of user interface construction within a network =
window system, specifically the X Window System. The Intrinsics and a widge=
t set make up an X Toolkit. The Intrinsics provide the base mechanism neces=
sary to build a wide variety of interoperating widget sets and application =
environments. The Intrinsics are a layer on top of Xlib, the C Library X In=
terface. They extend the fundamental abstractions provided by the X Window =
System while still remaining independent of any particular user interface p=
olicy or style.', 'MATCH', '1.1.3', 'http://xorg.freedesktop.org/releases/i=
ndividual/lib/libXt-1.1.3.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel=
=2Ecom>']
['libdmx', '1.1.2', '1.1.2', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros libxext dmxproto', 'https://bugs.free=
desktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The DMX extension provides=
 support for communication with and control of Xdmx(1) server. Attributes o=
f the Xdmx(1) server and of the back-end screens attached to the server can=
 be queried and modified via this protocol.', 'MATCH', 'N/A', 'http://xorg.=
freedesktop.org/releases/individual/lib/libdmx-1.1.2.tar.bz2', 'Radu Moisan=
 <radu.moisan@intel.com>']
['libxt-native', '1.1.3', '1.1.3', 'MIT & MIT-style', 'x11/libs', 'http://w=
ww.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native gnu-config-native  util-macros-native util-linux-native libxcb-nativ=
e libsm-native virtual/libx11-native kbproto-native libxdmcp-native', 'http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Intrinsic=
s are a programming library tailored to the special requirements of user in=
terface construction within a network window system, specifically the X Win=
dow System. The Intrinsics and a widget set make up an X Toolkit. The Intri=
nsics provide the base mechanism necessary to build a wide variety of inter=
operating widget sets and application environments. The Intrinsics are a la=
yer on top of Xlib, the C Library X Interface. They extend the fundamental =
abstractions provided by the X Window System while still remaining independ=
ent of any particular user interface policy or style.', 'MATCH', 'N/A', 'ht=
tp://xorg.freedesktop.org/releases/individual/lib/libXt-1.1.3.tar.bz2', 'La=
urentiu Palcu <laurentiu.palcu@intel.com>']
['libxxf86misc', '1.0.3', '1.0.3', 'MIT', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  util-macros libxext xf86miscproto', 'https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The XFree86-Mis=
c extension, provides a means to access input device configuration settings=
 specific to the XFree86/Xorg DDX.', 'MATCH', '1.0.3', 'http://xorg.freedes=
ktop.org/releases/individual/lib/libXxf86misc-1.0.3.tar.bz2', 'Valentin Pop=
a <valentin.popa@intel.com>']
['libpciaccess', '0.13.1', '0.13.1', 'MIT & MIT-style', 'x11/libs', 'http:/=
/www.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.f=
reedesktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'libpciaccess provide=
s functionality for X to access the PCI bus and devices in a platform-indep=
endent way.', 'MATCH', '0.13.1', 'http://xorg.freedesktop.org/releases/indi=
vidual/lib/libpciaccess-0.13.1.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@=
intel.com>']
['libxp', '1.0.1', '1.0.1', 'MIT & MIT-style', 'x11/libs', 'http://www.x.or=
g', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  util-macros libxext libxau printproto'=
, 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXp =
provides public APIs to allow client applications to render to non-display =
devices, making use of the X Print Service.', 'MATCH', '1.0.1', 'http://xor=
g.freedesktop.org/releases/individual/lib/libXp-1.0.1.tar.bz2', 'Valentin P=
opa <valentin.popa@intel.com>']
['libxext', '1.3.1', '1.3.1', 'MIT-style', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros xproto virtual/libx11 xextprot=
o libxau libxdmcp', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dx=
org', '1', 'libXext provides an X Window System client interface to several=
 extensions to the X protocol.  The supported protocol extensions are DOUBL=
E-BUFFER, DPMS, Extended-Visual-Information, LBX, MIT_SHM, MIT_SUNDRY-NONST=
ANDARD, Multi-Buffering, SECURITY, SHAPE, SYNC, TOG-CUP, XC-APPGROUP, XC-MI=
SC, XTEST.  libXext also provides a small set of utility functions to aid a=
uthors of client APIs for X protocol extensions.', 'MATCH', '1.3.0', 'http:=
//xorg.freedesktop.org/releases/individual/lib/libXext-1.3.1.tar.bz2', 'Val=
entin Popa <valentin.popa@intel.com>']
['libxext-native', '1.3.1', '1.3.1', 'MIT-style', 'x11/libs', 'http://www.x=
=2Eorg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive gnu-config-native  util-macros-native xproto-native virtual/libx11-nat=
ive xextproto-native libxau-native libxdmcp-native', 'https://bugs.freedesk=
top.org/enter_bug.cgi?product=3Dxorg', '1', 'libXext provides an X Window S=
ystem client interface to several extensions to the X protocol.  The suppor=
ted protocol extensions are DOUBLE-BUFFER, DPMS, Extended-Visual-Informatio=
n, LBX, MIT_SHM, MIT_SUNDRY-NONSTANDARD, Multi-Buffering, SECURITY, SHAPE, =
SYNC, TOG-CUP, XC-APPGROUP, XC-MISC, XTEST.  libXext also provides a small =
set of utility functions to aid authors of client APIs for X protocol exten=
sions.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/l=
ib/libXext-1.3.1.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libxvmc', '1.0.7', '1.0.7', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  util-macros libxext libxv videoproto', 'https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'XvMC extends the =
X Video extension (Xv) and enables hardware rendered motion compensation su=
pport.', 'MATCH', '1.0.5', 'http://xorg.freedesktop.org/releases/individual=
/lib/libXvMC-1.0.7.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['unzip-native', '6.0', 'N/A', 'BSD-3-Clause', 'console/utils', 'http://www=
=2Einfo-zip.org', 'r3', ' ', 'None', '1', 'A (de)compression library for th=
e ZIP format', 'ErrParseDir:/pub/infozip/src/:-:unzip60.tgz:ftp.info-zip.or=
g/pub/infozip/src/unzip60.tgz', 'N/A', 'ftp://ftp.info-zip.org/pub/infozip/=
src/unzip60.tgz', 'Radu Moisan <radu.moisan@intel.com>']
['unzip', '6.0', 'N/A', 'BSD-3-Clause', 'console/utils', 'http://www.info-z=
ip.org', 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'None', '1', 'A (de)compression library for the ZIP=
 format', 'ErrParseDir:/pub/infozip/src/:-:unzip60.tgz:ftp.info-zip.org/pub=
/infozip/src/unzip60.tgz', '6.0', 'ftp://ftp.info-zip.org/pub/infozip/src/u=
nzip60.tgz', 'Radu Moisan <radu.moisan@intel.com>']
['nativesdk-libxext', '1.3.1', '1.3.1', 'MIT-style', 'x11/libs', 'http://ww=
w.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nat=
ivesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk-uti=
l-macros nativesdk-xproto virtual/nativesdk-libx11 nativesdk-xextproto nati=
vesdk-libxau nativesdk-libxdmcp', 'https://bugs.freedesktop.org/enter_bug.c=
gi?product=3Dxorg', '1', 'libXext provides an X Window System client interf=
ace to several extensions to the X protocol.  The supported protocol extens=
ions are DOUBLE-BUFFER, DPMS, Extended-Visual-Information, LBX, MIT_SHM, MI=
T_SUNDRY-NONSTANDARD, Multi-Buffering, SECURITY, SHAPE, SYNC, TOG-CUP, XC-A=
PPGROUP, XC-MISC, XTEST.  libXext also provides a small set of utility func=
tions to aid authors of client APIs for X protocol extensions.', 'MATCH', '=
N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXext-1.3.1.ta=
r.bz2', 'None']
['libxdamage', '1.1.3', '1.1.3', 'MIT', 'x11/libs', 'http://www.x.org', 'r1=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros virtual/libx11 damageproto libxfi=
xes', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', "'D=
amage' is a term that describes changes make to pixel contents of windows a=
nd pixmaps.  Damage accumulates as drawing occurs in the drawable.  Each dr=
awing operation 'damages' one or more rectangular areas within the drawable=
=2E  The rectangles are guaranteed to include the set of pixels modified by=
 each operation, but may include significantly more than just those pixels.=
  The DAMAGE extension allows applications to either receive the raw rectan=
gles as a stream of events, or to have them partially processed within the =
X server to reduce the amount of data transmitted as well as reduce the pro=
cessing latency once the repaint operation has started.", 'MATCH', '1.1.2',=
 'http://xorg.freedesktop.org/releases/individual/lib/libXdamage-1.1.3.tar.=
bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libxres', '1.0.6', '1.0.6', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  util-macros libxext resourceproto', 'https://bug=
s.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXRes provides an =
X Window System client interface to the Resource extension to the X protoco=
l.  The Resource extension allows for X clients to see and monitor the X re=
source usage of various clients (pixmaps, et al).', 'MATCH', '1.0.4', 'http=
://xorg.freedesktop.org/releases/individual/lib/libXres-1.0.6.tar.bz2', 'Va=
lentin Popa <valentin.popa@intel.com>']
['libxcalibrate', '0.0+git1+209d83af61ed38a002c8096377deac292b3e396c', '209=
d83af61ed38a002c8096377deac292b3e396c', 'MIT-style', 'x11/libs', 'http://ww=
w.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 calibrateproto li=
bxext', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', 'None'=
, 'libXCalibrate is a library for performing touchscreen calibration with t=
he kdrive tslib touchscreen driver.', 'MATCH', '0.0+git0+209d83af61ed38a002=
c8096377deac292b3e396c', 'git://anongit.freedesktop.org/git/xorg/lib/libXCa=
librate;protocol=3Dgit', 'Valentin Popa <valentin.popa@intel.com>']
['libx11-trim', '1.5.0', '1.5.0', 'MIT & MIT-style & BSD', 'x11/libs', 'htt=
p://www.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  util-macros libxcb xproto =
xextproto xtrans libxau kbproto inputproto xf86bigfontproto xproto-native',=
 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', "This pa=
ckage provides a client interface to the X Window System, otherwise known a=
s 'Xlib'.  It provides a complete API for the basic functions of the window=
 system.  Support for XCMS is disabled in this version.", 'MATCH', 'N/A', '=
http://xorg.freedesktop.org/releases/individual/lib/libX11-1.5.0.tar.bz2', =
'Valentin Popa <valentin.popa@intel.com>']
['libxi', '1.6.1', '1.6.1', 'MIT & MIT-style', 'x11/libs', 'http://www.x.or=
g', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  util-macros libxext inputproto', 'http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libxi is an e=
xtension to the X11 protocol to support input devices other than the core X=
 keyboard and pointer.  It allows client programs to select input from thes=
e devices independently from each other and independently from the core dev=
ices.', 'MATCH', '1.5.99.2', 'http://xorg.freedesktop.org/releases/individu=
al/lib/libXi-1.6.1.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libxdamage-native', '1.1.3', '1.1.3', 'MIT', 'x11/libs', 'http://www.x.or=
g', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native =
gnu-config-native  util-macros-native virtual/libx11-native damageproto-nat=
ive libxfixes-native', 'https://bugs.freedesktop.org/enter_bug.cgi?product=
=3Dxorg', '1', "'Damage' is a term that describes changes make to pixel con=
tents of windows and pixmaps.  Damage accumulates as drawing occurs in the =
drawable.  Each drawing operation 'damages' one or more rectangular areas w=
ithin the drawable.  The rectangles are guaranteed to include the set of pi=
xels modified by each operation, but may include significantly more than ju=
st those pixels.  The DAMAGE extension allows applications to either receiv=
e the raw rectangles as a stream of events, or to have them partially proce=
ssed within the X server to reduce the amount of data transmitted as well a=
s reduce the processing latency once the repaint operation has started.", '=
MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXdam=
age-1.1.3.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libxdmcp', '1.1.1', '1.1.1', 'MIT-style', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macro=
s xproto', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1'=
, 'The purpose of the X Display Manager Control Protocol (XDMCP) is to prov=
ide a uniform mechanism for an autonomous display to request login service =
=66rom a remote host. An X terminal (screen, keyboard, mouse, processor, ne=
twork interface) is a prime example of an autonomous display.', 'MATCH', '1=
=2E0.3', 'http://xorg.freedesktop.org/releases/individual/lib/libXdmcp-1.1.=
1.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libxscrnsaver', '1.2.2', '1.2.2', 'MIT', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros libxext scrnsaverproto', 'http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The X Window =
System provides support for changing the image on a display screen after a =
user-settable period of inactivity to avoid burning the cathode ray tube ph=
osphors. However, no interfaces are provided for the user to control the im=
age that is drawn. This extension allows an external \\"screen saver\\" cli=
ent to detect when the alternate image is to be displayed and to provide th=
e graphics.', 'MATCH', '1.2.1', 'http://xorg.freedesktop.org/releases/indiv=
idual/lib/libXScrnSaver-1.2.2.tar.bz2', 'Valentin Popa <valentin.popa@intel=
=2Ecom>']
['libxmu', '1.1.1', '1.1.1', 'MIT & MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  util-macros libxt libxext', 'https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Xmu Library i=
s a collection of miscellaneous (some might say random) utility functions t=
hat have been useful in building various applications and widgets. This lib=
rary is required by the Athena Widgets. A subset of the functions that do n=
ot rely on the Athena Widgets (libXaw) or X Toolkit Instrinsics (libXt) are=
 provided in a second library, libXmuu.', 'MATCH', '1.0.5', 'http://xorg.fr=
eedesktop.org/releases/individual/lib/libXmu-1.1.1.tar.bz2', 'Valentin Popa=
 <valentin.popa@intel.com>']
['libxdmcp-native', '1.1.1', '1.1.1', 'MIT-style', 'x11/libs', 'http://www.=
x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive gnu-config-native gettext-minimal-native  util-macros-native xproto-nat=
ive', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Th=
e purpose of the X Display Manager Control Protocol (XDMCP) is to provide a=
 uniform mechanism for an autonomous display to request login service from =
a remote host. An X terminal (screen, keyboard, mouse, processor, network i=
nterface) is a prime example of an autonomous display.', 'MATCH', 'N/A', 'h=
ttp://xorg.freedesktop.org/releases/individual/lib/libXdmcp-1.1.1.tar.bz2',=
 'Valentin Popa <valentin.popa@intel.com>']
['libxmu-native', '1.1.1', '1.1.1', 'MIT & MIT-style', 'x11/libs', 'http://=
www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native gnu-config-native  util-macros-native libxt-native libxext-native',=
 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Xmu=
 Library is a collection of miscellaneous (some might say random) utility f=
unctions that have been useful in building various applications and widgets=
=2E This library is required by the Athena Widgets. A subset of the functio=
ns that do not rely on the Athena Widgets (libXaw) or X Toolkit Instrinsics=
 (libXt) are provided in a second library, libXmuu.', 'MATCH', 'N/A', 'http=
://xorg.freedesktop.org/releases/individual/lib/libXmu-1.1.1.tar.bz2', 'Val=
entin Popa <valentin.popa@intel.com>']
['nativesdk-libxdmcp', '1.1.1', '1.1.1', 'MIT-style', 'x11/libs', 'http://w=
ww.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native gnu-config-native virtual/nativesdk-gettext gettext-native virtual/i=
586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-linux-compile=
rlibs virtual/nativesdk-libc nativesdk-util-macros nativesdk-xproto', 'http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The purpose o=
f the X Display Manager Control Protocol (XDMCP) is to provide a uniform me=
chanism for an autonomous display to request login service from a remote ho=
st. An X terminal (screen, keyboard, mouse, processor, network interface) i=
s a prime example of an autonomous display.', 'MATCH', 'N/A', 'http://xorg.=
freedesktop.org/releases/individual/lib/libXdmcp-1.1.1.tar.bz2', 'None']
['libxfixes', '5.0', '5.0', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros virtual/libx11 xproto fixesproto=
 xextproto', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '=
1', 'X applications have often needed to work around various shortcomings i=
n the core X window system.  This extension is designed to provide the mini=
mal server-side support necessary to eliminate problems caused by these wor=
karounds.', 'MATCH', '5.0', 'http://xorg.freedesktop.org/releases/individua=
l/lib/libXfixes-5.0.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libxfixes-native', '5.0', '5.0', 'MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 gnu-config-native  util-macros-native virtual/libx11-native xproto-native =
fixesproto-native xextproto-native', 'https://bugs.freedesktop.org/enter_bu=
g.cgi?product=3Dxorg', '1', 'X applications have often needed to work aroun=
d various shortcomings in the core X window system.  This extension is desi=
gned to provide the minimal server-side support necessary to eliminate prob=
lems caused by these workarounds.', 'MATCH', 'N/A', 'http://xorg.freedeskto=
p.org/releases/individual/lib/libXfixes-5.0.tar.bz2', 'Valentin Popa <valen=
tin.popa@intel.com>']
['libxxf86dga', '1.1.3', '1.1.3', 'MIT-X', 'x11/libs', 'http://www.x.org', =
'r2', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros libxext xf86dgaproto', 'https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXxf86dga pro=
vides the XFree86-DGA extension, which allows direct graphics access to a f=
ramebuffer-like region, and also allows relative mouse reporting, et al.  I=
t is mainly used by games and emulators for games.', 'MATCH', '1.1.1', 'htt=
p://xorg.freedesktop.org/releases/individual/lib/libXxf86dga-1.1.3.tar.bz2'=
, 'Saul Wold <sgw@linux.intel.com>']
['xtrans', '1.2.7', '1.2.7', 'MIT & MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-m=
acros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', '=
The X Transport Interface is intended to combine all system and transport s=
pecific code into a single place.  This API should be used by all libraries=
, clients and servers of the X Window System. Use of this API should allow =
the addition of new types of transports and support for new platforms witho=
ut making any changes to the source except in the X Transport Interface cod=
e.', 'MATCH', '1.2.7', 'http://xorg.freedesktop.org/releases/individual/lib=
/xtrans-1.2.7.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['xtrans-native', '1.2.7', '1.2.7', 'MIT & MIT-style', 'x11/libs', 'http://=
www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native gnu-config-native gettext-minimal-native  util-macros-native', 'htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The X Transp=
ort Interface is intended to combine all system and transport specific code=
 into a single place.  This API should be used by all libraries, clients an=
d servers of the X Window System. Use of this API should allow the addition=
 of new types of transports and support for new platforms without making an=
y changes to the source except in the X Transport Interface code.', 'MATCH'=
, 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/xtrans-1.2.7.=
tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['nativesdk-libxfixes', '5.0', '5.0', 'MIT-style', 'x11/libs', 'http://www.=
x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativ=
esdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk-util-=
macros virtual/nativesdk-libx11 nativesdk-xproto nativesdk-fixesproto nativ=
esdk-xextproto', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg=
', '1', 'X applications have often needed to work around various shortcomin=
gs in the core X window system.  This extension is designed to provide the =
minimal server-side support necessary to eliminate problems caused by these=
 workarounds.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/indiv=
idual/lib/libXfixes-5.0.tar.bz2', 'None']
['libxcomposite', '0.4.3', '0.4.3', 'MIT-style', 'x11/libs', 'http://www.x.=
org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  util-macros  compositeproto virtual/=
libx11 libxfixes libxext', 'https://bugs.freedesktop.org/enter_bug.cgi?prod=
uct=3Dxorg', '1', 'The composite extension provides three related mechanism=
s: per-hierarchy storage, automatic shadow update, and external parent.  In=
 per-hierarchy storage, the rendering of an entire hierarchy of windows is =
redirected to off-screen storage.  In automatic shadow update, when a hiera=
rchy is rendered off-screen, the X server provides an automatic mechanism f=
or presenting those contents within the parent window.  In external parent,=
 a mechanism for providing redirection of compositing transformations throu=
gh a client.', 'MATCH', '0.4.1', 'http://xorg.freedesktop.org/releases/indi=
vidual/lib/libXcomposite-0.4.3.tar.bz2', 'Valentin Popa <valentin.popa@inte=
l.com>']
['libxinerama', '1.1.2', '1.1.2', 'MIT', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros libxext xineramaproto', 'https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Xinerama is a si=
mple library designed to interface the Xinerama Extension for retrieving in=
formation about physical output devices which may be combined into a single=
 logical X screen.', 'MATCH', '1.1', 'http://xorg.freedesktop.org/releases/=
individual/lib/libXinerama-1.1.2.tar.bz2', 'Valentin Popa <valentin.popa@in=
tel.com>']
['nativesdk-xtrans', '1.2.7', '1.2.7', 'MIT & MIT-style', 'x11/libs', 'http=
://www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native gnu-config-native virtual/nativesdk-gettext gettext-native virtu=
al/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-linux-com=
pilerlibs virtual/nativesdk-libc nativesdk-util-macros', 'https://bugs.free=
desktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The X Transport Interface =
is intended to combine all system and transport specific code into a single=
 place.  This API should be used by all libraries, clients and servers of t=
he X Window System. Use of this API should allow the addition of new types =
of transports and support for new platforms without making any changes to t=
he source except in the X Transport Interface code.', 'MATCH', 'N/A', 'http=
://xorg.freedesktop.org/releases/individual/lib/xtrans-1.2.7.tar.bz2', 'Non=
e']
['xkeyboard-config', '2.1', '2.5.99', 'MIT & MIT-style', 'x11/libs', 'http:=
//freedesktop.org/wiki/Software/XKeyboardConfig', 'r2', 'pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  intltool-native xkbcomp-native glib-2.0', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxkeyboard-config', 'None', 'The non-arch key=
board configuration database for X Window.  The goal is to provide the cons=
istent, well-structured, frequently released open source of X keyboard conf=
iguration data for X Window System implementations.  The project is targete=
d to XKB-based systems.', 'UPDATE', 'N/A', 'http://people.freedesktop.org/~=
svu/xkeyboard-config-2.1.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.=
com>']
['libxft', '2.3.1', '2.3.1', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros virtual/libx11 libxrender freetype fo=
ntconfig', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1'=
, 'Xft was designed to provide good support for scalable fonts, and to do s=
o efficiently.  Unlike the core fonts system, it supports features such as =
anti-aliasing and sub-pixel rasterisation. Perhaps more importantly, it giv=
es applications full control over the way glyphs are rendered, making fine =
typesetting and WYSIWIG display possible. Finally, it allows applications t=
o use fonts that are not installed system-wide for displaying documents wit=
h embedded fonts.  Xft is not compatible with the core fonts system: usage =
of Xft requires fairly extensive changes to toolkits (user-interface librar=
ies).', 'MATCH', '2.1.14', 'http://xorg.freedesktop.org/releases/individual=
/lib/libXft-2.3.1.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libxcomposite-native', '0.4.3', '0.4.3', 'MIT-style', 'x11/libs', 'http:/=
/www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native gnu-config-native  util-macros-native compositeproto-native virtua=
l/libx11-native libxfixes-native libxext-native', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', 'The composite extension provide=
s three related mechanisms: per-hierarchy storage, automatic shadow update,=
 and external parent.  In per-hierarchy storage, the rendering of an entire=
 hierarchy of windows is redirected to off-screen storage.  In automatic sh=
adow update, when a hierarchy is rendered off-screen, the X server provides=
 an automatic mechanism for presenting those contents within the parent win=
dow.  In external parent, a mechanism for providing redirection of composit=
ing transformations through a client.', 'MATCH', 'N/A', 'http://xorg.freede=
sktop.org/releases/individual/lib/libXcomposite-0.4.3.tar.bz2', 'Valentin P=
opa <valentin.popa@intel.com>']
['libxprintutil', '1.0.1', '1.0.1', 'MIT-X', 'x11/libs', 'http://www.x.org'=
, 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-macros libxp libxt', 'https://bugs.=
freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libxprintutil provides=
 utility Xpu APIs allowing client applications to access and manipulate inf=
ormation about printer capabilities from an Xprint server.', 'MATCH', '1.0.=
1', 'http://xorg.freedesktop.org/releases/individual/lib/libXprintUtil-1.0.=
1.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libxft-native', '2.3.1', '2.3.1', 'MIT', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native gnu-=
config-native  util-macros-native virtual/libx11-native libxrender-native f=
reetype-native fontconfig-native', 'https://bugs.freedesktop.org/enter_bug.=
cgi?product=3Dxorg', '1', 'Xft was designed to provide good support for sca=
lable fonts, and to do so efficiently.  Unlike the core fonts system, it su=
pports features such as anti-aliasing and sub-pixel rasterisation. Perhaps =
more importantly, it gives applications full control over the way glyphs ar=
e rendered, making fine typesetting and WYSIWIG display possible. Finally, =
it allows applications to use fonts that are not installed system-wide for =
displaying documents with embedded fonts.  Xft is not compatible with the c=
ore fonts system: usage of Xft requires fairly extensive changes to toolkit=
s (user-interface libraries).', 'MATCH', 'N/A', 'http://xorg.freedesktop.or=
g/releases/individual/lib/libXft-2.3.1.tar.bz2', 'Valentin Popa <valentin.p=
opa@intel.com>']
['libsm-native', '1.2.1', '1.2.1', 'MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 gnu-config-native  util-macros-native libice-native xproto-native xtrans-n=
ative e2fsprogs-native', 'https://bugs.freedesktop.org/enter_bug.cgi?produc=
t=3Dxorg', '1', 'The Session Management Library (SMlib) is a low-level \\"C=
\\" language interface to XSMP.  The purpose of the X Session Management Pr=
otocol (XSMP) is to provide a uniform mechanism for users to save and resto=
re their sessions.  A session is a group of clients, each of which has a pa=
rticular state.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/ind=
ividual/lib/libSM-1.2.1.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libsm', '1.2.1', '1.2.1', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros libice xproto xtrans e2fsprogs',=
 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Ses=
sion Management Library (SMlib) is a low-level \\"C\\" language interface t=
o XSMP.  The purpose of the X Session Management Protocol (XSMP) is to prov=
ide a uniform mechanism for users to save and restore their sessions.  A se=
ssion is a group of clients, each of which has a particular state.', 'MATCH=
', '1.1.1', 'http://xorg.freedesktop.org/releases/individual/lib/libSM-1.2.=
1.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libice', '1.0.8', '1.0.8', 'MIT-style', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  util-macros xproto xtrans', 'https://bugs.f=
reedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Inter-Client Exchan=
ge (ICE) protocol provides a generic framework for building protocols on to=
p of reliable, byte-stream transport connections. It provides basic mechani=
sms for setting up and shutting down connections, for performing authentica=
tion, for negotiating versions, and for reporting errors. ', 'MATCH', '1.0.=
6', 'http://xorg.freedesktop.org/releases/individual/lib/libICE-1.0.8.tar.b=
z2', 'Valentin Popa <valentin.popa@intel.com>']
['libxpm', '3.5.10', '3.5.10', 'BSD', 'x11/libs', 'http://www.x.org', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros libxext libsm libxt', 'https://bugs=
=2Efreedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXpm provides sup=
port and common operation for the XPM pixmap format, which is commonly used=
 in legacy X applications.  XPM is an extension of the monochrome XBM bitma=
p specificied in the X protocol.', 'MATCH', '3.5.9', 'http://xorg.freedeskt=
op.org/releases/individual/lib/libXpm-3.5.10.tar.bz2', 'Valentin Popa <vale=
ntin.popa@intel.com>']
['libice-native', '1.0.8', '1.0.8', 'MIT-style', 'x11/libs', 'http://www.x.=
org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e gnu-config-native  util-macros-native xproto-native xtrans-native', 'http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Inter-Cli=
ent Exchange (ICE) protocol provides a generic framework for building proto=
cols on top of reliable, byte-stream transport connections. It provides bas=
ic mechanisms for setting up and shutting down connections, for performing =
authentication, for negotiating versions, and for reporting errors. ', 'MAT=
CH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libICE-1.0=
=2E8.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libxkbfile', '1.0.8', '1.0.8', 'MIT-style', 'x11/libs', 'http://www.x.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros virtual/libx11 kbproto', 'h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libxkbfile=
 provides an interface to read and manipulate description files for XKB, th=
e X11 keyboard configuration extension.', 'MATCH', '1.0.6', 'http://xorg.fr=
eedesktop.org/releases/individual/lib/libxkbfile-1.0.8.tar.bz2', 'Valentin =
Popa <valentin.popa@intel.com>']
['libxkbfile-native', '1.0.8', '1.0.8', 'MIT-style', 'x11/libs', 'http://ww=
w.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative gnu-config-native  util-macros-native virtual/libx11-native kbproto-n=
ative', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', '=
libxkbfile provides an interface to read and manipulate description files f=
or XKB, the X11 keyboard configuration extension.', 'MATCH', 'N/A', 'http:/=
/xorg.freedesktop.org/releases/individual/lib/libxkbfile-1.0.8.tar.bz2', 'V=
alentin Popa <valentin.popa@intel.com>']
['libxpm-native', '3.5.10', '3.5.10', 'BSD', 'x11/libs', 'http://www.x.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native gn=
u-config-native  util-macros-native libxext-native libsm-native libxt-nativ=
e', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libX=
pm provides support and common operation for the XPM pixmap format, which i=
s commonly used in legacy X applications.  XPM is an extension of the monoc=
hrome XBM bitmap specificied in the X protocol.', 'MATCH', 'N/A', 'http://x=
org.freedesktop.org/releases/individual/lib/libXpm-3.5.10.tar.bz2', 'Valent=
in Popa <valentin.popa@intel.com>']
['pixman', '0.27.2', '0.27.2', 'MIT & MIT-style & PD', 'x11/libs', 'http://=
www.x.org', 'r2', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  util-macros zlib libpng', 'htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Pixman provi=
des a library for manipulating pixel regions -- a set of Y-X banded rectang=
les, image compositing using the Porter/Duff model and implicit mask genera=
tion for geometric primitives including trapezoids, triangles, and rectangl=
es.', 'MATCH', '0.24.4', 'http://xorg.freedesktop.org/releases/individual/l=
ib/pixman-0.27.2.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libxfont', '1.4.5', '1.4.5', 'MIT & MIT-style & BSD', 'x11/libs', 'http:/=
/www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  util-macros freetype fontcach=
eproto xtrans fontsproto libfontenc zlib', 'https://bugs.freedesktop.org/en=
ter_bug.cgi?product=3Dxorg', '1', 'libXfont provides various services for X=
 servers, most notably font selection and rasterisation (through external l=
ibraries such as freetype).', 'MATCH', '1.4.4', 'http://xorg.freedesktop.or=
g/releases/individual/lib/libXfont-1.4.5.tar.bz2', 'Valentin Popa <valentin=
=2Epopa@intel.com>']
['pixman-native', '0.27.2', '0.27.2', 'MIT & MIT-style & PD', 'x11/libs', '=
http://www.x.org', 'r2', 'pkgconfig-native autoconf-native automake-native =
libtool-native gnu-config-native  util-macros-native zlib-native libpng-nat=
ive', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Pi=
xman provides a library for manipulating pixel regions -- a set of Y-X band=
ed rectangles, image compositing using the Porter/Duff model and implicit m=
ask generation for geometric primitives including trapezoids, triangles, an=
d rectangles.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/indiv=
idual/lib/pixman-0.27.2.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libxfont-native', '1.4.5', '1.4.5', 'MIT & MIT-style & BSD', 'x11/libs', =
'http://www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native=
 libtool-native gnu-config-native  util-macros-native freetype-native fontc=
acheproto-native xtrans-native fontsproto-native libfontenc-native zlib-nat=
ive', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'li=
bXfont provides various services for X servers, most notably font selection=
 and rasterisation (through external libraries such as freetype).', 'MATCH'=
, 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXfont-1.4.=
5.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libxv', '1.0.7', '1.0.7', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros libxext videoproto', 'https://bu=
gs.freedesktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'libXv provides a=
n X Window System client interface to the X Video extension to the X protoc=
ol. The X Video extension allows for accelerated drawing of videos.  Hardwa=
re adaptors are exposed to clients, which may draw in a number of colourspa=
ces, including YUV.', 'MATCH', '1.0.5', 'http://xorg.freedesktop.org/releas=
es/individual/lib/libXv-1.0.7.tar.bz2', 'Valentin Popa <valentin.popa@intel=
=2Ecom>']
['libxcursor', '1.1.13', '1.1.13', 'MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  util-macros libxrender libxfixes', 'h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Xcursor is=
 a simple library designed to help locate and load cursors. Cursors can be =
loaded from files or memory. A library of common cursors exists which map t=
o the standard X cursor names. Cursors can exist in several sizes and the l=
ibrary automatically picks the best size.', 'MATCH', '1.1.12', 'http://xorg=
=2Efreedesktop.org/releases/individual/lib/libXcursor-1.1.13.tar.bz2', 'Val=
entin Popa <valentin.popa@intel.com>']
['libxau', '1.0.7', '1.0.7', 'MIT-style', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros =
 xproto', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1',=
 'libxau provides the main interfaces to the X11 authorisation handling, wh=
ich controls authorisation for X connections, both client-side and server-s=
ide.', 'MATCH', '1.0.5', 'http://xorg.freedesktop.org/releases/individual/l=
ib/libXau-1.0.7.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libxcursor-native', '1.1.13', '1.1.13', 'MIT-style', 'x11/libs', 'http://=
www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native gnu-config-native  util-macros-native libxrender-native libxfixes-n=
ative', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', '=
Xcursor is a simple library designed to help locate and load cursors. Curso=
rs can be loaded from files or memory. A library of common cursors exists w=
hich map to the standard X cursor names. Cursors can exist in several sizes=
 and the library automatically picks the best size.', 'MATCH', 'N/A', 'http=
://xorg.freedesktop.org/releases/individual/lib/libXcursor-1.1.13.tar.bz2',=
 'Valentin Popa <valentin.popa@intel.com>']
['libxau-native', '1.0.7', '1.0.7', 'MIT-style', 'x11/libs', 'http://www.x.=
org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e gnu-config-native gettext-minimal-native  util-macros-native xproto-nativ=
e', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libx=
au provides the main interfaces to the X11 authorisation handling, which co=
ntrols authorisation for X connections, both client-side and server-side.',=
 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXa=
u-1.0.7.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libxrandr', '1.4.0', '1.4.0', 'MIT-style', 'x11/libs', 'http://www.x.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-macros virtual/libx11 randrproto li=
bxrender libxext', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxo=
rg', '1', 'The X Resize, Rotate and Reflect Extension, called RandR for sho=
rt, brings the ability to resize, rotate and reflect the root window of a s=
creen. It is based on the X Resize and Rotate Extension as specified in the=
 Proceedings of the 2001 Usenix Technical Conference [RANDR].', 'MATCH', '1=
=2E3.2', 'http://xorg.freedesktop.org/releases/individual/lib/libXrandr-1.4=
=2E0.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libxrandr-native', '1.4.0', '1.4.0', 'MIT-style', 'x11/libs', 'http://www=
=2Ex.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native gnu-config-native  util-macros-native virtual/libx11-native randrpro=
to-native libxrender-native libxext-native', 'https://bugs.freedesktop.org/=
enter_bug.cgi?product=3Dxorg', '1', 'The X Resize, Rotate and Reflect Exten=
sion, called RandR for short, brings the ability to resize, rotate and refl=
ect the root window of a screen. It is based on the X Resize and Rotate Ext=
ension as specified in the Proceedings of the 2001 Usenix Technical Confere=
nce [RANDR].', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/indivi=
dual/lib/libXrandr-1.4.0.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>=
']
['nativesdk-libxau', '1.0.7', '1.0.7', 'MIT-style', 'x11/libs', 'http://www=
=2Ex.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native gnu-config-native virtual/nativesdk-gettext gettext-native virtual/i=
586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-linux-compile=
rlibs virtual/nativesdk-libc nativesdk-util-macros nativesdk-xproto', 'http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libxau provid=
es the main interfaces to the X11 authorisation handling, which controls au=
thorisation for X connections, both client-side and server-side.', 'MATCH',=
 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXau-1.0.7.t=
ar.bz2', 'None']
['nativesdk-libxrandr', '1.4.0', '1.4.0', 'MIT-style', 'x11/libs', 'http://=
www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/n=
ativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk-u=
til-macros virtual/nativesdk-libx11 nativesdk-randrproto nativesdk-libxrend=
er nativesdk-libxext', 'https://bugs.freedesktop.org/enter_bug.cgi?product=
=3Dxorg', '1', 'The X Resize, Rotate and Reflect Extension, called RandR fo=
r short, brings the ability to resize, rotate and reflect the root window o=
f a screen. It is based on the X Resize and Rotate Extension as specified i=
n the Proceedings of the 2001 Usenix Technical Conference [RANDR].', 'MATCH=
', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXrandr-1.=
4.0.tar.bz2', 'None']
['libfontenc', '1.1.1', '1.1.1', 'MIT', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros zlib xproto font-util', 'https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libfontenc is a l=
ibrary which helps font libraries portably determine and deal with differen=
t encodings of fonts.', 'MATCH', '1.0.5', 'http://xorg.freedesktop.org/rele=
ases/individual/lib/libfontenc-1.1.1.tar.bz2', 'Valentin Popa <valentin.pop=
a@intel.com>']
['libfontenc-native', '1.1.1', '1.1.1', 'MIT', 'x11/libs', 'http://www.x.or=
g', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
gnu-config-native  util-macros-native zlib-native xproto-native font-util-n=
ative', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', '=
libfontenc is a library which helps font libraries portably determine and d=
eal with different encodings of fonts.', 'MATCH', 'N/A', 'http://xorg.freed=
esktop.org/releases/individual/lib/libfontenc-1.1.1.tar.bz2', 'Valentin Pop=
a <valentin.popa@intel.com>']
['xserver-xf86-config', '0.1', 'INVALID', 'MIT-X', 'x11/base', 'http://www.=
x.org', 'r11', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'None', 'None', 'X.Org X server configuration file'=
, 'MATCH', 'N/A', 'file://xorg.conf', 'Laurentiu Palcu <laurentiu.palcu@int=
el.com>']
['fstests', '0.1+git1+218b99d82b56011e3f1b909e6baf22ce25af6334', '218b99d82=
b56011e3f1b909e6baf22ce25af6334', 'Zlib', 'devel', 'http://www.o-hand.com',=
 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  pango libxext libxft virtual/libx11 gtk+', 'None', 'None',=
 'Various benchmarning tests for X', 'MATCH', '0.0+svnr426', 'git://git.yoc=
toproject.org/fstests;protocol=3Dgit', 'Bogdan Marinescu <bogdan.a.marinesc=
u@intel.com>']
['xcmiscproto', '1.2.2', '1.2.2', 'MIT-style', 'x11/libs', 'http://www.x.or=
g', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedeskto=
p.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire p=
rotocol for the XC-MISC extension, which is used to get details of XID allo=
cations within the server.', 'MATCH', '1.2.2', 'http://xorg.freedesktop.org=
/releases/individual/proto/xcmiscproto-1.2.2.tar.bz2', 'Laurentiu Palcu <la=
urentiu.palcu@intel.com>']
['xserver-xorg', '1.11.2', '1.13.0', 'MIT-X', 'x11/base', 'http://www.x.org=
', 'r6', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  randrproto renderproto fixesproto damag=
eproto xextproto xproto xf86dgaproto xf86miscproto xf86rushproto xf86vidmod=
eproto xf86bigfontproto compositeproto recordproto resourceproto videoproto=
 scrnsaverproto evieext trapproto xineramaproto fontsproto kbproto inputpro=
to bigreqsproto xcmiscproto glproto pixman libxfont xtrans libxau libxext l=
ibxdmcp libdrm libxkbfile libpciaccess openssl font-util                   =
    xf86driproto dri2proto mesa-dri udev', 'None', '2', 'The X.Org X server=
', 'UPDATE', 'N/A', 'http://xorg.freedesktop.org/releases/individual/xserve=
r/xorg-server-1.11.2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>=
']
['xserver-xorg-lite', '1.11.2', '1.13.0', 'MIT-X', 'x11/base', 'http://www.=
x.org', 'r6', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  randrproto renderproto fixesproto =
damageproto xextproto xproto xf86dgaproto xf86miscproto xf86rushproto xf86v=
idmodeproto xf86bigfontproto compositeproto recordproto resourceproto video=
proto scrnsaverproto evieext trapproto xineramaproto fontsproto kbproto inp=
utproto bigreqsproto xcmiscproto glproto pixman libxfont xtrans libxau libx=
ext libxdmcp libdrm libxkbfile libpciaccess openssl font-util              =
         xf86driproto dri2proto mesa-dri udev', 'None', '2', 'The X.Org X s=
erver', 'UPDATE', 'N/A', 'http://xorg.freedesktop.org/releases/individual/x=
server/xorg-server-1.11.2.tar.bz2', 'Kai Kang <kai.kang@windriver.com>']
['xcmiscproto-native', '1.2.2', '1.2.2', 'MIT-style', 'x11/libs', 'http://w=
ww.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native gnu-config-native  util-macros-native', 'https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire proto=
col for the XC-MISC extension, which is used to get details of XID allocati=
ons within the server.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/relea=
ses/individual/proto/xcmiscproto-1.2.2.tar.bz2', 'Laurentiu Palcu <laurenti=
u.palcu@intel.com>']
['printproto', '1.0.5', '1.0.5', 'MIT', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/e=
nter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol=
 for the X Printing extension.  This extension provides a way for client ap=
plications to render to non-display devices.', 'MATCH', '1.0.5', 'http://xo=
rg.freedesktop.org/releases/individual/proto/printproto-1.0.5.tar.bz2', 'Va=
lentin Popa <valentin.popa@intel.com>']
['nativesdk-xcmiscproto', '1.2.2', '1.2.2', 'MIT-style', 'x11/libs', 'http:=
//www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual=
/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk=
-util-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg',=
 '1', 'This package provides the wire protocol for the XC-MISC extension, w=
hich is used to get details of XID allocations within the server.', 'MATCH'=
, 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/xcmiscproto=
-1.2.2.tar.bz2', 'None']
['xf86miscproto', '0.9.3', '0.9.3', 'MIT', 'x11/libs', 'http://www.x.org', =
'r1', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire proto=
col for the XFree miscellaneous extension.  The XFree86-Misc extension prov=
ides a means to access input device configuration settings specific to the =
XFree86/Xorg DDX.', 'MATCH', '0.9.3', 'http://xorg.freedesktop.org/releases=
/individual/proto/xf86miscproto-0.9.3.tar.bz2', 'Laurentiu Palcu <laurentiu=
=2Epalcu@intel.com>']
['fontsproto', '2.1.2', '2.1.2', 'MIT-style', 'x11/libs', 'http://www.x.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the X Font rasterisation extensions.  These extensions are use=
d to control server-side font configurations.', 'MATCH', '2.1.2', 'http://x=
org.freedesktop.org/releases/individual/proto/fontsproto-2.1.2.tar.bz2', 'L=
aurentiu Palcu <laurentiu.palcu@intel.com>']
['directfb-examples', '1.6.0', '1.6.0', 'MIT', 'libs', 'unknown', 'r0', 'au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  directfb', 'None', 'None', 'The DirectFB-examples package contains a=
 set of simple DirectFB       applications that can be used to test and dem=
onstrate various DirectFB       features', 'MATCH', 'N/A', 'http://www.dire=
ctfb.org/downloads/Extras/DirectFB-examples-1.6.0.tar.gz', 'Kai Kang <kai.k=
ang@windriver.com>']
['fontsproto-native', '2.1.2', '2.1.2', 'MIT-style', 'x11/libs', 'http://ww=
w.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative gnu-config-native  util-macros-native', 'https://bugs.freedesktop.org=
/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protoc=
ol for the X Font rasterisation extensions.  These extensions are used to c=
ontrol server-side font configurations.', 'MATCH', 'N/A', 'http://xorg.free=
desktop.org/releases/individual/proto/fontsproto-2.1.2.tar.bz2', 'Laurentiu=
 Palcu <laurentiu.palcu@intel.com>']
['directfb', '1.6.1', '1.6.1', 'LGPLv2.1', 'libs', 'http://directfb.org', '=
r0.1', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  jpeg libpng freetype zlib tslib sysfsutil=
s', 'None', 'None', 'DirectFB is a thin library that provides developers wi=
th hardware graphics acceleration, input device handling and abstraction, a=
n integrated windowing system with support for translucent windows and mult=
iple display layers on top of the Linux framebuffer device.', 'MATCH', '1.5=
=2E3', 'http://directfb.org/downloads/Core/DirectFB-1.6/DirectFB-1.6.1.tar.=
gz', 'Kai Kang <kai.kang@windriver.com>']
['scrnsaverproto', '1.2.2', '1.2.2', 'MIT', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire prot=
ocol for the X Screen Saver extension.  This extension allows an external \=
\"screen saver\\" client to detect when the alternative image is to be disp=
layed and to provide the graphics.', 'MATCH', '1.2.2', 'http://xorg.freedes=
ktop.org/releases/individual/proto/scrnsaverproto-1.2.2.tar.bz2', 'Laurenti=
u Palcu <laurentiu.palcu@intel.com>']
['bigreqsproto', '1.1.2', '1.1.2', 'MIT-X', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire prot=
ocol for the BIG-REQUESTS extension, used to send larger requests that usua=
l in order to avoid fragmentation.', 'MATCH', 'N/A', 'http://xorg.freedeskt=
op.org/releases/individual/proto/bigreqsproto-1.1.2.tar.bz2', 'Radu Moisan =
<radu.moisan@intel.com>']
['bigreqsproto-native', '1.1.2', '1.1.2', 'MIT-X', 'x11/libs', 'http://www.=
x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive gnu-config-native  util-macros-native', 'https://bugs.freedesktop.org/e=
nter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol=
 for the BIG-REQUESTS extension, used to send larger requests that usual in=
 order to avoid fragmentation.', 'MATCH', 'N/A', 'http://xorg.freedesktop.o=
rg/releases/individual/proto/bigreqsproto-1.1.2.tar.bz2', 'Radu Moisan <rad=
u.moisan@intel.com>']
['nativesdk-bigreqsproto', '1.1.2', '1.1.2', 'MIT-X', 'x11/libs', 'http://w=
ww.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/na=
tivesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk-ut=
il-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1=
', 'This package provides the wire protocol for the BIG-REQUESTS extension,=
 used to send larger requests that usual in order to avoid fragmentation.',=
 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/big=
reqsproto-1.1.2.tar.bz2', 'None']
['xproto', '7.0.23', '7.0.23', 'MIT & MIT-style', 'x11/libs', 'http://www.x=
=2Eorg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freed=
esktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the b=
asic headers for the X Window System.', 'MATCH', '7.0.23', 'http://xorg.fre=
edesktop.org/releases/individual/proto/xproto-7.0.23.tar.bz2', 'Laurentiu P=
alcu <laurentiu.palcu@intel.com>']
['fontcacheproto', '0.1.3', '0.1.3', 'BSD', 'x11/libs', 'http://www.x.org',=
 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire prot=
ocol for the X Font Cache extension.  This extension is used by X-TrueType =
to cache information about fonts.', 'MATCH', '0.1.3', 'http://xorg.freedesk=
top.org/releases/individual/proto/fontcacheproto-0.1.3.tar.bz2', 'Valentin =
Popa <valentin.popa@intel.com>']
['xproto-native', '7.0.23', '7.0.23', 'MIT & MIT-style', 'x11/libs', 'http:=
//www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native gnu-config-native  util-macros-native', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the basic=
 headers for the X Window System.', 'MATCH', 'N/A', 'http://xorg.freedeskto=
p.org/releases/individual/proto/xproto-7.0.23.tar.bz2', 'Laurentiu Palcu <l=
aurentiu.palcu@intel.com>']
['fontcacheproto-native', '0.1.3', '0.1.3', 'BSD', 'x11/libs', 'http://www.=
x.org', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive gnu-config-native  util-macros-native', 'https://bugs.freedesktop.org/e=
nter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol=
 for the X Font Cache extension.  This extension is used by X-TrueType to c=
ache information about fonts.', 'MATCH', 'N/A', 'http://xorg.freedesktop.or=
g/releases/individual/proto/fontcacheproto-0.1.3.tar.bz2', 'Valentin Popa <=
valentin.popa@intel.com>']
['nativesdk-xproto', '7.0.23', '7.0.23', 'MIT & MIT-style', 'x11/libs', 'ht=
tp://www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native li=
btool-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virt=
ual/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc native=
sdk-util-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxor=
g', '1', 'This package provides the basic headers for the X Window System.'=
, 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/xp=
roto-7.0.23.tar.bz2', 'None']
['resourceproto', '1.2.0', '1.2.0', 'MIT', 'x11/libs', 'http://www.x.org', =
'r1', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire proto=
col for the X Resource extension.  XRes provides an interface that allows X=
 clients to see and monitor X resource usage of various clients.', 'MATCH',=
 '1.2.0', 'http://xorg.freedesktop.org/releases/individual/proto/resourcepr=
oto-1.2.0.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['renderproto', '0.11.1', '0.11.1', 'MIT-style', 'x11/libs', 'http://www.x.=
org', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesk=
top.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire=
 protocol for the X Rendering extension.  This is the basis the image compo=
sition within the X window system.', 'MATCH', '0.11.1', 'http://xorg.freede=
sktop.org/releases/individual/proto/renderproto-0.11.1.tar.bz2', 'Valentin =
Popa <valentin.popa@intel.com>']
['renderproto-native', '0.11.1', '0.11.1', 'MIT-style', 'x11/libs', 'http:/=
/www.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native gnu-config-native  util-macros-native', 'https://bugs.freedesktop.=
org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire pro=
tocol for the X Rendering extension.  This is the basis the image compositi=
on within the X window system.', 'MATCH', 'N/A', 'http://xorg.freedesktop.o=
rg/releases/individual/proto/renderproto-0.11.1.tar.bz2', 'Valentin Popa <v=
alentin.popa@intel.com>']
['xf86dgaproto', '2.1', '2.1', 'MIT', 'x11/libs', 'http://www.x.org', 'r2',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/ent=
er_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol f=
or the XFree86 Direct Graphics Access extension. This extension allows dire=
ct graphics access to a framebuffer-like region, as well as relative mouse =
reporting.', 'MATCH', '2.1', 'http://xorg.freedesktop.org/releases/individu=
al/proto/xf86dgaproto-2.1.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel=
=2Ecom>']
['calibrateproto', '0.0+git1+1da6fd1e2c7a49648245c98481fabea8b9690a8c', '1d=
a6fd1e2c7a49648245c98481fabea8b9690a8c', 'MIT-style', 'x11/libs', 'http://w=
ww.x.org', 'r2', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.fre=
edesktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'This package provides =
the wire protocol for the Touchscreen calibration extension.', 'MATCH', '0.=
0+git0+1da6fd1e2c7a49648245c98481fabea8b9690a8c', 'git://anongit.freedeskto=
p.org/git/xorg/proto/calibrateproto;protocol=3Dgit', 'Valentin Popa <valent=
in.popa@intel.com>']
['xf86driproto', '2.1.1', '2.1.1', 'MIT', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org=
/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protoc=
ol for the XFree86 Direct Rendering Infrastructure extension.  The XFree86-=
DRI extension is used to organize direct rendering support or 3D clients an=
d help arbitrate requests.', 'MATCH', '2.1.1', 'http://xorg.freedesktop.org=
/releases/individual/proto/xf86driproto-2.1.1.tar.bz2', 'Laurentiu Palcu <l=
aurentiu.palcu@intel.com>']
['nativesdk-renderproto', '0.11.1', '0.11.1', 'MIT-style', 'x11/libs', 'htt=
p://www.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native lib=
tool-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtu=
al/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc natives=
dk-util-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg=
', '1', 'This package provides the wire protocol for the X Rendering extens=
ion.  This is the basis the image composition within the X window system.',=
 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/ren=
derproto-0.11.1.tar.bz2', 'None']
['glproto', '1.4.16', '1.4.16', 'MIT', 'x11/libs', 'http://www.x.org', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/en=
ter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol =
for the OpenGL-related extensions, used to enable the rendering of applicat=
ions using OpenGL.', 'MATCH', '1.4.15', 'http://xorg.freedesktop.org/releas=
es/individual/proto/glproto-1.4.16.tar.bz2', 'Valentin Popa <valentin.popa@=
intel.com>']
['nativesdk-glproto', '1.4.16', '1.4.16', 'MIT', 'x11/libs', 'http://www.x.=
org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/natives=
dk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk-util-ma=
cros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'T=
his package provides the wire protocol for the OpenGL-related extensions, u=
sed to enable the rendering of applications using OpenGL.', 'MATCH', 'N/A',=
 'http://xorg.freedesktop.org/releases/individual/proto/glproto-1.4.16.tar.=
bz2', 'None']
['dmxproto', '2.3.1', '2.3.1', 'MIT', 'x11/libs', 'http://www.x.org', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/ent=
er_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol f=
or the DMX extension.  The DMX extension provides support for communication=
 with and control of Xdmx server.  Attributes of the Xdmx server and of the=
 back-end screens attached to the server can be queried and modified via th=
is protocol.', 'MATCH', '2.3.1', 'http://xorg.freedesktop.org/releases/indi=
vidual/proto/dmxproto-2.3.1.tar.bz2', 'Valentin Popa <valentin.popa@intel.c=
om>']
['damageproto', '1.2.1', '1.2.1', 'MIT-style', 'x11/libs', 'http://www.x.or=
g', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedeskto=
p.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire p=
rotocol for the DAMAGE extension.  The DAMAGE extension allows applications=
 to receive information about changes made to pixel contents of windows and=
 pixmaps.', 'MATCH', '1.2.1', 'http://xorg.freedesktop.org/releases/individ=
ual/proto/damageproto-1.2.1.tar.bz2', 'Valentin Popa <valentin.popa@intel.c=
om>']
['xf86bigfontproto', '1.2.0', '1.2.0', 'MIT', 'x11/libs', 'http://www.x.org=
', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the XFree86 Big Font extension.  This extension makes larger f=
ont requests possible.', 'MATCH', '1.2.0', 'http://xorg.freedesktop.org/rel=
eases/individual/proto/xf86bigfontproto-1.2.0.tar.bz2', 'Laurentiu Palcu <l=
aurentiu.palcu@intel.com>']
['damageproto-native', '1.2.1', '1.2.1', 'MIT-style', 'x11/libs', 'http://w=
ww.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-=
native gnu-config-native  util-macros-native', 'https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire proto=
col for the DAMAGE extension.  The DAMAGE extension allows applications to =
receive information about changes made to pixel contents of windows and pix=
maps.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/pr=
oto/damageproto-1.2.1.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['xf86bigfontproto-native', '1.2.0', '1.2.0', 'MIT', 'x11/libs', 'http://ww=
w.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative gnu-config-native  util-macros-native', 'https://bugs.freedesktop.org=
/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protoc=
ol for the XFree86 Big Font extension.  This extension makes larger font re=
quests possible.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/in=
dividual/proto/xf86bigfontproto-1.2.0.tar.bz2', 'Laurentiu Palcu <laurentiu=
=2Epalcu@intel.com>']
['nativesdk-xf86bigfontproto', '1.2.0', '1.2.0', 'MIT', 'x11/libs', 'http:/=
/www.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/=
nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk-=
util-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', =
'1', 'This package provides the wire protocol for the XFree86 Big Font exte=
nsion.  This extension makes larger font requests possible.', 'MATCH', 'N/A=
', 'http://xorg.freedesktop.org/releases/individual/proto/xf86bigfontproto-=
1.2.0.tar.bz2', 'None']
['compositeproto', '0.4.2', '0.4.2', 'MIT & MIT-style', 'x11/libs', 'http:/=
/www.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.f=
reedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides t=
he wire protocol for the X composite extension.  The X composite extension =
provides three related mechanisms for compositing and off-screen storage.',=
 'MATCH', '0.4.2', 'http://xorg.freedesktop.org/releases/individual/proto/c=
ompositeproto-0.4.2.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['compositeproto-native', '0.4.2', '0.4.2', 'MIT & MIT-style', 'x11/libs', =
'http://www.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native=
 libtool-native gnu-config-native  util-macros-native', 'https://bugs.freed=
esktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the w=
ire protocol for the X composite extension.  The X composite extension prov=
ides three related mechanisms for compositing and off-screen storage.', 'MA=
TCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/composi=
teproto-0.4.2.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['videoproto', '2.3.1', '2.3.1', 'MIT & MIT-style', 'x11/libs', 'http://www=
=2Ex.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.fre=
edesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the=
 wire protocol for the X Video extension.  This extension alows for accerla=
ted drawing of videos.', 'MATCH', '2.3.1', 'http://xorg.freedesktop.org/rel=
eases/individual/proto/videoproto-2.3.1.tar.bz2', 'Valentin Popa <valentin.=
popa@intel.com>']
['inputproto', '2.2', '2.2', 'MIT & MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-m=
acros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', '=
This package provides the wire protocol for the X Input extension.  The ext=
ension supports input devices other then the core X keyboard and pointer.',=
 'MATCH', '2.1.99.4', 'http://xorg.freedesktop.org/releases/individual/prot=
o/inputproto-2.2.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['inputproto-native', '2.2', '2.2', 'MIT & MIT-style', 'x11/libs', 'http://=
www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native gnu-config-native gettext-minimal-native  util-macros-native', 'htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package=
 provides the wire protocol for the X Input extension.  The extension suppo=
rts input devices other then the core X keyboard and pointer.', 'MATCH', 'N=
/A', 'http://xorg.freedesktop.org/releases/individual/proto/inputproto-2.2.=
tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['recordproto', '1.14.2', '1.14.2', 'MIT-style', 'x11/libs', 'http://www.x.=
org', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesk=
top.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire=
 protocol for the X Record extension.  This extension is used to record and=
 play back event sequences.', 'MATCH', '1.14.2', 'http://xorg.freedesktop.o=
rg/releases/individual/proto/recordproto-1.14.2.tar.bz2', 'Laurentiu Palcu =
<laurentiu.palcu@intel.com>']
['xextproto', '7.2.1', '7.2.1', 'MIT & MIT-style', 'x11/libs', 'http://www.=
x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  uti=
l-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1'=
, 'This package provides the wire protocol for several X extensions.  These=
 protocol extensions include DOUBLE-BUFFER, DPMS, Extended-Visual-Informati=
on, LBX, MIT_SHM, MIT_SUNDRY-NONSTANDARD, Multi-Buffering, SECURITY, SHAPE,=
 SYNC, TOG-CUP, XC-APPGROUP, XC-MISC, XTEST.  In addition a small set of ut=
ility functions are also available.', 'MATCH', '7.2.1', 'http://xorg.freede=
sktop.org/releases/individual/proto/xextproto-7.2.1.tar.bz2', 'Laurentiu Pa=
lcu <laurentiu.palcu@intel.com>']
['xextproto-native', '7.2.1', '7.2.1', 'MIT & MIT-style', 'x11/libs', 'http=
://www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native gnu-config-native gettext-minimal-native  util-macros-native', '=
https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This pack=
age provides the wire protocol for several X extensions.  These protocol ex=
tensions include DOUBLE-BUFFER, DPMS, Extended-Visual-Information, LBX, MIT=
_SHM, MIT_SUNDRY-NONSTANDARD, Multi-Buffering, SECURITY, SHAPE, SYNC, TOG-C=
UP, XC-APPGROUP, XC-MISC, XTEST.  In addition a small set of utility functi=
ons are also available.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/rele=
ases/individual/proto/xextproto-7.2.1.tar.bz2', 'Laurentiu Palcu <laurentiu=
=2Epalcu@intel.com>']
['nativesdk-inputproto', '2.2', '2.2', 'MIT & MIT-style', 'x11/libs', 'http=
://www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native gnu-config-native virtual/nativesdk-gettext gettext-native virtu=
al/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-linux-com=
pilerlibs virtual/nativesdk-libc nativesdk-util-macros', 'https://bugs.free=
desktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the =
wire protocol for the X Input extension.  The extension supports input devi=
ces other then the core X keyboard and pointer.', 'MATCH', 'N/A', 'http://x=
org.freedesktop.org/releases/individual/proto/inputproto-2.2.tar.bz2', 'Non=
e']
['trapproto', '3.4.3', '3.4.3', 'MIT-style', 'x11/libs', 'http://www.x.org'=
, 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.=
org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire pro=
tocol for the X event trapping extension.  This extension provides the inte=
rface which allows for capture and synthesis of core input events.', 'MATCH=
', '3.4.3', 'http://xorg.freedesktop.org/releases/individual/proto/trapprot=
o-3.4.3.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['nativesdk-xextproto', '7.2.1', '7.2.1', 'MIT & MIT-style', 'x11/libs', 'h=
ttp://www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native gnu-config-native virtual/nativesdk-gettext gettext-native vi=
rtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-linux-=
compilerlibs virtual/nativesdk-libc nativesdk-util-macros', 'https://bugs.f=
reedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides t=
he wire protocol for several X extensions.  These protocol extensions inclu=
de DOUBLE-BUFFER, DPMS, Extended-Visual-Information, LBX, MIT_SHM, MIT_SUND=
RY-NONSTANDARD, Multi-Buffering, SECURITY, SHAPE, SYNC, TOG-CUP, XC-APPGROU=
P, XC-MISC, XTEST.  In addition a small set of utility functions are also a=
vailable.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individua=
l/proto/xextproto-7.2.1.tar.bz2', 'None']
['randrproto', '1.4.0', '1.4.0', 'MIT-style', 'x11/libs', 'http://www.x.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the X Resize, Rotate and Reflect extension.  This extension pr=
ovides the ability to resize, rotate and reflect the root window of a scree=
n.', 'MATCH', '1.3.2', 'http://xorg.freedesktop.org/releases/individual/pro=
to/randrproto-1.4.0.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['randrproto-native', '1.4.0', '1.4.0', 'MIT-style', 'x11/libs', 'http://ww=
w.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative gnu-config-native  util-macros-native', 'https://bugs.freedesktop.org=
/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protoc=
ol for the X Resize, Rotate and Reflect extension.  This extension provides=
 the ability to resize, rotate and reflect the root window of a screen.', '=
MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/randr=
proto-1.4.0.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['xf86vidmodeproto', '2.3.1', '2.3.1', 'MIT', 'x11/libs', 'http://www.x.org=
', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the XFree86 video mode extension.  This extension allows clien=
t applications to get and set video mode timings.', 'MATCH', '2.3.1', 'http=
://xorg.freedesktop.org/releases/individual/proto/xf86vidmodeproto-2.3.1.ta=
r.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['xineramaproto', '1.2.1', '1.2.1', 'MIT & MIT-style', 'x11/libs', 'http://=
www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.fr=
eedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides th=
e wire protocol for the Xinerama extension.  This extension is used for ret=
rieving information about physical output devices which may be combined int=
o a single logical X screen.', 'MATCH', '1.2.1', 'http://xorg.freedesktop.o=
rg/releases/individual/proto/xineramaproto-1.2.1.tar.bz2', 'Laurentiu Palcu=
 <laurentiu.palcu@intel.com>']
['xf86rushproto', '1.1.2', '1.1.2', 'MIT', 'x11/libs', 'http://www.x.org', =
'r1', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire proto=
col for the XFree86 Rush extension.  This extension is there to allow Glide=
 applications to run.', 'MATCH', '1.1.2', 'http://xorg.freedesktop.org/rele=
ases/individual/proto/xf86rushproto-1.1.2.tar.bz2', 'Laurentiu Palcu <laure=
ntiu.palcu@intel.com>']
['nativesdk-randrproto', '1.4.0', '1.4.0', 'MIT-style', 'x11/libs', 'http:/=
/www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/=
nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk-=
util-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', =
'1', 'This package provides the wire protocol for the X Resize, Rotate and =
Reflect extension.  This extension provides the ability to resize, rotate a=
nd reflect the root window of a screen.', 'MATCH', 'N/A', 'http://xorg.free=
desktop.org/releases/individual/proto/randrproto-1.4.0.tar.bz2', 'None']
['evieext', '1.1.1', '1.1.1', 'MIT-X', 'x11/libs', 'http://www.x.org', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/en=
ter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol =
for the X Event Interception Extension.  This extension allows the intercep=
tion of keyboard and mouse events.', 'MATCH', '1.1.0', 'http://xorg.freedes=
ktop.org/releases/individual/proto/evieext-1.1.1.tar.bz2', 'Saul Wold <sgw@=
linux.intel.com>']
['kbproto', '1.0.6', '1.0.6', 'MIT-style', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire proto=
col for the X Keyboard extension.  This extension is used to control option=
s related to keyboard handling and layout.', 'MATCH', '1.0.6', 'http://xorg=
=2Efreedesktop.org/releases/individual/proto/kbproto-1.0.6.tar.bz2', 'Laure=
ntiu Palcu <laurentiu.palcu@intel.com>']
['kbproto-native', '1.0.6', '1.0.6', 'MIT-style', 'x11/libs', 'http://www.x=
=2Eorg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive gnu-config-native  util-macros-native', 'https://bugs.freedesktop.org/=
enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protoco=
l for the X Keyboard extension.  This extension is used to control options =
related to keyboard handling and layout.', 'MATCH', 'N/A', 'http://xorg.fre=
edesktop.org/releases/individual/proto/kbproto-1.0.6.tar.bz2', 'Laurentiu P=
alcu <laurentiu.palcu@intel.com>']
['fixesproto', '5.0', '5.0', 'MIT & MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedeskt=
op.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the X Fixes extension.  This extension is designed to provide =
server-side support for application work arounds to shortcomings in the cor=
e X window system.', 'MATCH', '5.0', 'http://xorg.freedesktop.org/releases/=
individual/proto/fixesproto-5.0.tar.bz2', 'Valentin Popa <valentin.popa@int=
el.com>']
['fixesproto-native', '5.0', '5.0', 'MIT & MIT-style', 'x11/libs', 'http://=
www.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native libtool=
-native gnu-config-native  util-macros-native', 'https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire prot=
ocol for the X Fixes extension.  This extension is designed to provide serv=
er-side support for application work arounds to shortcomings in the core X =
window system.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/indi=
vidual/proto/fixesproto-5.0.tar.bz2', 'Valentin Popa <valentin.popa@intel.c=
om>']
['dri2proto', '2.8', '2.8', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/enter_=
bug.cgi?product=3Dxorg', 'None', 'This package provides the wire protocol f=
or the Direct Rendering Ifnrastructure 2.  DIR is required for may hardware=
 accelerated OpenGL drivers.', 'MATCH', '2.6', 'http://xorg.freedesktop.org=
/releases/individual/proto/dri2proto-2.8.tar.bz2', 'Valentin Popa <valentin=
=2Epopa@intel.com>']
['xvideo-tests', '0.1+git1+f8f320d0254c09ce483fc1d8ee99ecf5bc940965', 'f8f3=
20d0254c09ce483fc1d8ee99ecf5bc940965', 'GPLv2+', 'base', 'unknown', 'r0', '=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  libxv', 'None', 'None', 'Simple XVideo test application', 'MATCH',=
 'N/A', 'git://git.yoctoproject.org/test-xvideo;protocol=3Dgit', 'Cristian =
Iorga <cristian.iorga@intel.com>']
['nativesdk-kbproto', '1.0.6', '1.0.6', 'MIT-style', 'x11/libs', 'http://ww=
w.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nat=
ivesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk-uti=
l-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1'=
, 'This package provides the wire protocol for the X Keyboard extension.  T=
his extension is used to control options related to keyboard handling and l=
ayout.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/p=
roto/kbproto-1.0.6.tar.bz2', 'None']
['nativesdk-fixesproto', '5.0', '5.0', 'MIT & MIT-style', 'x11/libs', 'http=
://www.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native libt=
ool-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtua=
l/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesd=
k-util-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg'=
, '1', 'This package provides the wire protocol for the X Fixes extension. =
 This extension is designed to provide server-side support for application =
work arounds to shortcomings in the core X window system.', 'MATCH', 'N/A',=
 'http://xorg.freedesktop.org/releases/individual/proto/fixesproto-5.0.tar.=
bz2', 'None']
['xrestop', '0.4', '0.4', 'GPLv2+', 'x11/utils', 'http://www.freedesktop.or=
g/wiki/Software/xrestop', 'r3', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  libxres libxext virtual/libx11', =
'https://bugs.freedesktop.org/', 'None', 'top-like statistics of X11 server=
 resource usage by clients', 'MATCH', '0.4', 'http://downloads.yoctoproject=
=2Eorg/releases/xrestop/xrestop-0.4.tar.gz', 'Laurentiu Palcu <laurentiu.pa=
lcu@intel.com>']
['matchbox-wm', '1.2+git1+f4394eaed475de6e627d373c5b35ee2cf87072e3', 'f4394=
eaed475de6e627d373c5b35ee2cf87072e3', 'GPLv2+', 'x11/wm', 'http://matchbox-=
project.org', 'r1', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  libmatchbox virtual/libx11 l=
ibxext libxrender startup-notification expat gconf', 'http://bugzilla.opene=
dhand.com/', 'None', 'Matchbox window manager', 'MATCH', 'N/A', 'git://git.=
yoctoproject.org/matchbox-window-manager;protocol=3Dgit', 'Valentin Popa <v=
alentin.popa@intel.com>']
['libxsettings-client', '0.10', '0.10', 'MIT-style', 'x/libs', 'http://matc=
hbox-project.org/sources/optional-dependencies/', 'r4', 'autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native virtual/gettex=
t gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  virtual/libx11', 'http://bugzilla.openedhand.com/', '=
None', 'Libraries used for applications making use of the Xsettings configu=
ration setting propagation protocol. Controls setting of double click timeo=
ut, drag-and-drop threshold, and default foreground and background colors f=
or all applications running within a desktop.', 'MATCH', 'N/A', 'http://dow=
nloads.yoctoproject.org/releases/matchbox/optional-dependencies/Xsettings-c=
lient-0.10.tar.gz', 'Valentin Popa <valentin.popa@intel.com>']
['xcb-util-keysyms', '0.3.9', '0.3.9', 'MIT', 'x11/libs', 'http://xcb.freed=
esktop.org/XcbUtil/', 'r0', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-native'=
, 'https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'The =
xcb-util module provides a number of libraries which sit on top of libxcb, =
the core X protocol library, and some of the extension libraries. These exp=
erimental libraries provide convenience functions and interfaces which make=
 the raw X protocol more usable. Some of the libraries also provide client-=
side code which is not strictly part of the X protocol but which have tradi=
tionally been provided by Xlib.', 'MATCH', 'N/A', 'http://xcb.freedesktop.o=
rg/dist/xcb-util-keysyms-0.3.9.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@=
intel.com>']
['xcb-util-wm', '0.3.9', '0.3.9', 'MIT', 'x11/libs', 'http://xcb.freedeskto=
p.org/XcbUtil/', 'r0', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-native', 'ht=
tps://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'The xcb-u=
til module provides a number of libraries which sit on top of libxcb, the c=
ore X protocol library, and some of the extension libraries. These experime=
ntal libraries provide convenience functions and interfaces which make the =
raw X protocol more usable. Some of the libraries also provide client-side =
code which is not strictly part of the X protocol but which have traditiona=
lly been provided by Xlib.', 'MATCH', 'N/A', 'http://xcb.freedesktop.org/di=
st/xcb-util-wm-0.3.9.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>=
']
['xcb-util-image', '0.3.9', '0.3.9', 'MIT', 'x11/libs', 'http://xcb.freedes=
ktop.org/XcbUtil/', 'r0', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-native xc=
b-util', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None'=
, 'The xcb-util module provides a number of libraries which sit on top of l=
ibxcb, the core X protocol library, and some of the extension libraries. Th=
ese experimental libraries provide convenience functions and interfaces whi=
ch make the raw X protocol more usable. Some of the libraries also provide =
client-side code which is not strictly part of the X protocol but which hav=
e traditionally been provided by Xlib.', 'MATCH', 'N/A', 'http://xcb.freede=
sktop.org/dist/xcb-util-image-0.3.9.tar.bz2', 'Laurentiu Palcu <laurentiu.p=
alcu@intel.com>']
['libxcb-native', '1.8.1', '1.8.1', 'MIT', 'x11/libs', 'http://xcb.freedesk=
top.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative gnu-config-native  xcb-proto-native xproto-native libxau-native libxs=
lt-native xcb-proto-native python-native libpthread-stubs-native xcb-proto-=
native libxdmcp-native', 'https://bugs.freedesktop.org/enter_bug.cgi?produc=
t=3DXCB', 'None', 'The X protocol C-language Binding (XCB) is a replacement=
 for Xlib featuring a small footprint, latency hiding, direct access to the=
 protocol, improved threading support, and extensibility.', 'MATCH', 'N/A',=
 'http://xcb.freedesktop.org/dist/libxcb-1.8.1.tar.bz2', 'Valentin Popa <va=
lentin.popa@intel.com>']
['nativesdk-libxcb', '1.8.1', '1.8.1', 'MIT', 'x11/libs', 'http://xcb.freed=
esktop.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/=
nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk-=
xcb-proto nativesdk-xproto nativesdk-libxau libxslt-native xcb-proto-native=
 python-native nativesdk-libpthread-stubs xcb-proto-native nativesdk-libxdm=
cp', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'T=
he X protocol C-language Binding (XCB) is a replacement for Xlib featuring =
a small footprint, latency hiding, direct access to the protocol, improved =
threading support, and extensibility.', 'MATCH', 'N/A', 'http://xcb.freedes=
ktop.org/dist/libxcb-1.8.1.tar.bz2', 'None']
['libpthread-stubs', '0.3', '0.3', 'MIT', 'x11/libs', 'http://xcb.freedeskt=
op.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  ', 'http://bugs.freedesktop.org/b=
uglist.cgi?product=3DXCB', 'None', 'This library provides weak aliases for =
pthread functions not provided in libc or otherwise available by default.',=
 'MATCH', 'N/A', 'http://xcb.freedesktop.org/dist/libpthread-stubs-0.3.tar.=
bz2', 'Saul Wold <sgw@linux.intel.com>']
['xcb-util-renderutil', '0.3.8', '0.3.8', 'MIT', 'x11/libs', 'http://xcb.fr=
eedesktop.org/XcbUtil/', 'r0', 'pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-nati=
ve', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'T=
he xcb-util module provides a number of libraries which sit on top of libxc=
b, the core X protocol library, and some of the extension libraries. These =
experimental libraries provide convenience functions and interfaces which m=
ake the raw X protocol more usable. Some of the libraries also provide clie=
nt-side code which is not strictly part of the X protocol but which have tr=
aditionally been provided by Xlib.', 'MATCH', 'N/A', 'http://xcb.freedeskto=
p.org/dist/xcb-util-renderutil-0.3.8.tar.bz2', 'None']
['xcb-util', '0.3.9', '0.3.9', 'MIT', 'x11/libs', 'http://xcb.freedesktop.o=
rg/XcbUtil/', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-native', 'https=
://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'The xcb-util=
 module provides a number of libraries which sit on top of libxcb, the core=
 X protocol library, and some of the extension libraries. These experimenta=
l libraries provide convenience functions and interfaces which make the raw=
 X protocol more usable. Some of the libraries also provide client-side cod=
e which is not strictly part of the X protocol but which have traditionally=
 been provided by Xlib.', 'MATCH', 'N/A', 'http://xcb.freedesktop.org/dist/=
xcb-util-0.3.9.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['libpthread-stubs-native', '0.3', '0.3', 'MIT', 'x11/libs', 'http://xcb.fr=
eedesktop.org', 'r0', 'pkgconfig-native autoconf-native automake-native lib=
tool-native gnu-config-native  ', 'http://bugs.freedesktop.org/buglist.cgi?=
product=3DXCB', 'None', 'This library provides weak aliases for pthread fun=
ctions not provided in libc or otherwise available by default.', 'MATCH', '=
N/A', 'http://xcb.freedesktop.org/dist/libpthread-stubs-0.3.tar.bz2', 'Saul=
 Wold <sgw@linux.intel.com>']
['nativesdk-libpthread-stubs', '0.3', '0.3', 'MIT', 'x11/libs', 'http://xcb=
=2Efreedesktop.org', 'r0', 'pkgconfig-native autoconf-native automake-nativ=
e libtool-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk =
virtual/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc', =
'http://bugs.freedesktop.org/buglist.cgi?product=3DXCB', 'None', 'This libr=
ary provides weak aliases for pthread functions not provided in libc or oth=
erwise available by default.', 'MATCH', 'N/A', 'http://xcb.freedesktop.org/=
dist/libpthread-stubs-0.3.tar.bz2', 'None']
['xcb-proto', '1.7.1', '1.7.1', 'MIT', 'x11/libs', 'http://xcb.freedesktop.=
org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc    python-native ', 'https://bugs.fre=
edesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'Function prototypes for=
 the X protocol C-language Binding (XCB).  XCB is a replacement for Xlib fe=
aturing a small footprint, latency hiding, direct access to the protocol, i=
mproved threading support, and extensibility.', 'MATCH', 'N/A', 'http://xcb=
=2Efreedesktop.org/dist/xcb-proto-1.7.1.tar.bz2', 'Laurentiu Palcu <laurent=
iu.palcu@intel.com>']
['builder', '0.1', 'INVALID', 'MIT', 'x11', 'unknown', 'r4', ' virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   base-pa=
sswd shadow-native shadow-sysroot shadow', 'None', 'None', 'This recipe cre=
ate a new user named builder, who is used for specific jobs like building. =
The task can be auto started via mini X', 'MATCH', 'N/A', 'file://builder_h=
ob_start.sh', 'None']
['xcb-proto-native', '1.7.1', '1.7.1', 'MIT', 'x11/libs', 'http://xcb.freed=
esktop.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native gnu-config-native  python-native python-native', 'https://bugs.fre=
edesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'Function prototypes for=
 the X protocol C-language Binding (XCB).  XCB is a replacement for Xlib fe=
aturing a small footprint, latency hiding, direct access to the protocol, i=
mproved threading support, and extensibility.', 'MATCH', 'N/A', 'http://xcb=
=2Efreedesktop.org/dist/xcb-proto-1.7.1.tar.bz2', 'Laurentiu Palcu <laurent=
iu.palcu@intel.com>']
['libfakekey', '0.0+git1+e8c2e412ea4a417afc1f30e32cb7bdc508b1dccc', 'e8c2e4=
12ea4a417afc1f30e32cb7bdc508b1dccc', 'LGPLv2+', 'x11/wm', 'http://matchbox-=
project.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  libxtst', 'http://bugzilla.openedhand.com/', 'None', "libfakekey is a s=
imple library for converting UTF-8 characters into 'fake' X key-presses.", =
'MATCH', '0.0+svnr2031', 'git://git.yoctoproject.org/libfakekey;protocol=3D=
git', 'Valentin Popa <valentin.popa@intel.com>']
['nativesdk-xcb-proto', '1.7.1', '1.7.1', 'MIT', 'x11/libs', 'http://xcb.fr=
eedesktop.org', 'r0', 'pkgconfig-native autoconf-native automake-native lib=
tool-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtu=
al/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc python-=
native', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None'=
, 'Function prototypes for the X protocol C-language Binding (XCB).  XCB is=
 a replacement for Xlib featuring a small footprint, latency hiding, direct=
 access to the protocol, improved threading support, and extensibility.', '=
MATCH', 'N/A', 'http://xcb.freedesktop.org/dist/xcb-proto-1.7.1.tar.bz2', '=
None']
['xmodmap', '1.0.7', '1.0.7', 'MIT', 'x11/apps', 'http://www.x.org/', 'r8.0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros-native virtual/libx11', 'https://=
bugs.freedesktop.org', '1', "The xmodmap program is used to edit and displa=
y the keyboard modifier map and keymap table that are used by client applic=
ations to convert event keycodes into keysyms. It is usually run from the u=
ser's session startup script to configure the keyboard according to persona=
l tastes.", 'MATCH', '1.0.5', 'http://xorg.freedesktop.org/releases/individ=
ual/app/xmodmap-1.0.7.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com=
>']
['xev', '1.2.0', '1.2.0', 'MIT', 'x11/apps', 'http://www.x.org/', 'r0', 'pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  util-macros-native virtual/libx11 libxrandr xproto'=
, 'https://bugs.freedesktop.org', '1', 'X Event Viewer', 'MATCH', '1.0.4', =
'http://xorg.freedesktop.org/releases/individual/app/xev-1.2.0.tar.bz2', 'L=
aurentiu Palcu <laurentiu.palcu@intel.com>']
['xrandr', '1.3.5', '1.3.5', 'MIT', 'x11/apps', 'http://www.x.org/', 'r8.1'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxrandr li=
bxrender', 'https://bugs.freedesktop.org', '1', 'Xrandr is used to set the =
size, orientation and/or reflection of the outputs for a screen. It can als=
o set the screen size.', 'MATCH', '1.3.5', 'http://xorg.freedesktop.org/rel=
eases/individual/app/xrandr-1.3.5.tar.bz2', 'Laurentiu Palcu <laurentiu.pal=
cu@intel.com>']
['libxcb', '1.8.1', '1.8.1', 'MIT', 'x11/libs', 'http://xcb.freedesktop.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  xcb-proto xproto libxau libxslt-native =
xcb-proto-native  python-native  libpthread-stubs xcb-proto-native libxdmcp=
', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'The=
 X protocol C-language Binding (XCB) is a replacement for Xlib featuring a =
small footprint, latency hiding, direct access to the protocol, improved th=
reading support, and extensibility.', 'MATCH', '1.8', 'http://xcb.freedeskt=
op.org/dist/libxcb-1.8.1.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>=
']
['xprop', '1.2.1', '1.2.1', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros-native virtual/libx11  libxmu vir=
tual/libx11', 'https://bugs.freedesktop.org', '1', 'The xprop utility is fo=
r displaying window and font properties in an X server. One window or font =
is selected using the command line arguments or possibly in the case of a w=
indow, by clicking on the desired window. A list of properties is then give=
n, possibly with formatting information.', 'MATCH', '1.2.1', 'http://xorg.f=
reedesktop.org/releases/individual/app/xprop-1.2.1.tar.bz2', 'Laurentiu Pal=
cu <laurentiu.palcu@intel.com>']
['xeyes', '1.1.1', '1.1.1', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros-native virtual/libx11  virtual/libx=
11 libxau libxt libxext libxmu', 'https://bugs.freedesktop.org', '1', 'X ap=
plication', 'MATCH', '1.1.0', 'http://xorg.freedesktop.org/releases/individ=
ual/app/xeyes-1.1.1.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['x11perf', '1.5.4', '1.5.4', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8=
=2E0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxmu =
libxrender libxft libxext fontconfig', 'https://bugs.freedesktop.org', '1',=
 'The x11perf program runs one or more performance tests and reports how fa=
st an X server can execute the tests.', 'MATCH', '1.5.4', 'http://xorg.free=
desktop.org/releases/individual/app/x11perf-1.5.4.tar.bz2', 'Laurentiu Palc=
u <laurentiu.palcu@intel.com>']
['mkfontscale', '1.1.0', '1.1.0', 'MIT-X', 'x11/apps', 'http://www.x.org/',=
 'r8.0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros-native virtual/libx11  zlib=
 libfontenc freetype virtual/libx11', 'https://bugs.freedesktop.org', 'None=
', 'For each directory argument, mkfontscale reads all of the scalable font=
 files in the directory. For every font file found, an X11 font name (XLFD)=
 is generated, and is written together with the file name to a file fonts.s=
cale in the directory.  The resulting fonts.scale is used by the mkfontdir =
program.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual=
/app/mkfontscale-1.1.0.tar.bz2', 'Radu Moisan <radu.moisan@intel.com>']
['xauth', '1.0.7', '1.0.7', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxau libx=
ext libxmu', 'https://bugs.freedesktop.org', '1', 'X application to edit an=
d display the authorization information used in connecting to the X server.=
', 'MATCH', '1.0.5', 'http://xorg.freedesktop.org/releases/individual/app/x=
auth-1.0.7.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['mkfontscale-native', '1.1.0', '1.1.0', 'MIT-X', 'x11/apps', 'http://www.x=
=2Eorg/', 'r8.0', 'pkgconfig-native autoconf-native automake-native libtool=
-native gnu-config-native  util-macros-native virtual/libx11-native zlib-na=
tive libfontenc-native freetype-native virtual/libx11-native', 'https://bug=
s.freedesktop.org', 'None', 'For each directory argument, mkfontscale reads=
 all of the scalable font files in the directory. For every font file found=
, an X11 font name (XLFD) is generated, and is written together with the fi=
le name to a file fonts.scale in the directory.  The resulting fonts.scale =
is used by the mkfontdir program.', 'MATCH', 'N/A', 'http://xorg.freedeskto=
p.org/releases/individual/app/mkfontscale-1.1.0.tar.bz2', 'Radu Moisan <rad=
u.moisan@intel.com>']
['xdpyinfo', '1.3.0', '1.3.0', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r=
8.0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxtst =
libxext libxxf86vm libxxf86dga libxxf86misc libxi libxrender libxinerama li=
bdmx libxp libxau', 'https://bugs.freedesktop.org', '1', 'Xdpyinfo is a uti=
lity for displaying information about an X server. It is used to examine th=
e capabilities of a server, the predefined values for various parameters us=
ed in communicating between clients and the server, and the different types=
 of screens and visuals that are available.', 'MATCH', '1.3.0', 'http://xor=
g.freedesktop.org/releases/individual/app/xdpyinfo-1.3.0.tar.bz2', 'Laurent=
iu Palcu <laurentiu.palcu@intel.com>']
['xkbcomp', '1.2.4', '1.2.4', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8=
=2E0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxkbf=
ile', 'https://bugs.freedesktop.org', 'None', 'The xkbcomp keymap compiler =
converts a description of an XKB keymap into one of several output formats.=
 The most common use for xkbcomp is to create a compiled keymap file (.xkm =
extension) which can be read directly by XKB-capable X servers or utilities=
=2E', 'MATCH', '1.2.3', 'http://xorg.freedesktop.org/releases/individual/ap=
p/xkbcomp-1.2.4.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['mutter', '2.29.1', '2.29.1', 'GPLv2', 'x11/wm', 'unknown', 'r1', 'pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  startup-notification gtk+ gconf clutter-1.8 gdk-pixbuf-n=
ative intltool glib-2.0-native gnome-common hicolor-icon-theme gconf gconf-=
native shared-mime-info-native shared-mime-info', 'None', 'None', 'Metacity=
 is the boring window manager for the adult in you. Mutter is metacity + cl=
utter.', 'MATCH', '2.29.1_0.4', 'http://ftp.gnome.org/pub/GNOME/sources/mut=
ter/2.29/mutter-2.29.1.tar.bz2;name=3Darchive', 'Valentin Popa <valentin.po=
pa@intel.com>']
['xkbcomp-native', '1.2.4', '1.2.4', 'MIT-X', 'x11/apps', 'http://www.x.org=
/', 'r8.0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e gnu-config-native  util-macros-native virtual/libx11-native libxkbfile-na=
tive', 'https://bugs.freedesktop.org', 'None', 'The xkbcomp keymap compiler=
 converts a description of an XKB keymap into one of several output formats=
=2E The most common use for xkbcomp is to create a compiled keymap file (.x=
km extension) which can be read directly by XKB-capable X servers or utilit=
ies.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/app=
/xkbcomp-1.2.4.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['rgb', '1.0.4', '1.0.4', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros-native virtual/libx11  xproto util-=
macros', 'https://bugs.freedesktop.org', '1', 'X application', 'MATCH', 'N/=
A', 'http://xorg.freedesktop.org/releases/individual/app/rgb-1.0.4.tar.bz2'=
, 'None']
['xvinfo', '1.1.1', '1.1.1', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros-native virtual/libx11  libxv', '=
https://bugs.freedesktop.org', '1', 'xvinfo prints out the capabilities of =
any video adaptors associated with the display that are accessible through =
the X-Video extension.', 'MATCH', '1.1.1', 'http://xorg.freedesktop.org/rel=
eases/individual/app/xvinfo-1.1.1.tar.bz2', 'Laurentiu Palcu <laurentiu.pal=
cu@intel.com>']
['xwininfo', '1.1.2', '1.1.2', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r=
8.0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxext =
libxmu', 'https://bugs.freedesktop.org', '0', 'Xwininfo is a utility for di=
splaying information about windows.  Information may include window positio=
n, size, color depth, and a number of other items.', 'MATCH', '1.1.2', 'htt=
p://xorg.freedesktop.org/releases/individual/app/xwininfo-1.1.2.tar.bz2', '=
Laurentiu Palcu <laurentiu.palcu@intel.com>']
['xinput', '1.6.0', '1.6.0', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros-native virtual/libx11  libxi lib=
xrandr libxinerama', 'https://bugs.freedesktop.org', 'None', 'Xinput is an =
utility for configuring and testing XInput devices', 'MATCH', '1.14', 'http=
://xorg.freedesktop.org/releases/individual/app/xinput-1.6.0.tar.bz2', 'Lau=
rentiu Palcu <laurentiu.palcu@intel.com>']
['mkfontdir', '1.0.7', '1.0.7', 'MIT-X', 'x11/apps', 'http://www.x.org/', '=
r8.0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros-native virtual/libx11', 'http=
s://bugs.freedesktop.org', '1', 'For each directory argument, mkfontdir rea=
ds all of the font files in the directory. The font names and related data =
are written out to the files \\"fonts.dir\\", \\"fonts.scale\\", and \\"fon=
ts.alias\\".  The X server and font server use these files to find the avai=
lable font files.', 'MATCH', '1.0.7', 'http://xorg.freedesktop.org/releases=
/individual/app/mkfontdir-1.0.7.tar.bz2', 'Radu Moisan <radu.moisan@intel.c=
om>']
['mkfontdir-native', '1.0.7', '1.0.7', 'MIT-X', 'x11/apps', 'http://www.x.o=
rg/', 'r8.0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive gnu-config-native  util-macros-native virtual/libx11-native', 'https://=
bugs.freedesktop.org', '1', 'For each directory argument, mkfontdir reads a=
ll of the font files in the directory. The font names and related data are =
written out to the files \\"fonts.dir\\", \\"fonts.scale\\", and \\"fonts.a=
lias\\".  The X server and font server use these files to find the availabl=
e font files.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/indiv=
idual/app/mkfontdir-1.0.7.tar.bz2', 'Radu Moisan <radu.moisan@intel.com>']
['xinit', '1.3.2', '1.3.2', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros-native virtual/libx11', 'https://=
bugs.freedesktop.org', '1', 'The xinit program is used to start the X Windo=
w System server and a first client program on systems that cannot start X d=
irectly from /etc/init or in environments that use multiple window systems.=
 When this first client exits, xinit will kill the X server and then termin=
ate.', 'MATCH', '1.3.2', 'http://xorg.freedesktop.org/releases/individual/a=
pp/xinit-1.3.2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['xhost', '1.0.5', '1.0.5', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxmu libx=
au', 'https://bugs.freedesktop.org', '1', 'The xhost program is used to add=
 and delete host names or user names to the list allowed to make connection=
s to the X server. In the case of hosts, this provides a rudimentary form o=
f privacy control and security. Environments which require more sophisticat=
ed measures should implement the user-based mechanism or use the hooks in t=
he protocol for passing other authentication data to the server.', 'MATCH',=
 '1.0.3', 'http://xorg.freedesktop.org/releases/individual/app/xhost-1.0.5.=
tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['xf86-input-keyboard', '1.6.1', '1.6.2', 'MIT-X', 'x11/drivers', 'http://w=
ww.x.org', 'r17.0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randr=
proto util-macros inputproto kbproto ', 'https://bugs.freedesktop.org', '2'=
, "keyboard is an Xorg input driver for keyboards. The driver supports the =
standard OS-provided keyboard interface.  The driver functions as a keyboar=
d input device, and may be used as the X server's core keyboard.", 'UPDATE'=
, 'N/A', 'http://xorg.freedesktop.org/releases/individual/driver/xf86-input=
-keyboard-1.6.1.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['xf86-input-evdev', '2.7.0', '2.7.3', 'MIT-X', 'x11/drivers', 'http://www.=
x.org', 'r17.0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randrpro=
to util-macros inputproto kbproto ', 'https://bugs.freedesktop.org', '2', "=
evdev is an Xorg input driver for Linux's generic event devices. It therefo=
re supports all input devices that the kernel knows about, including most m=
ice and keyboards. The evdev driver can serve as both a pointer and a keybo=
ard input device, and may be used as both the core keyboard and the core po=
inter. Multiple input devices are supported by multiple instances of this d=
river, with one Load directive for evdev in the Module section of your xorg=
=2Econf for each input device that will use this driver. ", 'UPDATE', 'N/A'=
, 'http://xorg.freedesktop.org/releases/individual/driver/xf86-input-evdev-=
2.7.0.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['xf86-video-intel', '2.19.0', '2.20.6', 'MIT-X', 'x11/drivers', 'http://ww=
w.x.org', 'r17.0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextpr=
oto fontsproto virtual/xserver xproto randrproto util-macros virtual/libx11=
 libxvmc drm xf86driproto glproto     virtual/libgl xineramaproto xf86dripr=
oto libpciaccess', 'https://bugs.freedesktop.org', '2', 'intel is an Xorg d=
river for Intel integrated graphics chipsets. The driver supports depths 8,=
 15, 16 and 24. On some chipsets, the driver supports hardware accelerated =
3D via the Direct Rendering Infrastructure (DRI).', 'UPDATE', 'N/A', 'http:=
//xorg.freedesktop.org/releases/individual/driver/xf86-video-intel-2.19.0.t=
ar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['xf86-input-vmmouse', '12.9.0', '12.9.0', 'MIT-X', 'x11/drivers', 'http://=
www.x.org', 'r17.0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto rand=
rproto util-macros inputproto kbproto ', 'https://bugs.freedesktop.org', '2=
', 'X.Org X server -- VMWare mouse input driver', 'MATCH', 'N/A', 'http://x=
org.freedesktop.org/releases/individual/driver/xf86-input-vmmouse-12.9.0.ta=
r.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['xf86-input-mouse', '1.7.2', '1.8.1', 'MIT-X', 'x11/drivers', 'http://www.=
x.org', 'r17.0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randrpro=
to util-macros inputproto kbproto ', 'https://bugs.freedesktop.org', '2', "=
mouse is an Xorg input driver for mice. The driver supports most available =
mouse types and interfaces.  The mouse driver functions as a pointer input =
device, and may be used as the X server's core pointer. Multiple mice are s=
upported by multiple instances of this driver.", 'UPDATE', 'N/A', 'http://x=
org.freedesktop.org/releases/individual/driver/xf86-input-mouse-1.7.2.tar.b=
z2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['xf86-video-vesa', '2.3.1', '2.3.2', 'MIT-X', 'x11/drivers', 'http://www.x=
=2Eorg', 'r17.1', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextpro=
to fontsproto virtual/xserver xproto randrproto util-macros virtual/libx11 =
libxvmc drm xf86driproto glproto     virtual/libgl xineramaproto xf86dripro=
to libpciaccess', 'https://bugs.freedesktop.org', '2', 'vesa is an Xorg dri=
ver for generic VESA video cards. It can drive most VESA-compatible video c=
ards, but only makes use of the basic standard VESA core that is common to =
these cards. The driver supports depths 8, 15 16 and 24.', 'UPDATE', 'N/A',=
 'http://xorg.freedesktop.org/releases/individual/driver/xf86-video-vesa-2.=
3.1.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['xf86-video-fbdev', '0.4.2', '0.4.3', 'MIT-X', 'x11/drivers', 'http://www.=
x.org', 'r17.0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextprot=
o fontsproto virtual/xserver xproto randrproto util-macros', 'https://bugs.=
freedesktop.org', '2', 'X.Org X server -- fbdev display driver', 'UPDATE', =
'N/A', 'http://xorg.freedesktop.org/releases/individual/driver/xf86-video-f=
bdev-0.4.2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['xf86-input-synaptics', '1.6.2', '1.6.2', 'MIT-X', 'x11/drivers', 'http://=
www.x.org', 'r17.0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto rand=
rproto util-macros inputproto kbproto  libxi', 'https://bugs.freedesktop.or=
g', '2', 'synaptics is an Xorg input driver for the touchpads from Synaptic=
s Incorporated. Even though these touchpads (by default, operating in a com=
patibility mode emulating a standard mouse) can be handled by the normal ev=
dev or mouse drivers, this driver allows more advanced features of the touc=
hpad to become available.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/re=
leases/individual/driver/xf86-input-synaptics-1.6.2.tar.bz2', 'Laurentiu Pa=
lcu <laurentiu.palcu@intel.com>']
['xset', '1.2.2', '1.2.2', 'MIT', 'x11/apps', 'http://www.x.org/', 'r8.0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  util-macros-native virtual/libx11 libxext libxxf=
86misc libxfontcache libxmu libxp libxau', 'https://bugs.freedesktop.org', =
'1', 'xset is a utility that is used to set various user preference options=
 of the display.', 'MATCH', '1.2.2', 'http://xorg.freedesktop.org/releases/=
individual/app/xset-1.2.2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel=
=2Ecom>']
['x11vnc', '0.9.13', 'N/A', 'GPLv2+', 'x11/utils', 'http://www.karlrunge.co=
m/x11vnc/', 'r0', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  openssl virtual/libx11 libxext avahi jpeg zlib'=
, 'None', 'None', 'Export your X session on-the-fly via VNC', 'ErrParseInte=
rDir:/libvncserver/x11vnc/0.9.13/x11vnc-0.9.13.tar.gz:0.9.13:-:downloads.so=
urceforge.net/libvncserver/x11vnc/0.9.13/x11vnc-0.9.13.tar.gz', '0.9.13', '=
http://downloads.sourceforge.net/libvncserver/x11vnc/0.9.13/x11vnc-0.9.13.t=
ar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['xf86-video-vmware', '12.0.2', '12.0.2', 'MIT-X', 'x11/drivers', 'http://w=
ww.x.org', 'r17.0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextp=
roto fontsproto virtual/xserver xproto randrproto util-macros virtual/libx1=
1 libxvmc drm glproto     virtual/libgl xineramaproto libpciaccess', 'https=
://bugs.freedesktop.org', '2', 'vmware is an Xorg driver for VMware virtual=
 video cards.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/indiv=
idual/driver/xf86-video-vmware-12.0.2.tar.bz2', 'Laurentiu Palcu <laurentiu=
=2Epalcu@intel.com>']
['xorg-minimal-fonts', '1.0', 'INVALID', 'PD', 'x11/fonts', 'http://www.x.o=
rg', 'r1', ' ', 'n/a', '1', 'Minimal fonts required by X.org.', 'MATCH', 'N=
/A', 'file://misc', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['matchbox-wm-2', '0.1+git1+01fa5465743c9ee43d040350f4405d35293e4869', '549=
04706e82049f1da34937e5b4ba2bbc498aa5d', 'GPLv2+', 'x11/wm', 'unknown', 'r2'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  virtual/libx11 libxext libxrender startup-noti=
fication expat gconf pango libxdamage libxcomposite gtk+', 'None', 'None', =
'Matchbox window manager', 'UPDATE', 'N/A', 'git://git.yoctoproject.org/mat=
chbox-window-manager-2;protocol=3Dgit', 'Valentin Popa <valentin.popa@intel=
=2Ecom>']
['encodings', '1.0.4', '1.0.4', 'PD', 'x11/fonts', 'http://www.x.org', 'r2.=
1', 'pkgconfig-native autoconf-native automake-native libtool-native gnu-co=
nfig-native  mkfontscale-native font-util-native', 'https://bugs.freedeskto=
p.org/enter_bug.cgi?product=3Dxorg', '1', 'The encodings that map to specif=
ic characters for a number of Xorg and common fonts.', 'MATCH', '1.0.3', 'h=
ttp://xorg.freedesktop.org/releases/individual/font/encodings-1.0.4.tar.bz2=
', 'Valentin Popa <valentin.popa@intel.com>']
['font-alias', '1.0.3', '1.0.3', 'MIT', 'x11/fonts', 'http://www.x.org', 'r=
2.3', 'pkgconfig-native autoconf-native automake-native libtool-native gnu-=
config-native  util-macros-native', 'https://bugs.freedesktop.org/enter_bug=
=2Ecgi?product=3Dxorg', '1', 'X font aliases.', 'MATCH', 'N/A', 'http://xor=
g.freedesktop.org/releases/individual/font/font-alias-1.0.3.tar.bz2', 'Vale=
ntin Popa <valentin.popa@intel.com>']
['font-util', '1.3.0', '1.3.0', 'BSD & MIT', 'x11/fonts', 'http://www.x.org=
', 'r2.0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  encodings util-macros', 'https://bugs=
=2Efreedesktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'X.Org font packa=
ge creation/installation utilities', 'MATCH', 'N/A', 'http://xorg.freedeskt=
op.org/releases/individual/font/font-util-1.3.0.tar.bz2', 'Valentin Popa <v=
alentin.popa@intel.com>']
['font-util-native', '1.3.0', '1.3.0', 'BSD & MIT', 'x11/fonts', 'http://ww=
w.x.org', 'r2.0', 'pkgconfig-native autoconf-native automake-native libtool=
-native gnu-config-native  util-macros-native', 'https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3Dxorg', 'None', 'X.Org font package creation/inst=
allation utilities', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/=
individual/font/font-util-1.3.0.tar.bz2', 'Valentin Popa <valentin.popa@int=
el.com>']
['matchbox-session', '0.1', 'INVALID', 'GPLv2', 'x11', 'http://www.matchbox=
-project.org/', 'r4', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'http://bugzilla.openedhand.com/', 'None', '=
Custom MB session files for poky', 'MATCH', 'N/A', 'file://matchbox-session=
', 'Valentin Popa <valentin.popa@intel.com>']
['libmatchbox', '1.9', '1.9', 'LGPLv2+', 'x11/libs', 'http://matchbox-proje=
ct.org/', 'r10', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 libxext expat li=
bxft jpeg libpng zlib libxsettings-client startup-notification', 'http://bu=
gzilla.openedhand.com/', 'None', 'Matchbox window manager core library', 'M=
ATCH', '1.9', 'http://downloads.yoctoproject.org/releases/matchbox/libmatch=
box/1.9/libmatchbox-1.9.tar.gz', 'Valentin Popa <valentin.popa@intel.com>']
['freetype', '2.4.10', 'N/A', 'FreeType | GPLv2+', 'libs', 'http://www.free=
type.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  ', 'https://savannah.nongnu.or=
g/bugs/?group=3Dfreetype', 'None', 'FreeType is a software font engine that=
 is designed to be small, efficient, highly customizable, and portable whil=
e capable of producing high-quality output (glyph images). It can be used i=
n graphics libraries, display servers, font conversion tools, text image ge=
neration tools, and many other products as well.', 'ErrParseDir:/freetype/:=
-:freetype-2.4.10.tar.bz2:downloads.sourceforge.net/freetype/freetype-2.4.1=
0.tar.bz2', '2.4.10', 'http://downloads.sourceforge.net/freetype/freetype-2=
=2E4.10.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['freetype-native', '2.4.10', 'N/A', 'FreeType | GPLv2+', 'libs', 'http://w=
ww.freetype.org/', 'r0', 'pkgconfig-native autoconf-native automake-native =
libtool-native gnu-config-native  ', 'https://savannah.nongnu.org/bugs/?gro=
up=3Dfreetype', 'None', 'FreeType is a software font engine that is designe=
d to be small, efficient, highly customizable, and portable while capable o=
f producing high-quality output (glyph images). It can be used in graphics =
libraries, display servers, font conversion tools, text image generation to=
ols, and many other products as well.', 'ErrParseDir:/freetype/:-:freetype-=
2.4.10.tar.bz2:downloads.sourceforge.net/freetype/freetype-2.4.10.tar.bz2',=
 'N/A', 'http://downloads.sourceforge.net/freetype/freetype-2.4.10.tar.bz2'=
, 'Valentin Popa <valentin.popa@intel.com>']
['nativesdk-libsdl', '1.2.15', '1.2.15', 'LGPLv2.1', 'libs', 'http://www.li=
bsdl.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/na=
tivesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk-li=
bx11 nativesdk-libxrandr nativesdk-libxrender nativesdk-libxext nativesdk-a=
lsa-lib', 'http://bugzilla.libsdl.org/', 'None', 'Simple DirectMedia Layer =
is a cross-platform multimedia library designed to provide low level access=
 to audio, keyboard, mouse, joystick, 3D hardware via OpenGL, and 2D video =
framebuffer.', 'MATCH', 'N/A', 'http://www.libsdl.org/release/SDL-1.2.15.ta=
r.gz', 'None']
['libsdl', '1.2.15', '1.2.15', 'LGPLv2.1', 'libs', 'http://www.libsdl.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc              virtual/libgl            virt=
ual/libx11 libxext libxrandr libxrender            tslib alsa-lib', 'http:/=
/bugzilla.libsdl.org/', 'None', 'Simple DirectMedia Layer is a cross-platfo=
rm multimedia library designed to provide low level access to audio, keyboa=
rd, mouse, joystick, 3D hardware via OpenGL, and 2D video framebuffer.', 'M=
ATCH', '1.2.15', 'http://www.libsdl.org/release/SDL-1.2.15.tar.gz', 'Kai Ka=
ng <kai.kang@windriver.com>']
['xf86-video-omapfb', '0.1.1+gitr1+28c006c94e57ea71df11ec4fff79d7ffcfc4860f=
', '0.1.1', 'MIT-X & GPLv2+', 'x11/drivers', 'http://www.x.org', 'r17.6', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  renderproto videoproto xextproto fontsproto virtu=
al/xserver xproto randrproto util-macros virtual/libx11', 'https://bugs.fre=
edesktop.org', '2', 'omapfb driver supports the basic Texas Instruments OMA=
P framebuffer.', 'MATCH', 'N/A', 'git://git.pingu.fi/xf86-video-omapfb;prot=
ocol=3Dhttp', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['liberation-fonts', '1.04', '2.00.0', 'GPLv2', 'x11/fonts', 'https://fedor=
ahosted.org/liberation-fonts/', 'r2', ' ', 'https://bugzilla.redhat.com/', =
'1', 'The Liberation(tm) Fonts is a font family originally created by Ascen=
der(c) which aims at metric compatibility with Arial, Times New Roman, Cour=
ier New.', 'UPDATE', 'N/A', 'https://fedorahosted.org/releases/l/i/liberati=
on-fonts/liberation-fonts-1.04.tar.gz', 'Valentin Popa <valentin.popa@intel=
=2Ecom>']
['pango', '1.30.0', '1.30.0', 'LGPLv2.0+', 'libs', 'http://www.pango.org/',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  glib-2.0 fontconfig freetype zlib virtual=
/libiconv cairo elfutils gnome-common gtk-doc-stub-native virtual/libx11 li=
bxft', 'http://bugzilla.gnome.org', 'None', 'Pango is a library for laying =
out and rendering of text, with an emphasis on internationalization. Pango =
can be used anywhere that text layout is needed, though most of the work on=
 Pango so far has been done in the context of the GTK+ widget toolkit. Pang=
o forms the core of text and font handling for GTK+-2.x.', 'MATCH', 'N/A', =
'http://ftp.gnome.org/pub/GNOME/sources/pango/1.30/pango-1.30.0.tar.xz;name=
=3Darchive', 'Radu Moisan <radu.moisan@intel.com>']
['pango-native', '1.30.0', '1.30.0', 'LGPLv2.0+', 'libs', 'http://www.pango=
=2Eorg/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative gnu-config-native  glib-2.0-native cairo-native gtk-doc-stub-native v=
irtual/libx11-native libxft-native', 'http://bugzilla.gnome.org', 'None', '=
Pango is a library for laying out and rendering of text, with an emphasis o=
n internationalization. Pango can be used anywhere that text layout is need=
ed, though most of the work on Pango so far has been done in the context of=
 the GTK+ widget toolkit. Pango forms the core of text and font handling fo=
r GTK+-2.x.', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/pango=
/1.30/pango-1.30.0.tar.xz;name=3Darchive', 'Radu Moisan <radu.moisan@intel.=
com>']
['menu-cache', '0.3.3', 'N/A', 'GPLv2 & GPLv2+', 'x11/libs', 'http://lxde.s=
ourceforge.net/', 'r0', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 zlib', '', 'Non=
e', 'A library creating and utilizing caches to speed up freedesktop.org ap=
plication menus', 'ErrParseDir:/lxde/:-:menu-cache-0.3.3.tar.gz:downloads.s=
ourceforge.net/lxde/menu-cache-0.3.3.tar.gz', '0.3.3', 'http://downloads.so=
urceforge.net/lxde/menu-cache-0.3.3.tar.gz', 'Valentin Popa <valentin.popa@=
intel.com>']
['popt', '1.16', '1.16', 'MIT', 'libs', 'http://rpm5.org/', 'r2', 'autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native virt=
ual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'None', 'None', 'The popt library for pa=
rsing command line options.', 'MATCH', '1.16', 'http://rpm5.org/files/popt/=
popt-1.16.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['ttf-bitstream-vera', '1.10', '1.10', 'BitstreamVera', 'x11/fonts', 'unkno=
wn', 'r6', ' ', 'None', 'None', 'The Bitstream Vera fonts include four mono=
space and sans faces (normal, oblique, bold, bold oblique) and two serif fa=
ces (normal and bold).  In addition Fontconfig/Xft2 can artificially obliqu=
e the serif faces for you: this loses hinting and distorts the faces slight=
ly, but is visibly different than normal and bold, and reasonably pleasing.=
', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/ttf-bitstream-ve=
ra/1.10/ttf-bitstream-vera-1.10.tar.bz2', 'Valentin Popa <valentin.popa@int=
el.com>']
['popt-native', '1.16', '1.16', 'MIT', 'libs', 'http://rpm5.org/', 'r2', 'a=
utoconf-native automake-native libtool-native gnu-config-native gettext-min=
imal-native  ', 'None', 'None', 'The popt library for parsing command line =
options.', 'MATCH', 'N/A', 'http://rpm5.org/files/popt/popt-1.16.tar.gz', '=
Saul Wold <sgw@linux.intel.com>']
['enchant', '1.6.0', '1.6.0', 'LGPLv2.1+', 'libs', 'http://www.abisource.co=
m/projects/enchant/', 'r2', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  aspell glib-2.0', 'h=
ttp://bugzilla.abisource.com/enter_bug.cgi?product=3DEnchant', 'None', 'Enc=
hant Spell checker API Library', 'MATCH', '1.6.0', 'http://www.abisource.co=
m/downloads/enchant/1.6.0/enchant-1.6.0.tar.gz', 'Cristian Iorga <cristian.=
iorga@intel.com>']
['libenv-perl', '1.03', '1.03', 'Artistic-1.0 | GPL-1.0+', 'libs', 'http://=
search.cpan.org/~flora/Env/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc   perl perl-native', 'None', 'None=
', 'Perl maintains environment variables in a special hash named %ENV. For =
when this access method is inconvenient, the Perl module Env allows environ=
ment variables to be treated as scalar or array variables.', 'MATCH', 'N/A'=
, 'http://search.cpan.org/CPAN/authors/id/F/FL/FLORA/Env-1.03.tar.gz', 'Non=
e']
['xtscal', '0.6.3', '0.6.3', 'GPLv2 & GPLv2+', 'x11/base', 'http://gpe.linu=
xtogo.org', 'r13', 'autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  virtual/libx11 libxft libxcalibrate', 'http://=
bugs.linuxtogo.org', 'None', 'Basic touchscreen calibration utility', 'MATC=
H', '0.6.3', 'http://gpe.linuxtogo.org/download/source/xtscal-0.6.3.tar.bz2=
', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['libcap', '2.22', '2.22', 'BSD | GPLv2', 'base', 'http://sites.google.com/=
site/fullycapable/', 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  attr perl-native-runtime ', 'None', 'None'=
, 'support for getting/setting POSIX.1e capabilities', 'MATCH', '2.22', 'ft=
p://ftp.debian.org/debian/pool/main/libc/libcap2/libcap2_2.22.orig.tar.gz',=
 'Saul Wold <sgw@linux.intel.com>']
['libpcre', '8.31', 'N/A', 'BSD', 'devel', 'unknown', 'r0', 'autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bzip2=
 zlib readline', 'None', 'None', "Perl-compatible regular expression librar=
y. PCRE has its own native API, but a set of 'wrapper' functions that are b=
ased on the POSIX API are also supplied in the library libpcreposix. Note t=
hat this just provides a POSIX calling interface to PCRE; the regular expre=
ssions themselves still follow Perl syntax and semantics. The header file f=
or the POSIX-style functions is called pcreposix.h.", 'ErrParseDir:/project=
/pcre/pcre/8.31/:8.31:pcre-8.31.tar.bz2:downloads.sourceforge.net/project/p=
cre/pcre/8.31/pcre-8.31.tar.bz2', '8.31', 'http://downloads.sourceforge.net=
/project/pcre/pcre/8.31/pcre-8.31.tar.bz2', 'Bogdan Marinescu <bogdan.a.mar=
inescu@intel.com>']
['mpfr', '3.1.0', 'N/A', 'GPLv3&LGPLv3', 'devel', 'http://www.mpfr.org/', '=
r2', 'autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  gmp', 'None', 'None', 'A C library for multiple-precision fl=
oating-point computations with exact rounding', 'ErrParseInterDir:/mpfr-3.1=
=2E0/mpfr-3.1.0.tar.bz2:mpfr-3.1.0:-:www.mpfr.org/mpfr-3.1.0/mpfr-3.1.0.tar=
=2Ebz2', '3.1.1', 'http://www.mpfr.org/mpfr-3.1.0/mpfr-3.1.0.tar.bz2', 'Bog=
dan Marinescu <bogdan.a.marinescu@intel.com>']
['mpfr-native', '3.1.0', 'N/A', 'GPLv3&LGPLv3', 'devel', 'http://www.mpfr.o=
rg/', 'r2', 'autoconf-native automake-native libtool-native gnu-config-nati=
ve  gmp-native', 'None', 'None', 'A C library for multiple-precision floati=
ng-point computations with exact rounding', 'ErrParseInterDir:/mpfr-3.1.0/m=
pfr-3.1.0.tar.bz2:mpfr-3.1.0:-:www.mpfr.org/mpfr-3.1.0/mpfr-3.1.0.tar.bz2',=
 'N/A', 'http://www.mpfr.org/mpfr-3.1.0/mpfr-3.1.0.tar.bz2', 'Bogdan Marine=
scu <bogdan.a.marinescu@intel.com>']
['libcap-native', '2.22', '2.22', 'BSD | GPLv2', 'base', 'http://sites.goog=
le.com/site/fullycapable/', 'r3', ' perl-native-runtime', 'None', 'None', '=
support for getting/setting POSIX.1e capabilities', 'MATCH', 'N/A', 'ftp://=
ftp.debian.org/debian/pool/main/libc/libcap2/libcap2_2.22.orig.tar.gz', 'Sa=
ul Wold <sgw@linux.intel.com>']
['libpcre-native', '8.31', 'N/A', 'BSD', 'devel', 'unknown', 'r0', 'autocon=
f-native automake-native libtool-native gnu-config-native  bzip2-native zli=
b-native readline-native', 'None', 'None', "Perl-compatible regular express=
ion library. PCRE has its own native API, but a set of 'wrapper' functions =
that are based on the POSIX API are also supplied in the library libpcrepos=
ix. Note that this just provides a POSIX calling interface to PCRE; the reg=
ular expressions themselves still follow Perl syntax and semantics. The hea=
der file for the POSIX-style functions is called pcreposix.h.", 'ErrParseDi=
r:/project/pcre/pcre/8.31/:8.31:pcre-8.31.tar.bz2:downloads.sourceforge.net=
/project/pcre/pcre/8.31/pcre-8.31.tar.bz2', 'N/A', 'http://downloads.source=
forge.net/project/pcre/pcre/8.31/pcre-8.31.tar.bz2', 'Bogdan Marinescu <bog=
dan.a.marinescu@intel.com>']
['gmp-native', '5.0.5', '5.0.5', 'LGPLv3&GPLv3', 'devel', 'http://www.swox.=
com/gmp/', 'r0', 'autoconf-native automake-native libtool-native gnu-config=
-native  ', 'None', 'None', 'GNU multiprecision arithmetic library', 'MATCH=
', 'N/A', 'ftp://ftp.gnu.org/gnu/gmp/gmp-5.0.5.tar.bz2', 'Bogdan Marinescu =
<bogdan.a.marinescu@intel.com>']
['nativesdk-mpfr', '3.1.0', 'N/A', 'GPLv3&LGPLv3', 'devel', 'http://www.mpf=
r.org/', 'r2', 'autoconf-native automake-native libtool-native gnu-config-n=
ative virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysd=
k-linux-compilerlibs virtual/nativesdk-libc nativesdk-gmp', 'None', 'None',=
 'A C library for multiple-precision floating-point computations with exact=
 rounding', 'ErrParseInterDir:/mpfr-3.1.0/mpfr-3.1.0.tar.bz2:mpfr-3.1.0:-:w=
ww.mpfr.org/mpfr-3.1.0/mpfr-3.1.0.tar.bz2', 'N/A', 'http://www.mpfr.org/mpf=
r-3.1.0/mpfr-3.1.0.tar.bz2', 'None']
['nativesdk-gmp', '5.0.5', '5.0.5', 'LGPLv3&GPLv3', 'devel', 'http://www.sw=
ox.com/gmp/', 'r0', 'autoconf-native automake-native libtool-native gnu-con=
fig-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-p=
okysdk-linux-compilerlibs virtual/nativesdk-libc', 'None', 'None', 'GNU mul=
tiprecision arithmetic library', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gmp=
/gmp-5.0.5.tar.bz2', 'None']
['apr-util', '1.4.1', '1.4.1', 'Apache-2.0', 'libs', 'http://apr.apache.org=
/', 'r1', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  apr expat gdbm', 'None', 'None', 'Apache Portable Runti=
me (APR) companion library', 'MATCH', 'N/A', 'http://www.apache.org/dist/ap=
r/apr-util-1.4.1.tar.gz', 'Radu Moisan <radu.moisan@intel.com>']
['apr-util-native', '1.4.1', '1.4.1', 'Apache-2.0', 'libs', 'http://apr.apa=
che.org/', 'r1', 'autoconf-native automake-native libtool-native gnu-config=
-native  apr-native expat-native gdbm-native', 'None', 'None', 'Apache Port=
able Runtime (APR) companion library', 'MATCH', 'N/A', 'http://www.apache.o=
rg/dist/apr/apr-util-1.4.1.tar.gz', 'Radu Moisan <radu.moisan@intel.com>']
['gmp', '5.0.5', '5.0.5', 'LGPLv3&GPLv3', 'devel', 'http://www.swox.com/gmp=
/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ', 'None', 'None', 'GNU multiprecision arithmetic libra=
ry', 'MATCH', '5.0.4', 'ftp://ftp.gnu.org/gnu/gmp/gmp-5.0.5.tar.bz2', 'Bogd=
an Marinescu <bogdan.a.marinescu@intel.com>']
['liboil', '0.3.17', '0.3.17', 'BSD', 'base', 'http://liboil.freedesktop.or=
g/', 'r5', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  glib-2.0', 'https://bugs.freedesktop.=
org/', 'None', 'Liboil is a library of simple functions that are optimized =
for various CPUs.', 'MATCH', '0.3.17', 'http://liboil.freedesktop.org/downl=
oad/liboil-0.3.17.tar.gz', 'Valentin Popa <valentin.popa@intel.com>']
['lzop-native', '1.03', '1.03', 'GPLv2+', 'base', 'unknown', 'r0', 'autocon=
f-native automake-native libtool-native gnu-config-native  lzo-native', 'No=
ne', 'None', 'lzop is a compression utility which is designed to be a compa=
nion to gzip. \\nIt is based on the LZO data compression library and its ma=
in advantages over \\ngzip are much higher compression and decompression sp=
eed at the cost of some \\ncompression ratio. The lzop compression utility =
was designed with the goals \\nof reliability, speed, portability and with =
reasonable drop-in compatibility \\nto gzip.', 'MATCH', 'N/A', 'http://www.=
lzop.org/download/lzop-1.03.tar.gz', 'None']
['lzop', '1.03', '1.03', 'GPLv2+', 'base', 'unknown', 'r0', 'autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   lzo'=
, 'None', 'None', 'lzop is a compression utility which is designed to be a =
companion to gzip. \\nIt is based on the LZO data compression library and i=
ts main advantages over \\ngzip are much higher compression and decompressi=
on speed at the cost of some \\ncompression ratio. The lzop compression uti=
lity was designed with the goals \\nof reliability, speed, portability and =
with reasonable drop-in compatibility \\nto gzip.', 'MATCH', 'N/A', 'http:/=
/www.lzop.org/download/lzop-1.03.tar.gz', 'None']
['nativesdk-lzop', '1.03', '1.03', 'GPLv2+', 'base', 'unknown', 'r0', 'auto=
conf-native automake-native libtool-native gnu-config-native virtual/i586-p=
okysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-linux-compilerlibs=
 virtual/nativesdk-libc nativesdk-lzo', 'None', 'None', 'lzop is a compress=
ion utility which is designed to be a companion to gzip. \\nIt is based on =
the LZO data compression library and its main advantages over \\ngzip are m=
uch higher compression and decompression speed at the cost of some \\ncompr=
ession ratio. The lzop compression utility was designed with the goals \\no=
f reliability, speed, portability and with reasonable drop-in compatibility=
 \\nto gzip.', 'MATCH', 'N/A', 'http://www.lzop.org/download/lzop-1.03.tar.=
gz', 'None']
['apr', '1.4.6', '1.4.6', 'Apache-2.0', 'libs', 'http://apr.apache.org/', '=
r1', 'autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  util-linux', 'None', 'None', 'Apache Portable Runtime (APR) =
library', 'MATCH', 'N/A', 'http://www.apache.org/dist/apr/apr-1.4.6.tar.bz2=
', 'Radu Moisan <radu.moisan@intel.com>']
['apr-native', '1.4.6', '1.4.6', 'Apache-2.0', 'libs', 'http://apr.apache.o=
rg/', 'r1', 'autoconf-native automake-native libtool-native gnu-config-nati=
ve  util-linux-native', 'None', 'None', 'Apache Portable Runtime (APR) libr=
ary', 'MATCH', 'N/A', 'http://www.apache.org/dist/apr/apr-1.4.6.tar.bz2', '=
Radu Moisan <radu.moisan@intel.com>']
['libexif', '0.6.20', 'N/A', 'LGPLv2.1', 'libs', 'http://sourceforge.net/pr=
ojects/libexif', 'r0', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', =
'None', 'Library to read the extended image information (EXIF) from JPEG pi=
ctures', 'ErrParseDir:/libexif/:-:libexif-0.6.20.tar.bz2:downloads.sourcefo=
rge.net/libexif/libexif-0.6.20.tar.bz2', '0.6.20', 'http://downloads.source=
forge.net/libexif/libexif-0.6.20.tar.bz2', 'Saul Wold <sgw@linux.intel.com>=
']
['libunistring', '0.9.3', '0.9.3', 'GPLv3&LGPLv3', 'devel', 'http://www.gnu=
=2Eorg/software/libunistring/', 'r3', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', "Text fi=
les are nowadays usually encoded in Unicode, and may consist of very differ=
ent scripts from Latin letters to Chinese Hanzi with many kinds of special =
characters accents, right-to-left writing marks, hyphens, Roman numbers, an=
d much more. But the POSIX platform APIs for text do not contain adequate f=
unctions for dealing with particular properties of many Unicode characters.=
 In fact, the POSIX APIs for text have several assumptions at their base wh=
ich don't hold for Unicode text.  This library provides functions for manip=
ulating Unicode strings and for manipulating C strings according to the Uni=
code standard.  This package contains documentation.", 'MATCH', '0.9.3', 'f=
tp://ftp.gnu.org/gnu/libunistring/libunistring-0.9.3.tar.gz', 'Bogdan Marin=
escu <bogdan.a.marinescu@intel.com>']
['libunistring-native', '0.9.3', '0.9.3', 'GPLv3&LGPLv3', 'devel', 'http://=
www.gnu.org/software/libunistring/', 'r3', 'autoconf-native automake-native=
 libtool-native gnu-config-native  ', 'None', 'None', "Text files are nowad=
ays usually encoded in Unicode, and may consist of very different scripts f=
rom Latin letters to Chinese Hanzi with many kinds of special characters ac=
cents, right-to-left writing marks, hyphens, Roman numbers, and much more. =
But the POSIX platform APIs for text do not contain adequate functions for =
dealing with particular properties of many Unicode characters. In fact, the=
 POSIX APIs for text have several assumptions at their base which don't hol=
d for Unicode text.  This library provides functions for manipulating Unico=
de strings and for manipulating C strings according to the Unicode standard=
=2E  This package contains documentation.", 'MATCH', 'N/A', 'ftp://ftp.gnu.=
org/gnu/libunistring/libunistring-0.9.3.tar.gz', 'Bogdan Marinescu <bogdan.=
a.marinescu@intel.com>']
['attr', '2.4.46', '2.4.46', 'LGPLv2.1+ & GPLv2+', 'libs', 'http://savannah=
=2Enongnu.org/projects/attr/', 'r4', 'autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  ncurses', 'None', 'None', 'utilities for manipulating filesystem extende=
d attributes', 'MATCH', 'N/A', 'http://download.savannah.gnu.org/releases/a=
ttr/attr-2.4.46.src.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['nativesdk-libunistring', '0.9.3', '0.9.3', 'GPLv3&LGPLv3', 'devel', 'http=
://www.gnu.org/software/libunistring/', 'r3', 'autoconf-native automake-nat=
ive libtool-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssd=
k virtual/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc'=
, 'None', 'None', "Text files are nowadays usually encoded in Unicode, and =
may consist of very different scripts from Latin letters to Chinese Hanzi w=
ith many kinds of special characters accents, right-to-left writing marks, =
hyphens, Roman numbers, and much more. But the POSIX platform APIs for text=
 do not contain adequate functions for dealing with particular properties o=
f many Unicode characters. In fact, the POSIX APIs for text have several as=
sumptions at their base which don't hold for Unicode text.  This library pr=
ovides functions for manipulating Unicode strings and for manipulating C st=
rings according to the Unicode standard.  This package contains documentati=
on.", 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/libunistring/libunistring-0.9.=
3.tar.gz', 'None']
['acl', '2.2.51', '2.2.51', 'LGPLv2.1+ & GPLv2+', 'libs', 'http://savannah.=
nongnu.org/projects/acl/', 'r3', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native virtual/gettext gettext-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  a=
ttr', 'None', 'None', 'utilities for access control list', 'MATCH', 'N/A', =
'http://download.savannah.gnu.org/releases/acl/acl-2.2.51.src.tar.gz', 'Sau=
l Wold <sgw@linux.intel.com>']
['attr-native', '2.4.46', '2.4.46', 'LGPLv2.1+ & GPLv2+', 'libs', 'http://s=
avannah.nongnu.org/projects/attr/', 'r4', 'autoconf-native automake-native =
libtool-native gnu-config-native gettext-minimal-native  ncurses-native', '=
None', 'None', 'utilities for manipulating filesystem extended attributes',=
 'MATCH', 'N/A', 'http://download.savannah.gnu.org/releases/attr/attr-2.4.4=
6.src.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['pth', '2.0.7', '2.0.7', 'GPLv2+', 'libs', 'http://www.gnu.org/software/pt=
h/', 'r2', 'autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'None', 'None', 'GNU Portable Threads', 'MATCH', '2=
=2E0.7', 'ftp://ftp.gnu.org/gnu/pth/pth-2.0.7.tar.gz', 'Saul Wold <sgw@linu=
x.intel.com>']
['acl-native', '2.2.51', '2.2.51', 'LGPLv2.1+ & GPLv2+', 'libs', 'http://sa=
vannah.nongnu.org/projects/acl/', 'r3', 'autoconf-native automake-native li=
btool-native gnu-config-native gettext-minimal-native  attr-native', 'None'=
, 'None', 'utilities for access control list', 'MATCH', 'N/A', 'http://down=
load.savannah.gnu.org/releases/acl/acl-2.2.51.src.tar.gz', 'Saul Wold <sgw@=
linux.intel.com>']
['aspell', '0.60.6.1', '0.60.6.1', 'LGPLv2 | LGPLv2.1', 'console/utils', 'u=
nknown', 'r1', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', =
'GNU Aspell spell-checker', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/aspell/a=
spell-0.60.6.1.tar.gz', 'Radu Moisan <radu.moisan@intel.com>']
['neon', '0.29.6', '0.29.6', 'LGPLv2+', 'libs', 'http://www.webdav.org/neon=
/', 'r2', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  zlib libxml2 expat time gnutls libprox=
y', 'None', 'None', 'neon is an HTTP and WebDAV client library, with a C in=
terface.', 'MATCH', '0.29.6', 'http://www.webdav.org/neon/neon-0.29.6.tar.g=
z', 'Cristian Iorga <cristian.iorga@intel.com>']
['neon-native', '0.29.6', '0.29.6', 'LGPLv2+', 'libs', 'http://www.webdav.o=
rg/neon/', 'r2', 'pkgconfig-native autoconf-native automake-native libtool-=
native gnu-config-native  zlib-native libxml2-native expat-native gnutls-na=
tive', 'None', 'None', 'neon is an HTTP and WebDAV client library, with a C=
 interface.', 'MATCH', 'N/A', 'http://www.webdav.org/neon/neon-0.29.6.tar.g=
z', 'Cristian Iorga <cristian.iorga@intel.com>']
['bdwgc-native', '20110107', '7.2alpha5', 'MIT & FSF-Unlimited & GPL-2.0', =
'devel', 'http://www.hpl.hp.com/personal/Hans_Boehm/gc/', 'r1', 'autoconf-n=
ative automake-native libtool-native gnu-config-native  ', 'None', 'None', =
'The Boehm-Demers-Weiser conservative garbage collector can be used as a ga=
rbage collecting replacement for C malloc or C++ new. It allows you to allo=
cate memory basically as you normally would, without explicitly deallocatin=
g memory that is no longer useful. The collector automatically recycles mem=
ory when it determines that it can no longer be otherwise accessed.  The co=
llector is also used by a number of programming language implementations th=
at either use C as intermediate code, want to facilitate easier interoperat=
ion with C libraries, or just prefer the simple collector interface.  Alter=
natively, the garbage collector may be used as a leak detector for C or C++=
 programs, though that is not its primary goal.  Empirically, this collecto=
r works with most unmodified C programs, simply by replacing malloc with GC=
_malloc calls, replacing realloc with GC_realloc calls, and removing free c=
alls.', 'UPDATE', 'N/A', 'http://www.hpl.hp.com/personal/Hans_Boehm/gc/gc_s=
ource/bdwgc-7_2alpha5-20110107.tar.bz2', 'Bogdan Marinescu <bogdan.a.marine=
scu@intel.com>']
['bdwgc', '20110107', '7.2alpha5', 'MIT & FSF-Unlimited & GPL-2.0', 'devel'=
, 'http://www.hpl.hp.com/personal/Hans_Boehm/gc/', 'r1', 'autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None=
', 'None', 'The Boehm-Demers-Weiser conservative garbage collector can be u=
sed as a garbage collecting replacement for C malloc or C++ new. It allows =
you to allocate memory basically as you normally would, without explicitly =
deallocating memory that is no longer useful. The collector automatically r=
ecycles memory when it determines that it can no longer be otherwise access=
ed.  The collector is also used by a number of programming language impleme=
ntations that either use C as intermediate code, want to facilitate easier =
interoperation with C libraries, or just prefer the simple collector interf=
ace.  Alternatively, the garbage collector may be used as a leak detector f=
or C or C++ programs, though that is not its primary goal.  Empirically, th=
is collector works with most unmodified C programs, simply by replacing mal=
loc with GC_malloc calls, replacing realloc with GC_realloc calls, and remo=
ving free calls.', 'UPDATE', '20110107', 'http://www.hpl.hp.com/personal/Ha=
ns_Boehm/gc/gc_source/bdwgc-7_2alpha5-20110107.tar.bz2', 'Bogdan Marinescu =
<bogdan.a.marinescu@intel.com>']
['gdbm', '1.10', '1.10', 'GPLv3', 'libs', 'http://www.gnu.org/software/gdbm=
/', 'r3', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'GNU =
dbm is a set of database routines that use extensible hashing.', 'MATCH', '=
1.10', 'ftp://ftp.gnu.org/gnu/gdbm/gdbm-1.10.tar.gz', 'Saul Wold <sgw@linux=
=2Eintel.com>']
['gdbm-native', '1.10', '1.10', 'GPLv3', 'libs', 'http://www.gnu.org/softwa=
re/gdbm/', 'r3', 'autoconf-native automake-native libtool-native gnu-config=
-native gettext-minimal-native  ', 'None', 'None', 'GNU dbm is a set of dat=
abase routines that use extensible hashing.', 'MATCH', 'N/A', 'ftp://ftp.gn=
u.org/gnu/gdbm/gdbm-1.10.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['nativesdk-gdbm', '1.10', '1.10', 'GPLv3', 'libs', 'http://www.gnu.org/sof=
tware/gdbm/', 'r3', 'autoconf-native automake-native libtool-native gnu-con=
fig-native virtual/nativesdk-gettext gettext-native virtual/i586-pokysdk-li=
nux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-linux-compilerlibs virtual/=
nativesdk-libc', 'None', 'None', 'GNU dbm is a set of database routines tha=
t use extensible hashing.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gdbm/gdb=
m-1.10.tar.gz', 'None']
['nativesdk-bdwgc', '20110107', '7.2alpha5', 'MIT & FSF-Unlimited & GPL-2.0=
', 'devel', 'http://www.hpl.hp.com/personal/Hans_Boehm/gc/', 'r1', 'autocon=
f-native automake-native libtool-native gnu-config-native virtual/i586-poky=
sdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-linux-compilerlibs vi=
rtual/nativesdk-libc', 'None', 'None', 'The Boehm-Demers-Weiser conservativ=
e garbage collector can be used as a garbage collecting replacement for C m=
alloc or C++ new. It allows you to allocate memory basically as you normall=
y would, without explicitly deallocating memory that is no longer useful. T=
he collector automatically recycles memory when it determines that it can n=
o longer be otherwise accessed.  The collector is also used by a number of =
programming language implementations that either use C as intermediate code=
, want to facilitate easier interoperation with C libraries, or just prefer=
 the simple collector interface.  Alternatively, the garbage collector may =
be used as a leak detector for C or C++ programs, though that is not its pr=
imary goal.  Empirically, this collector works with most unmodified C progr=
ams, simply by replacing malloc with GC_malloc calls, replacing realloc wit=
h GC_realloc calls, and removing free calls.', 'UPDATE', 'N/A', 'http://www=
=2Ehpl.hp.com/personal/Hans_Boehm/gc/gc_source/bdwgc-7_2alpha5-20110107.tar=
=2Ebz2', 'None']
['sqlite3', '3.7.13', 'N/A', 'PD', 'libs', 'http://www.sqlite.org', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  readline ncurses', 'None', 'None', 'An Embeddable=
 SQL Database Engine', 'ErrParseDir:/:-:sqlite-autoconf-3071300.tar.gz:www.=
sqlite.org/sqlite-autoconf-3071300.tar.gz', '3.7.13', 'http://www.sqlite.or=
g/sqlite-autoconf-3071300.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['libassuan', '2.0.3', '2.0.3', 'GPLv3 & LGPLv2.1+', 'base', 'http://www.gn=
upg.org/related_software/libassuan/', 'r0', 'autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  libgpg-error', 'https=
://bugs.g10code.com/gnupg/index', 'None', 'IPC library used by GnuPG and GP=
GME', 'MATCH', '2.0.2', 'ftp://ftp.gnupg.org/gcrypt/libassuan/libassuan-2.0=
=2E3.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['liburcu', '0.6.7', '0.7.4', 'LGPLv2.1+ & MIT-style', 'base', 'http://lttn=
g.org/urcu', 'r0', 'autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ', 'http://lttng.org/project/issues', 'None', =
'The userspace read-copy update library by Mathieu Desnoyers', 'UPDATE', '0=
=2E6.7', 'http://lttng.org/files/urcu/userspace-rcu-0.6.7.tar.bz2', 'Radu M=
oisan <radu.moisan@intel.com>']
['curl', '7.26.0', '7.27.0', 'MIT', 'console/network', 'http://curl.haxx.se=
/', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  zlib gnutls', 'http://curl.haxx.se/mai=
l/list.cgi?list=3Dcurl-tracker', 'None', 'Command line tool and library for=
 client-side URL transfers.', 'UPDATE', 'N/A', 'http://curl.haxx.se/downloa=
d/curl-7.26.0.tar.bz2', 'Radu Moisan <radu.moisan@intel.com>']
['nativesdk-sqlite3', '3.7.13', 'N/A', 'PD', 'libs', 'http://www.sqlite.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native g=
nu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-=
i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk-readline n=
ativesdk-ncurses', 'None', 'None', 'An Embeddable SQL Database Engine', 'Er=
rParseDir:/:-:sqlite-autoconf-3071300.tar.gz:www.sqlite.org/sqlite-autoconf=
-3071300.tar.gz', 'N/A', 'http://www.sqlite.org/sqlite-autoconf-3071300.tar=
=2Egz', 'None']
['curl-native', '7.26.0', '7.27.0', 'MIT', 'console/network', 'http://curl.=
haxx.se/', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-=
native gnu-config-native  zlib-native openssl-native', 'http://curl.haxx.se=
/mail/list.cgi?list=3Dcurl-tracker', 'None', 'Command line tool and library=
 for client-side URL transfers.', 'UPDATE', 'N/A', 'http://curl.haxx.se/dow=
nload/curl-7.26.0.tar.bz2', 'Radu Moisan <radu.moisan@intel.com>']
['consolekit', '0.4.5', '0.4.5', 'GPLv2+', 'base', 'http://www.freedesktop.=
org/wiki/Software/ConsoleKit', 'r9', 'pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 db=
us polkit  virtual/libx11 gnome-common hicolor-icon-theme gconf gconf-nativ=
e shared-mime-info-native shared-mime-info', 'https://bugs.freedesktop.org/=
buglist.cgi?query_format=3Dspecific&product=3DConsoleKit', 'None', 'Console=
Kit is a framework for defining and tracking users, login sessions, and sea=
ts.', 'MATCH', '0.4.3', 'http://www.freedesktop.org/software/ConsoleKit/dis=
t/ConsoleKit-0.4.5.tar.bz2', 'None']
['nativesdk-curl', '7.26.0', '7.27.0', 'MIT', 'console/network', 'http://cu=
rl.haxx.se/', 'r1', 'pkgconfig-native autoconf-native automake-native libto=
ol-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual=
/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk=
-zlib', 'http://curl.haxx.se/mail/list.cgi?list=3Dcurl-tracker', 'None', 'C=
ommand line tool and library for client-side URL transfers.', 'UPDATE', 'N/=
A', 'http://curl.haxx.se/download/curl-7.26.0.tar.bz2', 'None']
['sqlite3-native', '3.7.13', 'N/A', 'PD', 'libs', 'http://www.sqlite.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native gnu-=
config-native  ', 'None', 'None', 'An Embeddable SQL Database Engine', 'Err=
ParseDir:/:-:sqlite-autoconf-3071300.tar.gz:www.sqlite.org/sqlite-autoconf-=
3071300.tar.gz', 'N/A', 'http://www.sqlite.org/sqlite-autoconf-3071300.tar.=
gz', 'Saul Wold <sgw@linux.intel.com>']
['beecrypt-native', '4.2.1', 'N/A', 'GPLv2 & LGPLv2.1', 'base', 'http://sou=
rceforge.net/projects/beecrypt', 'r3', 'autoconf-native automake-native lib=
tool-native gnu-config-native  icu-native', 'None', 'None', 'Beecrypt is a =
general-purpose cryptography library.', 'ErrParseDir:/beecrypt/:-:beecrypt-=
4.2.1.tar.gz:downloads.sourceforge.net/beecrypt/beecrypt-4.2.1.tar.gz', 'N/=
A', 'http://downloads.sourceforge.net/beecrypt/beecrypt-4.2.1.tar.gz', 'Rad=
u Moisan <radu.moisan@intel.com>']
['libsoup-2.4', '2.38.1', '2.38.1', 'LGPLv2', 'x11/gnome/libs', 'http://www=
=2Egnome.org/', 'r0', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 gnutls libxml2 li=
bproxy sqlite3 libgnome-keyring', 'https://bugzilla.gnome.org/', 'None', 'A=
n HTTP library implementation in C', 'MATCH', 'N/A', 'http://ftp.gnome.org/=
pub/GNOME/sources/libsoup/2.38/libsoup-2.38.1.tar.xz', 'Valentin Popa <vale=
ntin.popa@intel.com>']
['icu', '3.6', '3.6', 'ICU', 'base', 'http://www-01.ibm.com/software/global=
ization/icu/index.jsp', 'r9', 'pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  icu-native', 'None=
', 'None', 'The International Component for Unicode (ICU) is a mature, port=
able set of C/C++ and Java libraries for Unicode support, software internat=
ionalization (I18N) and globalization (G11N), giving applications the same =
results on all platforms.', 'MATCH', '3.6', 'ftp://ftp.software.ibm.com/sof=
tware/globalization/icu/3.6/icu4c-3_6-src.tgz', 'Scott Garman <scott.a.garm=
an@intel.com>']
['icu-native', '3.6', '3.6', 'ICU', 'base', 'http://www-01.ibm.com/software=
/globalization/icu/index.jsp', 'r9', 'pkgconfig-native autoconf-native auto=
make-native libtool-native gnu-config-native  ', 'None', 'None', 'The Inter=
national Component for Unicode (ICU) is a mature, portable set of C/C++ and=
 Java libraries for Unicode support, software internationalization (I18N) a=
nd globalization (G11N), giving applications the same results on all platfo=
rms.', 'MATCH', 'N/A', 'ftp://ftp.software.ibm.com/software/globalization/i=
cu/3.6/icu4c-3_6-src.tgz', 'Scott Garman <scott.a.garman@intel.com>']
['beecrypt', '4.2.1', 'N/A', 'GPLv2 & LGPLv2.1', 'base', 'http://sourceforg=
e.net/projects/beecrypt', 'r3', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  icu', 'None', 'None', 'Beecrypt i=
s a general-purpose cryptography library.', 'ErrParseDir:/beecrypt/:-:beecr=
ypt-4.2.1.tar.gz:downloads.sourceforge.net/beecrypt/beecrypt-4.2.1.tar.gz',=
 '4.2.1', 'http://downloads.sourceforge.net/beecrypt/beecrypt-4.2.1.tar.gz'=
, 'Radu Moisan <radu.moisan@intel.com>']
['boost-native', '1.50.0', 'N/A', 'BSL-1.0 & MIT & Python-2.0', 'libs', 'ht=
tp://www.boost.org/', 'r4.0', ' ', 'None', 'None', 'Free peer-reviewed port=
able C++ source libraries', 'ErrParseDir:/boost/:-:boost_1_50_0.tar.bz2:dow=
nloads.sourceforge.net/boost/boost_1_50_0.tar.bz2', 'N/A', 'http://download=
s.sourceforge.net/boost/boost_1_50_0.tar.bz2', 'Saul Wold <sgw@linux.intel.=
com>']
['boost', '1.50.0', 'N/A', 'BSL-1.0 & MIT & Python-2.0', 'libs', 'http://ww=
w.boost.org/', 'r4.0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  boost-native zlib', 'None', 'None', 'Free peer=
-reviewed portable C++ source libraries', 'ErrParseDir:/boost/:-:boost_1_50=
_0.tar.bz2:downloads.sourceforge.net/boost/boost_1_50_0.tar.bz2', '1.50.0',=
 'http://downloads.sourceforge.net/boost/boost_1_50_0.tar.bz2', 'Saul Wold =
<sgw@linux.intel.com>']
['db', '5.3.15', '5.3.15', 'Sleepycat', 'libs', 'http://www.oracle.com/tech=
nology/products/berkeley-db/db/index.html', 'r8', 'autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'Non=
e', 'Berkeley DB v5.', 'MATCH', '5.0.26', 'http://download.oracle.com/berke=
ley-db/db-5.3.15.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>']
['nativesdk-db', '5.3.15', '5.3.15', 'Sleepycat', 'libs', 'http://www.oracl=
e.com/technology/products/berkeley-db/db/index.html', 'r8', 'autoconf-nativ=
e automake-native libtool-native gnu-config-native virtual/i586-pokysdk-lin=
ux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-linux-compilerlibs virtual/n=
ativesdk-libc', 'None', 'None', 'Berkeley DB v5.', 'MATCH', 'N/A', 'http://=
download.oracle.com/berkeley-db/db-5.3.15.tar.gz', 'None']
['db-native', '5.3.15', '5.3.15', 'Sleepycat', 'libs', 'http://www.oracle.c=
om/technology/products/berkeley-db/db/index.html', 'r8', 'autoconf-native a=
utomake-native libtool-native gnu-config-native  ', 'None', 'None', 'Berkel=
ey DB v5.', 'MATCH', 'N/A', 'http://download.oracle.com/berkeley-db/db-5.3.=
15.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>']
['libtasn1', '2.13', '2.13', 'GPLv3+ & LGPLv2.1+', 'base', 'http://www.gnu.=
org/software/libtasn1/', 'r0', 'autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'Library for AS=
N.1 and DER manipulation', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/libtasn1/=
libtasn1-2.13.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['libtasn1-native', '2.13', '2.13', 'GPLv3+ & LGPLv2.1+', 'base', 'http://w=
ww.gnu.org/software/libtasn1/', 'r0', 'autoconf-native automake-native libt=
ool-native gnu-config-native  ', 'None', 'None', 'Library for ASN.1 and DER=
 manipulation', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/libtasn1/libtasn1-2.=
13.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['gnutls', '2.12.20', '2.12.20', 'GPLv3+ & LGPLv2.1+', 'base', 'http://www.=
gnu.org/software/gnutls/', 'r8.3', 'pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native virtual/gettext ge=
ttext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  zlib lzo libtasn1 libgcrypt (>=3D 1.4.2) libcap readline'=
, 'https://savannah.gnu.org/support/?group=3Dgnutls', 'None', 'GNU Transpor=
t Layer Security Library', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gnutls/gn=
utls-2.12.20.tar.bz2', 'Saul Wold <sgw@linux.intel.com>']
['vte', '0.28.2', '0.28.2', 'LGPLv2.1+', 'base', 'unknown', 'r4', 'pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc   glib-2.0 gtk+ intltool-native ncurses gobject-introspect=
ion-stub gnome-common hicolor-icon-theme gconf gconf-native shared-mime-inf=
o-native shared-mime-info gtk-doc-stub-native', 'https://bugzilla.gnome.org=
/buglist.cgi?product=3Dvte', 'None', 'vte is a virtual terminal emulator', =
'MATCH', '0.24.3', 'http://ftp.gnome.org/pub/GNOME/sources/vte/0.28/vte-0.2=
8.2.tar.bz2;name=3Darchive', 'Saul Wold <sgw@linux.intel.com>']
['libfm', '0.1.17', 'N/A', 'GPLv2 & GPLv2+', 'x11/libs', 'http://pcmanfm.so=
urceforge.net/', 'r4', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 pango gtk+ menu-=
cache intltool-native', '', 'None', 'Library for file management', 'ErrPars=
eDir:/pcmanfm/:-:libfm-0.1.17.tar.gz:downloads.sourceforge.net/pcmanfm/libf=
m-0.1.17.tar.gz', '0.1.17', 'http://downloads.sourceforge.net/pcmanfm/libfm=
-0.1.17.tar.gz', 'Valentin Popa <valentin.popa@intel.com>']
['gnutls-native', '2.12.20', '2.12.20', 'GPLv3+ & LGPLv2.1+', 'base', 'http=
://www.gnu.org/software/gnutls/', 'r8.3', 'pkgconfig-native autoconf-native=
 automake-native libtool-native gnu-config-native gettext-minimal-native  z=
lib-native lzo-native libtasn1-native libgcrypt-native libcap-native readli=
ne-native', 'https://savannah.gnu.org/support/?group=3Dgnutls', 'None', 'GN=
U Transport Layer Security Library', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu=
/gnutls/gnutls-2.12.20.tar.bz2', 'Saul Wold <sgw@linux.intel.com>']
['libgcrypt', '1.5.0', '1.5.0', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://direc=
tory.fsf.org/project/libgcrypt/', 'r1', 'pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libgpg-e=
rror libcap', 'https://bugs.g10code.com/gnupg/index', 'None', 'A general pu=
rpose cryptographic library based on the code from GnuPG', 'MATCH', '1.5.0'=
, 'ftp://ftp.gnupg.org/gcrypt/libgcrypt/libgcrypt-1.5.0.tar.gz', 'Saul Wold=
 <sgw@linux.intel.com>']
['libdaemon', '0.14', '0.14', 'LGPLv2.1+', 'libs', 'http://0pointer.de/lenn=
art/projects/libdaemon/', 'r0', 'pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None=
', 'libdaemon is a lightweight C library which eases the writing of UNIX da=
emons.', 'MATCH', '0.14', 'http://0pointer.de/lennart/projects/libdaemon/li=
bdaemon-0.14.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['libproxy', '0.4.7', '0.4.7', 'LGPLv2.1+', 'libs', 'http://code.google.com=
/p/libproxy/', 'r4', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  gconf  cmake-native ', 'htt=
p://code.google.com/p/libproxy/issues/list', 'None', 'A library that provid=
es automatic proxy configuration management', 'MATCH', '0.4.6', 'http://lib=
proxy.googlecode.com/files/libproxy-0.4.7.tar.gz', 'Cristian Iorga <cristia=
n.iorga@intel.com>']
['lzo-native', '2.06', '2.06', 'GPLv2+', 'libs', 'http://www.oberhumer.com/=
opensource/lzo/', 'r1', 'autoconf-native automake-native libtool-native gnu=
-config-native  ', 'None', 'None', 'Lossless data compression library', 'MA=
TCH', 'N/A', 'http://www.oberhumer.com/opensource/lzo/download/lzo-2.06.tar=
=2Egz', 'Radu Moisan <radu.moisan@intel.com>']
['lzo', '2.06', '2.06', 'GPLv2+', 'libs', 'http://www.oberhumer.com/opensou=
rce/lzo/', 'r1', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ', 'None', 'None', 'Lossless data compression li=
brary', 'MATCH', '2.06', 'http://www.oberhumer.com/opensource/lzo/download/=
lzo-2.06.tar.gz', 'Radu Moisan <radu.moisan@intel.com>']
['nativesdk-lzo', '2.06', '2.06', 'GPLv2+', 'libs', 'http://www.oberhumer.c=
om/opensource/lzo/', 'r1', 'autoconf-native automake-native libtool-native =
gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk=
-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc', 'None', 'None', '=
Lossless data compression library', 'MATCH', 'N/A', 'http://www.oberhumer.c=
om/opensource/lzo/download/lzo-2.06.tar.gz', 'None']
['libgcrypt-native', '1.5.0', '1.5.0', 'GPLv2+ & LGPLv2.1+', 'libs', 'http:=
//directory.fsf.org/project/libgcrypt/', 'r1', 'pkgconfig-native autoconf-n=
ative automake-native libtool-native gnu-config-native  libgpg-error-native=
 libcap-native', 'https://bugs.g10code.com/gnupg/index', 'None', 'A general=
 purpose cryptographic library based on the code from GnuPG', 'MATCH', 'N/A=
', 'ftp://ftp.gnupg.org/gcrypt/libgcrypt/libgcrypt-1.5.0.tar.gz', 'Saul Wol=
d <sgw@linux.intel.com>']
['shared-mime-info', '0.91', '0.91', 'LGPLv2+', 'base', 'http://freedesktop=
=2Eorg/wiki/Software/shared-mime-info', 'r4', 'pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native virtual=
/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  libxml2 intltool-native glib-2.0 shared-mime-i=
nfo-native', 'None', 'None', 'shared MIME database and spec', 'MATCH', 'N/A=
', 'file://parallelmake.patch', 'Valentin Popa <valentin.popa@intel.com>']
['shared-mime-info-native', '0.91', '0.91', 'LGPLv2+', 'base', 'http://free=
desktop.org/wiki/Software/shared-mime-info', 'r4', 'pkgconfig-native autoco=
nf-native automake-native libtool-native gnu-config-native gettext-minimal-=
native  libxml2-native intltool-native glib-2.0-native', 'None', 'None', 's=
hared MIME database and spec', 'MATCH', 'N/A', 'file://parallelmake.patch',=
 'Valentin Popa <valentin.popa@intel.com>']
['libnl', '2.0', '3.2.13', 'LGPLv2.1', 'libs/network', 'http://www.infradea=
d.org/~tgr/libnl/', 'r6', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native bison-nati=
ve', 'None', '1', 'libnl is a library for applications dealing with netlink=
 sockets.', 'UPDATE', '2.0', 'http://www.infradead.org/~tgr/libnl/files/lib=
nl-2.0.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['gpgme', '1.3.2', '1.3.2', 'GPLv2+ & LGPLv2.1+', 'base', 'http://www.gnupg=
=2Eorg/gpgme.html', 'r1', 'autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  libgpg-error libassuan pth', 'https://b=
ugs.g10code.com/gnupg/index', 'None', 'GnuPG Made Easy (GPGME) is a library=
 designed to make access to GnuPG easier for applications. It provides a Hi=
gh-Level Crypto API for encryption, decryption, signing, signature verifica=
tion and key management', 'MATCH', '1.3.1', 'ftp://ftp.gnupg.org/gcrypt/gpg=
me/gpgme-1.3.2.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['atk', '2.4.0', '2.4.0', 'GPLv2+ & LGPLv2+', 'x11/libs', 'http://live.gnom=
e.org/GAP/', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 gtk-doc-stub-native'=
, 'https://bugzilla.gnome.org/', 'None', 'An accessibility toolkit for GNOM=
E.', 'MATCH', '2.5.4', 'http://download.gnome.org/sources/atk/2.4/atk-2.4.0=
=2Etar.xz', 'Radu Moisan <radu.moisan@intel.com>']
['libxslt-native', '1.1.26', '1.1.27', 'MIT', 'libs', 'http://xmlsoft.org/X=
SLT/', 'r8', 'pkgconfig-native autoconf-native automake-native libtool-nati=
ve gnu-config-native  libxml2-native', 'https://bugzilla.gnome.org/', 'None=
', 'GNOME XSLT library', 'UPDATE', 'N/A', 'ftp://xmlsoft.org/libxslt//libxs=
lt-1.1.26.tar.gz', 'Valentin Popa <valentin.popa@intel.com>']
['libxslt', '1.1.26', '1.1.27', 'MIT', 'libs', 'http://xmlsoft.org/XSLT/', =
'r8', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  libxml2', 'https://bugzilla.gnome.org/', '=
None', 'GNOME XSLT library', 'UPDATE', '1.1.26', 'ftp://xmlsoft.org/libxslt=
//libxslt-1.1.26.tar.gz', 'Valentin Popa <valentin.popa@intel.com>']
['gnupg', '2.0.19', '2.0.19', 'GPLv3 & LGPLv3', 'base', 'http://www.gnupg.o=
rg/', 'r4', 'autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  pth libassuan libksba =
zlib bzip2 readline libgcrypt', 'None', 'None', 'GNU privacy guard - a free=
 PGP replacement (new v2.x)', 'MATCH', 'N/A', 'ftp://ftp.gnupg.org/gcrypt/g=
nupg/gnupg-2.0.19.tar.bz2', 'None']
['libcheck', '0.9.8', 'N/A', 'LGPLv2.1+', 'devel', 'http://gitorious.org/op=
ensuse/zypper', 'r1', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'Check =
Test Framework', 'ErrParseDir:/check/:-:check-0.9.8.tar.gz:downloads.source=
forge.net/check/check-0.9.8.tar.gz', '0.9.8', 'http://downloads.sourceforge=
=2Enet/check/check-0.9.8.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['atk-native', '2.4.0', '2.4.0', 'GPLv2+ & LGPLv2+', 'x11/libs', 'http://li=
ve.gnome.org/GAP/', 'r0', 'pkgconfig-native autoconf-native automake-native=
 libtool-native gnu-config-native  glib-2.0-native gtk-doc-stub-native', 'h=
ttps://bugzilla.gnome.org/', 'None', 'An accessibility toolkit for GNOME.',=
 'MATCH', 'N/A', 'http://download.gnome.org/sources/atk/2.4/atk-2.4.0.tar.x=
z', 'Radu Moisan <radu.moisan@intel.com>']
['npth', '0.91', '0.91', 'LGPLv3+ & GPLv2+', 'libs', 'http://www.gnupg.org/=
software/pth/', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'None', 'None', 'New GNU Portable Thread=
s', 'MATCH', 'N/A', 'ftp://ftp.gnupg.org/gcrypt/npth/npth-0.91.tar.bz2', 'N=
one']
['js', '1.7.0+1.8.0rc1', '1.60', 'MPL-1 | GPLv2+ | LGPLv2.1+', 'libs', 'htt=
p://www.mozilla.org/js/spidermonkey/', 'r4', 'autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', '=
Spidermonkey: a javascript engine written in C', 'UPDATE', '1.7.0+1.8.0rc1'=
, 'http://ftp.mozilla.org/pub/mozilla.org/js/js-1.8.0-rc1.tar.gz', 'Radu Mo=
isan <radu.moisan@intel.com>']
['libevent', '2.0.16', '2.0.16', 'BSD', 'libs', 'http://libevent.org/', 'r2=
', 'autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  ', 'http://sourceforge.net/tracker/?group_id=3D50884&atid=3D46=
1322', 'None', 'An asynchronous event notification library', 'MATCH', '2.0.=
16', 'http://github.com/downloads/libevent/libevent/libevent-2.0.16-stable.=
tar.gz', 'Scott Garman <scott.a.garman@intel.com>']
['createrepo', '0.4.11', '0.9.9', 'GPLv2+', 'base', 'http://createrepo.base=
url.org/', 'r7', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  ', 'None', 'None', 'createrepo creates rpm-metadata =
for rpms to build the repository', 'UPDATE', '0.9.9', 'http://createrepo.ba=
seurl.org/download/createrepo-0.4.11.tar.gz', 'Saul Wold <sgw@linux.intel.c=
om>']
['createrepo-native', '0.4.11', '0.9.9', 'GPLv2+', 'base', 'http://createre=
po.baseurl.org/', 'r7', ' ', 'None', 'None', 'createrepo creates rpm-metada=
ta for rpms to build the repository', 'UPDATE', 'N/A', 'http://createrepo.b=
aseurl.org/download/createrepo-0.4.11.tar.gz', 'Saul Wold <sgw@linux.intel.=
com>']
['libgpg-error', '1.10', '1.10', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://www.=
gnupg.org/related_software/libgpg-error/', 'r2', 'pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native virt=
ual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'https://bugs.g10code.com/gnupg/index', =
'None', 'a small library that defines common error values for all GnuPG com=
ponents', 'MATCH', 'N/A', 'ftp://ftp.gnupg.org/gcrypt/libgpg-error/libgpg-e=
rror-1.10.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['libmpc', '0.8.2', '0.8.2', 'LGPLv2.1', 'libs', 'http://www.multiprecision=
=2Eorg/', 'r1', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  gmp mpfr', 'None', 'None', 'Mpc is a C library fo=
r the arithmetic of complex numbers with arbitrarily high precision and cor=
rect rounding of the result. It is built upon and follows the same principl=
es as Mpfr', 'MATCH', '0.8.2', 'http://www.multiprecision.org/mpc/download/=
mpc-0.8.2.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['libmpc-native', '0.8.2', '0.8.2', 'LGPLv2.1', 'libs', 'http://www.multipr=
ecision.org/', 'r1', 'autoconf-native automake-native libtool-native gnu-co=
nfig-native  gmp-native mpfr-native', 'None', 'None', 'Mpc is a C library f=
or the arithmetic of complex numbers with arbitrarily high precision and co=
rrect rounding of the result. It is built upon and follows the same princip=
les as Mpfr', 'MATCH', 'N/A', 'http://www.multiprecision.org/mpc/download/m=
pc-0.8.2.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['nspr', '4.8.9', '4.8.9', 'GPL-2.0 | MPL-1.1 | LGPL-2.1', 'libs/network', =
'http://www.mozilla.org/projects/nspr/', 'r4', 'autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None',=
 'Netscape Portable Runtime Library', 'MATCH', 'N/A', 'ftp://ftp.mozilla.or=
g/pub/mozilla.org/nspr/releases/v4.8.9/src/nspr-4.8.9.tar.gz', 'None']
['nativesdk-libmpc', '0.8.2', '0.8.2', 'LGPLv2.1', 'libs', 'http://www.mult=
iprecision.org/', 'r1', 'autoconf-native automake-native libtool-native gnu=
-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i5=
86-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk-gmp nativesd=
k-mpfr', 'None', 'None', 'Mpc is a C library for the arithmetic of complex =
numbers with arbitrarily high precision and correct rounding of the result.=
 It is built upon and follows the same principles as Mpfr', 'MATCH', 'N/A',=
 'http://www.multiprecision.org/mpc/download/mpc-0.8.2.tar.gz', 'None']
['libgpg-error-native', '1.10', '1.10', 'GPLv2+ & LGPLv2.1+', 'libs', 'http=
://www.gnupg.org/related_software/libgpg-error/', 'r2', 'pkgconfig-native a=
utoconf-native automake-native libtool-native gnu-config-native gettext-min=
imal-native  ', 'https://bugs.g10code.com/gnupg/index', 'None', 'a small li=
brary that defines common error values for all GnuPG components', 'MATCH', =
'N/A', 'ftp://ftp.gnupg.org/gcrypt/libgpg-error/libgpg-error-1.10.tar.bz2',=
 'Valentin Popa <valentin.popa@intel.com>']
['pointercal', '0.0', 'INVALID', 'MIT', 'base', 'unknown', 'r11', ' ', 'Non=
e', 'None', 'Touchscreen calibration data', 'MATCH', '0.0', 'file://pointer=
cal', 'Valentin Popa <valentin.popa@intel.com>']
['libcroco', '0.6.3', '0.6.3', 'LGPLv2 & LGPLv2.1', 'x11/utils', 'http://ww=
w.gnome.org/', 'r3', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 libxml2 zlib gnome=
-common hicolor-icon-theme gconf gconf-native shared-mime-info-native share=
d-mime-info', 'https://bugzilla.gnome.org/', 'None', 'The Libcroco project =
is an effort to build a generic Cascading Style Sheet (CSS) parsing and man=
ipulation toolkit', 'MATCH', '0.6.3', 'http://ftp.gnome.org/pub/GNOME/sourc=
es/libcroco/0.6/libcroco-0.6.3.tar.bz2;name=3Darchive', 'Valentin Popa <val=
entin.popa@intel.com>']
['orinoco-conf', '1.0', 'INVALID', 'GPLv2', 'kernel/modules', 'unknown', 'r=
7', ' ', 'None', 'None', 'PCMCIA-cs configuration files for Hermes (Orinoco=
) wireless LAN cards', 'MATCH', '1.0', 'file://orinoco_cs.conf', 'Cristian =
Iorga <cristian.iorga@intel.com>']
['libusb-compat-native', '0.1.3', '0.1.3', 'LGPLv2.1+', 'libs', 'http://www=
=2Elibusb.org/', 'r6', 'pkgconfig-native autoconf-native automake-native li=
btool-native gnu-config-native  libusb1-native', 'http://www.libusb.org/rep=
ort', '1', 'libusb-0.1 compatible layer for libusb1, a drop-in replacement =
that aims to look, feel and behave exactly like libusb-0.1', 'MATCH', 'N/A'=
, 'http://downloads.sourceforge.net/libusb/libusb-compat-0.1.3.tar.bz2', 'S=
aul Wold <sgw@linux.intel.com>']
['alsa-state', '0.2.0', 'INVALID', 'MIT', 'base', 'unknown', 'r3', ' virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   u=
pdate-rc.d-native', 'None', 'None', 'Alsa Scenario Files - an init script a=
nd state files to restore sound state at system boot and save it at system =
shut down.', 'MATCH', 'N/A', 'file://asound.conf', 'Cristian Iorga <cristia=
n.iorga@intel.com>']
['libusb-compat', '0.1.3', '0.1.3', 'LGPLv2.1+', 'libs', 'http://www.libusb=
=2Eorg/', 'r6', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  libusb1', 'http://www.libusb.org=
/report', '1', 'libusb-0.1 compatible layer for libusb1, a drop-in replacem=
ent that aims to look, feel and behave exactly like libusb-0.1', 'MATCH', '=
N/A', 'http://downloads.sourceforge.net/libusb/libusb-compat-0.1.3.tar.bz2'=
, 'Saul Wold <sgw@linux.intel.com>']
['formfactor', '0.0', 'INVALID', 'MIT', 'base', 'unknown', 'r21', ' ', 'Non=
e', 'None', 'Device formfactor information', 'MATCH', '0.0', 'file://config=
', 'Cristian Iorga <cristian.iorga@intel.com>']
['nativesdk-libusb-compat', '0.1.3', '0.1.3', 'LGPLv2.1+', 'libs', 'http://=
www.libusb.org/', 'r6', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk vir=
tual/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativ=
esdk-libusb1', 'http://www.libusb.org/report', '1', 'libusb-0.1 compatible =
layer for libusb1, a drop-in replacement that aims to look, feel and behave=
 exactly like libusb-0.1', 'MATCH', 'N/A', 'http://downloads.sourceforge.ne=
t/libusb/libusb-compat-0.1.3.tar.bz2', 'None']
['libusb1', '1.0.8', '1.0.8', 'LGPLv2.1+', 'libs', 'http://libusb.sf.net', =
'r4', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  ', 'http://www.libusb.org/report', 'None',=
 'Userspace library to access USB (version 1.0)', 'MATCH', '1.0.8', 'http:/=
/downloads.sourceforge.net/libusb/libusb-1.0.8.tar.bz2', 'Saul Wold <sgw@li=
nux.intel.com>']
['libusb1-native', '1.0.8', '1.0.8', 'LGPLv2.1+', 'libs', 'http://libusb.sf=
=2Enet', 'r4', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive gnu-config-native  ', 'http://www.libusb.org/report', 'None', 'Userspa=
ce library to access USB (version 1.0)', 'MATCH', 'N/A', 'http://downloads.=
sourceforge.net/libusb/libusb-1.0.8.tar.bz2', 'Saul Wold <sgw@linux.intel.c=
om>']
['usbutils', '006', '006', 'GPLv2+', 'base', 'http://www.linux-usb.org', 'r=
0', 'autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  libusb zlib', 'None', 'None', 'Contains the lsusb utility for=
 inspecting the devices connected to the USB bus.', 'MATCH', 'N/A', 'http:/=
/kernel.org/pub/linux/utils/usb/usbutils/usbutils-006.tar.gz', 'Radu Moisan=
 <radu.moisan@intel.com>']
['v86d', '0.1.10', '0.1.10', 'GPLv2', 'base', 'http://dev.gentoo.org/~spock=
/projects/uvesafb/', 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  virtual/kernel update-rc.d-native', 'None'=
, 'None', 'User support binary for the uvesafb kernel module', 'MATCH', '0.=
1.10', 'http://dev.gentoo.org/~spock/projects/uvesafb/archive/v86d-0.1.10.t=
ar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>']
['nativesdk-libusb1', '1.0.8', '1.0.8', 'LGPLv2.1+', 'libs', 'http://libusb=
=2Esf.net', 'r4', 'pkgconfig-native autoconf-native automake-native libtool=
-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/n=
ativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc', 'http://w=
ww.libusb.org/report', 'None', 'Userspace library to access USB (version 1.=
0)', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/libusb/libusb-1.0.8.=
tar.bz2', 'None']
['pciutils', '3.1.10', '3.1.10', 'GPLv2+', 'console/utils', 'http://atrey.k=
arlin.mff.cuni.cz/~mj/pciutils.shtml', 'r0', ' virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  zlib', 'None', 'None', '=
The PCI Utilities package contains a library for portable access to PCI bus=
 configuration space and several utilities based on this library.', 'MATCH'=
, '3.1.9', 'http://kernel.org/pub/software/utils/pciutils/pciutils-3.1.10.t=
ar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['keymaps', '1.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r20', '  update-=
rc.d-native', 'None', 'None', 'Keymaps and initscript to set the keymap on =
bootup.', 'MATCH', '1.0', 'file://keymap.sh', 'Radu Moisan <radu.moisan@int=
el.com>']
['setserial', '2.17', 'N/A', 'GPLv2.0', 'console/utils', 'http://setserial.=
sourceforge.net', 'r3', 'autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  ', 'None', 'None', 'setserial is a progra=
m designed to set and/or report the configuration information associated wi=
th a serial port', 'ErrParseDir:/setserial/:-:setserial-2.17.tar.gz:downloa=
ds.sourceforge.net/setserial/setserial-2.17.tar.gz', '2.17', 'http://downlo=
ads.sourceforge.net/setserial/setserial-2.17.tar.gz', 'Radu Moisan <radu.mo=
isan@intel.com>']
['libksba', '1.2.0', '1.2.0', 'GPLv3', 'base', 'http://www.gnupg.org/relate=
d_software/libksba/', 'r1', 'autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  libgpg-error', 'None', 'None', 'Libks=
ba provides an easy API to create and parse X.509 and CMS related objects.'=
, 'MATCH', 'N/A', 'ftp://ftp.gnupg.org/gcrypt/libksba/libksba-1.2.0.tar.bz2=
', 'None']
['eee-acpi-scripts', '1.1.12+git1+9d4cdedca25b396405f8587f9c4fbf8229e041c2'=
, '1.1.12', 'GPLv2', 'base', 'http://alioth.debian.org/projects/debian-eeep=
c/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  ', 'None', 'None', 'eeePC specific ACPI scripts', 'MATCH',=
 '1.1.12+9d4cdedca25b396405f8587f9c4fbf8229e041c2', 'git://git.debian.org/g=
it/debian-eeepc/eeepc-acpi-scripts.git;protocol=3Dgit', 'Radu Moisan <radu.=
moisan@intel.com>']
['lrzsz', '0.12.20', '0.12.20', 'GPLv2+', 'console/network', 'http://www.oh=
se.de/uwe/software/lrzsz.html', 'r5', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  ', 'None', 'None', "Lrzsz is a cosmetically modified zmodem/ymodem/xmod=
em package built from the public-domain version of Chuck Forsberg's rzsz pa=
ckage. These programs use error correcting protocols ({z,x,y}modem) to send=
 (sz, sx, sb) and receive (rz, rx, rb) files over a dial-in serial port fro=
m a variety of programs running under various operating systems. ", 'MATCH'=
, '0.12.20', 'http://www.ohse.de/uwe/releases/lrzsz-0.12.20.tar.gz', 'Crist=
ian Iorga <cristian.iorga@intel.com>']
['grub', '2.00', '2.00', 'GPLv3', 'bootloaders', 'http://www.gnu.org/softwa=
re/grub/', 'r0', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  autogen-native fl=
ex-native', 'None', 'None', 'GRUB2 is the next generaion of a GPLed bootloa=
der intended to unify bootloading across x86 operating systems. In addition=
 to loading the Linux kernel, it implements the Multiboot standard, which a=
llows for flexible loading of multiple boot images.', 'MATCH', 'N/A', 'ftp:=
//ftp.gnu.org/gnu/grub/grub-2.00.tar.gz', 'Radu Moisan <radu.moisan@intel.c=
om>']
['acpid', '1.0.10', 'N/A', 'GPLv2+', 'base', 'http://sourceforge.net/projec=
ts/acpid/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc   update-rc.d-native', 'http://sourceforge.net/track=
er/?group_id=3D33140&atid=3D407341', 'None', 'A daemon for delivering ACPI =
events.', 'ErrParseDir:/acpid/:-:acpid-1.0.10.tar.gz:downloads.sourceforge.=
net/acpid/acpid-1.0.10.tar.gz', '1.0.10', 'http://downloads.sourceforge.net=
/acpid/acpid-1.0.10.tar.gz', 'Radu Moisan <radu.moisan@intel.com>']
['usbinit', '1.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r3', '  update-r=
c.d-native', 'None', 'None', 'Initscript to manage gadget Ethernet', 'MATCH=
', 'n/a', 'file://usb-gether', 'Radu Moisan <radu.moisan@intel.com>']
['hostap-conf', '1.0', 'INVALID', 'GPLv2', 'kernel/modules', 'unknown', 'r1=
4', ' ', 'None', 'None', "PCMCIA-cs configuration files for wireless LAN ca=
rds based on Intersil's Prism2/2.5/3 chipset", 'MATCH', 'N/A', 'file://host=
ap_cs.modalias', 'Cristian Iorga <cristian.iorga@intel.com>']
['grub-efi-i586-native', '2.00', '2.00', 'GPLv3', 'bootloaders', 'http://ww=
w.gnu.org/software/grub/', 'r0', 'autoconf-native automake-native libtool-n=
ative gnu-config-native gettext-minimal-native  autogen-native', 'None', 'N=
one', 'GRUB2 is the next generaion of a GPLed bootloader intended to unify =
bootloading across x86 operating systems. In addition to loading the Linux =
kernel, it implements the Multiboot standard, which allows for flexible loa=
ding of multiple boot images. This recipe builds an EFI binary for the targ=
et. It does not install or package anything, it only deploys a target-arch =
GRUB EFI image.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/grub/grub-2.00.tar=
=2Egz', 'None']
['zaurusd', '0.1+git1+82b30c7865f007fff81372c3cdc71b2ff6843ccc', '82b30c786=
5f007fff81372c3cdc71b2ff6843ccc', 'GPLv2', 'base', 'unknown', 'r0', 'pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  tslib update-rc.d-native', 'None', 'None', 'Daemon to h=
andle device specifc features.', 'MATCH', '0.0+svnr426', 'git://git.yoctopr=
oject.org/zaurusd;protocol=3Dgit', 'Radu Moisan <radu.moisan@intel.com>']
['apmd', '3.2.2-14', '3.2.2', 'GPLv2+', 'base', 'http://apenwarr.ca/apmd/',=
 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  libtool-cross update-rc.d-native', 'None', 'None', 'The Advanc=
ed Power Management (APM) support provides access to battery status informa=
tion and a set of tools for managing notebook power consumption.', 'UPDATE'=
, '3.2.2-14', 'ftp://ftp.debian.org/debian/pool/main/a/apmd/apmd_3.2.2.orig=
=2Etar.gz;name=3Dtarball', 'Scott Garman <scott.a.garman@intel.com>']
['pcmciautils', '018', '018', 'GPLv2', 'kernel/userland', 'http://kernel.or=
g/pub/linux/utils/kernel/pcmcia/pcmcia.html', 'r0', ' virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  sysfsutils flex-n=
ative', 'None', 'None', 'Linux Kernel 2.6 Userland Utilities for the PCMCIA=
 Subsystem', 'MATCH', '017', 'http://kernel.org/pub/linux/utils/kernel/pcmc=
ia/pcmciautils-018.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['taglib', '1.6.3', '1.6.3', 'LGPLv2.1 | MPL-1', 'libs/multimedia', 'http:/=
/developer.kde.org/~wheeler/taglib.html', 'r2', 'pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
', 'None', 'None', 'TagLib is a library for reading and editing the meta-da=
ta of several popular audio formats', 'MATCH', '1.6.3', 'http://launchpad.n=
et/taglib/trunk/1.6.3/+download/taglib-1.6.3.tar.gz', 'Cristian Iorga <cris=
tian.iorga@intel.com>']
['qemu-helper-native', '1.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r1', =
' ', 'None', 'None', 'Qemu helper utilities from Poky', 'MATCH', 'N/A', 'fi=
le://tunctl.c', 'Valentin Popa <valentin.popa@intel.com>']
['nativesdk-qemu-helper', '1.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r9=
', 'virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-=
linux-compilerlibs virtual/nativesdk-libc', 'None', 'None', 'Qemu helper sc=
ripts', 'MATCH', 'N/A', 'file:///srv/www/vhosts/packages.yoctoproject.org/p=
kg-report/poky/scripts/runqemu', 'None']
['pm-utils', '1.4.1', '1.4.1', 'GPLv2', 'base', 'http://pm-utils.freedeskto=
p.org/wiki/', 'r1', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native pkgconfig-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'Simple s=
hell command line tools to suspend and hibernate.', 'MATCH', 'N/A', 'http:/=
/pm-utils.freedesktop.org/releases/pm-utils-1.4.1.tar.gz', 'Cristian Iorga =
<cristian.iorga@intel.com>']
['diffstat', '1.55', '1.55', 'MIT', 'devel', 'http://invisible-island.net/d=
iffstat/', 'r0', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None'=
, 'diffstat reads the output of diff and displays a histogram of the insert=
ions, deletions, and modifications per-file. It is useful for reviewing lar=
ge, complex patch files.', 'MATCH', '1.54', 'ftp://invisible-island.net/dif=
fstat/diffstat-1.55.tgz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['nativesdk-u-boot-mkimage', '2011.06', '2011.06', 'GPLv2+', 'bootloader', =
'unknown', 'r0', 'virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk=
-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc', 'None', 'None', '=
U-boot bootloader mkimage tool', 'MATCH', 'N/A', 'ftp://ftp.denx.de/pub/u-b=
oot/u-boot-2011.06.tar.bz2', 'None']
['u-boot-fw-utils', '2011.06', '2011.06', 'GPLv2+', 'bootloader', 'unknown'=
, 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  mtd-utils', 'None', 'None', 'U-boot bootloader fw_printenv/se=
tenv utils', 'MATCH', 'N/A', 'ftp://ftp.denx.de/pub/u-boot/u-boot-2011.06.t=
ar.bz2', 'Radu Moisan <radu.moisan@intel.com>']
['icecc-create-env-native', '0.1', 'INVALID', 'GPLv2+', 'base', 'unknown', =
'r2', ' ', 'None', 'None', 'This is a modified version of the icecc-create-=
env script in order tomake it work with OE.', 'MATCH', 'N/A', 'file://icecc=
-create-env', 'None']
['libacpi', '0.2', '0.2', 'MIT', 'base', 'http://www.ngolde.de/libacpi.html=
', 'r6', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  ', 'None', 'None', 'General purpose shared library for progr=
ams gathering ACPI data on Linux. Thermal zones, battery infomration, fan i=
nformation and AC states are implemented.', 'MATCH', '0.2', 'http://www.ngo=
lde.de/download/libacpi-0.2.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['squashfs-tools', '4.2', 'N/A', 'GPL-2 & PD', 'base', 'unknown', '1', ' vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  attr zlib xz', 'None', 'None', 'Tools to manipulate Squashfs filesystems.=
', 'ErrParseDir:/squashfs/:-:squashfs4.2.tar.gz:downloads.sourceforge.net/s=
quashfs/squashfs4.2.tar.gz', '4.2', 'http://downloads.sourceforge.net/squas=
hfs/squashfs4.2.tar.gz;name=3Dsquashfs', 'Radu Moisan <radu.moisan@intel.co=
m>']
['libjson', '0.9', '0.9', 'MIT', 'base', 'http://oss.metaparadigm.com/json-=
c/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'None', 'None', 'JSON-C - A JSON implementation in =
C', 'MATCH', '0.9', 'http://oss.metaparadigm.com/json-c/json-c-0.9.tar.gz',=
 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['squashfs-tools-native', '4.2', 'N/A', 'GPL-2 & PD', 'base', 'unknown', '1=
', ' attr-native zlib-native xz-native', 'None', 'None', 'Tools to manipula=
te Squashfs filesystems.', 'ErrParseDir:/squashfs/:-:squashfs4.2.tar.gz:dow=
nloads.sourceforge.net/squashfs/squashfs4.2.tar.gz', 'N/A', 'http://downloa=
ds.sourceforge.net/squashfs/squashfs4.2.tar.gz;name=3Dsquashfs', 'Radu Mois=
an <radu.moisan@intel.com>']
['hostap-utils', '0.4.7', '0.4.7', 'GPLv2', 'kernel/userland', 'http://host=
ap.epitest.fi', 'r4', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'http://hostap.epitest.fi/bugz/', 'None', 'T=
he hostap driver supports Host AP mode, it allows for IEEE 802.11 managemen=
t functions on the host computer and allows the system to act as an access =
point.', 'MATCH', 'N/A', 'http://hostap.epitest.fi/releases/hostap-utils-0.=
4.7.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>']
['e2fsprogs-native', '1.42.1', 'N/A', 'GPLv2 & LGPLv2 & BSD & MIT', 'base',=
 'http://e2fsprogs.sourceforge.net/', 'r3', 'autoconf-native automake-nativ=
e libtool-native gnu-config-native gettext-minimal-native  util-linux-nativ=
e', 'None', 'None', 'The Ext2 Filesystem Utilities (e2fsprogs) contain all =
of the standard utilities for creating, fixing, configuring , and debugging=
 ext2 filesystems.', 'ErrParseDir:/e2fsprogs/:-:e2fsprogs-1.42.1.tar.gz:dow=
nloads.sourceforge.net/e2fsprogs/e2fsprogs-1.42.1.tar.gz', 'N/A', 'http://d=
ownloads.sourceforge.net/e2fsprogs/e2fsprogs-1.42.1.tar.gz', 'Scott Garman =
<scott.a.garman@intel.com>']
['autoconf', '2.69', '2.69', 'GPLv2 & GPLv3', 'devel', 'http://www.gnu.org/=
software/autoconf/', 'r7', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc   m4-native', 'None', 'None', 'Autoconf=
 is an extensible package of M4 macros that produce shell scripts to automa=
tically configure software source code packages. Autoconf creates a configu=
ration script for a package from a template file that lists the operating s=
ystem features that the package can use, in the form of M4 macro calls.', '=
MATCH', '2.68', 'ftp://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz', 'Bog=
dan Marinescu <bogdan.a.marinescu@intel.com>']
['u-boot-mkimage-native', '2011.06', '2012.07', 'GPLv2+', 'bootloader', 'un=
known', 'r0', ' ', 'None', 'None', 'U-boot bootloader mkimage tool', 'UPDAT=
E', 'N/A', 'ftp://ftp.denx.de/pub/u-boot/u-boot-2011.06.tar.bz2', 'Radu Moi=
san <radu.moisan@intel.com>']
['u-boot-mkimage', '2011.06', '2012.07', 'GPLv2+', 'bootloader', 'unknown',=
 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  ', 'None', 'None', 'U-boot bootloader mkimage tool', 'UPDATE',=
 'N/A', 'ftp://ftp.denx.de/pub/u-boot/u-boot-2011.06.tar.bz2', 'Radu Moisan=
 <radu.moisan@intel.com>']
['e2fsprogs', '1.42.1', 'N/A', 'GPLv2 & LGPLv2 & BSD & MIT', 'base', 'http:=
//e2fsprogs.sourceforge.net/', 'r3', 'autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  util-linux', 'None', 'None', 'The Ext2 Filesystem Utilities (e2fsprogs) =
contain all of the standard utilities for creating, fixing, configuring , a=
nd debugging ext2 filesystems.', 'ErrParseDir:/e2fsprogs/:-:e2fsprogs-1.42.=
1.tar.gz:downloads.sourceforge.net/e2fsprogs/e2fsprogs-1.42.1.tar.gz', '1.4=
2.4', 'http://downloads.sourceforge.net/e2fsprogs/e2fsprogs-1.42.1.tar.gz',=
 'Scott Garman <scott.a.garman@intel.com>']
['autoconf-native', '2.69', '2.69', 'GPLv2 & GPLv3', 'devel', 'http://www.g=
nu.org/software/autoconf/', 'r7', ' m4-native gnu-config-native', 'None', '=
None', 'Autoconf is an extensible package of M4 macros that produce shell s=
cripts to automatically configure software source code packages. Autoconf c=
reates a configuration script for a package from a template file that lists=
 the operating system features that the package can use, in the form of M4 =
macro calls.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/autoconf/autoconf-2.6=
9.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['nativesdk-autoconf', '2.69', '2.69', 'GPLv2 & GPLv3', 'devel', 'http://ww=
w.gnu.org/software/autoconf/', 'r7', 'autoconf-native automake-native libto=
ol-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual=
/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk=
-m4 nativesdk-gnu-config', 'None', 'None', 'Autoconf is an extensible packa=
ge of M4 macros that produce shell scripts to automatically configure softw=
are source code packages. Autoconf creates a configuration script for a pac=
kage from a template file that lists the operating system features that the=
 package can use, in the form of M4 macro calls.', 'MATCH', 'N/A', 'ftp://f=
tp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz', 'None']
['btrfs-tools', 'git', '89fe5b5f666c247aa3173745fb87c710f3a71a4a', 'GPLv2',=
 'base', 'https://btrfs.wiki.kernel.org', 'r6', ' virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  util-linux attr', 'No=
ne', 'None', 'Btrfs is a new copy on write filesystem for Linux aimed at im=
plementing advanced features while focusing on fault tolerance, repair and =
easy administration. This package contains utilities (mkfs, fsck, btrfsctl)=
 used to work with btrfs and an utility (btrfs-convert) to make a btrfs fil=
esystem from an ext3.', 'UPDATE', 'git', 'git://git.kernel.org/pub/scm/linu=
x/kernel/git/mason/btrfs-progs.git;protocol=3Dgit;tag=3Dfdb6c0402337d9607c7=
a39155088eaf033742752;branch=3Dmaster', 'Bogdan Marinescu <bogdan.a.marines=
cu@intel.com>']
['kconfig-frontends', '3.5.0', 'N/A', 'GPL-2.0', 'devel', 'http://ymorin.is=
-a-geek.org/projects/kconfig-frontends', 'r1', 'autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   ncurses flex biso=
n gperf', 'None', 'None', 'The kconfig-frontends project aims at centralisi=
ng the effort of keeping an up-to-date, out-of-tree, packaging of the kconf=
ig infrastructure, ready for use by third-party projects. The kconfig-front=
ends package provides the kconfig parser, as well as all the frontends', 'E=
rrParseDir:/download/kconfig-frontends/:-:kconfig-frontends-3.5.0-0.tar.xz:=
ymorin.is-a-geek.org/download/kconfig-frontends/kconfig-frontends-3.5.0-0.t=
ar.xz', 'N/A', 'http://ymorin.is-a-geek.org/download/kconfig-frontends/kcon=
fig-frontends-3.5.0-0.tar.xz', 'None']
['btrfs-tools-native', 'git', '89fe5b5f666c247aa3173745fb87c710f3a71a4a', '=
GPLv2', 'base', 'https://btrfs.wiki.kernel.org', 'r6', ' util-linux-native =
attr-native', 'None', 'None', 'Btrfs is a new copy on write filesystem for =
Linux aimed at implementing advanced features while focusing on fault toler=
ance, repair and easy administration. This package contains utilities (mkfs=
, fsck, btrfsctl) used to work with btrfs and an utility (btrfs-convert) to=
 make a btrfs filesystem from an ext3.', 'UPDATE', 'N/A', 'git://git.kernel=
=2Eorg/pub/scm/linux/kernel/git/mason/btrfs-progs.git;protocol=3Dgit;tag=3D=
fdb6c0402337d9607c7a39155088eaf033742752;branch=3Dmaster', 'Bogdan Marinesc=
u <bogdan.a.marinescu@intel.com>']
['kconfig-frontends-native', '3.5.0', 'N/A', 'GPL-2.0', 'devel', 'http://ym=
orin.is-a-geek.org/projects/kconfig-frontends', 'r1', 'autoconf-native auto=
make-native libtool-native gnu-config-native  ncurses-native flex-native bi=
son-native gperf-native', 'None', 'None', 'The kconfig-frontends project ai=
ms at centralising the effort of keeping an up-to-date, out-of-tree, packag=
ing of the kconfig infrastructure, ready for use by third-party projects. T=
he kconfig-frontends package provides the kconfig parser, as well as all th=
e frontends', 'ErrParseDir:/download/kconfig-frontends/:-:kconfig-frontends=
-3.5.0-0.tar.xz:ymorin.is-a-geek.org/download/kconfig-frontends/kconfig-fro=
ntends-3.5.0-0.tar.xz', 'N/A', 'http://ymorin.is-a-geek.org/download/kconfi=
g-frontends/kconfig-frontends-3.5.0-0.tar.xz', 'None']
['docbook-utils-native', '0.6.14', '0.6.14', 'GPLv2', 'console/utils', 'htt=
p://sources.redhat.com/docbook-tools/', 'r3', 'autoconf-native automake-nat=
ive libtool-native gnu-config-native  openjade-native sgmlspl-native docboo=
k-dsssl-stylesheets-native docbook-sgml-dtd-3.1-native', 'None', 'None', 'A=
 collection of all the free software tools you need to work on and format D=
ocBook documents.', 'MATCH', 'N/A', 'ftp://sources.redhat.com/pub/docbook-t=
ools/new-trials/SOURCES/docbook-utils-0.6.14.tar.gz', 'Scott Garman <scott.=
a.garman@intel.com>']
['opkg-utils', '0.1.8+git1+49cc783d8e0415059d126ae22c892988717ffda7', '49cc=
783d8e0415059d126ae22c892988717ffda7', 'GPLv2+', 'base', 'http://wiki.openm=
oko.org/wiki/Opkg', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'None', 'None', 'OPKG Package Manager Ut=
ilities', 'MATCH', 'N/A', 'git://git.yoctoproject.org/opkg-utils;protocol=
=3Dgit', 'Radu Moisan <radu.moisan@intel.com>']
['patch', '2.6.1', '2.6.1', 'GPLv3', 'utils', 'unknown', 'r1', 'autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ',=
 'None', 'None', 'patch takes a patch file containing a difference listing =
produced by the diff program and applies those differences to one or more o=
riginal files, producing patched versions.', 'MATCH', 'N/A', 'ftp://ftp.gnu=
=2Eorg/gnu/patch/patch-2.6.1.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu=
@intel.com>']
['unifdef-native', '2.6.18+git', 'INVALID', 'BSD-2-Clause', 'devel', 'unkno=
wn', 'r1', ' ', 'None', 'None', 'Kernel header preprocessor', 'MATCH', 'N/A=
', 'file://unifdef.c', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['genext2fs', '1.4.1', '1.4.1', 'GPLv2', 'console/utils', 'http://genext2fs=
=2Esourceforge.net/', 'r2', 'autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'A tool to generat=
e an ext2 filesystem as a normal (non-root) user.', 'MATCH', '1.4.1', 'ftp:=
//ftp.debian.org/debian/pool/main/g/genext2fs/genext2fs_1.4.1.orig.tar.gz',=
 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['genext2fs-native', '1.4.1', '1.4.1', 'GPLv2', 'console/utils', 'http://ge=
next2fs.sourceforge.net/', 'r2', 'autoconf-native automake-native libtool-n=
ative gnu-config-native  ', 'None', 'None', 'A tool to generate an ext2 fil=
esystem as a normal (non-root) user.', 'MATCH', 'N/A', 'ftp://ftp.debian.or=
g/debian/pool/main/g/genext2fs/genext2fs_1.4.1.orig.tar.gz', 'Bogdan Marine=
scu <bogdan.a.marinescu@intel.com>']
['pseudo', '1.4', '1.4', 'LGPL2.1', 'base', 'http://git.yoctoproject.org/cg=
it/cgit.cgi/pseudo', 'r12', ' virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  sqlite3', 'None', 'None', 'Pseudo gives f=
ake root capabilities to a normal user', 'MATCH', '1.2', 'http://www.yoctop=
roject.org/downloads/pseudo/pseudo-1.4.tar.bz2', 'Mark Hatle <mark.hatle@wi=
ndriver.com>']
['opkg-utils-native', '0.1.8+git1+49cc783d8e0415059d126ae22c892988717ffda7'=
, '49cc783d8e0415059d126ae22c892988717ffda7', 'GPLv2+', 'base', 'http://wik=
i.openmoko.org/wiki/Opkg', 'r0', ' ', 'None', 'None', 'OPKG Package Manager=
 Utilities', 'MATCH', 'N/A', 'git://git.yoctoproject.org/opkg-utils;protoco=
l=3Dgit', 'Radu Moisan <radu.moisan@intel.com>']
['pseudo-native', '1.4', '1.4', 'LGPL2.1', 'base', 'http://git.yoctoproject=
=2Eorg/cgit/cgit.cgi/pseudo', 'r12', ' sqlite3-native', 'None', 'None', 'Ps=
eudo gives fake root capabilities to a normal user', 'MATCH', 'N/A', 'http:=
//www.yoctoproject.org/downloads/pseudo/pseudo-1.4.tar.bz2', 'Mark Hatle <m=
ark.hatle@windriver.com>']
['nativesdk-pseudo', '1.4', '1.4', 'LGPL2.1', 'base', 'http://git.yoctoproj=
ect.org/cgit/cgit.cgi/pseudo', 'r12', 'virtual/i586-pokysdk-linux-gcc-cross=
sdk virtual/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-lib=
c nativesdk-sqlite3', 'None', 'None', 'Pseudo gives fake root capabilities =
to a normal user', 'MATCH', 'N/A', 'http://www.yoctoproject.org/downloads/p=
seudo/pseudo-1.4.tar.bz2', 'None']
['icon-naming-utils-native', '0.8.7', '0.8.90', 'GPLv2', 'base', 'unknown',=
 'r4', 'autoconf-native automake-native libtool-native gnu-config-native  l=
ibxml-simple-perl-native perl-native', 'None', 'None', 'icon-naming-utils-n=
ative version 0.8.7-r4', 'UPDATE', 'N/A', 'http://tango.freedesktop.org/rel=
eases/icon-naming-utils-0.8.7.tar.gz', 'None']
['prelink', '1.0+git1+a2d8e30942bd4bc0a5c852b9d9d12f8684c4bb8d', 'N/A', 'GP=
Lv2', 'devel', 'unknown', 'r10', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  elfutils binutils', 'None', 'Non=
e', 'The prelink package contains a utility which modifies ELF shared libra=
ries and executables, so that far fewer relocations need to be resolved at =
runtime and thus programs come up faster.', 'ErrUnknown:git.yoctoproject.or=
g/prelink-cross.git', '1.0+git1+9552f214c7faa816fdb55b289a457f0cab034f00', =
'git://git.yoctoproject.org/prelink-cross.git;protocol=3Dgit', 'Mark Hatle =
<mark.hatle@windriver.com>']
['prelink-native', '1.0+git1+a2d8e30942bd4bc0a5c852b9d9d12f8684c4bb8d', 'N/=
A', 'GPLv2', 'devel', 'unknown', 'r10', 'autoconf-native automake-native li=
btool-native gnu-config-native  elfutils-native binutils-native', 'None', '=
None', 'The prelink package contains a utility which modifies ELF shared li=
braries and executables, so that far fewer relocations need to be resolved =
at runtime and thus programs come up faster.', 'ErrUnknown:git.yoctoproject=
=2Eorg/prelink-cross.git', 'N/A', 'git://git.yoctoproject.org/prelink-cross=
=2Egit;protocol=3Dgit', 'Mark Hatle <mark.hatle@windriver.com>']
['python-setuptools', '0.6c11', '0.6c11', 'PSF', 'devel/python', 'http://ch=
eeseshop.python.org/pypi/setuptools', 'ml5', ' virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc   python python-native py=
thon  python-native ', 'None', 'None', 'Download, build, install, upgrade, =
and uninstall Python packages', 'MATCH', 'N/A', 'http://cheeseshop.python.o=
rg/packages/source/s/setuptools/setuptools-0.6c11.tar.gz', 'None']
['python-argparse', '1.2.1', '1.2.1', 'PSF', 'devel/python', 'unknown', 'r2=
', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc   python-native python  python-native  python-setuptools-native', '=
None', 'None', 'Python command-line parsing library', 'MATCH', 'N/A', 'http=
://argparse.googlecode.com/files/argparse-1.2.1.tar.gz', 'None']
['ccache-native', '3.1.7', '3.1.8', 'GPLv3+', 'devel', 'http://ccache.samba=
=2Eorg', 'r0', 'autoconf-native automake-native libtool-native gnu-config-n=
ative  ', 'None', 'None', 'ccache is a compiler cache. It speeds up recompi=
lation by caching the result of previous compilations and detecting when th=
e same compilation is being done again. Supported languages are C, C\\+\\+,=
 Objective-C and Objective-C++.', 'UPDATE', 'N/A', 'http://samba.org/ftp/cc=
ache/ccache-3.1.7.tar.gz', 'Wenzong Fan <wenzong.fan@windriver.com>']
['ccache', '3.1.7', '3.1.8', 'GPLv3+', 'devel', 'http://ccache.samba.org', =
'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  ', 'None', 'None', 'ccache is a compiler cache. It speeds u=
p recompilation by caching the result of previous compilations and detectin=
g when the same compilation is being done again. Supported languages are C,=
 C\\+\\+, Objective-C and Objective-C++.', 'UPDATE', '3.1.7', 'http://samba=
=2Eorg/ftp/ccache/ccache-3.1.7.tar.gz', 'Wenzong Fan <wenzong.fan@windriver=
=2Ecom>']
['python-imaging', '1.1.7', '1.1.7', 'MIT', 'devel/python', 'unknown', 'r4'=
, ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  freetype jpeg tiff python-native python  python-native ', 'None', '=
None', 'Python Imaging Library', 'MATCH', 'N/A', 'http://effbot.org/downloa=
ds/Imaging-1.1.7.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['python-setuptools-native', '0.6c11', '0.6c11', 'PSF', 'devel/python', 'ht=
tp://cheeseshop.python.org/pypi/setuptools', 'ml5', '  python-native', 'Non=
e', 'None', 'Download, build, install, upgrade, and uninstall Python packag=
es', 'MATCH', 'N/A', 'http://cheeseshop.python.org/packages/source/s/setupt=
ools/setuptools-0.6c11.tar.gz', 'None']
['python-argparse-native', '1.2.1', '1.2.1', 'PSF', 'devel/python', 'unknow=
n', 'r2', ' python-native python-setuptools-native', 'None', 'None', 'Pytho=
n command-line parsing library', 'MATCH', 'N/A', 'http://argparse.googlecod=
e.com/files/argparse-1.2.1.tar.gz', 'None']
['python-dbus', '1.1.1', '1.1.1', 'MIT', 'devel/python', 'http://www.freede=
sktop.org/Software/dbus', 'r0', 'pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  expat dbus dbus-=
glib virtual/libintl python-pyrex-native python-native python  python-nativ=
e ', 'None', 'None', 'Python bindings for DBus, a socket-based message bus =
system for interprocess communication', 'MATCH', 'N/A', 'http://dbus.freede=
sktop.org/releases/dbus-python/dbus-python-1.1.1.tar.gz', 'Bogdan Marinescu=
 <bogdan.a.marinescu@intel.com>']
['python-scons-native', '2.1.0', 'N/A', 'MIT', 'devel/python', 'unknown', '=
r2', ' python-native', 'None', 'None', 'A Software Construction Tool', 'Err=
ParseDir:/scons/:-:scons-2.1.0.tar.gz:downloads.sourceforge.net/scons/scons=
-2.1.0.tar.gz', 'N/A', 'http://downloads.sourceforge.net/scons/scons-2.1.0.=
tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['python-gst', '0.10.22', '0.10.22', 'LGPLv2.1', 'devel/python', 'unknown',=
 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base python-pygobje=
ct python-native python  python-native ', 'None', 'None', 'Python Gstreamer=
 bindings', 'MATCH', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-pytho=
n/gst-python-0.10.22.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@intel.=
com>']
['python', '2.7.3', '2.7.3', 'PSFv2', 'devel/python', 'http://www.python.or=
g', 'r0.2', 'autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  python-native bzip2 db gdbm openssl readline sqlite3 =
zlib  python-native ', 'None', 'None', 'The Python Programming Language', '=
MATCH', '2.7.3', 'http://www.python.org/ftp/python/2.7.3/Python-2.7.3.tar.b=
z2', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['nativesdk-python', '2.7.3', '2.7.3', 'PSFv2', 'devel/python', 'http://www=
=2Epython.org', 'r0.2', 'autoconf-native automake-native libtool-native gnu=
-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i5=
86-pokysdk-linux-compilerlibs virtual/nativesdk-libc python-native nativesd=
k-bzip2 nativesdk-db nativesdk-gdbm nativesdk-openssl nativesdk-readline na=
tivesdk-sqlite3 nativesdk-zlib python-native', 'None', 'None', 'The Python =
Programming Language', 'MATCH', 'N/A', 'http://www.python.org/ftp/python/2.=
7.3/Python-2.7.3.tar.bz2', 'None']
['python-pycairo', '1.10.0', '1.10.0', 'LGPLv2.1 & MPL-1.1', 'python-devel'=
, 'http://cairographics.org/pycairo', 'r2', 'pkgconfig-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  cairo py=
thon-native python  python-native ', 'http://bugs.freedesktop.org', 'None',=
 'Python Bindings for the Cairo canvas library', 'MATCH', 'N/A', 'http://ca=
irographics.org/releases/py2cairo-1.10.0.tar.bz2', 'Saul Wold <sgw@linux.in=
tel.com>']
['cdrtools-native', '2.01', '3.00', 'GPLv2', 'console/utils', 'http://cdrec=
ord.berlios.de/private/cdrecord.html', 'r2', ' ', 'None', 'None', 'A set of=
 tools for CD recording, including cdrecord', 'UPDATE', 'N/A', 'ftp://ftp.b=
erlios.de/pub/cdrecord/cdrtools-2.01.tar.bz2', 'Scott Garman <scott.a.garma=
n@intel.com>']
['python-pygobject', '2.27.91', '2.27.91', 'LGPLv2.1', 'devel/python', 'unk=
nown', 'r4', 'pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  python python-pygobject-native glib=
-2.0 python-native python  python-native ', 'None', 'None', 'Python GObject=
 bindings', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/pygobje=
ct/2.27/pygobject-2.27.91.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@i=
ntel.com>']
['python-scons', '2.1.0', 'N/A', 'MIT', 'devel/python', 'unknown', 'r2', ' =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc   python-native python  python-native ', 'None', 'None', 'A Software Con=
struction Tool', 'ErrParseDir:/scons/:-:scons-2.1.0.tar.gz:downloads.source=
forge.net/scons/scons-2.1.0.tar.gz', 'N/A', 'http://downloads.sourceforge.n=
et/scons/scons-2.1.0.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.c=
om>']
['qemu', '1.2.0', '1.2.0', 'GPLv2 & LGPLv2.1', 'base', 'http://qemu.org', '=
r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  glib-2.0 zlib alsa-lib virtual/libx11', 'None', 'None', 'ope=
n source processor emulator', 'MATCH', '0.13.0', 'http://wiki.qemu.org/down=
load/qemu-1.2.0.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['qemu-native', '1.2.0', '1.2.0', 'GPLv2 & LGPLv2.1', 'base', 'http://qemu.=
org', 'r0', 'autoconf-native automake-native libtool-native gnu-config-nati=
ve  zlib-native alsa-lib-native glib-2.0-native', 'None', 'None', 'open sou=
rce processor emulator', 'MATCH', 'N/A', 'http://wiki.qemu.org/download/qem=
u-1.2.0.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>']
['nativesdk-qemu', '1.2.0', '1.2.0', 'GPLv2 & LGPLv2.1', 'base', 'http://qe=
mu.org', 'r0', 'autoconf-native automake-native libtool-native gnu-config-n=
ative virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysd=
k-linux-compilerlibs virtual/nativesdk-libc nativesdk-zlib nativesdk-libsdl=
 nativesdk-glib-2.0', 'None', 'None', 'open source processor emulator', 'MA=
TCH', 'N/A', 'http://wiki.qemu.org/download/qemu-1.2.0.tar.bz2', 'None']
['python-pygobject-native', '2.27.91', '2.27.91', 'LGPLv2.1', 'devel/python=
', 'unknown', 'r4', 'pkgconfig-native autoconf-native automake-native libto=
ol-native gnu-config-native  glib-2.0-native', 'None', 'None', 'Python GObj=
ect bindings', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/pygo=
bject/2.27/pygobject-2.27.91.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinesc=
u@intel.com>']
['python-pycurl', '7.19.0', '7.19.0', 'LGPLv2.1+ | MIT', 'devel/python', 'h=
ttp://pycurl.sourceforge.net/', 'r3', ' virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  curl python python-native pytho=
n  python-native ', 'None', 'None', 'libcurl python bindings.', 'MATCH', 'N=
/A', 'http://pycurl.sourceforge.net/download/pycurl-7.19.0.tar.gz;name=3Dar=
chive', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['python-pycurl-native', '7.19.0', '7.19.0', 'LGPLv2.1+ | MIT', 'devel/pyth=
on', 'http://pycurl.sourceforge.net/', 'r3', ' curl-native python-native py=
thon-native', 'None', 'None', 'libcurl python bindings.', 'MATCH', 'N/A', '=
http://pycurl.sourceforge.net/download/pycurl-7.19.0.tar.gz;name=3Darchive'=
, 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['sgml-common-native', '0.6.3', '0.6.3', 'GPLv2+', 'base', 'http://sources.=
redhat.com/docbook-tools/', 'r0', 'autoconf-native automake-native libtool-=
native gnu-config-native  ', 'None', 'None', 'The sgml-common package gathe=
rs very basic stuff necessary to work with SGML and XML, such as xml.dcl, a=
 SGML declaration of XML; iso-entities, a list of the basic SGML ISO entiti=
es; and install-catalog, a script used to add entries to (or remove entries=
 from) centralized catalogs whose entries are pointers to SGML open catalog=
s, as defined by OASIS.', 'MATCH', 'N/A', 'ftp://sources.redhat.com/pub/doc=
book-tools/new-trials/SOURCES/sgml-common-0.6.3.tgz', 'Scott Garman <scott.=
a.garman@intel.com>']
['sgml-common', '0.6.3', '0.6.3', 'GPLv2+', 'base', 'http://sources.redhat.=
com/docbook-tools/', 'r0', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'The sgml-common pa=
ckage gathers very basic stuff necessary to work with SGML and XML, such as=
 xml.dcl, a SGML declaration of XML; iso-entities, a list of the basic SGML=
 ISO entities; and install-catalog, a script used to add entries to (or rem=
ove entries from) centralized catalogs whose entries are pointers to SGML o=
pen catalogs, as defined by OASIS.', 'MATCH', 'N/A', 'ftp://sources.redhat.=
com/pub/docbook-tools/new-trials/SOURCES/sgml-common-0.6.3.tgz', 'Scott Gar=
man <scott.a.garman@intel.com>']
['python-native', '2.7.3', '2.7.3', 'PSFv2', 'devel/python', 'http://www.py=
thon.org', 'r0.1', 'autoconf-native automake-native libtool-native gnu-conf=
ig-native  openssl-native bzip2-replacement-native zlib-native readline-nat=
ive sqlite3-native', 'None', 'None', 'The Python Programming Language', 'MA=
TCH', 'N/A', 'http://www.python.org/ftp/python/2.7.3/Python-2.7.3.tar.bz2',=
 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['distcc', '2.18.3', '2.18.3', 'GPLv2', 'devel', 'unknown', 'r8', 'pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  avahi update-rc.d-native gtk+', 'None', 'None', 'distcc i=
s a parallel build system that distributes compilation of C/C++/ObjC code a=
cross machines on a network.', 'MATCH', '2.18.3', 'http://distcc.googlecode=
=2Ecom/files/distcc-2.18.3.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@=
intel.com>']
['python-pyrex', '0.9.9', '0.9.9', 'Apache-2.0', 'devel/python', 'unknown',=
 'r4', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc   python-native python  python-native ', 'None', 'None', "Pyrex=
 is a language specially designed for writing Python extension modules. It'=
s designed to bridge the gap between the nice, high-level, easy-to-use worl=
d of Python and the messy, low-level world of C.", 'MATCH', 'N/A', 'http://=
www.cosc.canterbury.ac.nz/greg.ewing/python/Pyrex/Pyrex-0.9.9.tar.gz', 'Bog=
dan Marinescu <bogdan.a.marinescu@intel.com>']
['python-pyrex-native', '0.9.9', '0.9.9', 'Apache-2.0', 'devel/python', 'un=
known', 'r3', ' python-native', 'None', 'None', "Pyrex is a language specia=
lly designed for writing Python extension modules. It's designed to bridge =
the gap between the nice, high-level, easy-to-use world of Python and the m=
essy, low-level world of C.", 'MATCH', 'N/A', 'http://www.cosc.canterbury.a=
c.nz/greg.ewing/python/Pyrex/Pyrex-0.9.9.tar.gz', 'Bogdan Marinescu <bogdan=
=2Ea.marinescu@intel.com>']
['transfig-native', '3.2.5d', 'N/A', 'MIT', 'console/utils', 'http://www-ep=
b.lbl.gov/xfig/', 'r1', ' imake-native xorg-cf-files-native zlib-native jpe=
g-native libpng-native libxpm-native', 'None', 'None', 'This package contai=
ns utilities (mainly fig2dev) to handle XFig (Facility for Interactive Gene=
ration of figures) files.', 'ErrParseDir:/mcj/:-:transfig.3.2.5d.tar.gz:dow=
nloads.sourceforge.net/mcj/transfig.3.2.5d.tar.gz', 'N/A', 'http://download=
s.sourceforge.net/mcj/transfig.3.2.5d.tar.gz', 'Scott Garman <scott.a.garma=
n@intel.com>']
['autogen-native', '5.12', '5.12', 'GPLv3', 'devel', 'http://www.gnu.org/so=
ftware/autogen/', 'r2', 'autoconf-native automake-native libtool-native gnu=
-config-native  guile-native libtool-native libxml2-native', 'None', 'None'=
, 'AutoGen is a tool designed to simplify the creation and maintenance of p=
rograms that contain large amounts of repetitious text. It is especially va=
luable in programs that have several blocks of text that must be kept synch=
ronized.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/autogen/rel5.12/autogen-5=
=2E12.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['apt-native', '0.7.14', '0.9.7.4', 'GPLv2.0+', 'base', 'unknown', 'r11', '=
autoconf-native automake-native libtool-native gnu-config-native gettext-mi=
nimal-native   dpkg-native gettext-native', 'None', 'None', 'Advanced front=
-end for dpkg.', 'UPDATE', 'N/A', 'ftp://ftp.debian.org/debian/pool/main/a/=
apt/apt_0.7.14.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['apt', '0.7.14', '0.9.7.4', 'GPLv2.0+', 'base', 'unknown', 'r15', 'autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native vir=
tual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  curl db', 'None', 'None', 'Advanced front-=
end for dpkg.', 'UPDATE', '0.8.15.9', 'ftp://ftp.debian.org/debian/pool/mai=
n/a/apt/apt_0.7.14.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['cmake-native', '2.8.8', '2.8.8', 'BSD', 'console/utils', 'http://www.cmak=
e.org/', 'r0.0', 'autoconf-native automake-native libtool-native gnu-config=
-native  ', 'http://public.kitware.com/Bug/my_view_page.php', 'None', 'A cr=
oss-platform, open-source make system', 'MATCH', 'N/A', 'http://www.cmake.o=
rg/files/v2.8/cmake-2.8.8.tar.gz', 'Ross Burton <ross.burton@intel.com>']
['run-postinsts', '1.0', 'INVALID', 'MIT', 'devel', 'unknown', 'r8', ' virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
 update-rc.d-native', 'None', 'None', 'Run postinstall scripts on device us=
ing awk', 'MATCH', 'check', 'file://run-postinsts', 'Cristian Iorga <cristi=
an.iorga@intel.com>']
['cmake', '2.8.8', '2.8.8', 'BSD', 'console/utils', 'http://www.cmake.org/'=
, 'r0.0', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc    cmake-native  curl expat zlib libarchive ncurses', 'h=
ttp://public.kitware.com/Bug/my_view_page.php', 'None', 'A cross-platform, =
open-source make system', 'MATCH', 'N/A', 'http://www.cmake.org/files/v2.8/=
cmake-2.8.8.tar.gz', 'None']
['nativesdk-cmake', '2.8.8', '2.8.8', 'BSD', 'console/utils', 'http://www.c=
make.org/', 'r0.0', 'autoconf-native automake-native libtool-native gnu-con=
fig-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-p=
okysdk-linux-compilerlibs virtual/nativesdk-libc cmake-native nativesdk-cur=
l nativesdk-expat nativesdk-zlib nativesdk-libarchive nativesdk-ncurses', '=
http://public.kitware.com/Bug/my_view_page.php', 'None', 'A cross-platform,=
 open-source make system', 'MATCH', 'N/A', 'http://www.cmake.org/files/v2.8=
/cmake-2.8.8.tar.gz', 'None']
['python-pygtk', '2.24.0', '2.24.0', 'LGPLv2.1', 'devel/python', 'unknown',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  gtk+ libglade python-pycairo python-pygob=
ject python-native python  python-native ', 'None', 'None', 'Python GTK+ 2.=
17.x Bindings', 'MATCH', 'N/A', 'ftp://ftp.gnome.org/pub/gnome/sources/pygt=
k/2.24/pygtk-2.24.0.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@intel.c=
om>']
['openjade-native', '1.3.2', 'N/A', 'BSD', 'base', 'http://openjade.sourcef=
orge.net', 'r5', 'autoconf-native automake-native libtool-native gnu-config=
-native  opensp-native sgml-common-native', 'None', 'None', 'OpenJade is a =
suite of tools for validating, processing, and applying DSSSL (Document Sty=
le Semantics and Specification Language) stylesheets to SGML and XML docume=
nts.', 'ErrParseDir:/openjade/:-:openjade-1.3.2.tar.gz:downloads.sourceforg=
e.net/openjade/openjade-1.3.2.tar.gz', 'N/A', 'http://downloads.sourceforge=
=2Enet/openjade/openjade-1.3.2.tar.gz', 'Scott Garman <scott.a.garman@intel=
=2Ecom>']
['guilt-native', '0.33', '0.33', 'GPLv2', 'base', 'unknown', 'r1', ' ', 'No=
ne', 'None', 'guilt is quilt like tool for git', 'MATCH', 'N/A', 'http://ke=
rnel.org/pub/linux/kernel/people/jsipek/guilt/guilt-0.33.tar.gz', 'None']
['ossp-uuid-native', '1.6.2', '1.6.2', 'ossp_uuid', 'libs', 'http://www.oss=
p.org/pkg/lib/uuid/', 'r0', 'autoconf-native automake-native libtool-native=
 gnu-config-native  ', 'None', 'None', 'OSSP uuid is a ISO-C:1999 applicati=
on programming interface (API) and corresponding command line interface (CL=
I) for the generation of DCE 1.1, ISO/IEC 11578:1996 and RFC 4122 compliant=
 Universally Unique Identifier (UUID). It supports DCE 1.1 variant UUIDs of=
 version 1 (time and node based), version 3 (name based, MD5), version 4 (r=
andom number based) and version 5 (name based, SHA-1).', 'MATCH', 'N/A', 'f=
tp://ftp.ossp.org/pkg/lib/uuid/uuid-1.6.2.tar.gz', 'None']
['ossp-uuid', '1.6.2', '1.6.2', 'ossp_uuid', 'libs', 'http://www.ossp.org/p=
kg/lib/uuid/', 'r0', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ', 'None', 'None', 'OSSP uuid is a ISO-C:199=
9 application programming interface (API) and corresponding command line in=
terface (CLI) for the generation of DCE 1.1, ISO/IEC 11578:1996 and RFC 412=
2 compliant Universally Unique Identifier (UUID). It supports DCE 1.1 varia=
nt UUIDs of version 1 (time and node based), version 3 (name based, MD5), v=
ersion 4 (random number based) and version 5 (name based, SHA-1).', 'MATCH'=
, 'N/A', 'ftp://ftp.ossp.org/pkg/lib/uuid/uuid-1.6.2.tar.gz', 'None']
['docbook-dsssl-stylesheets-native', '1.79', 'N/A', 'DSSSL', 'base', 'http:=
//docbook.sourceforge.net', 'r4', ' sgml-common-native', 'None', 'None', 'D=
SSSL stylesheets used to transform SGML and XML DocBook files', 'ErrParseDi=
r:/docbook/:-:docbook-dsssl-1.79.tar.bz2:downloads.sourceforge.net/docbook/=
docbook-dsssl-1.79.tar.bz2', 'N/A', 'http://downloads.sourceforge.net/docbo=
ok/docbook-dsssl-1.79.tar.bz2', 'None']
['desktop-file-utils-native', '0.15', '0.18', 'GPLv2', 'console/utils', 'ht=
tp://www.freedesktop.org/wiki/Software/desktop-file-utils', 'r0', 'autoconf=
-native automake-native libtool-native gnu-config-native  glib-2.0-native',=
 'None', 'None', 'command line utilities to work with *.desktop files', 'UP=
DATE', 'N/A', 'http://freedesktop.org/software/desktop-file-utils/releases/=
desktop-file-utils-0.15.tar.gz', 'None']
['gnu-config', '20111111', '20111111', 'GPLv2', 'devel', 'unknown', 'r1', '=
 ', 'None', 'None', 'Tool that installs the GNU config.guess / config.sub i=
nto a directory tree', 'MATCH', 'git', 'http://downloads.yoctoproject.org/r=
eleases/gnu-config/gnu-config-yocto-20111111.tgz', 'Bogdan Marinescu <bogda=
n.a.marinescu@intel.com>']
['nativesdk-gnu-config', '20111111', '20111111', 'GPLv2', 'devel', 'unknown=
', 'r1', '', 'None', 'None', 'Tool that installs the GNU config.guess / con=
fig.sub into a directory tree', 'MATCH', 'N/A', 'http://downloads.yoctoproj=
ect.org/releases/gnu-config/gnu-config-yocto-20111111.tgz', 'None']
['dosfstools', '2.11', '2.11', 'GPLv2', 'base', 'unknown', 'r4', ' virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', '=
None', 'None', 'DOS FAT Filesystem Utilities', 'MATCH', '2.11', 'ftp://ftp.=
uni-erlangen.de/pub/Linux/LOCAL/dosfstools/dosfstools-2.11.src.tar.gz', 'Sc=
ott Garman <scott.a.garman@intel.com>']
['gnu-config-native', '20111111', '20111111', 'GPLv2', 'devel', 'unknown', =
'r1', ' perl-native-runtime', 'None', 'None', 'Tool that installs the GNU c=
onfig.guess / config.sub into a directory tree', 'MATCH', 'N/A', 'http://do=
wnloads.yoctoproject.org/releases/gnu-config/gnu-config-yocto-20111111.tgz'=
, 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['dosfstools-native', '2.11', '2.11', 'GPLv2', 'base', 'unknown', 'r4', ' '=
, 'None', 'None', 'DOS FAT Filesystem Utilities', 'MATCH', 'N/A', 'ftp://ft=
p.uni-erlangen.de/pub/Linux/LOCAL/dosfstools/dosfstools-2.11.src.tar.gz', '=
Scott Garman <scott.a.garman@intel.com>']
['sgmlspl-native', '1.03ii', '1.03ii', 'GPLv2+', 'libs', 'http://search.cpa=
n.org/src/DMEGG/SGMLSpm-1.03ii/DOC/HTML/SGMLSpm/sgmlspm.html', 'r3', '  per=
l-native perl-native', 'None', 'None', 'A simple post-processor for SGMLS a=
nd NSGMLS', 'MATCH', 'N/A', 'http://www.cpan.org/authors/id/D/DM/DMEGG/SGML=
Spm-1.03ii.tar.gz', 'Scott Garman <scott.a.garman@intel.com>']
['tcf-agent', '0.4.0+git1+4ef94ecb927a8912c3d79ce137182247786cff8f', '8.0',=
 'EPL-1.0 | EDL-1.0', 'base', 'http://wiki.eclipse.org/TCF', 'r0', ' virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ut=
il-linux openssl update-rc.d-native', 'https://bugs.eclipse.org/bugs/', 'No=
ne', 'Target Communication Framework', 'UPDATE', 'N/A', 'git://git.eclipse.=
org/gitroot/tcf/org.eclipse.tcf.agent.git;protocol=3Dgit', 'Bogdan Marinesc=
u <bogdan.a.marinescu@intel.com>']
['dpkg', '1.16.8', '1.16.8', 'GPLv2.0+', 'base', 'unknown', 'r18.0', 'autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native v=
irtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  zlib bzip2 perl perl-native', 'None', 'N=
one', 'Package maintenance system for Debian.', 'MATCH', '1.16.1.2', 'ftp:/=
/ftp.debian.org/debian/pool/main/d/dpkg/dpkg_1.16.8.tar.xz', 'Saul Wold <sg=
w@linux.intel.com>']
['nfs-export-root', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r0', ' ', =
'None', 'None', 'Enables NFS access from any host to the entire filesystem =
(for development purposes)', 'MATCH', 'N/A', 'file://exports', 'None']
['dpkg-native', '1.16.8', '1.16.8', 'GPLv2.0+', 'base', 'unknown', 'r18.0',=
 'autoconf-native automake-native libtool-native gnu-config-native gettext-=
minimal-native  bzip2-native zlib-native virtual/update-alternatives-native=
 gettext-native perl-native-runtime', 'None', 'None', 'Package maintenance =
system for Debian.', 'MATCH', 'N/A', 'ftp://ftp.debian.org/debian/pool/main=
/d/dpkg/dpkg_1.16.8.tar.xz', 'Saul Wold <sgw@linux.intel.com>']
['distcc-config', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r0', ' ', 'N=
one', 'None', 'Sets up distcc for compilation on the target device', 'MATCH=
', 'N/A', 'file://distcc.sh', 'None']
['anjuta-remote-run', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r0', ' '=
, 'None', 'None', 'Provides on-device script for interaction with the Anjut=
a IDE', 'MATCH', 'N/A', 'file://anjuta-remote-run', 'None']
['guile', '2.0.6', '2.0.6', 'GPLv3', 'devel', 'http://www.gnu.org/software/=
guile/', 'r0', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libunistring bdwgc =
gmp libtool libffi guile-native libatomics-ops', 'None', 'None', "Guile is =
the GNU Ubiquitous Intelligent Language for Extensions, the official extens=
ion language for the GNU operating system. Guile is a library designed to h=
elp programmers create flexible applications. Using Guile in an application=
 allows the application's functionality to be extended by users or other pr=
ogrammers with plug-ins, modules, or scripts. Guile provides what might be =
described as 'practical software freedom,' making it possible for users to =
customize an application to meet their needs without digging into the appli=
cation's internals.", 'MATCH', '2.0.3', 'ftp://ftp.gnu.org/gnu/guile/guile-=
2.0.6.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['guile-native', '2.0.6', '2.0.6', 'GPLv3', 'devel', 'http://www.gnu.org/so=
ftware/guile/', 'r0', 'autoconf-native automake-native libtool-native gnu-c=
onfig-native gettext-minimal-native  libunistring-native bdwgc-native gmp-n=
ative libtool-native libffi-native', 'None', 'None', "Guile is the GNU Ubiq=
uitous Intelligent Language for Extensions, the official extension language=
 for the GNU operating system. Guile is a library designed to help programm=
ers create flexible applications. Using Guile in an application allows the =
application's functionality to be extended by users or other programmers wi=
th plug-ins, modules, or scripts. Guile provides what might be described as=
 'practical software freedom,' making it possible for users to customize an=
 application to meet their needs without digging into the application's int=
ernals.", 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/guile/guile-2.0.6.tar.gz',=
 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['intltool', '0.50.0', '0.50.0', 'GPLv2', 'devel', 'unknown', 'r0', 'pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  libxml-parser-perl-native perl-native', 'None', 'None',=
 'Utility scripts for internationalizing XML', 'MATCH', '0.40.6', 'http://l=
aunchpad.net/intltool/trunk/0.50.0/+download/intltool-0.50.0.tar.gz', 'Bogd=
an Marinescu <bogdan.a.marinescu@intel.com>']
['automake', '1.12.3', '1.12.3', 'GPLv2', 'devel', 'http://www.gnu.org/soft=
ware/automake/', 'r0', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  ', 'None', 'None', "Automake is a tool for=
 automatically generating `Makefile.in' files compliant with the GNU Coding=
 Standards. Automake requires the use of Autoconf.", 'MATCH', '1.11.3', 'ft=
p://ftp.gnu.org/gnu/automake/automake-1.12.3.tar.gz', 'Bogdan Marinescu <bo=
gdan.a.marinescu@intel.com>']
['automake-native', '1.12.3', '1.12.3', 'GPLv2', 'devel', 'http://www.gnu.o=
rg/software/automake/', 'r0', ' autoconf-native', 'None', 'None', "Automake=
 is a tool for automatically generating `Makefile.in' files compliant with =
the GNU Coding Standards. Automake requires the use of Autoconf.", 'MATCH',=
 'N/A', 'ftp://ftp.gnu.org/gnu/automake/automake-1.12.3.tar.gz', 'Bogdan Ma=
rinescu <bogdan.a.marinescu@intel.com>']
['nativesdk-automake', '1.12.3', '1.12.3', 'GPLv2', 'devel', 'http://www.gn=
u.org/software/automake/', 'r0', 'autoconf-native automake-native libtool-n=
ative gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nat=
ivesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc', 'None', 'No=
ne', "Automake is a tool for automatically generating `Makefile.in' files c=
ompliant with the GNU Coding Standards. Automake requires the use of Autoco=
nf.", 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/automake/automake-1.12.3.tar.g=
z', 'None']
['intltool-native', '0.50.0', '0.50.0', 'GPLv2', 'devel', 'unknown', 'r0', =
'pkgconfig-native autoconf-native automake-native libtool-native gnu-config=
-native  libxml-parser-perl-native', 'None', 'None', 'Utility scripts for i=
nternationalizing XML', 'MATCH', 'N/A', 'http://launchpad.net/intltool/trun=
k/0.50.0/+download/intltool-0.50.0.tar.gz', 'Bogdan Marinescu <bogdan.a.mar=
inescu@intel.com>']
['flex', '2.5.35', '2.5.35', 'BSD', 'devel', 'http://sourceforge.net/projec=
ts/flex/', 'r3', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None'=
, 'Flex is a fast lexical analyser generator.  Flex is a tool for generatin=
g programs that recognize lexical patterns in text.', 'MATCH', '2.5.35', 'h=
ttp://downloads.sourceforge.net/flex/flex-2.5.35.tar.bz2', 'Bogdan Marinesc=
u <bogdan.a.marinescu@intel.com>']
['flex-native', '2.5.35', '2.5.35', 'BSD', 'devel', 'http://sourceforge.net=
/projects/flex/', 'r3', 'autoconf-native automake-native libtool-native gnu=
-config-native gettext-minimal-native  ', 'None', 'None', 'Flex is a fast l=
exical analyser generator.  Flex is a tool for generating programs that rec=
ognize lexical patterns in text.', 'MATCH', 'N/A', 'http://downloads.source=
forge.net/flex/flex-2.5.35.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@=
intel.com>']
['rpmresolve', '1.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r1', ' virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  rp=
m', 'None', 'None', 'OpenEmbedded RPM resolver - performs RPM database look=
ups in batches to avoid  repeated invocations of rpm on the command line.',=
 'MATCH', 'N/A', 'file://rpmresolve.c', 'None']
['rpmresolve-native', '1.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r1', '=
 rpm-native', 'None', 'None', 'OpenEmbedded RPM resolver - performs RPM dat=
abase lookups in batches to avoid  repeated invocations of rpm on the comma=
nd line.', 'MATCH', 'N/A', 'file://rpmresolve.c', 'None']
['remake', 'git', 'git', 'GPLv2', 'devel', 'http://bashdb.sourceforge.net/r=
emake/', 'r0', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   readline', 'None',=
 'None', 'remake is a patched and modernized version of GNU make utility th=
at adds improved error reporting, the ability to trace execution in a compr=
ehensible way, and a debugger.', 'MATCH', 'N/A', 'git://github.com/rocky/re=
make.git', 'None']
['rpm', '5.4.9', '5.4.9.0.20120508', 'LGPLv2.1', 'base', 'http://rpm5.org/'=
, 'r46', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  libpcre attr acl popt oss=
p-uuid file beecrypt bzip2 python zlib db openssl elfutils', 'None', 'None'=
, 'The RPM Package Manager (RPM) is a powerful command line driven package =
management system capable of installing, uninstalling, verifying, querying,=
 and updating software packages. Each software package consists of an archi=
ve of files along with information about the package like its version, a de=
scription, etc.', 'UPDATE', '5.1.10', 'http://www.rpm5.org/files/rpm/rpm-5.=
4/rpm-5.4.9-0.20120508.src.rpm;extract=3Drpm-5.4.9.tar.gz', 'Mark Hatle <ma=
rk.hatle@windriver.com>']
['remake-native', 'git', 'git', 'GPLv2', 'devel', 'http://bashdb.sourceforg=
e.net/remake/', 'r0', 'autoconf-native automake-native libtool-native gnu-c=
onfig-native gettext-minimal-native  readline-native', 'None', 'None', 'rem=
ake is a patched and modernized version of GNU make utility that adds impro=
ved error reporting, the ability to trace execution in a comprehensible way=
, and a debugger.', 'MATCH', 'N/A', 'git://github.com/rocky/remake.git', 'N=
one']
['rpm-native', '5.4.9', '5.4.9.0.20120508', 'LGPLv2.1', 'base', 'http://rpm=
5.org/', 'r46', 'autoconf-native automake-native libtool-native gnu-config-=
native gettext-minimal-native  libpcre-native attr-native acl-native popt-n=
ative ossp-uuid-native file-native beecrypt-native bzip2-native python-nati=
ve zlib-native db-native openssl-native elfutils-native', 'None', 'None', '=
The RPM Package Manager (RPM) is a powerful command line driven package man=
agement system capable of installing, uninstalling, verifying, querying, an=
d updating software packages. Each software package consists of an archive =
of files along with information about the package like its version, a descr=
iption, etc.', 'UPDATE', 'N/A', 'http://www.rpm5.org/files/rpm/rpm-5.4/rpm-=
5.4.9-0.20120508.src.rpm;extract=3Drpm-5.4.9.tar.gz', 'Mark Hatle <mark.hat=
le@windriver.com>']
['unfs-server-native', '2.1+2.2beta47', '2.2beta47', 'GPLv2+', 'console/net=
work', 'unknown', 'r1', 'autoconf-native automake-native libtool-native gnu=
-config-native  ', 'None', 'None', 'Userspace NFS server', 'UPDATE', 'N/A',=
 'ftp://linux.mathematik.tu-darmstadt.de/pub/linux/oldstuff/people/okir/nfs=
-server-2.2beta47.tar.gz', 'None']
['insserv', '1.14.0', '1.14.0', 'GPLv2', 'base', 'unknown', 'r1', ' virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', =
'None', 'None', "This utility reorders the init.d boot scripts based on dep=
endencies given in scripts' LSB comment headers, or in override files inclu=
ded in this package or added in /etc/insserv.", 'MATCH', '1.14.0', 'ftp://f=
tp.suse.com/pub/projects/init/insserv-1.14.0.tar.bz2', 'Scott Garman <scott=
=2Ea.garman@intel.com>']
['nativesdk-unfs-server', '2.1+2.2beta47', '2.2beta47', 'GPLv2+', 'console/=
network', 'unknown', 'r1', 'autoconf-native automake-native libtool-native =
gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk=
-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc', 'None', 'None', '=
Userspace NFS server', 'UPDATE', 'N/A', 'ftp://linux.mathematik.tu-darmstad=
t.de/pub/linux/oldstuff/people/okir/nfs-server-2.2beta47.tar.gz', 'None']
['make', '3.82', '3.82', 'GPLv3 & LGPLv2', 'devel', 'http://www.gnu.org/sof=
tware/make/', 'r2', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'No=
ne', "Make is a tool which controls the generation of executables and other=
 non-source files of a program from the program's source files.  Make gets =
its knowledge of how to build your program from a file called the makefile,=
 which lists each of the non-source files and how to compute it from other =
files.", 'MATCH', '3.82', 'ftp://ftp.gnu.org/gnu/make/make-3.82.tar.bz2', '=
Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['opkg-collateral', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r1', ' vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 ', 'None', 'None', 'opkg configuration files', 'MATCH', 'N/A', 'file://opk=
g.conf.comments', 'Radu Moisan <radu.moisan@intel.com>']
['insserv-native', '1.14.0', '1.14.0', 'GPLv2', 'base', 'unknown', 'r1', ' =
', 'None', 'None', "This utility reorders the init.d boot scripts based on =
dependencies given in scripts' LSB comment headers, or in override files in=
cluded in this package or added in /etc/insserv.", 'MATCH', 'N/A', 'ftp://f=
tp.suse.com/pub/projects/init/insserv-1.14.0.tar.bz2', 'Scott Garman <scott=
=2Ea.garman@intel.com>']
['make-native', '3.82', '3.82', 'GPLv3 & LGPLv2', 'devel', 'http://www.gnu.=
org/software/make/', 'r2', 'autoconf-native automake-native libtool-native =
gnu-config-native gettext-minimal-native  ', 'None', 'None', "Make is a too=
l which controls the generation of executables and other non-source files o=
f a program from the program's source files.  Make gets its knowledge of ho=
w to build your program from a file called the makefile, which lists each o=
f the non-source files and how to compute it from other files.", 'MATCH', '=
N/A', 'ftp://ftp.gnu.org/gnu/make/make-3.82.tar.bz2', 'Bogdan Marinescu <bo=
gdan.a.marinescu@intel.com>']
['help2man-native', '1.38.2', '1.40.12', 'GPLv3', 'devel', 'unknown', 'r2',=
 ' autoconf-native automake-native', 'None', 'None', 'Program to create sim=
ple man pages', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/help2man/help2man-1=
=2E38.2.tar.gz', 'None']
['bison', '2.5.1', '2.6.2', 'GPLv3', 'devel', 'http://www.gnu.org/software/=
bison/', 'r0', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bison-native flex-n=
ative', 'None', 'None', 'Bison is a general-purpose parser generator that c=
onverts an annotated context-free grammar into an LALR(1) or GLR parser for=
 that grammar.  Bison is upward compatible with Yacc: all properly-written =
Yacc grammars ought to work with Bison with no change. Anyone familiar with=
 Yacc should be able to use Bison with little trouble.', 'UPDATE', '2.4.3',=
 'ftp://ftp.gnu.org/gnu/bison/bison-2.5.1.tar.gz', 'Bogdan Marinescu <bogda=
n.a.marinescu@intel.com>']
['swabber-native', '0.0+git1+a0792390c5d6d5a5bade7ab155c80eef3f30fa52', '2d=
1fe36fb0a4fdaae8823a9818a6785182d75e66', 'GPLv2', 'base', 'http://git.yocto=
project.org/cgit/cgit.cgi/swabber', 'r0', ' ', 'None', 'None', "Swabber is =
a tool that can help with understanding a program's use of host files.", 'U=
PDATE', 'N/A', 'git://git.yoctoproject.org/swabber;protocol=3Dgit', 'None']
['pkgconfig', '0.25', '0.27.1', 'GPLv2+', 'console/utils', 'http://pkg-conf=
ig.freedesktop.org/wiki/', 'r4', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  glib-2.0 popt', 'http://bugs.fre=
edesktop.org/buglist.cgi?product=3Dpkg-config', 'None', 'pkg-config is a he=
lper tool used when compiling applications and libraries. It helps determin=
ed the correct compiler/link options.  It is also language-agnostic.', 'UPD=
ATE', '0.26', 'http://pkgconfig.freedesktop.org/releases/pkg-config-0.25.ta=
r.gz', 'Saul Wold <sgw@linux.intel.com>']
['bison-native', '2.5.1', '2.6.2', 'GPLv3', 'devel', 'http://www.gnu.org/so=
ftware/bison/', 'r0', 'autoconf-native automake-native libtool-native gnu-c=
onfig-native gettext-minimal-native  gettext-minimal-native', 'None', 'None=
', 'Bison is a general-purpose parser generator that converts an annotated =
context-free grammar into an LALR(1) or GLR parser for that grammar.  Bison=
 is upward compatible with Yacc: all properly-written Yacc grammars ought t=
o work with Bison with no change. Anyone familiar with Yacc should be able =
to use Bison with little trouble.', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu=
/bison/bison-2.5.1.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com=
>']
['pkgconfig-native', '0.25', '0.27.1', 'GPLv2+', 'console/utils', 'http://p=
kg-config.freedesktop.org/wiki/', 'r4', 'autoconf-native automake-native li=
btool-native gnu-config-native  ', 'http://bugs.freedesktop.org/buglist.cgi=
?product=3Dpkg-config', 'None', 'pkg-config is a helper tool used when comp=
iling applications and libraries. It helps determined the correct compiler/=
link options.  It is also language-agnostic.', 'UPDATE', 'N/A', 'http://pkg=
config.freedesktop.org/releases/pkg-config-0.25.tar.gz', 'Saul Wold <sgw@li=
nux.intel.com>']
['nativesdk-pkgconfig', '0.25', '0.27.1', 'GPLv2+', 'console/utils', 'http:=
//pkg-config.freedesktop.org/wiki/', 'r4', 'autoconf-native automake-native=
 libtool-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk v=
irtual/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc', '=
http://bugs.freedesktop.org/buglist.cgi?product=3Dpkg-config', 'None', 'pkg=
-config is a helper tool used when compiling applications and libraries. It=
 helps determined the correct compiler/link options.  It is also language-a=
gnostic.', 'UPDATE', 'N/A', 'http://pkgconfig.freedesktop.org/releases/pkg-=
config-0.25.tar.gz', 'None']
['linuxdoc-tools-native', '0.9.66', '0.9.68', 'GPLv3+', 'base', 'http://pac=
kages.debian.org/linuxdoc-tools', 'r3', 'autoconf-native automake-native li=
btool-native gnu-config-native  groff-native openjade-native', 'None', 'Non=
e', 'Convert LinuxDoc SGML source into other formats', 'UPDATE', 'N/A', 'ft=
p://ftp.debian.org/debian/pool/main/l/linuxdoc-tools/linuxdoc-tools_0.9.66.=
tar.gz', 'Scott Garman <scott.a.garman@intel.com>']
['gcc-crosssdk-initial', '4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faab5=
dede', '4.7.1.0', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel', 'http://ww=
w.gnu.org/software/gcc/', 'r14', '  virtual/i586-pokysdk-linux-binutils-cro=
sssdk gettext-native mpfr-native gmp-native libmpc-native zlib-native', 'No=
ne', 'None', 'The GNU cc and gcc C compilers.', 'MATCH', 'N/A', 'git://gith=
ub.com/mirrors/gcc.git;branch=3Dgcc-4_7-branch;protocol=3Dgit', 'Bogdan Mar=
inescu <bogdan.a.marinescu@intel.com>']
['gcc-runtime', '4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faab5dede', '4=
=2E7.1.0', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel', 'http://www.gnu.o=
rg/software/gcc/', 'r14', 'autoconf-native automake-native libtool-native g=
nu-config-native   virtual/i586-poky-linux-gcc virtual/i586-poky-linux-g++ =
libgcc', 'None', 'None', 'The GNU cc and gcc C compilers.', 'MATCH', '4.6.2=
+git', 'git://github.com/mirrors/gcc.git;branch=3Dgcc-4_7-branch;protocol=
=3Dgit', 'None']
['nativesdk-gcc-runtime', '4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faab=
5dede', '4.7.1.0', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel', 'http://w=
ww.gnu.org/software/gcc/', 'r14', 'autoconf-native automake-native libtool-=
native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/i5=
86-pokysdk-linux-g++-crosssdk nativesdk-libgcc', 'None', 'None', 'The GNU c=
c and gcc C compilers.', 'MATCH', 'N/A', 'git://github.com/mirrors/gcc.git;=
branch=3Dgcc-4_7-branch;protocol=3Dgit', 'None']
['gcc', '4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faab5dede', '4.7.1.0',=
 'GPL-3.0-with-GCC-exception & GPLv3', 'devel', 'http://www.gnu.org/softwar=
e/gcc/', 'r14', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  mpfr gmp libmpc ',=
 'None', 'None', 'The GNU cc and gcc C compilers.', 'MATCH', '4.7.1+svnr188=
658', 'git://github.com/mirrors/gcc.git;branch=3Dgcc-4_7-branch;protocol=3D=
git', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['gcc-crosssdk', '4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faab5dede', '=
4.7.1.0', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel', 'http://www.gnu.or=
g/software/gcc/', 'r14', 'autoconf-native automake-native libtool-native gn=
u-config-native   virtual/i586-pokysdk-linux-binutils-crosssdk virtual/nati=
vesdk-i586-pokysdk-linux-libc-for-gcc gettext-native', 'None', 'None', 'The=
 GNU cc and gcc C compilers.', 'MATCH', 'N/A', 'git://github.com/mirrors/gc=
c.git;branch=3Dgcc-4_7-branch;protocol=3Dgit', 'Bogdan Marinescu <bogdan.a.=
marinescu@intel.com>']
['gcc-cross', '4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faab5dede', '4.7=
=2E1.0', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel', 'http://www.gnu.org=
/software/gcc/', 'r14', 'autoconf-native automake-native libtool-native gnu=
-config-native   virtual/i586-poky-linux-binutils virtual/i586-poky-linux-l=
ibc-for-gcc mpfr-native gmp-native libmpc-native zlib-native', 'None', 'Non=
e', 'The GNU cc and gcc C compilers.', 'MATCH', 'N/A', 'git://github.com/mi=
rrors/gcc.git;branch=3Dgcc-4_7-branch;protocol=3Dgit', 'Bogdan Marinescu <b=
ogdan.a.marinescu@intel.com>']
['libgcc', '4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faab5dede', '4.7.1.=
0', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel', 'http://www.gnu.org/soft=
ware/gcc/', 'r14', 'autoconf-native automake-native libtool-native gnu-conf=
ig-native   virtual/i586-poky-linux-gcc virtual/i586-poky-linux-g++', 'None=
', 'None', 'The GNU cc and gcc C compilers.', 'MATCH', '4.6.2+git', 'git://=
github.com/mirrors/gcc.git;branch=3Dgcc-4_7-branch;protocol=3Dgit', 'None']
['gcc-cross-canadian-i586', '4.7.1.0+git1+d07e24f4ab59f264d68d21838795349fa=
ab5dede', '4.7.1.0', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel', 'http:/=
/www.gnu.org/software/gcc/', 'r14', 'autoconf-native automake-native libtoo=
l-native gnu-config-native gettext-native nativesdk-gettext  virtual/i586-p=
okysdk-linux-binutils-crosssdk virtual/nativesdk-i586-pokysdk-linux-libc-fo=
r-gcc gettext nativesdk-gmp nativesdk-mpfr nativesdk-libmpc nativesdk-elfut=
ils', 'None', 'None', 'The cross-canadian GNU cc and gcc C compilers for i5=
86 target.', 'MATCH', 'N/A', 'git://github.com/mirrors/gcc.git;branch=3Dgcc=
-4_7-branch;protocol=3Dgit', 'Bogdan Marinescu <bogdan.a.marinescu@intel.co=
m>']
['nativesdk-libgcc', '4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faab5dede=
', '4.7.1.0', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel', 'http://www.gn=
u.org/software/gcc/', 'r14', 'autoconf-native automake-native libtool-nativ=
e gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/i586-po=
kysdk-linux-g++-crosssdk', 'None', 'None', 'The GNU cc and gcc C compilers.=
', 'MATCH', 'N/A', 'git://github.com/mirrors/gcc.git;branch=3Dgcc-4_7-branc=
h;protocol=3Dgit', 'None']
['gcc-cross-initial', '4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faab5ded=
e', '4.7.1.0', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel', 'http://www.g=
nu.org/software/gcc/', 'r14', '  virtual/i586-poky-linux-binutils mpfr-nati=
ve gmp-native libmpc-native zlib-native', 'None', 'None', 'The GNU cc and g=
cc C compilers.', 'MATCH', 'N/A', 'git://github.com/mirrors/gcc.git;branch=
=3Dgcc-4_7-branch;protocol=3Dgit', 'Bogdan Marinescu <bogdan.a.marinescu@in=
tel.com>']
['binutils', '2.22', '2.22', 'GPLv3', 'devel', 'http://www.gnu.org/software=
/binutils/', 'r15', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native bi=
son-native zlib-native flex bison zlib', 'http://sourceware.org/bugzilla/',=
 'None', 'The GNU Binutils are a collection of binary tools. The main ones =
are ld (GNU Linker), and as (GNU Assembler). This package also includes add=
ition tools such as addr2line (Converts addresses into filenames and line n=
umbers), ar (utility for creating, modifying and extracting archives), nm (=
list symbols in object files), objcopy (copy and translate object files), o=
bjdump (Display object information), and other tools and related libraries.=
', 'MATCH', '2.22', 'ftp://ftp.gnu.org/gnu/binutils/binutils-2.22.tar.bz2',=
 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['binutils-native', '2.22', '2.22', 'GPLv3', 'devel', 'http://www.gnu.org/s=
oftware/binutils/', 'r15', 'autoconf-native automake-native libtool-native =
gnu-config-native gettext-minimal-native  flex-native bison-native zlib-nat=
ive flex-native bison-native zlib-native', 'http://sourceware.org/bugzilla/=
', 'None', 'The GNU Binutils are a collection of binary tools. The main one=
s are ld (GNU Linker), and as (GNU Assembler). This package also includes a=
ddition tools such as addr2line (Converts addresses into filenames and line=
 numbers), ar (utility for creating, modifying and extracting archives), nm=
 (list symbols in object files), objcopy (copy and translate object files),=
 objdump (Display object information), and other tools and related librarie=
s.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/binutils/binutils-2.22.tar.bz2'=
, 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['binutils-cross', '2.22', '2.22', 'GPLv3', 'devel', 'http://www.gnu.org/so=
ftware/binutils/', 'r15', '  flex-native bison-native zlib-native', 'http:/=
/sourceware.org/bugzilla/', 'None', 'The GNU Binutils are a collection of b=
inary tools. The main ones are ld (GNU Linker), and as (GNU Assembler). Thi=
s package also includes addition tools such as addr2line (Converts addresse=
s into filenames and line numbers), ar (utility for creating, modifying and=
 extracting archives), nm (list symbols in object files), objcopy (copy and=
 translate object files), objdump (Display object information), and other t=
ools and related libraries.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/binuti=
ls/binutils-2.22.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>=
']
['binutils-cross-canadian-i586', '2.22', '2.22', 'GPLv3', 'devel', 'http://=
www.gnu.org/software/binutils/', 'r15', 'autoconf-native automake-native li=
btool-native gnu-config-native gettext-native nativesdk-gettext  flex-nativ=
e bison-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-li=
bc nativesdk-zlib nativesdk-gettext', 'http://sourceware.org/bugzilla/', 'N=
one', 'A GNU collection of cross-canadian binary utilities for i586 target'=
, 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/binutils/binutils-2.22.tar.bz2', '=
Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['quilt', '0.60', '0.60', 'GPLv2', 'devel', 'http://savannah.nongnu.org/pro=
jects/quilt/', 'r1', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'N=
one', 'Tool to work with series of patches.', 'MATCH', '0.60', 'http://down=
load.savannah.gnu.org/releases/quilt/quilt-0.60.tar.gz', 'Bogdan Marinescu =
<bogdan.a.marinescu@intel.com>']
['quilt-native', '0.60', '0.60', 'GPLv2', 'devel', 'http://savannah.nongnu.=
org/projects/quilt/', 'r0', ' ', 'None', 'None', 'Tool to work with series =
of patches.', 'MATCH', 'N/A', 'http://download.savannah.gnu.org/releases/qu=
ilt/quilt-0.60.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['binutils-crosssdk', '2.22', '2.22', 'GPLv3', 'devel', 'http://www.gnu.org=
/software/binutils/', 'r1', '  flex-native bison-native zlib-native', 'http=
://sourceware.org/bugzilla/', 'None', 'The GNU Binutils are a collection of=
 binary tools. The main ones are ld (GNU Linker), and as (GNU Assembler). T=
his package also includes addition tools such as addr2line (Converts addres=
ses into filenames and line numbers), ar (utility for creating, modifying a=
nd extracting archives), nm (list symbols in object files), objcopy (copy a=
nd translate object files), objdump (Display object information), and other=
 tools and related libraries.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/binu=
tils/binutils-2.22.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@intel.co=
m>']
['gdb', '7.4.1', '7.5', 'GPLv2 & GPLv3 & LGPLv2 & LGPLv3', 'devel', 'http:/=
/www.gnu.org/software/gdb/', 'r1.0', 'autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  expat ncurses readline lttng-ust', 'None', 'None', 'gdb - GNU debugger',=
 'UPDATE', '7.4.1', 'ftp://ftp.gnu.org/gnu/gdb/gdb-7.4.1.tar.gz', 'Bogdan M=
arinescu <bogdan.a.marinescu@intel.com>']
['gdb-cross-canadian-i586', '7.4.1', '7.5', 'GPLv3+', 'devel', 'http://www.=
gnu.org/software/gdb/', 'r1.0', 'autoconf-native automake-native libtool-na=
tive gnu-config-native  nativesdk-ncurses nativesdk-expat nativesdk-gettext=
 nativesdk-readline nativesdk-python', 'None', 'None', 'cross-canadian gdb =
for i586 target - GNU debugger', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/gd=
b/gdb-7.4.1.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['gdb-cross', '7.4.1', '7.5', 'GPLv3+', 'devel', 'http://www.gnu.org/softwa=
re/gdb/', 'r1.0', 'autoconf-native automake-native libtool-native gnu-confi=
g-native gettext-minimal-native  expat-native ncurses-native', 'None', 'Non=
e', 'gdb - GNU debugger', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/gdb/gdb-7=
=2E4.1.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['liburi-perl', '1.60', '1.60', 'Artistic-1.0 | GPL-1.0+', 'libs', 'unknown=
', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc   perl perl perl-native', 'None', 'None', 'This package conta=
ins the URI.pm module with friends. The module implements the URI class. UR=
I objects can be used to access and manipulate the various components that =
make up these strings.', 'MATCH', '1.60', 'http://www.cpan.org/authors/id/G=
/GA/GAAS/URI-1.60.tar.gz', 'Kai Kang <kai.kang@windriver.com>']
['strace', '4.7', 'N/A', 'BSD', 'console/utils', 'http://strace.sourceforge=
=2Enet', 'r1', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  ', 'None', 'None', 'strace is a system call tracin=
g tool.', 'ErrParseDir:/strace/:-:strace-4.7.tar.xz:downloads.sourceforge.n=
et/strace/strace-4.7.tar.xz', '4.7', 'http://downloads.sourceforge.net/stra=
ce/strace-4.7.tar.xz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['strace-native', '4.7', 'N/A', 'BSD', 'console/utils', 'http://strace.sour=
ceforge.net', 'r1', 'autoconf-native automake-native libtool-native gnu-con=
fig-native  ', 'None', 'None', 'strace is a system call tracing tool.', 'Er=
rParseDir:/strace/:-:strace-4.7.tar.xz:downloads.sourceforge.net/strace/str=
ace-4.7.tar.xz', 'N/A', 'http://downloads.sourceforge.net/strace/strace-4.7=
=2Etar.xz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['libxml-simple-perl-native', '2.20', '2.20', 'Artistic-1.0 | GPL-1.0', 'li=
bs', 'unknown', 'r0', ' libxml-parser-perl-native perl-native perl-native',=
 'None', 'None', 'libxml-simple-perl-native version 2.20-r0', 'MATCH', 'N/A=
', 'http://www.cpan.org/modules/by-module/XML/XML-Simple-2.20.tar.gz', 'Sau=
l Wold <sgw@linux.intel.com>']
['perl', '5.14.2', '5.17.3', 'Artistic-1.0 | GPL-1.0', 'devel', 'http://www=
=2Eperl.org/', 'r9', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  virtual/db grep-native gdbm zlib perl-native', '=
None', 'None', 'Perl is a popular scripting language.', 'UPDATE', '5.14.2',=
 'http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz', 'Bogdan Marinescu <bogda=
n.a.marinescu@intel.com>']
['ubootchart', '0.0+r12', 'N/A', 'GPLv3', 'base', 'http://code.google.com/p=
/ubootchart/', 'r6', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ', 'None', 'None', 'A boot profiling tool', 'Err=
SvnAccess:ubootchart.googlecode.com/svn/', '0.0+r12', 'svn://ubootchart.goo=
glecode.com/svn/;protocol=3Dhttp;module=3Dtrunk', 'Radu Moisan <radu.moisan=
@intel.com>']
['nativesdk-perl', '5.14.2', '5.17.3', 'Artistic-1.0 | GPL-1.0', 'devel', '=
http://www.perl.org/', 'r9', 'virtual/i586-pokysdk-linux-gcc-crosssdk virtu=
al/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc virtual=
/nativesdk-db grep-native nativesdk-gdbm nativesdk-zlib perl-native', 'None=
', 'None', 'Perl is a popular scripting language.', 'UPDATE', 'N/A', 'http:=
//www.cpan.org/src/5.0/perl-5.14.2.tar.gz', 'None']
['perl-native', '5.14.2', '5.17.3', 'Artistic-1.0 | GPL-1.0', 'libs', 'http=
://www.perl.org/', 'r1', ' ', 'None', 'None', 'Perl is a popular scripting =
language.', 'UPDATE', 'N/A', 'http://www.cpan.org/src/5.0/perl-5.14.2.tar.g=
z', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['libxml-parser-perl', '2.41', '2.41', 'Artistic-1.0 | GPL-1.0', 'libs', 'u=
nknown', 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc   expat expat-native perl perl-native', 'None', 'None',=
 'XML::Parser - A perl module for parsing XML documents', 'MATCH', '2.41', =
'http://www.cpan.org/modules/by-module/XML/XML-Parser-2.41.tar.gz', 'Bogdan=
 Marinescu <bogdan.a.marinescu@intel.com>']
['libxml-simple-perl', '2.20', '2.20', 'Artistic-1.0 | GPL-1.0', 'libs', 'u=
nknown', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc   libxml-parser-perl perl perl-native', 'None', 'None',=
 'libxml-simple-perl version 2.20-r0', 'MATCH', 'N/A', 'http://www.cpan.org=
/modules/by-module/XML/XML-Simple-2.20.tar.gz', 'Saul Wold <sgw@linux.intel=
=2Ecom>']
['file', '5.11', '5.11', 'BSD', 'console/utils', 'http://www.darwinsys.com/=
file/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  zlib file-native', 'None', 'None', 'File attempts t=
o classify files depending on their contents and prints a description if a =
match is found.', 'MATCH', '5.11', 'ftp://ftp.astron.com/pub/file/file-5.11=
=2Etar.gz', 'Saul Wold <sgw@linux.intel.com>']
['opkg', '0.1.8+svnr633', 'N/A', 'GPLv2+', 'base', 'http://code.google.com/=
p/opkg/', 'r10.1', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  ', 'http://code.google.com/p/=
opkg/issues/list', '1', 'Open Package Manager', 'ErrSvnAccess:opkg.googleco=
de.com/svn', '0.1.8', 'svn://opkg.googlecode.com/svn;module=3Dtrunk;protoco=
l=3Dhttp', 'Radu Moisan <radu.moisan@intel.com>']
['opkg-nogpg', '0.1.8+svnr596', 'N/A', 'GPLv2+', 'base', 'http://code.googl=
e.com/p/opkg/', 'r10.1', 'pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  curl', 'http://code.goo=
gle.com/p/opkg/issues/list', '1', 'Open Package Manager', 'ErrSvnAccess:opk=
g.googlecode.com/svn', 'N/A', 'svn://opkg.googlecode.com/svn;module=3Dtrunk=
;protocol=3Dhttp', 'None']
['opkg-native', '0.1.8+svnr633', 'N/A', 'GPLv2+', 'base', 'http://code.goog=
le.com/p/opkg/', 'r10.1', 'pkgconfig-native autoconf-native automake-native=
 libtool-native gnu-config-native  curl-native', 'http://code.google.com/p/=
opkg/issues/list', '1', 'Open Package Manager', 'ErrSvnAccess:opkg.googleco=
de.com/svn', 'N/A', 'svn://opkg.googlecode.com/svn;module=3Dtrunk;protocol=
=3Dhttp', 'Radu Moisan <radu.moisan@intel.com>']
['nativesdk-opkg', '0.1.8+svnr633', 'N/A', 'GPLv2+', 'base', 'http://code.g=
oogle.com/p/opkg/', 'r10.1', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssd=
k virtual/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc =
nativesdk-curl', 'http://code.google.com/p/opkg/issues/list', '1', 'Open Pa=
ckage Manager', 'ErrSvnAccess:opkg.googlecode.com/svn', 'N/A', 'svn://opkg.=
googlecode.com/svn;module=3Dtrunk;protocol=3Dhttp', 'None']
['libxml-perl', '0.08', '0.08', 'Artistic-1.0 | GPL-1.0+', 'libs', 'unknown=
', 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc   libxml-parser-perl perl perl-native', 'None', 'None', 'libx=
ml-perl is a collection of smaller Perl modules, scripts, and documents for=
 working with XML in Perl.  libxml-perl software works in combination with =
XML::Parser, PerlSAX, XML::DOM, XML::Grove and others.', 'MATCH', 'N/A', 'h=
ttp://www.cpan.org/modules/by-module/XML/libxml-perl-0.08.tar.gz', 'None']
['opkg-nogpg-native', '0.1.8+svnr596', 'N/A', 'GPLv2+', 'base', 'http://cod=
e.google.com/p/opkg/', 'r10.1', 'pkgconfig-native autoconf-native automake-=
native libtool-native gnu-config-native  curl-native', 'http://code.google.=
com/p/opkg/issues/list', '1', 'Open Package Manager', 'ErrSvnAccess:opkg.go=
oglecode.com/svn', 'N/A', 'svn://opkg.googlecode.com/svn;module=3Dtrunk;pro=
tocol=3Dhttp', 'None']
['nativesdk-opkg-nogpg', '0.1.8+svnr596', 'N/A', 'GPLv2+', 'base', 'http://=
code.google.com/p/opkg/', 'r10.1', 'pkgconfig-native autoconf-native automa=
ke-native libtool-native gnu-config-native virtual/i586-pokysdk-linux-gcc-c=
rosssdk virtual/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk=
-libc nativesdk-curl', 'http://code.google.com/p/opkg/issues/list', '1', 'O=
pen Package Manager', 'ErrSvnAccess:opkg.googlecode.com/svn', 'N/A', 'svn:/=
/opkg.googlecode.com/svn;module=3Dtrunk;protocol=3Dhttp', 'None']
['libxml-parser-perl-native', '2.41', '2.41', 'Artistic-1.0 | GPL-1.0', 'li=
bs', 'unknown', 'r3', ' expat-native expat-native perl-native perl-native',=
 'None', 'None', 'XML::Parser - A perl module for parsing XML documents', '=
MATCH', 'N/A', 'http://www.cpan.org/modules/by-module/XML/XML-Parser-2.41.t=
ar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['subversion', '1.7.6', '1.7.6', 'Apache-2', 'console/network', 'http://sub=
version.tigris.org', 'r0', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  apr-uti=
l neon sqlite3', 'None', 'None', 'The Subversion (svn) client', 'MATCH', '1=
=2E6.15', 'http://www.apache.org/dist/subversion/subversion-1.7.6.tar.bz2',=
 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['file-native', '5.11', '5.11', 'BSD', 'console/utils', 'http://www.darwins=
ys.com/file/', 'r0', 'autoconf-native automake-native libtool-native gnu-co=
nfig-native  zlib-native', 'None', 'None', 'File attempts to classify files=
 depending on their contents and prints a description if a match is found.'=
, 'MATCH', 'N/A', 'ftp://ftp.astron.com/pub/file/file-5.11.tar.gz', 'Saul W=
old <sgw@linux.intel.com>']
['subversion-native', '1.7.6', '1.7.6', 'Apache-2', 'console/network', 'htt=
p://subversion.tigris.org', 'r0', 'autoconf-native automake-native libtool-=
native gnu-config-native gettext-minimal-native  apr-util-native neon-nativ=
e sqlite3-native', 'None', 'None', 'The Subversion (svn) client', 'MATCH', =
'N/A', 'http://www.apache.org/dist/subversion/subversion-1.7.6.tar.bz2', 'B=
ogdan Marinescu <bogdan.a.marinescu@intel.com>']
['rsync', '3.0.9', '3.0.9', 'GPLv3+', 'console/network', 'http://rsync.samb=
a.org/', 'r0', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  popt', 'http://rsync.samba.org/bugzilla.html', 'No=
ne', 'A file-synchronization tool', 'MATCH', '3.0.7', 'http://rsync.samba.o=
rg/ftp/rsync/src/rsync-3.0.9.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['mtools', '4.0.17', '4.0.17', 'GPLv3', 'optional', 'http://www.gnu.org/sof=
tware/mtools/', 'r1', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'None', 'None', 'Mtools is a collection =
of utilities to access MS-DOS disks from GNU and Unix without mounting them=
=2E', 'MATCH', '4.0.17', 'ftp://ftp.gnu.org/gnu/mtools/mtools-4.0.17.tar.bz=
2', 'Scott Garman <scott.a.garman@intel.com>']
['mtools-native', '4.0.17', '4.0.17', 'GPLv3', 'optional', 'http://www.gnu.=
org/software/mtools/', 'r1', 'autoconf-native automake-native libtool-nativ=
e gnu-config-native  ', 'None', 'None', 'Mtools is a collection of utilitie=
s to access MS-DOS disks from GNU and Unix without mounting them.', 'MATCH'=
, 'N/A', 'ftp://ftp.gnu.org/gnu/mtools/mtools-4.0.17.tar.bz2', 'Scott Garma=
n <scott.a.garman@intel.com>']
['tcl', '8.5.11', 'N/A', 'BSD-3-Clause', 'devel/tcltk', 'http://tcl.sourcef=
orge.net', 'r6', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  tcl-native', 'None', 'None', 'Tool Command Langu=
age', 'ErrParseDir:/tcl/:-:tcl8.5.11-src.tar.gz:downloads.sourceforge.net/t=
cl/tcl8.5.11-src.tar.gz', '8.5.11', 'http://downloads.sourceforge.net/tcl/t=
cl8.5.11-src.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['tcl-native', '8.5.11', 'N/A', 'BSD-3-Clause', 'devel/tcltk', 'http://tcl.=
sourceforge.net', 'r6', 'autoconf-native automake-native libtool-native gnu=
-config-native  ', 'None', 'None', 'Tool Command Language', 'ErrParseDir:/t=
cl/:-:tcl8.5.11-src.tar.gz:downloads.sourceforge.net/tcl/tcl8.5.11-src.tar.=
gz', 'N/A', 'http://downloads.sourceforge.net/tcl/tcl8.5.11-src.tar.gz', 'B=
ogdan Marinescu <bogdan.a.marinescu@intel.com>']
['chrpath', '0.14', 'N/A', 'GPLv2', 'base', 'http://alioth.debian.org/proje=
cts/chrpath/', 'r0', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ', 'http://alioth.debian.org/tracker/?atid=
=3D412807&group_id=3D31052', 'None', "chrpath allows you to change the rpat=
h (where the application looks for libraries) in an application. It does no=
t (yet) allow you to add an rpath if there isn't one already.", 'ErrParseDi=
r:/frs/download.php/3648/:-:chrpath-0.14.tar.gz:alioth.debian.org/frs/downl=
oad.php/3648/chrpath-0.14.tar.gz', '0.14', 'http://alioth.debian.org/frs/do=
wnload.php/3648/chrpath-0.14.tar.gz', 'Scott Garman <scott.a.garman@intel.c=
om>']
['nativesdk-chrpath', '0.14', 'N/A', 'GPLv2', 'base', 'http://alioth.debian=
=2Eorg/projects/chrpath/', 'r0', 'autoconf-native automake-native libtool-n=
ative gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nat=
ivesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc', 'http://ali=
oth.debian.org/tracker/?atid=3D412807&group_id=3D31052', 'None', "chrpath a=
llows you to change the rpath (where the application looks for libraries) i=
n an application. It does not (yet) allow you to add an rpath if there isn'=
t one already.", 'ErrParseDir:/frs/download.php/3648/:-:chrpath-0.14.tar.gz=
:alioth.debian.org/frs/download.php/3648/chrpath-0.14.tar.gz', 'N/A', 'http=
://alioth.debian.org/frs/download.php/3648/chrpath-0.14.tar.gz', 'None']
['chrpath-native', '0.14', 'N/A', 'GPLv2', 'base', 'http://alioth.debian.or=
g/projects/chrpath/', 'r0', 'autoconf-native automake-native libtool-native=
 gnu-config-native  ', 'http://alioth.debian.org/tracker/?atid=3D412807&gro=
up_id=3D31052', 'None', "chrpath allows you to change the rpath (where the =
application looks for libraries) in an application. It does not (yet) allow=
 you to add an rpath if there isn't one already.", 'ErrParseDir:/frs/downlo=
ad.php/3648/:-:chrpath-0.14.tar.gz:alioth.debian.org/frs/download.php/3648/=
chrpath-0.14.tar.gz', 'N/A', 'http://alioth.debian.org/frs/download.php/364=
8/chrpath-0.14.tar.gz', 'Scott Garman <scott.a.garman@intel.com>']
['docbook-sgml-dtd-4.1-native', '1.0', '41', 'OASIS', 'base', 'http://www.d=
ocbook.org/sgml/', 'r3.0', ' sgml-common-native', 'None', 'None', 'Document=
 type definitions for verification of SGML data files against the DocBook r=
ule set', 'UPDATE', 'N/A', 'http://docbook.org/sgml/4.1/docbk41.zip', 'None=
']
['docbook-sgml-dtd-3.1-native', '1.0', '31', 'OASIS', 'base', 'http://www.d=
ocbook.org/sgml/', 'r3.0', ' sgml-common-native', 'None', 'None', 'Document=
 type definitions for verification of SGML data files against the DocBook r=
ule set', 'UPDATE', 'N/A', 'http://www.docbook.org/sgml/3.1/docbk31.zip', '=
None']
['docbook-sgml-dtd-4.5-native', '1.0', '4.5', 'OASIS', 'base', 'http://www.=
docbook.org/sgml/', 'r3.0', ' sgml-common-native', 'None', 'None', 'Documen=
t type definitions for verification of SGML data files against the DocBook =
rule set', 'UPDATE', 'N/A', 'http://www.docbook.org/sgml/4.5/docbook-4.5.zi=
p', 'None']
['mkelfimage-native', '1.0.0+svn6637', '5914', 'GPLv2', 'devel', 'http://ww=
w.coreboot.org/Mkelfimage', 'r1', 'autoconf-native automake-native libtool-=
native gnu-config-native  zlib-native', 'None', 'None', 'A utility to creat=
e ELF boot images from Linux kernel images', 'UPDATE', 'N/A', 'svn://corebo=
ot.org/coreboot/trunk/util;module=3DmkelfImage;protocol=3Dsvn', 'None']
['git', '1.7.7', '1.7.7', 'GPLv2', 'console/utils', 'unknown', 'r2', 'autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  openssl curl zlib expat perl-native', 'None', 'None', 'The git revision=
 control system used by the Linux kernel developers', 'MATCH', 'N/A', 'http=
://git-core.googlecode.com/files/git-1.7.7.tar.gz', 'Bogdan Marinescu <bogd=
an.a.marinescu@intel.com>']
['mklibs-native', '0.1.34', '0.1.34', 'GPLv2+', 'devel', 'https://code.laun=
chpad.net/mklibs', 'r1', 'autoconf-native automake-native libtool-native gn=
u-config-native gettext-minimal-native  python-native  python-native ', 'No=
ne', 'None', 'mklibs produces cut-down shared libraries that contain only t=
he routines required by a particular set of executables.', 'MATCH', 'N/A', =
'http://ftp.de.debian.org/debian/pool/main/m/mklibs/mklibs_0.1.34.tar.gz', =
'None']
['mkelfimage', '1.0.0+svn6637', '5914', 'GPLv2', 'devel', 'http://www.coreb=
oot.org/Mkelfimage', 'r1', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc   zlib', 'None', 'None', 'A utility to =
create ELF boot images from Linux kernel images', 'UPDATE', 'N/A', 'svn://c=
oreboot.org/coreboot/trunk/util;module=3DmkelfImage;protocol=3Dsvn', 'None']
['m4-native', '1.4.16', '1.4.16', 'GPLv3', 'base', 'unknown', 'r4', '  gnu-=
config-native', 'None', 'None', 'GNU m4 is an implementation of the traditi=
onal Unix macro processor.  It is mostly SVR4 compatible although it has so=
me extensions (for example, handling more than 9 positional parameters to m=
acros). GNU M4 also has built-in functions for including files, running she=
ll commands, doing arithmetic, etc.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gn=
u/m4/m4-1.4.16.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['makedevs', '1.0.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r7', ' virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ',=
 'None', 'None', 'A tool to make device nodes', 'MATCH', '1.0.0', 'file://m=
akedevs.c', 'Radu Moisan <radu.moisan@intel.com>']
['m4', '1.4.16', '1.4.16', 'GPLv3', 'base', 'unknown', 'r4', 'autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', '=
None', 'None', 'GNU m4 is an implementation of the traditional Unix macro p=
rocessor.  It is mostly SVR4 compatible although it has some extensions (fo=
r example, handling more than 9 positional parameters to macros). GNU M4 al=
so has built-in functions for including files, running shell commands, doin=
g arithmetic, etc.', 'MATCH', '1.4.15', 'ftp://ftp.gnu.org/gnu/m4/m4-1.4.16=
=2Etar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['makedevs-native', '1.0.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r7', '=
 ', 'None', 'None', 'A tool to make device nodes', 'MATCH', 'N/A', 'file://=
makedevs.c', 'Radu Moisan <radu.moisan@intel.com>']
['nativesdk-m4', '1.4.16', '1.4.16', 'GPLv3', 'base', 'unknown', 'r4', 'aut=
oconf-native automake-native libtool-native gnu-config-native virtual/i586-=
pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-linux-compilerlib=
s virtual/nativesdk-libc', 'None', 'None', 'GNU m4 is an implementation of =
the traditional Unix macro processor.  It is mostly SVR4 compatible althoug=
h it has some extensions (for example, handling more than 9 positional para=
meters to macros). GNU M4 also has built-in functions for including files, =
running shell commands, doing arithmetic, etc.', 'MATCH', 'N/A', 'ftp://ftp=
=2Egnu.org/gnu/m4/m4-1.4.16.tar.gz', 'None']
['syslinux', '4.03', '4.05', 'GPLv2+', 'base', 'http://syslinux.zytor.com/'=
, 'r8', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  nasm-native', 'None', 'None', 'A multi-purpose linux bootload=
er', 'UPDATE', '4.03', 'http://kernel.org/pub/linux/utils/boot/syslinux/4.x=
x/syslinux-4.03.tar.bz2', 'Darren Hart <dvhart@linux.intel.com>']
['syslinux-native', '4.03', '4.05', 'GPLv2+', 'base', 'http://syslinux.zyto=
r.com/', 'r8', ' nasm-native', 'None', 'None', 'A multi-purpose linux bootl=
oader', 'UPDATE', 'N/A', 'http://kernel.org/pub/linux/utils/boot/syslinux/4=
=2Exx/syslinux-4.03.tar.bz2', 'Darren Hart <dvhart@linux.intel.com>']
['opensp', '1.5.2', 'N/A', 'BSD', 'libs', 'http://openjade.sourceforge.net'=
, 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'An SGM=
L parser used by the OpenJade suite of utilities.', 'ErrParseDir:/openjade/=
:-:OpenSP-1.5.2.tar.gz:downloads.sourceforge.net/openjade/OpenSP-1.5.2.tar.=
gz', '1.5.2', 'http://downloads.sourceforge.net/openjade/OpenSP-1.5.2.tar.g=
z', 'Scott Garman <scott.a.garman@intel.com>']
['opensp-native', '1.5.2', 'N/A', 'BSD', 'libs', 'http://openjade.sourcefor=
ge.net', 'r0', 'autoconf-native automake-native libtool-native gnu-config-n=
ative gettext-minimal-native  ', 'None', 'None', 'An SGML parser used by th=
e OpenJade suite of utilities.', 'ErrParseDir:/openjade/:-:OpenSP-1.5.2.tar=
=2Egz:downloads.sourceforge.net/openjade/OpenSP-1.5.2.tar.gz', 'N/A', 'http=
://downloads.sourceforge.net/openjade/OpenSP-1.5.2.tar.gz', 'Scott Garman <=
scott.a.garman@intel.com>']
['libtool-native', '2.4.2', '2.4.2', 'GPLv2 & LGPLv2.1', 'devel', 'http://w=
ww.gnu.org/software/libtool/libtool.html', 'r5.0', 'autoconf-native automak=
e-native gnu-config-native  ', 'None', 'None', 'This is GNU libtool, a gene=
ric library support script. Libtool hides the complexity of generating spec=
ial library types (such as shared libraries) behind a consistent interface.=
', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz', 'B=
ogdan Marinescu <bogdan.a.marinescu@intel.com>']
['libtool-cross', '2.4.2', '2.4.2', 'GPLv2 & LGPLv2.1', 'devel', 'http://ww=
w.gnu.org/software/libtool/libtool.html', 'r5.1', 'autoconf-native automake=
-native gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  libtool-native', 'None', 'None', 'This is GN=
U libtool, a generic library support script. Libtool hides the complexity o=
f generating special library types (such as shared libraries) behind a cons=
istent interface.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/libtool/libtool-=
2.4.2.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['libtool', '2.4.2', '2.4.2', 'GPLv2 & LGPLv2.1', 'devel', 'http://www.gnu.=
org/software/libtool/libtool.html', 'r5.0', 'autoconf-native automake-nativ=
e gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  libtool-native', 'None', 'None', 'This is GNU libt=
ool, a generic library support script. Libtool hides the complexity of gene=
rating special library types (such as shared libraries) behind a consistent=
 interface.', 'MATCH', '2.4.2', 'ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.=
2.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['nativesdk-libtool', '2.4.2', '2.4.2', 'GPLv2 & LGPLv2.1', 'devel', 'http:=
//www.gnu.org/software/libtool/libtool.html', 'r5.0', 'autoconf-native auto=
make-native libtool-native gnu-config-native virtual/i586-pokysdk-linux-gcc=
-crosssdk virtual/nativesdk-i586-pokysdk-linux-compilerlibs virtual/natives=
dk-libc libtool-native', 'None', 'None', 'This is GNU libtool, a generic li=
brary support script. Libtool hides the complexity of generating special li=
brary types (such as shared libraries) behind a consistent interface.', 'MA=
TCH', 'N/A', 'ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz', 'None']
['nasm', '2.10.01', '2.10.04', 'BSD-2-Clause', 'devel', 'unknown', 'r0', 'a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  groff-native', 'None', 'None', 'General-purpose x86 assembler', 'UP=
DATE', '2.07', 'http://www.nasm.us/pub/nasm/releasebuilds/2.10.01/nasm-2.10=
=2E01.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['nasm-native', '2.10.01', '2.10.04', 'BSD-2-Clause', 'devel', 'unknown', '=
r0', 'autoconf-native automake-native libtool-native gnu-config-native  gro=
ff-native', 'None', 'None', 'General-purpose x86 assembler', 'UPDATE', 'N/A=
', 'http://www.nasm.us/pub/nasm/releasebuilds/2.10.01/nasm-2.10.01.tar.bz2'=
, 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['mtd-utils', '1.5.0', '1.5.0', 'GPLv2+', 'base', 'http://www.linux-mtd.inf=
radead.org/', 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  zlib lzo e2fsprogs util-linux', 'None', 'None', '=
Tools for managing memory technology devices.', 'MATCH', 'N/A', 'git://git.=
infradead.org/mtd-utils.git;protocol=3Dgit;tag=3Dca39eb1d98e736109c64ff9c1a=
a2a6ecca222d8f', 'Radu Moisan <radu.moisan@intel.com>']
['mtd-utils-native', '1.5.0', '1.5.0', 'GPLv2+', 'base', 'http://www.linux-=
mtd.infradead.org/', 'r1', ' zlib-native lzo-native e2fsprogs-native util-l=
inux-native', 'None', 'None', 'Tools for managing memory technology devices=
=2E', 'MATCH', 'N/A', 'git://git.infradead.org/mtd-utils.git;protocol=3Dgit=
;tag=3Dca39eb1d98e736109c64ff9c1aa2a6ecca222d8f', 'Radu Moisan <radu.moisan=
@intel.com>']
['valgrind', '3.7.0', '3.8.0', 'GPLv2 & GPLv2+ & BSD', 'base', 'http://valg=
rind.org/', 'r5', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  virtual/libx11', 'http://valgrind.org/support/b=
ug_reports.html', 'None', 'Valgrind memory debugger', 'UPDATE', '3.7.0', 'h=
ttp://www.valgrind.org/downloads/valgrind-3.7.0.tar.bz2', 'Radu Moisan <rad=
u.moisan@intel.com>']
['qt-demo-init', '0.1', 'INVALID', 'MIT', 'base', 'unknown', 'r3', '  updat=
e-rc.d-native', 'None', 'None', 'Init script for qtdemo', 'MATCH', 'N/A', '=
file://qtdemo-init', 'None']
['qmmp', '0.6.1', '0.6.3', 'GPLv2', 'multimedia', 'http://qmmp.ylsoftware.c=
om', 'r0', 'qt4-x11 autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native qt4-tools-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  taglib libmad libvorbis libog=
g alsa-lib  cmake-native ', 'None', 'None', 'Qmmp (Qt-based Multimedia Play=
er) is an audio-player, written with help of Qt library', 'UPDATE', '0.6.1'=
, 'http://qmmp.ylsoftware.com/files/qmmp-0.6.1.tar.bz2', 'Kai Kang <kai.kan=
g@windriver.com>']
['quicky', '0.4', '0.4', 'GPLv2+', 'x11/apps', 'http://qt-apps.org/content/=
show.php/Quicky?content=3D80325', 'r1', 'pkgconfig-native qt4-tools-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  qt4-x11-free', 'None', 'None', 'A simple note-taking application with =
Wiki-style syntax and behaviour', 'MATCH', '0.4', 'http://qt-apps.org/CONTE=
NT/content-files/80325-quicky-0.4.tar.gz', 'Radu Moisan <radu.moisan@intel.=
com>']
['fotowall', '0.9', '0.9', 'GPLv2+', 'x11/apps', 'http://www.enricoros.com/=
opensource/fotowall', 'r3', 'pkgconfig-native qt4-tools-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  qt4-x11=
-free', 'None', 'None', 'Fotowall is a creative tool that allows you to lay=
out your photos or pictures in a personal way. You can add pictures, then r=
esize, move, change colors, text, shadows, etc..', 'MATCH', '0.9', 'http://=
qt-apps.org/CONTENT/content-files/71316-Fotowall-0.9.tar.bz2', 'Radu Moisan=
 <radu.moisan@intel.com>']
['qt-mobility-embedded', '1.2.0', '1.2.0', 'LGPLv2.1', 'libs', 'http://qt.n=
okia.com', 'r6', 'qt4-tools-native qt4-embedded  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  qt4-embedded pulseaudi=
o bluez4', 'None', 'None', 'Qt Mobility 1.2.0 - version for Qt/Embedded', '=
MATCH', 'N/A', 'http://get.qt.nokia.com/qt/add-ons/qt-mobility-opensource-s=
rc-1.2.0.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>']
['qt-mobility-x11', '1.2.0', '1.2.0', 'LGPLv2.1', 'x11/libs', 'http://qt.no=
kia.com', 'r6', 'qt4-tools-native qt4-x11  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  qt4-x11-free pulseaudio blue=
z4', 'None', 'None', 'Qt Mobility 1.2.0 - version for Qt/X11', 'MATCH', 'N/=
A', 'http://get.qt.nokia.com/qt/add-ons/qt-mobility-opensource-src-1.2.0.ta=
r.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>']
['qt4-native', '4.8.1', '4.8.1', 'LGPLv2.1 | GPLv3', 'libs', 'http://qt.nok=
ia.com', 'r16.1', ' zlib-native dbus-native', 'None', 'None', 'Native versi=
on of Qt/[X11|Mac|Embedded]', 'MATCH', 'N/A', 'http://get.qt.nokia.com/qt/s=
ource/qt-everywhere-opensource-src-4.8.1.tar.gz', 'Paul Eggleton <paul.eggl=
eton@linux.intel.com>']
['nativesdk-qt4-tools', '4.8.1', '4.8.1', 'LGPLv2.1 | GPLv3', 'libs', 'http=
://qt.nokia.com', 'r11.1', 'qt4-tools-native virtual/i586-pokysdk-linux-gcc=
-crosssdk virtual/nativesdk-i586-pokysdk-linux-compilerlibs virtual/natives=
dk-libc nativesdk-zlib nativesdk-dbus nativesdk-libx11 qt4-native', 'None',=
 'None', 'SDK tools for Qt/[X11|Mac|Embedded] version 4.x', 'MATCH', 'N/A',=
 'http://get.qt.nokia.com/qt/source/qt-everywhere-opensource-src-4.8.1.tar.=
gz', 'None']
['elfutils', '0.148', '0.148', '(GPL-2+ & Elfutils-Exception)', 'base', 'ht=
tps://fedorahosted.org/elfutils', 'r9', 'autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  libtool bzip2 zlib virtual/libintl', 'None', 'None', 'A collection of=
 utilities and DSOs to handle compiled objects.', 'MATCH', '0.148', 'https:=
//fedorahosted.org/releases/e/l/elfutils/elfutils-0.148.tar.bz2', 'Radu Moi=
san <radu.moisan@intel.com>']
['nativesdk-elfutils', '0.148', '0.148', '(GPL-2+ & Elfutils-Exception)', '=
base', 'https://fedorahosted.org/elfutils', 'r9', 'autoconf-native automake=
-native libtool-native gnu-config-native virtual/nativesdk-gettext gettext-=
native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokys=
dk-linux-compilerlibs virtual/nativesdk-libc nativesdk-libtool nativesdk-bz=
ip2 nativesdk-zlib virtual/nativesdk-libintl', 'None', 'None', 'A collectio=
n of utilities and DSOs to handle compiled objects.', 'MATCH', 'N/A', 'http=
s://fedorahosted.org/releases/e/l/elfutils/elfutils-0.148.tar.bz2', 'None']
['elfutils-native', '0.148', '0.148', '(GPL-2+ & Elfutils-Exception)', 'bas=
e', 'https://fedorahosted.org/elfutils', 'r9', 'autoconf-native automake-na=
tive libtool-native gnu-config-native gettext-minimal-native  libtool-nativ=
e bzip2-native zlib-native virtual/libintl-native', 'None', 'None', 'A coll=
ection of utilities and DSOs to handle compiled objects.', 'MATCH', 'N/A', =
'https://fedorahosted.org/releases/e/l/elfutils/elfutils-0.148.tar.bz2', 'R=
adu Moisan <radu.moisan@intel.com>']
['qt4-embedded', '4.8.1', '4.8.1', 'LGPLv2.1 | GPLv3', 'libs', 'http://qt.n=
okia.com', 'r47.1', 'qt4-tools-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc   directfb tslib qt4-tools-native=
 freetype jpeg libpng zlib dbus openssl glib-2.0 gstreamer gst-plugins-base=
 sqlite3 tiff pulseaudio', 'None', 'None', 'Qt is a versatile cross-platfor=
m application framework -- this is the embedded version.', 'MATCH', 'N/A', =
'http://get.qt.nokia.com/qt/source/qt-everywhere-opensource-src-4.8.1.tar.g=
z', 'Paul Eggleton <paul.eggleton@linux.intel.com>']
['qt4-x11-free', '4.8.1', '4.8.1', 'LGPLv2.1 | GPLv3', 'x11/libs', 'http://=
qt.nokia.com', 'r45.1', 'qt4-tools-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc   qt4-tools-native freetype j=
peg libpng zlib dbus openssl glib-2.0 gstreamer gst-plugins-base sqlite3 ti=
ff pulseaudio virtual/libgl virtual/libx11 fontconfig libxft libxext libxre=
nder libxrandr libxcursor', 'None', 'None', 'Qt is a versatile cross-platfo=
rm application framework -- this is the X11 version.', 'MATCH', 'N/A', 'htt=
p://get.qt.nokia.com/qt/source/qt-everywhere-opensource-src-4.8.1.tar.gz', =
'Paul Eggleton <paul.eggleton@linux.intel.com>']
['shutdown-desktop', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r0', ' ',=
 'None', 'None', 'Provides an icon to shut down the system cleanly', 'MATCH=
', 'N/A', 'file://shutdown.desktop', 'None']
['sato-screenshot', '0.1+git1+c792e4edc758bab21e0b01814979eacf0b1af945', 'c=
792e4edc758bab21e0b01814979eacf0b1af945', 'GPLv2 & GPLv2+', 'base', 'http:/=
/www.o-hand.com', 'r2', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  matchbox-panel-2', 'http=
://bugzilla.openedhand.com/', 'None', 'An ultra-simple screen capture utili=
ty, aimed at handheld devices', 'MATCH', 'N/A', 'git://git.yoctoproject.org=
/screenshot;protocol=3Dgit', 'None']
['libowl-av', '0.1+git1+03030c41ea578cfa74a2ffceb875675b248318ae', '03030c4=
1ea578cfa74a2ffceb875675b248318ae', 'LGPLv2+', 'x11', 'http://www.o-hand.co=
m', 'r3', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  gtk+ gstreamer gst-plugins-base', 'htt=
p://bugzilla.openedhand.com/', 'None', 'OpenedHand Widget Library Audio/Vid=
eo', 'MATCH', 'N/A', 'git://git.yoctoproject.org/libowl-av;protocol=3Dgit',=
 'Valentin Popa <valentin.popa@intel.com>']
['owl-video', '0.1+git1+07ab48f331a5e6e0d169e4892c7eb1fc22dc0b9d', '07ab48f=
331a5e6e0d169e4892c7eb1fc22dc0b9d', 'LGPLv2.1 & GPLv2+', 'x11', 'http://o-h=
and.com/', 'r2', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  libowl-av', 'http://bugzilla.o-=
hand.com/', 'None', 'OpenedHand Widget Library video widget', 'MATCH', 'N/A=
', 'git://git.yoctoproject.org/owl-video;protocol=3Dgit', 'Valentin Popa <v=
alentin.popa@intel.com>']
['sato-icon-theme', '0.4.1', '0.4.1', 'CC-BY-SA-3.0', 'x11', 'http://www.o-=
hand.com', 'r3', 'pkgconfig-native autoconf-native automake-native libtool-=
native gnu-config-native   icon-naming-utils-native', 'http://bugzilla.open=
edhand.com/', 'None', 'Sato Icon Theme', 'MATCH', 'N/A', 'http://pokylinux.=
org/releases/sato/sato-icon-theme-0.4.1.tar.gz', 'Valentin Popa <valentin.p=
opa@intel.com>']
['libowl', '0.1+git1+6ebc8ac8f8575278dd40a535cadefa26374e44b1', '6ebc8ac8f8=
575278dd40a535cadefa26374e44b1', 'GPLv2 & LGPLv2+', 'libs', 'http://www.o-h=
and.com', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  gtk+', 'http://bugzilla.openedha=
nd.com/', 'None', 'OpenedHand Widget Library', 'MATCH', '0.0+svnr408', 'git=
://git.yoctoproject.org/libowl;protocol=3Dgit', 'Valentin Popa <valentin.po=
pa@intel.com>']
['gaku', '0.1+git1+a0be2fe4b5f12b8b07f4e3bd624b3729657f0ac5', 'a0be2fe4b5f1=
2b8b07f4e3bd624b3729657f0ac5', 'GPLv2+', 'base', 'unknown', 'r0', 'pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  gtk+ gstreamer libowl-av', 'None', 'None', 'Music player'=
, 'MATCH', '0.0+svnr399', 'git://git.yoctoproject.org/gaku;protocol=3Dgit',=
 'Cristian Iorga <cristian.iorga@intel.com>']
['oh-puzzles', '0.2+git1+92f1a20e4b72eed7a35b00984d9793b51dc2fb3b', '92f1a2=
0e4b72eed7a35b00984d9793b51dc2fb3b', 'MIT', 'x11', 'http://o-hand.com/', 'r=
10', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  gtk+ gconf intltool-native librsvg libowl',=
 'http://bugzilla.openedhand.com/', 'None', 'Portable Puzzle Collection', '=
MATCH', 'N/A', 'git://git.yoctoproject.org/oh-puzzles;protocol=3Dgit', 'Val=
entin Popa <valentin.popa@intel.com>']
['matchbox-terminal', '0.0+git1+3fc25cb811a8ed306de897edf9b930f4402f3852', =
'3fc25cb811a8ed306de897edf9b930f4402f3852', 'GPLv2+', 'x11/utils', 'http://=
www.matchbox-project.org/', 'r0', 'pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ vte', 'ht=
tp://bugzilla.openedhand.com/', 'None', 'Matchbox Terminal', 'MATCH', 'N/A'=
, 'git://git.yoctoproject.org/matchbox-terminal;protocol=3Dgit', 'Valentin =
Popa <valentin.popa@intel.com>']
['gtk-sato-engine', '0.3.3+git1+e4a29fbb7648f12fb3aefd8ea0120c3f54ba392a', =
'e4a29fbb7648f12fb3aefd8ea0120c3f54ba392a', 'LGPLv2.1 & LGPLv2+', 'x11/base=
', 'http://www.o-hand.com', 'r2', 'pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+', 'http:/=
/bugzilla.openedhand.com/', 'None', 'Sato theme engine for GTK', 'MATCH', '=
N/A', 'git://git.yoctoproject.org/gtk-sato-engine;protocol=3Dgit', 'Valenti=
n Popa <valentin.popa@intel.com>']
['web', '0.0+git1+e9a1c9433b9500feb7e3b9bb135debcea3a3e651', 'e9a1c9433b950=
0feb7e3b9bb135debcea3a3e651', 'GPLv2', 'x11', 'unknown', 'r0', 'pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  libxml2 glib-2.0 gtk+ libglade gtkhtml2 curl gconf js libowl=
 gconf gconf-native', 'None', 'None', 'Web is a multi-platform web browsing=
 application.', 'MATCH', '0.0+svnr129', 'git://git.yoctoproject.org/web-sat=
o;protocol=3Dgit', 'Valentin Popa <valentin.popa@intel.com>']
['web-webkit', '0.1+git1+b0676c190f876cbdb1df202fbcec42f212374503', 'b0676c=
190f876cbdb1df202fbcec42f212374503', 'LGPLv2.1', 'x11', 'http://o-hand.com/=
', 'r2', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  glib-2.0 gtk+ webkit-gtk libowl', 'http=
://bugzilla.openedhand.com/', 'None', 'Multi-platform web browsing applicat=
ion.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/web-webkit;protocol=3Dgi=
t', 'Valentin Popa <valentin.popa@intel.com>']
['matchbox-theme-sato', '0.1', '0.1', 'CC-BY-SA-3.0', 'x11/wm', 'http://www=
=2Ematchbox-project.org/', 'r1', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  matchbox-wm', '=
http://bugzilla.openedhand.com/', 'None', 'Matchbox window manager Sato the=
mes', 'MATCH', 'N/A', 'http://pokylinux.org/releases/sato/matchbox-theme-sa=
to-0.1.tar.gz', 'Valentin Popa <valentin.popa@intel.com>']
['matchbox-theme-sato-2', '0.2+git1+e3ccc08d4a680d70fd4891fca966aa6ce503065=
c', 'e3ccc08d4a680d70fd4891fca966aa6ce503065c', 'CC-BY-SA-3.0', 'x11/wm', '=
http://www.matchbox-project.org/', 'r0', 'pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  matchbo=
x-wm-2', 'http://bugzilla.openedhand.com/', 'None', 'Matchbox window manage=
r Sato themes', 'MATCH', 'N/A', 'git://git.yoctoproject.org/matchbox-sato;p=
rotocol=3Dgit', 'Valentin Popa <valentin.popa@intel.com>']
['matchbox-desktop', '2.0+git1+71e3e6e04271e9d5a14f1c231ef100c7f320134d', '=
2.0', 'GPLv2+ & LGPLv2+', 'x11/wm', 'http://matchbox-project.org/', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  gtk+ startup-notification dbus', 'http://bugzilla=
=2Eopenedhand.com/', 'None', 'Matchbox Window Manager Desktop', 'MATCH', 'N=
/A', 'git://git.yoctoproject.org/matchbox-desktop-2;protocol=3Dgit', 'Valen=
tin Popa <valentin.popa@intel.com>']
['evolution-data-server', '2.30+git1+3ca578d968d09785933ebbb45b66b3bccdbd58=
32', '6.0', 'LGPLv2 & LGPLv2+', 'base', 'http://www.gnome.org/projects/evol=
ution/', 'r2', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  intltool-native glib-2.0 gtk+ gco=
nf dbus db gnome-common virtual/libiconv zlib libsoup-2.4 libglade libical =
gnome-keyring gperf-native gtk-doc-stub-native', 'https://bugzilla.gnome.or=
g/', 'None', 'Evolution database backend server', 'UPDATE', 'N/A', 'git://g=
it.gnome.org/evolution-data-server;protocol=3Dgit', 'Valentin Popa <valenti=
n.popa@intel.com>']
['matchbox-keyboard', '0.0+git1+b38f24036cff3be6c2fbcf9ca9881803e69003ac', =
'2cc22edfa39c09c69de85186ba3ce32638c3f741', 'GPLv2+', 'x11', 'http://matchb=
ox-project.org', 'r2', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  libfakekey expat libxft gtk+ matchbox-panel-2', 'http://bugzilla.open=
edhand.com/', 'None', 'Matchbox virtual keyboard for X11', 'UPDATE', 'N/A',=
 'git://git.yoctoproject.org/matchbox-keyboard;protocol=3Dgit', 'Valentin P=
opa <valentin.popa@intel.com>']
['matchbox-session-sato', '0.1', 'INVALID', 'GPLv2.0+', 'x11', 'http://www.=
matchbox-project.org/', 'r29', ' virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  ', 'http://bugzilla.openedhand.com/', =
'None', 'Custom MB session files for poky', 'MATCH', 'N/A', 'file://session=
', 'Valentin Popa <valentin.popa@intel.com>']
['matchbox-desktop-sato', '0.1+git1+810b0b08eb79e4685202da2ec347b990bb467e0=
7', '810b0b08eb79e4685202da2ec347b990bb467e07', 'GPLv2', 'x11', 'http://mat=
chbox-project.org', 'r1', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'http://bugzilla.op=
enedhand.com/', 'None', 'Sato desktop folders', 'MATCH', 'N/A', 'git://git.=
yoctoproject.org/matchbox-desktop-sato;protocol=3Dgit', 'Valentin Popa <val=
entin.popa@intel.com>']
['matchbox-panel-2', '0.0+git1+cdf7a22716b87468f10573f622d5c7a58a684e35', '=
2.0', 'GPLv2+', 'base', 'http://matchbox-project.org', 'r5', 'pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  gtk+ startup-notification dbus dbus-glib    apmd', 'http://bug=
zilla.openedhand.com/', 'None', 'A simple GTK+ based panel for handheld dev=
ices.', 'UPDATE', 'N/A', 'git://git.yoctoproject.org/matchbox-panel-2;proto=
col=3Dgit', 'Valentin Popa <valentin.popa@intel.com>']
['pcmanfm', '0.9.10', 'N/A', 'GPLv2 & GPLv2+ & LGPLv2.1+', 'x11', 'http://p=
cmanfm.sourceforge.net/', 'r1', 'pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ startup-not=
ification libfm libowl', '', 'None', 'Fast lightweight tabbed filemanager',=
 'ErrParseDir:/pcmanfm/:-:pcmanfm-0.9.10.tar.gz:downloads.sourceforge.net/p=
cmanfm/pcmanfm-0.9.10.tar.gz', '0.9.10', 'http://downloads.sourceforge.net/=
pcmanfm/pcmanfm-0.9.10.tar.gz', 'Valentin Popa <valentin.popa@intel.com>']
['matchbox-config-gtk', '0.0+git1+3ed74dfb7c57be088a5ab36e446c0ccde9fa1028'=
, '3ed74dfb7c57be088a5ab36e446c0ccde9fa1028', 'GPLv2+', 'base', 'http://mat=
chbox-project.org', 'r0', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  gconf gtk+', 'http://b=
ugzilla.openedhand.com/', 'None', 'Matchbox GTK+ theme configuration applic=
ation.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/matchbox-config-gtk;pr=
otocol=3Dgit', 'Valentin Popa <valentin.popa@intel.com>']
['settings-daemon', '0.0+git1+0f174f463dfed500b65533e249cd22942e439c77', '0=
f174f463dfed500b65533e249cd22942e439c77', 'MIT-style', 'x11', 'http://svn.o=
-hand.com/view/matchbox/trunk/settings-daemon/', 'r0', 'pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  gconf glib-2.0 gtk+ gconf gconf-native', 'http://bugzilla.openedhand=
=2Ecom/', 'None', 'Settings-daemon provides a bridge between gconf and xset=
tings', 'MATCH', 'N/A', 'git://git.yoctoproject.org/xsettings-daemon;protoc=
ol=3Dgit', 'Valentin Popa <valentin.popa@intel.com>']
['matchbox-stroke', '0.0+git1+2b772583b61d2f6e8358e7c80e10293fc27cfcb7', '2=
b772583b61d2f6e8358e7c80e10293fc27cfcb7', 'GPLv2', 'x11/wm', 'http://matchb=
ox-project.org', 'r0', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  libfakekey expat libxft', 'http://bugzilla.openedhand.com/', 'None', =
'Matchbox stroke recogniser', 'MATCH', 'N/A', 'git://git.yoctoproject.org/m=
atchbox-stroke;protocol=3Dgit', 'Valentin Popa <valentin.popa@intel.com>']
['rxvt-unicode', '9.15', '9.15', 'GPLv2+', 'x11/utils', 'unknown', 'r1', 'a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  virtual/libx11 libxt libxft gdk-pixbuf', 'None', 'None', 'rxvt-unic=
ode is a clone of the well known terminal emulator rxvt, modified to store =
text in Unicode (either UCS-2 or UCS-4) and to use locale-correct input and=
 output. It also supports mixing multiple fonts at the same time, including=
 Xft fonts.', 'MATCH', 'N/A', 'http://dist.schmorp.de/rxvt-unicode/Attic/rx=
vt-unicode-9.15.tar.bz2', 'Radu Moisan <radu.moisan@intel.com>']
['kern-tools-native', '0.1+git1+0c7b625280eb9ff62d40b53308e7238ddd164f38', =
'0c7b625280eb9ff62d40b53308e7238ddd164f38', 'GPLv2', 'base', 'unknown', 'r1=
2', ' git-native guilt-native', 'None', 'None', 'Scripts and utilities for =
managing Yocto branched kernels.', 'MATCH', 'check', 'git://git.yoctoprojec=
t.org/yocto-kernel-tools.git;protocol=3Dgit', 'Bruce Ashfield <bruce.ashfie=
ld@windriver.com>']
['modutils-initscripts', '1.0', 'INVALID', 'PD', 'base', 'unknown', 'r6', '=
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc   update-rc.d-native', 'None', 'None', 'modutils configuration files', =
'MATCH', 'N/A', 'file://modutils.sh', 'Saul Wold <sgw@linux.intel.com>']
['libical', '0.48', 'N/A', 'LGPLv2.1 | MPL-1', 'libs', 'http://sourceforge.=
net/projects/freeassociation/', 'r0', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  ', 'http://sourceforge.net/=
tracker/?group_id=3D16077&atid=3D116077', 'None', 'iCal and scheduling (RFC=
 2445, 2446, 2447) library', 'ErrParseDir:/project/freeassociation/libical/=
libical-0.48/:libical-0.48:libical-0.48.tar.gz:downloads.sourceforge.net/pr=
oject/freeassociation/libical/libical-0.48/libical-0.48.tar.gz', '0.48', 'h=
ttp://downloads.sourceforge.net/project/freeassociation/libical/libical-0.4=
8/libical-0.48.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>']
['leafpad', '0.8.18.1', '0.8.18.1', 'GPLv2 & GPLv2+', 'base', 'http://tarot=
=2Efreeshell.org/leafpad/', 'r2', 'pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ intltool-=
native libowl', 'None', 'None', 'Simple GTK+ Text Editor', 'MATCH', '0.8.18=
=2E1', 'http://savannah.nongnu.org/download/leafpad/leafpad-0.8.18.1.tar.gz=
', 'Valentin Popa <valentin.popa@intel.com>']
['update-modules', '1.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r13', ' '=
, 'None', 'None', 'script to manage module configuration files.', 'MATCH', =
'N/A', 'file://update-modules', 'Radu Moisan <radu.moisan@intel.com>']
['kernelshark', '1.2+git1+7055ffd37beeb44714e86a4abc703f7e175a0db5', '1.2',=
 'GPLv2', 'base', 'unknown', 'r2', 'pkgconfig-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+  python-nati=
ve ', 'None', 'None', 'Graphical trace viewer for Ftrace', 'MATCH', '0.2', =
'git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protoc=
ol=3Dgit', 'Darren Hart <dvhart@linux.intel.com>']
['trace-cmd', '1.2+git1+7055ffd37beeb44714e86a4abc703f7e175a0db5', '1.2', '=
GPLv2 & LGPLv2.1', 'base', 'unknown', 'r3', 'pkgconfig-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc    python=
-native ', 'None', 'None', 'User interface to Ftrace', 'MATCH', 'N/A', 'git=
://git.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protocol=
=3Dgit', 'Darren Hart <dvhart@linux.intel.com>']
['lttng-modules', '2.0.pre11+git4d3e89e379fc66480d729abe8daa5c86eb585400', =
'2.0.pre11', 'LGPLv2.1 & GPLv2', 'devel', 'unknown', 'r0', ' virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/ke=
rnel virtual/kernel', 'None', 'None', 'The lttng-modules 2.0 package contai=
ns the kernel tracer modules', 'MATCH', 'N/A', 'git://git.lttng.org/lttng-m=
odules.git;protocol=3Dgit', 'None']
['lttng-tools', 'v2.0.1+git8c3919ea2dc77fdd47fb1c90e41490a20bb4d478', 'v2.0=
=2E1', 'GPLv2 & LGPLv2.1', 'devel', 'unknown', 'r0', 'autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  liburcu popt=
 lttng2-ust', 'None', 'None', 'The Linux trace toolkit is a suite of tools =
designed to extract program execution details from the Linux operating syst=
em and interpret them.', 'MATCH', 'N/A', 'git://git.lttng.org/lttng-tools.g=
it;protocol=3Dgit', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['babeltrace', '0.12+git1+0d8f8c2ea27df096269aa76b4baeab26b68b95d4', '1.0.0=
', 'MIT & GPLv2', 'base', 'http://www.efficios.com/babeltrace/', 'r0', 'aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  gtk+ util-linux', 'n/a', 'None', 'Babeltrace provides trace read and =
write libraries in host side, as well as a trace converter, which used to c=
onvert LTTng 2.0 traces into human-readable log.', 'UPDATE', 'N/A', 'git://=
git.efficios.com/babeltrace.git;protocol=3Dgit', 'Radu Moisan <radu.moisan@=
intel.com>']
['oprofileui-server', '0.0+git1+82ecf8c6b53b84f80682a8312f9defa83a95f2a3', =
'82ecf8c6b53b84f80682a8312f9defa83a95f2a3', 'GPLv2', 'x11', 'http://labs.o-=
hand.com/oprofileui/', 'r0', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 avahi upda=
te-rc.d-native', 'http://bugzilla.o-hand.com/', 'None', 'User interface for=
 the OProfile tool', 'MATCH', 'N/A', 'git://git.yoctoproject.org/oprofileui=
;protocol=3Dgit', 'None']
['oprofileui', '0.0+git1+82ecf8c6b53b84f80682a8312f9defa83a95f2a3', '82ecf8=
c6b53b84f80682a8312f9defa83a95f2a3', 'GPLv2', 'x11', 'http://labs.o-hand.co=
m/oprofileui/', 'r0', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 avahi gtk+ libgla=
de libxml2 avahi-ui gconf', 'http://bugzilla.o-hand.com/', 'None', 'User in=
terface for the OProfile tool', 'MATCH', '0.0+git0+82ecf8c6b53b84f80682a831=
2f9defa83a95f2a3', 'git://git.yoctoproject.org/oprofileui;protocol=3Dgit', =
'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['lttng-ust', '0.16', '0.16', 'LGPLv2.1+ & BSD', 'base', 'http://lttng.org/=
ust', 'r0', 'autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  liburcu', 'http://lttng.org/project/issues', '1', 'Th=
e LTTng Userspace Tracer (UST) is a library accompanied by a set of tools t=
o trace userspace code', 'MATCH', 'N/A', 'http://lttng.org/files/ust/releas=
es/ust-0.16.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['puzzles', 'r9594', '9606', 'MIT', 'base', 'http://www.chiark.greenend.org=
=2Euk/~sgtatham/puzzles/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  gtk+ libxt', 'None', 'None', "Simon =
Tatham's Portable Puzzle Collection", 'UPDATE', 'r9561', 'svn://svn.tartaru=
s.org/sgt;module=3Dpuzzles;rev=3D9594;protocol=3Dsvn', 'Valentin Popa <vale=
ntin.popa@intel.com>']
['lttng2-ust', '2.0.2+git1+a367ee66aad3ffd21ef64d1b24efc6f862e09562', '2.0.=
5', 'LGPLv2.1+ & BSD & GPLv2', 'base', 'http://lttng.org/lttng2.0', 'r0', '=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  liburcu util-linux', 'n/a', 'None', 'The LTTng UST 2.0 package con=
tains the userspace tracer library to trace userspace codes.', 'UPDATE', 'N=
/A', 'git://git.lttng.org/lttng-ust.git;protocol=3Dgit', 'Bogdan Marinescu =
<bogdan.a.marinescu@intel.com>']
['oprofile', '0.9.7', 'N/A', 'LGPLv2.1+ & GPLv2', 'devel', 'http://oprofile=
=2Esourceforge.net/news/', 'r1.0', 'autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  popt binutils', 'http://source=
forge.net/tracker/?group_id=3D16191&atid=3D116191', 'None', 'OProfile is a =
system-wide profiler for Linux systems, capable of profiling all running co=
de at low overhead.', 'ErrParseDir:/oprofile/:-:oprofile-0.9.7.tar.gz:downl=
oads.sourceforge.net/oprofile/oprofile-0.9.7.tar.gz', '0.9.7', 'file://opst=
art.patch', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['webkit-gtk', '1.8.2', '1.8.2', 'BSD & LGPLv2+', 'base', 'http://www.webki=
tgtk.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  zlib enchant gnome-keyring lib=
soup-2.4 curl libxml2 cairo libxslt libxt libidn gnutls            gtk+ gst=
reamer gst-plugins-base flex-native gperf-native perl-native-runtime sqlite=
3 icu  virtual/libgl gtk-doc-stub-native', 'http://bugs.webkit.org/', 'None=
', 'WebKitGTK+ is the port of the portable web rendering engine WebKitK to =
the GTK+ platform.', 'MATCH', '1.8.1', 'http://www.webkitgtk.org/releases/w=
ebkit-1.8.2.tar.xz', 'Valentin Popa <valentin.popa@intel.com>']
['linux-firmware', '0.0+git1+e98750f0d68d0037ce5a186f7f863a9c13bf773a', 'bb=
ede96f3d68ac056ae5d9f6ac56819b6462f4f5', 'Proprietary', 'kernel', 'unknown'=
, 'r4', ' ', 'None', '1', 'Firmware files for use with Linux kernel', 'UPDA=
TE', 'N/A', 'git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-f=
irmware.git;protocol=3Dgit', 'Cristian Iorga <cristian.iorga@intel.com>']
['powertop', '1.13', '1.13', 'GPLv2', 'base', 'http://www.lesswatts.org/', =
'r4', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  virtual/libintl ncurses', 'http://bugzilla.lesswatts.org/', 'No=
ne', 'PowerTOP, a tool that helps you find what software is using the most =
power.', 'MATCH', '1.97', 'http://www.lesswatts.org/projects/powertop/downl=
oad/powertop-1.13.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>=
']
['linux-libc-headers-yocto', '3.4+git-1+a1cdb60720c452c3965eaec3ec2cd10f062=
61cc5_1+a1cdb60720c452c3965eaec3ec2cd10f06261cc5', '3.4.9', 'GPLv2', 'devel=
', 'unknown', 'r6', '  unifdef-native', 'None', 'None', "Sanitized set of k=
ernel headers for the C library's use.", 'UPDATE', 'N/A', 'git://git.yoctop=
roject.org/linux-yocto-3.4.git;protocol=3Dgit;nocheckout=3D1;branch=3Dstand=
ard/base,meta;name=3Dmachine,meta', 'Bogdan Marinescu <bogdan.a.marinescu@i=
ntel.com>']
['blktrace', '1.0.5+git1+d6918c8832793b4205ed3bfede78c2f915c23385', '1.0.5'=
, 'GPLv2', 'base', 'unknown', 'r4', ' virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  libaio', 'None', 'None', 'blktrac=
e - generate traces of the I/O traffic on block devices', 'MATCH', 'a788dfd=
e86dfaff8f1c277a233f92c1822e06b76', 'git://git.kernel.dk/blktrace.git;proto=
col=3Dgit', 'Tom Zanussi <tom.zanussi@intel.com>']
['systemtap-uprobes', '1.8+git1+48fa6b5e1d3e636c34cbd5650370e6f634efc294', =
'1.8', 'GPLv2', 'base', 'unknown', 'r1', 'virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  systemtap virtual/kernel', 'None', 'None', 'UProbes kernel module for Sy=
stemTap', 'MATCH', 'N/A', 'git://sources.redhat.com/git/systemtap.git;proto=
col=3Dgit', 'Tom Zanussi <tom.zanussi@intel.com>']
['systemtap', '1.8+git1+48fa6b5e1d3e636c34cbd5650370e6f634efc294', '1.8', '=
GPLv2', 'base', 'unknown', 'r0', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native virtual/gettext gettext-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  e=
lfutils sqlite3 systemtap-native', 'None', 'None', 'SystemTap - script-dire=
cted dynamic tracing and performance analysis tool for Linux', 'MATCH', 'N/=
A', 'git://sources.redhat.com/git/systemtap.git;protocol=3Dgit', 'Radu Mois=
an <radu.moisan@intel.com>']
['systemtap-native', '1.8+git1+48fa6b5e1d3e636c34cbd5650370e6f634efc294', '=
1.8', 'GPLv2', 'base', 'unknown', 'r0', 'autoconf-native automake-native li=
btool-native gnu-config-native gettext-minimal-native  elfutils-native sqli=
te3-native gettext-native', 'None', 'None', 'SystemTap - script-directed dy=
namic tracing and performance analysis tool for Linux', 'MATCH', 'N/A', 'gi=
t://sources.redhat.com/git/systemtap.git;protocol=3Dgit', 'Radu Moisan <rad=
u.moisan@intel.com>']
['latencytop', '0.5', '0.5', 'GPLv2', 'base', 'http://www.latencytop.org/',=
 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  virtual/libintl ncurses glib-2.0 gtk+', 'n/a', 'None', 'Latenc=
yTOP, a Linux tool measuring and fixing latency', 'MATCH', '0.5', 'http://w=
ww.latencytop.org/download/latencytop-0.5.tar.gz', 'Bogdan Marinescu <bogda=
n.a.marinescu@intel.com>']
['nativesdk-systemtap', '1.8+git1+48fa6b5e1d3e636c34cbd5650370e6f634efc294'=
, '1.8', 'GPLv2', 'base', 'unknown', 'r0', 'autoconf-native automake-native=
 libtool-native gnu-config-native virtual/nativesdk-gettext gettext-native =
virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-linu=
x-compilerlibs virtual/nativesdk-libc nativesdk-elfutils nativesdk-sqlite3 =
nativesdk-gettext', 'None', 'None', 'SystemTap - script-directed dynamic tr=
acing and performance analysis tool for Linux', 'MATCH', 'N/A', 'git://sour=
ces.redhat.com/git/systemtap.git;protocol=3Dgit', 'None']
['linux-libc-headers', '3.4.3', '3.6', 'GPLv2', 'devel', 'unknown', 'r0', '=
  unifdef-native', 'None', 'None', "Sanitized set of kernel headers for the=
 C library's use.", 'UPDATE', 'N/A', 'http://kernel.org/pub/linux/kernel/v3=
=2E0/linux-3.4.3.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>=
']
['kexec-tools', '2.0.3', '2.0.3', 'GPLv2', 'kernel/userland', 'http://kerne=
l.org/pub/linux/utils/kernel/kexec/', 'r0', 'autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib', 'None', 'None'=
, 'Kexec is a fast reboot feature that lets you reboot to a new Linux kerne=
l', 'MATCH', 'N/A', 'http://kernel.org/pub/linux/utils/kernel/kexec/kexec-t=
ools-2.0.3.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['nativesdk-linux-libc-headers-yocto', '3.4+git-1+a1cdb60720c452c3965eaec3e=
c2cd10f06261cc5_1+a1cdb60720c452c3965eaec3ec2cd10f06261cc5', '3.4.9', 'GPLv=
2', 'devel', 'unknown', 'r6', 'unifdef-native', 'None', 'None', "Sanitized =
set of kernel headers for the C library's use.", 'UPDATE', 'N/A', 'git://gi=
t.yoctoproject.org/linux-yocto-3.4.git;protocol=3Dgit;nocheckout=3D1;branch=
=3Dstandard/base,meta;name=3Dmachine,meta', 'None']
['nativesdk-linux-libc-headers', '3.4.3', '3.6', 'GPLv2', 'devel', 'unknown=
', 'r0', 'unifdef-native', 'None', 'None', "Sanitized set of kernel headers=
 for the C library's use.", 'UPDATE', 'N/A', 'http://kernel.org/pub/linux/k=
ernel/v3.0/linux-3.4.3.tar.bz2', 'None']
['linux-dummy', '1.0', 'INVALID', 'GPL', 'kernel', 'unknown', 'r1', ' virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  '=
, 'None', 'None', 'Dummy Linux kernel', 'MATCH', 'N/A', 'file://COPYING.GPL=
', 'None']
['linux-yocto-tiny', '3.2.18+git1+486f7aec824b4127e91ef53228823e996b3696f0_=
1+da6291c46f37e2fb799d964c807d8d57ea89c375', '3.3', 'GPLv2', 'kernel', 'unk=
nown', 'r4.0', '  virtual/i586-poky-linux-gcc kmod-native virtual/i586-poky=
-linux-gcc update-modules xz-native', 'None', 'None', 'Yocto Kernel', 'UPDA=
TE', 'N/A', 'git://git.yoctoproject.org/linux-yocto-3.2;protocol=3Dgit;bare=
clone=3D1;branch=3Dstandard/tiny,meta;name=3Dmachine,meta', 'None']
['linux-yocto', '3.4.9+git1+463299bc2e533e1bd38b0053ae7b210980f269c3_1+0985=
844fa6235422c67ef269952fa4e765f252f9', '3.4.9', 'GPLv2', 'kernel', 'unknown=
', 'r4.1', '  virtual/i586-poky-linux-gcc kmod-native virtual/i586-poky-lin=
ux-gcc update-modules', 'None', 'None', 'Yocto Kernel', 'MATCH', 'N/A', 'gi=
t://git.yoctoproject.org/linux-yocto-3.4.git;protocol=3Dgit;nocheckout=3D1;=
branch=3Dstandard/base,meta;name=3Dmachine,meta', 'Darren Hart <dvhart@linu=
x.intel.com>']
['linux-yocto-rt', '3.4.9+git1+463299bc2e533e1bd38b0053ae7b210980f269c3_1+9=
032b1e9daf5b4396f939981c3be95f67802d18c', '3.4.9', 'GPLv2', 'kernel', 'unkn=
own', 'r4.0', '  virtual/i586-poky-linux-gcc kmod-native virtual/i586-poky-=
linux-gcc update-modules', 'None', 'None', 'Yocto Kernel', 'MATCH', 'N/A', =
'git://git.yoctoproject.org/linux-yocto-3.4.git;protocol=3Dgit;bareclone=3D=
1;branch=3Dstandard/preempt-rt/base,meta;name=3Dmachine,meta', 'Darren Hart=
 <dvhart@linux.intel.com>']
['kmod', '9', 'N/A', 'GPL-2.0+ & LGPL-2.1+', 'base', 'http://packages.profu=
sion.mobi/kmod/', 'r0.0', 'autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc   pkgconfig-native gtk-doc-stub-native',=
 'None', 'None', 'kmod is a set of tools to handle common tasks with Linux =
kernel modules like                insert, remove, list, check properties, =
resolve dependencies and aliases.', 'ErrUnknown:git.profusion.mobi/kmod.git=
', '9', 'git://git.profusion.mobi/kmod.git;protocol=3Dgit;branch=3Dmaster',=
 'Radu Moisan <radu.moisan@intel.com>']
['kmod-native', '9', 'N/A', 'GPL-2.0+ & LGPL-2.1+', 'base', 'http://package=
s.profusion.mobi/kmod/', 'r0.1', 'autoconf-native automake-native libtool-n=
ative gnu-config-native   pkgconfig-native gtk-doc-stub-native', 'None', 'N=
one', 'kmod is a set of tools to handle common tasks with Linux kernel modu=
les like                insert, remove, list, check properties, resolve dep=
endencies and aliases.', 'ErrUnknown:git.profusion.mobi/kmod.git', 'N/A', '=
git://git.profusion.mobi/kmod.git;protocol=3Dgit;branch=3Dmaster', 'Radu Mo=
isan <radu.moisan@intel.com>']
['dtc', '1.3.0+git1+033089f29099bdfd5c2d6986cdb9fd07b16cfde0', '1.3.0', 'GP=
Lv2 | BSD', 'bootloader', 'unknown', 'r3.1', 'autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native bison-na=
tive', 'None', 'None', 'The Device Tree Compiler is a tool used to manipula=
te the Open-Firmware-like device tree used by PowerPC kernels.', 'MATCH', '=
37c0b6a0916c31a5eae0a9ddfcc5d0b8fb4569c6', 'git://www.jdl.com/software/dtc.=
git;protocol=3Dgit', 'None']
['dtc-native', '1.3.0+git1+033089f29099bdfd5c2d6986cdb9fd07b16cfde0', '1.3.=
0', 'GPLv2 | BSD', 'bootloader', 'unknown', 'r3.1', 'autoconf-native automa=
ke-native libtool-native gnu-config-native  flex-native bison-native', 'Non=
e', 'None', 'The Device Tree Compiler is a tool used to manipulate the Open=
-Firmware-like device tree used by PowerPC kernels.', 'MATCH', 'N/A', 'git:=
//www.jdl.com/software/dtc.git;protocol=3Dgit', 'None']
['sysprof', '1.1.8+git1+4692f85f625f4fd969cef4ab5dc47cc4655c87f9', '1.1.8',=
 'GPLv2', 'base', 'unknown', 'r2', 'autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  gtk+ libglade', 'None', 'None'=
, 'sysprof - System-wide Performance Profiler for Linux', 'MATCH', '6b5b843=
2711ef5c747f8375073cd9af88922d3c6', 'git://git.gnome.org/sysprof;protocol=
=3Dgit', 'Tom Zanussi <tom.zanussi@intel.com>']
['build-appliance-image', '1.0', '3.2.1', 'MIT', 'base', 'unknown', 'r16', =
' zip-native gzip-native', 'None', 'None', "An image you can boot and run u=
sing either the VMware Player or VMware Workstation.  For more information,=
 see the<a href=3D'http://www.yoctoproject.org/documentation/build-applianc=
e'>Build Appliance page</a>.", 'UPDATE', 'N/A', 'git://git.yoctoproject.org=
/poky;protocol=3Dgit', 'Saul Wold <sgw@linux.intel.com>']
['nativesdk-dtc', '1.3.0+git1+033089f29099bdfd5c2d6986cdb9fd07b16cfde0', '1=
=2E3.0', 'GPLv2 | BSD', 'bootloader', 'unknown', 'r3.1', 'autoconf-native a=
utomake-native libtool-native gnu-config-native virtual/i586-pokysdk-linux-=
gcc-crosssdk virtual/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nati=
vesdk-libc flex-native bison-native', 'None', 'None', 'The Device Tree Comp=
iler is a tool used to manipulate the Open-Firmware-like device tree used b=
y PowerPC kernels.', 'MATCH', 'N/A', 'git://www.jdl.com/software/dtc.git;pr=
otocol=3Dgit', 'None']
['lttng-viewer', '0.12.38', '0.12.38.21032011', 'GPLv2 & LGPLv2.1', 'devel'=
, 'http://lttng.org/content/download', 'r3', 'autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ pango popt', 'n=
/a', 'None', 'The Linux trace toolkit is a suite of tools designed to extra=
ct program execution details from the Linux operating system and  interpret=
 them.', 'UPDATE', 'N/A', 'http://lttng.org/files/packages/lttv-0.12.38-210=
32011.tar.gz', 'Valentin Popa <valentin.popa@intel.com>']
['initramfs-live-install-efi', '1.0', 'INVALID', 'MIT', 'base', 'unknown', =
'r0', ' ', 'None', 'None', 'A live image init script for grub-efi', 'MATCH'=
, 'N/A', 'file://init-install-efi.sh', 'None']
['dbus-wait', '0.1+git1+1a3e1343761b30750bed70e0fd688f6d3c7b3717', '1a3e134=
3761b30750bed70e0fd688f6d3c7b3717', 'GPLv2', 'base', 'http://git.yoctoproje=
ct.org/cgit/cgit.cgi/dbus-wait', 'r2', 'autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  dbus', 'None', 'None', 'A =
simple tool to wait for a specific signal over DBus', 'MATCH', 'N/A', 'git:=
//git.yoctoproject.org/dbus-wait;protocol=3Dgit', 'Cristian Iorga <cristian=
=2Eiorga@intel.com>']
['initramfs-framework', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r0', '=
 ', 'None', 'None', 'initramfs modular system', 'MATCH', 'N/A', 'file://ini=
t', 'None']
['initramfs-live-install', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r7'=
, ' ', 'None', 'None', 'A live image init script for grub', 'MATCH', 'N/A',=
 'file://init-install.sh', 'Saul Wold <sgw@linux.intel.com>']
['psplash', '0.1+git1+de9979aefbc56af59b4d236a4b63dd19dcdcfb53', 'afd4e228c=
606a9998feae44a3fed4474803240b7', 'GPLv2+', 'base', 'http://git.yoctoprojec=
t.org/cgit/cgit.cgi/psplash', 'r6', 'pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   update-rc.d=
-native', 'None', 'None', "PSplash is a userspace graphical boot splash scr=
een for mainly embedded Linux devices supporting a 16bpp or 32bpp framebuff=
er. It has few dependencies (just libc), supports basic images and text and=
 handles rotation. Its visual look is configurable by basic source changes.=
 Also included is a 'client' command utility for sending information to psp=
lash such as boot progress information.", 'UPDATE', '0.0+svnr424', 'git://g=
it.yoctoproject.org/psplash;protocol=3Dgit', 'Scott Garman <scott.a.garman@=
intel.com>']
['initramfs-boot', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r2', ' ', '=
None', 'None', 'A live image init script', 'MATCH', 'N/A', 'file://init-boo=
t.sh', 'Saul Wold <sgw@linux.intel.com>']
['initramfs-live-boot', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r10', =
' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  virtual/kernel', 'None', 'None', 'A live image init script', 'MATCH',=
 'N/A', 'file://init-live.sh', 'Saul Wold <sgw@linux.intel.com>']
['udev-extraconf', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r6', ' ', '=
None', 'None', 'Extra machine specific configuration files for udev, specif=
ically blacklist information.', 'MATCH', 'N/A', 'file://automount.rules', '=
Radu Moisan <radu.moisan@intel.com>']
['udev', '164', '182', 'GPLv2.0+ & LGPLv2.1+', 'base', 'http://www.kernel.o=
rg/pub/linux/utils/kernel/hotplug/udev/udev.html', 'r17', 'pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  acl glib-2.0 libusb usbutils pciutils gperf-native libxslt-native=
 update-rc.d-native', 'None', 'None', 'udev is a daemon which dynamically c=
reates and removes device nodes from /dev/, handles hotplug events and load=
s drivers at boot time.', 'UPDATE', 'N/A', 'http://kernel.org/pub/linux/uti=
ls/kernel/hotplug/udev-164.tar.gz', 'Radu Moisan <radu.moisan@intel.com>']
['readline', '6.2', '6.2', 'GPLv3+', 'libs', 'unknown', 'r3', 'autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   nc=
urses', 'None', 'None', 'The GNU Readline library provides a set of functio=
ns for use by applications that allow users to edit command lines as they a=
re typed in. Both Emacs and vi editing modes are available. The Readline li=
brary includes  additional functions to maintain a list of previously-enter=
ed command lines, to recall and perhaps reedit those   lines, and perform c=
sh-like history expansion on previous commands.', 'MATCH', '6.2', 'ftp://ft=
p.gnu.org/gnu/readline/readline-6.2.tar.gz', 'Saul Wold <sgw@linux.intel.co=
m>']
['readline-native', '6.2', '6.2', 'GPLv3+', 'libs', 'unknown', 'r3', 'autoc=
onf-native automake-native libtool-native gnu-config-native  ncurses-native=
', 'None', 'None', 'The GNU Readline library provides a set of functions fo=
r use by applications that allow users to edit command lines as they are ty=
ped in. Both Emacs and vi editing modes are available. The Readline library=
 includes  additional functions to maintain a list of previously-entered co=
mmand lines, to recall and perhaps reedit those   lines, and perform csh-li=
ke history expansion on previous commands.', 'MATCH', 'N/A', 'ftp://ftp.gnu=
=2Eorg/gnu/readline/readline-6.2.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['nativesdk-readline', '6.2', '6.2', 'GPLv3+', 'libs', 'unknown', 'r3', 'au=
toconf-native automake-native libtool-native gnu-config-native virtual/i586=
-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-linux-compilerli=
bs virtual/nativesdk-libc nativesdk-ncurses', 'None', 'None', 'The GNU Read=
line library provides a set of functions for use by applications that allow=
 users to edit command lines as they are typed in. Both Emacs and vi editin=
g modes are available. The Readline library includes  additional functions =
to maintain a list of previously-entered command lines, to recall and perha=
ps reedit those   lines, and perform csh-like history expansion on previous=
 commands.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/readline/readline-6.2.t=
ar.gz', 'None']
['util-linux', '2.21.2', '2.22', 'GPLv2+ & LGPLv2.1+ & BSD', 'base', 'unkno=
wn', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib n=
curses', 'None', 'None', 'Util-linux includes a suite of basic system admin=
istration utilities commonly found on most Linux systems.  Some of the more=
 important utilities include disk partitioning, kernel message management, =
filesystem creation, and system login.', 'UPDATE', 'N/A', 'http://kernel.or=
g/pub/linux/utils/util-linux/v2.21/util-linux-2.21.2.tar.bz2', 'Saul Wold <=
sgw@linux.intel.com>']
['util-linux-native', '2.21.2', '2.22', 'GPLv2+ & LGPLv2.1+ & BSD', 'base',=
 'unknown', 'r1', 'pkgconfig-native autoconf-native automake-native libtool=
-native gnu-config-native gettext-minimal-native  zlib-native ncurses-nativ=
e lzo-native', 'None', 'None', 'Util-linux includes a suite of basic system=
 administration utilities commonly found on most Linux systems.  Some of th=
e more important utilities include disk partitioning, kernel message manage=
ment, filesystem creation, and system login.', 'UPDATE', 'N/A', 'http://ker=
nel.org/pub/linux/utils/util-linux/v2.21/util-linux-2.21.2.tar.bz2', 'Saul =
Wold <sgw@linux.intel.com>']
['glib-2.0', '2.32.4', '2.32.4', 'LGPLv2+ & BSD & PD', 'libs', 'unknown', '=
r5', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0-nat=
ive zip virtual/libiconv libffi python-argparse-native zlib gtk-doc-stub-na=
tive', 'http://bugzilla.gnome.org', '1', 'GLib is a general-purpose utility=
 library, which provides many useful data types, macros, type conversions, =
string utilities, file utilities, a main loop abstraction, and so on.', 'MA=
TCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/glib/2.32/glib-2.32.4.=
tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>']
['adt-installer', '0.1.8+svnr596', 'N/A', 'MIT', 'base', 'unknown', 'r11', =
' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  ', 'None', 'None', 'Meta package for creating sdk installer tarball',=
 'ErrSvnAccess:opkg.googlecode.com/svn', '1.1', 'svn://opkg.googlecode.com/=
svn;module=3Dtrunk;protocol=3Dhttp', 'Jessica Zhang <jessica.zhang@intel.co=
m>']
['initscripts', '1.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r136', ' ', =
'None', 'None', 'Initscripts provide the basic system startup initializatio=
n scripts for the system.  These scripts include actions such as filesystem=
 mounting, fsck, RTC manipulation and other actions routinely performed at =
system startup.  In addition, the scripts are also used during system shutd=
own to reverse the actions performed at startup.', 'MATCH', '1.0', 'file://=
functions', 'Saul Wold <sgw@linux.intel.com>']
['glib-2.0-native', '2.32.4', '2.32.4', 'LGPLv2+ & BSD & PD', 'libs', 'unkn=
own', 'r5', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e gnu-config-native gettext-minimal-native  pkgconfig-native gettext-native=
 libffi-native python-argparse-native gtk-doc-stub-native', 'http://bugzill=
a.gnome.org', '1', 'GLib is a general-purpose utility library, which provid=
es many useful data types, macros, type conversions, string utilities, file=
 utilities, a main loop abstraction, and so on.', 'MATCH', 'N/A', 'http://f=
tp.gnome.org/pub/GNOME/sources/glib/2.32/glib-2.32.4.tar.xz', 'Cristian Ior=
ga <cristian.iorga@intel.com>']
['nativesdk-glib-2.0', '2.32.4', '2.32.4', 'LGPLv2+ & BSD & PD', 'libs', 'u=
nknown', 'r5', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive gnu-config-native virtual/nativesdk-gettext gettext-native virtual/i58=
6-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-linux-compilerl=
ibs virtual/nativesdk-libc nativesdk-libtool nativesdk-libffi python-argpar=
se-native nativesdk-zlib glib-2.0-native gtk-doc-stub-native', 'http://bugz=
illa.gnome.org', '1', 'GLib is a general-purpose utility library, which pro=
vides many useful data types, macros, type conversions, string utilities, f=
ile utilities, a main loop abstraction, and so on.', 'MATCH', 'N/A', 'http:=
//ftp.gnome.org/pub/GNOME/sources/glib/2.32/glib-2.32.4.tar.xz', 'None']
['dropbear', '2012.55', '2012.55', 'MIT', 'console/network', 'http://matt.u=
cc.asn.au/dropbear/dropbear.html', 'r0.1', 'autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  zlib  update-rc.d-nati=
ve', 'None', 'None', 'Dropbear is a lightweight SSH and SCP implementation'=
, 'MATCH', 'N/A', 'http://matt.ucc.asn.au/dropbear/releases/dropbear-2012.5=
5.tar.gz', 'Radu Moisan <radu.moisan@intel.com>']
['sysfsutils', '2.1.0', 'N/A', 'GPLv2 & LGPLv2.1', 'base', 'http://linux-di=
ag.sourceforge.net/Sysfsutils.html', 'r4', 'autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', "To=
ols for working with the sysfs virtual filesystem.  The tool 'systool' can =
query devices by bus, class and topology.", 'ErrParseDir:/linux-diag/:-:sys=
fsutils-2.1.0.tar.gz:downloads.sourceforge.net/linux-diag/sysfsutils-2.1.0.=
tar.gz', '2.1.0', 'http://downloads.sourceforge.net/linux-diag/sysfsutils-2=
=2E1.0.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['zlib', '1.2.7', '121', 'Zlib', 'libs', 'http://zlib.net/', 'r0', ' virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ',=
 'None', 'None', 'Zlib is a general-purpose, patent-free, lossless data com=
pression library which is used by many different programs.', 'UPDATE', '1.2=
=2E7', 'http://www.zlib.net/zlib-1.2.7.tar.bz2', 'Radu Moisan <radu.moisan@=
intel.com>']
['zlib-native', '1.2.7', '121', 'Zlib', 'libs', 'http://zlib.net/', 'r0', '=
 ', 'None', 'None', 'Zlib is a general-purpose, patent-free, lossless data =
compression library which is used by many different programs.', 'UPDATE', '=
N/A', 'http://www.zlib.net/zlib-1.2.7.tar.bz2', 'Radu Moisan <radu.moisan@i=
ntel.com>']
['nativesdk-zlib', '1.2.7', '121', 'Zlib', 'libs', 'http://zlib.net/', 'r0'=
, 'virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-l=
inux-compilerlibs virtual/nativesdk-libc', 'None', 'None', 'Zlib is a gener=
al-purpose, patent-free, lossless data compression library which is used by=
 many different programs.', 'UPDATE', 'N/A', 'http://www.zlib.net/zlib-1.2.=
7.tar.bz2', 'None']
['ldconfig-native', '2.12.1', 'INVALID', 'GPLv2+', 'base', 'unknown', 'r2',=
 ' ', 'None', 'None', 'A standalone native ldconfig build', 'MATCH', 'N/A',=
 'file://ldconfig-native-2.12.1.tar.bz2', 'None']
['eglibc-initial', '2.16', 'N/A', 'GPLv2 & LGPLv2.1', 'libs', 'http://www.e=
glibc.org/home', 'r8+svnr20393', 'autoconf-native automake-native libtool-n=
ative gnu-config-native  linux-libc-headers virtual/i586-poky-linux-gcc-ini=
tial', 'None', 'None', "Embedded GLIBC (EGLIBC) is a variant of the GNU C L=
ibrary (GLIBC) that is designed to work well on embedded systems. EGLIBC st=
rives to be source and binary compatible with GLIBC. EGLIBC's goals include=
 reduced footprint, configurable components, better support for cross-compi=
lation and cross-testing.", 'ErrSvnAccess:www.eglibc.org/svn/branches/', 'N=
/A', 'svn://www.eglibc.org/svn/branches/;module=3Deglibc-2_16;protocol=3Dht=
tp', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['nativesdk-eglibc-initial', '2.16', 'N/A', 'GPLv2 & LGPLv2.1', 'libs', 'ht=
tp://www.eglibc.org/home', 'r8+svnr20393', 'autoconf-native automake-native=
 libtool-native gnu-config-native nativesdk-linux-libc-headers virtual/i586=
-pokysdk-linux-gcc-initial-crosssdk', 'None', 'None', "Embedded GLIBC (EGLI=
BC) is a variant of the GNU C Library (GLIBC) that is designed to work well=
 on embedded systems. EGLIBC strives to be source and binary compatible wit=
h GLIBC. EGLIBC's goals include reduced footprint, configurable components,=
 better support for cross-compilation and cross-testing.", 'ErrSvnAccess:ww=
w.eglibc.org/svn/branches/', 'N/A', 'svn://www.eglibc.org/svn/branches/;mod=
ule=3Deglibc-2_16;protocol=3Dhttp', 'None']
['cross-localedef-native', '2.16', 'N/A', 'LGPL-2.1', 'libs', 'http://www.e=
glibc.org/home', 'r1', 'autoconf-native automake-native libtool-native gnu-=
config-native  ', 'None', 'None', 'Cross locale generation tool for eglibc'=
, 'ErrSvnAccess:www.eglibc.org/svn/branches/', 'N/A', 'svn://www.eglibc.org=
/svn/branches/;module=3Deglibc-2_16;protocol=3Dhttp', 'None']
['coreutils', '8.14', '8.14', 'GPLv3+', 'base', 'http://www.gnu.org/softwar=
e/coreutils/', 'r5', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gmp libcap', =
'http://debbugs.gnu.org/coreutils', 'None', 'The GNU Core Utilities provide=
 the basic file, shell and text manipulation utilities. These are the core =
utilities which are expected to exist on every system.', 'MATCH', '8.17', '=
ftp://ftp.gnu.org/gnu/coreutils/coreutils-8.14.tar.xz', 'Radu Moisan <radu.=
moisan@intel.com>']
['libxml2', '2.8.0', '2.9.0', 'MIT', 'libs', 'http://www.xmlsoft.org/', 'r2=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  zlib   python-native ', 'http://bugzilla.gnom=
e.org/buglist.cgi?product=3Dlibxml2', 'None', 'The XML Parser Library allow=
s for manipulation of XML files.  Libxml2 exports Push and Pull type parser=
 interfaces for both XML and HTML.  It can do DTD validation at parse time,=
 on a parsed document instance or with an arbitrary DTD.  Libxml2 includes =
complete XPath, XPointer and Xinclude implementations.  It also has a SAX l=
ike interface, which is designed to be compatible with Expat.', 'UPDATE', '=
N/A', 'ftp://xmlsoft.org/libxml2/libxml2-2.8.0.tar.gz', 'Saul Wold <sgw@lin=
ux.intel.com>']
['coreutils-native', '8.14', '8.14', 'GPLv3+', 'base', 'http://www.gnu.org/=
software/coreutils/', 'r5', 'autoconf-native automake-native libtool-native=
 gnu-config-native gettext-minimal-native  ', 'http://debbugs.gnu.org/coreu=
tils', 'None', 'The GNU Core Utilities provide the basic file, shell and te=
xt manipulation utilities. These are the core utilities which are expected =
to exist on every system.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/coreutil=
s/coreutils-8.14.tar.xz', 'Radu Moisan <radu.moisan@intel.com>']
['libxml2-native', '2.8.0', '2.9.0', 'MIT', 'libs', 'http://www.xmlsoft.org=
/', 'r2', 'pkgconfig-native autoconf-native automake-native libtool-native =
gnu-config-native  python-native', 'http://bugzilla.gnome.org/buglist.cgi?p=
roduct=3Dlibxml2', 'None', 'The XML Parser Library allows for manipulation =
of XML files.  Libxml2 exports Push and Pull type parser interfaces for bot=
h XML and HTML.  It can do DTD validation at parse time, on a parsed docume=
nt instance or with an arbitrary DTD.  Libxml2 includes complete XPath, XPo=
inter and Xinclude implementations.  It also has a SAX like interface, whic=
h is designed to be compatible with Expat.', 'UPDATE', 'N/A', 'ftp://xmlsof=
t.org/libxml2/libxml2-2.8.0.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['eglibc', '2.16', 'N/A', 'GPLv2 & LGPLv2.1', 'libs', 'http://www.eglibc.or=
g/home', 'r8+svnr20393', 'autoconf-native automake-native libtool-native gn=
u-config-native  virtual/i586-poky-linux-gcc-initial linux-libc-headers vir=
tual/i586-poky-linux-libc-initial gperf-native kconfig-frontends-native', '=
None', 'None', "Embedded GLIBC (EGLIBC) is a variant of the GNU C Library (=
GLIBC) that is designed to work well on embedded systems. EGLIBC strives to=
 be source and binary compatible with GLIBC. EGLIBC's goals include reduced=
 footprint, configurable components, better support for cross-compilation a=
nd cross-testing.", 'ErrSvnAccess:www.eglibc.org/svn/branches/', 'git:16540=
', 'svn://www.eglibc.org/svn/branches/;module=3Deglibc-2_16;protocol=3Dhttp=
', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>']
['kbd', '1.15.2', '1.15.2', 'GPLv2+', 'base', 'unknown', 'r4', 'autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native virtual=
/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ', 'None', 'None', 'This package contains keyt=
able files and keyboard utilities', 'MATCH', 'N/A', 'http://kernel.org/pub/=
linux/utils/kbd/kbd-1.15.2.tar.bz2', 'None']
['nativesdk-libxml2', '2.8.0', '2.9.0', 'MIT', 'libs', 'http://www.xmlsoft.=
org/', 'r2', 'pkgconfig-native autoconf-native automake-native libtool-nati=
ve gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/native=
sdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc nativesdk-zlib p=
ython-native', 'http://bugzilla.gnome.org/buglist.cgi?product=3Dlibxml2', '=
None', 'The XML Parser Library allows for manipulation of XML files.  Libxm=
l2 exports Push and Pull type parser interfaces for both XML and HTML.  It =
can do DTD validation at parse time, on a parsed document instance or with =
an arbitrary DTD.  Libxml2 includes complete XPath, XPointer and Xinclude i=
mplementations.  It also has a SAX like interface, which is designed to be =
compatible with Expat.', 'UPDATE', 'N/A', 'ftp://xmlsoft.org/libxml2/libxml=
2-2.8.0.tar.gz', 'None']
['kbd-native', '1.15.2', '1.15.2', 'GPLv2+', 'base', 'unknown', 'r4', 'auto=
conf-native automake-native libtool-native gnu-config-native gettext-minima=
l-native  ', 'None', 'None', 'This package contains keytable files and keyb=
oard utilities', 'MATCH', 'N/A', 'http://kernel.org/pub/linux/utils/kbd/kbd=
-1.15.2.tar.bz2', 'None']
['nativesdk-eglibc', '2.16', 'N/A', 'GPLv2 & LGPLv2.1', 'libs', 'http://www=
=2Eeglibc.org/home', 'r8+svnr20393', 'autoconf-native automake-native libto=
ol-native gnu-config-native virtual/i586-pokysdk-linux-gcc-initial-crosssdk=
 nativesdk-linux-libc-headers virtual/nativesdk-i586-pokysdk-linux-libc-ini=
tial gperf-native kconfig-frontends-native', 'None', 'None', "Embedded GLIB=
C (EGLIBC) is a variant of the GNU C Library (GLIBC) that is designed to wo=
rk well on embedded systems. EGLIBC strives to be source and binary compati=
ble with GLIBC. EGLIBC's goals include reduced footprint, configurable comp=
onents, better support for cross-compilation and cross-testing.", 'ErrSvnAc=
cess:www.eglibc.org/svn/branches/', 'N/A', 'svn://www.eglibc.org/svn/branch=
es/;module=3Deglibc-2_16;protocol=3Dhttp', 'None']
['dbus', '1.6.4', '1.6.4', 'AFL-2 | GPLv2+', 'base', 'http://dbus.freedeskt=
op.org', 'r3.0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native virtual/gettext gettext-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
expat virtual/libintl virtual/libx11 libsm base-passwd shadow-native shadow=
-sysroot shadow update-rc.d-native', 'None', 'None', 'D-Bus is a message bu=
s system, a simple way for applications to talk to one another. In addition=
 to interprocess communication, D-Bus helps coordinate process lifecycle; i=
t makes it simple and reliable to code a \\"single instance\\" application =
or daemon, and to launch applications and daemons on demand when their serv=
ices are needed.', 'MATCH', '1.4.16', 'http://dbus.freedesktop.org/releases=
/dbus/dbus-1.6.4.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>']
['dbus-glib', '0.100', '0.100', 'AFL-2 | GPLv2+', 'base', 'http://www.freed=
esktop.org/Software/dbus', 'r0', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native virtual/gettext gett=
ext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  expat glib-2.0 virtual/libintl dbus-glib-native dbus', 'Non=
e', 'None', 'GLib bindings for the D-Bus message bus that integrate the D-B=
us library with the GLib thread abstraction and main loop.', 'MATCH', 'N/A'=
, 'http://dbus.freedesktop.org/releases/dbus-glib/dbus-glib-0.100.tar.gz', =
'Scott Garman <scott.a.garman@intel.com>']
['dbus-glib-native', '0.100', '0.100', 'AFL-2 | GPLv2+', 'base', 'http://ww=
w.freedesktop.org/Software/dbus', 'r0', 'pkgconfig-native autoconf-native a=
utomake-native libtool-native gnu-config-native gettext-minimal-native  gli=
b-2.0-native dbus-native', 'None', 'None', 'GLib bindings for the D-Bus mes=
sage bus that integrate the D-Bus library with the GLib thread abstraction =
and main loop.', 'MATCH', 'N/A', 'http://dbus.freedesktop.org/releases/dbus=
-glib/dbus-glib-0.100.tar.gz', 'Scott Garman <scott.a.garman@intel.com>']
['base-files', '3.0.14', 'INVALID', 'GPLv2', 'base', 'unknown', 'r71', ' ',=
 'None', 'None', 'The base-files package creates the basic system directory=
 structure and provides a small set of key configuration files for the syst=
em.', 'MATCH', 'N/A', 'file://rotation', 'Saul Wold <sgw@linux.intel.com>']
['glib-networking', '2.28.7', '2.28.7', 'LGPLv2', 'libs', 'http://git.gnome=
=2Eorg/browse/glib-networking/', 'r2', 'pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 =
gnutls intltool-native', 'http://bugzilla.gnome.org', 'None', 'glib-network=
ing contains the implementations of certain GLib networking features that c=
annot be implemented directly in GLib itself because of their dependencies.=
', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/glib-networking/=
2.28/glib-networking-2.28.7.tar.bz2', 'None']
['dbus-native', '1.6.4', '1.6.4', 'AFL-2 | GPLv2+', 'base', 'http://dbus.fr=
eedesktop.org', 'r3.0', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native gnu-config-native gettext-minimal-native  expat-native virtua=
l/libintl-native update-rc.d-native', 'None', 'None', 'D-Bus is a message b=
us system, a simple way for applications to talk to one another. In additio=
n to interprocess communication, D-Bus helps coordinate process lifecycle; =
it makes it simple and reliable to code a \\"single instance\\" application=
 or daemon, and to launch applications and daemons on demand when their ser=
vices are needed.', 'MATCH', 'N/A', 'http://dbus.freedesktop.org/releases/d=
bus/dbus-1.6.4.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>']
['nativesdk-dbus', '1.6.4', '1.6.4', 'AFL-2 | GPLv2+', 'base', 'http://dbus=
=2Efreedesktop.org', 'r3.0', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native gnu-config-native virtual/nativesdk-gettext gettext-nati=
ve virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-l=
inux-compilerlibs virtual/nativesdk-libc nativesdk-expat virtual/nativesdk-=
libintl virtual/nativesdk-libx11 update-rc.d-native', 'None', 'None', 'D-Bu=
s is a message bus system, a simple way for applications to talk to one ano=
ther. In addition to interprocess communication, D-Bus helps coordinate pro=
cess lifecycle; it makes it simple and reliable to code a \\"single instanc=
e\\" application or daemon, and to launch applications and daemons on deman=
d when their services are needed.', 'MATCH', 'N/A', 'http://dbus.freedeskto=
p.org/releases/dbus/dbus-1.6.4.tar.gz', 'None']
['sysvinit-inittab', '2.88dsf', 'INVALID', 'GPLv2', 'base', 'unknown', 'r7'=
, ' ', 'None', 'None', 'Inittab for sysvinit', 'MATCH', 'N/A', 'file://init=
tab', 'None']
['busybox', '1.20.2', '1.20.2', 'GPLv2 & BSD-4-Clause', 'base', 'http://www=
=2Ebusybox.net', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc   update-rc.d-native', 'https://bugs.busybox.ne=
t/', 'None', 'BusyBox combines tiny versions of many common UNIX utilities =
into a single small executable. It provides minimalist replacements for mos=
t of the utilities you usually find in GNU fileutils, shellutils, etc. The =
utilities in BusyBox generally have fewer options than their full-featured =
GNU cousins; however, the options that are included provide the expected fu=
nctionality and behave very much like their GNU counterparts. BusyBox provi=
des a fairly complete POSIX environment for any small or embedded system.',=
 'MATCH', 'N/A', 'http://www.busybox.net/downloads/busybox-1.20.2.tar.bz2;n=
ame=3Dtarball', 'Radu Moisan <radu.moisan@intel.com>']
['gettext-minimal-native', '0.18.1.1', 'INVALID', 'FSF-Unlimited', 'base', =
'unknown', 'r3', ' ', 'None', 'None', 'gettext-minimal-native version 0.18.=
1.1-r3', 'MATCH', 'N/A', 'file://aclocal.tgz', 'None']
['sysvinit', '2.88dsf', '2.88dsf', 'GPLv2+', 'base', 'http://savannah.nongn=
u.org/projects/sysvinit/', 'r7', ' virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'This package is =
required to boot in most configurations.  It provides the /sbin/init progra=
m.  This is the first process started on boot, and the last process termina=
ted before the system halts.', 'MATCH', '2.88dsf', 'http://download.savanna=
h.gnu.org/releases-noredirect/sysvinit/sysvinit-2.88dsf.tar.bz2', 'Saul Wol=
d <sgw@linux.intel.com>']
['update-rc.d', '0.7', '0.7', 'GPLv2+', 'base', 'unknown', 'r4', ' ', 'None=
', 'None', 'update-rc.d is a utilities that allows the management of symlin=
ks to the initscripts in the /etc/rcN.d directory structure.', 'MATCH', 'N/=
A', 'git://github.com/philb/update-rc.d.git;protocol=3Dgit', 'Radu Moisan <=
radu.moisan@intel.com>']
['update-rc.d-native', '0.7', '0.7', 'GPLv2+', 'base', 'unknown', 'r4', ' '=
, 'None', 'None', 'update-rc.d is a utilities that allows the management of=
 symlinks to the initscripts in the /etc/rcN.d directory structure.', 'MATC=
H', 'N/A', 'git://github.com/philb/update-rc.d.git;protocol=3Dgit', 'Radu M=
oisan <radu.moisan@intel.com>']
['base-passwd', '3.5.26', '3.5.26', 'GPLv2+', 'base', 'unknown', 'r0', 'aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  ', 'None', 'None', 'The master copies of the user database files (/et=
c/passwd and /etc/group).  The update-passwd tool is also provided to keep =
the system databases synchronized with these master files.', 'MATCH', 'N/A'=
, 'ftp://ftp.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.26.t=
ar.gz', 'None']
['libcgroup', '0.37.1', 'N/A', 'LGPLv2.1', 'libs', 'unknown', 'r1', 'pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ', 'None', 'None', 'Libcgroup', 'ErrParseInterDir:/proj=
ect/libcg/libcgroup/v0.37.1/libcgroup-0.37.1.tar.bz2:v0.37.1:-:downloads.so=
urceforge.net/project/libcg/libcgroup/v0.37.1/libcgroup-0.37.1.tar.bz2', 'N=
/A', 'http://downloads.sourceforge.net/project/libcg/libcgroup/v0.37.1/libc=
group-0.37.1.tar.bz2', 'None']
['gettext', '0.18.1.1', '0.18.1.1', 'GPLv3+ & LGPL-2.1+', 'libs', 'http://w=
ww.gnu.org/software/gettext/gettext.html', 'r17', 'autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxml2-native =
gettext-native virtual/libiconv ncurses expat', 'None', 'None', "Gettext of=
fers to programmers, translators, and even users, a well integrated set of =
tools and documentation. Specifically, the GNU `gettext' utilities are a se=
t of tools that provides a framework to help other GNU packages produce mul=
ti-lingual messages. These tools include a set of conventions about how pro=
grams should be written to support message catalogs, a directory and file n=
aming organization for the message catalogs themselves, a runtime library s=
upporting the retrieval of translated messages, and a few stand-alone progr=
ams to massage in various ways the sets of translatable strings, or already=
 translated strings.", 'MATCH', '0.18.1.1', 'ftp://ftp.gnu.org/gnu/gettext/=
gettext-0.18.1.1.tar.gz', 'Wenzong Fan <wenzong.fan@windriver.com>']
['gettext-native', '0.18.1.1', '0.18.1.1', 'GPLv3+ & LGPL-2.1+', 'libs', 'h=
ttp://www.gnu.org/software/gettext/gettext.html', 'r17', 'autoconf-native a=
utomake-native libtool-native gnu-config-native  libxml2-native gettext-min=
imal-native', 'None', 'None', "Gettext offers to programmers, translators, =
and even users, a well integrated set of tools and documentation. Specifica=
lly, the GNU `gettext' utilities are a set of tools that provides a framewo=
rk to help other GNU packages produce multi-lingual messages. These tools i=
nclude a set of conventions about how programs should be written to support=
 message catalogs, a directory and file naming organization for the message=
 catalogs themselves, a runtime library supporting the retrieval of transla=
ted messages, and a few stand-alone programs to massage in various ways the=
 sets of translatable strings, or already translated strings.", 'MATCH', 'N=
/A', 'ftp://ftp.gnu.org/gnu/gettext/gettext-0.18.1.1.tar.gz', 'Wenzong Fan =
<wenzong.fan@windriver.com>']
['nativesdk-gettext', '0.18.1.1', '0.18.1.1', 'GPLv3+ & LGPL-2.1+', 'libs',=
 'http://www.gnu.org/software/gettext/gettext.html', 'r17', 'autoconf-nativ=
e automake-native libtool-native gnu-config-native virtual/i586-pokysdk-lin=
ux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-linux-compilerlibs virtual/n=
ativesdk-libc libxml2-native gettext-native virtual/nativesdk-libiconv nati=
vesdk-ncurses nativesdk-expat', 'None', 'None', "Gettext offers to programm=
ers, translators, and even users, a well integrated set of tools and docume=
ntation. Specifically, the GNU `gettext' utilities are a set of tools that =
provides a framework to help other GNU packages produce multi-lingual messa=
ges. These tools include a set of conventions about how programs should be =
written to support message catalogs, a directory and file naming organizati=
on for the message catalogs themselves, a runtime library supporting the re=
trieval of translated messages, and a few stand-alone programs to massage i=
n various ways the sets of translatable strings, or already translated stri=
ngs.", 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gettext/gettext-0.18.1.1.tar.=
gz', 'None']
['console-tools', '0.3.2', 'N/A', 'GPLv2', 'base', 'unknown', 'r6', 'autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native vi=
rtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  ', 'None', 'None', 'Provides tools that e=
nable the set-up and manipulation of the linux console and console-font fil=
es.', 'ErrParseDir:/lct/:-:console-tools-0.3.2.tar.gz:downloads.sourceforge=
=2Enet/lct/console-tools-0.3.2.tar.gz', '0.3.2', 'http://downloads.sourcefo=
rge.net/lct/console-tools-0.3.2.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['tinylogin', '1.4', 'N/A', 'GPLv2', 'base', 'http://tinylogin.busybox.net/=
', 'r9', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  ', 'None', 'None', 'TinyLogin is a suite of tiny UNIX utilit=
ies for handling logins, user authentication, changing passwords, and other=
wise maintaining users and groups on an embedded system.', 'ErrParseDir:/un=
stable/sources/:-:tinylogin-1.4.tar.bz2:www.angstrom-distribution.org/unsta=
ble/sources/tinylogin-1.4.tar.bz2', '1.4', 'http://www.angstrom-distributio=
n.org/unstable/sources/tinylogin-1.4.tar.bz2', 'Radu Moisan <radu.moisan@in=
tel.com>']
['expat', '2.1.0', 'N/A', 'MIT', 'libs', 'http://expat.sourceforge.net/', '=
r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc   gzip-native', 'None', 'None', 'Expat is an XML parser libra=
ry written in C. It is a stream-oriented parser in which an application reg=
isters handlers for things the parser might find in the XML document (like =
start tags)', 'ErrParseDir:/expat/:-:expat-2.1.0.tar.gz:downloads.sourcefor=
ge.net/expat/expat-2.1.0.tar.gz', '2.0.1', 'http://downloads.sourceforge.ne=
t/expat/expat-2.1.0.tar.gz', 'Scott Garman <scott.a.garman@intel.com>']
['expat-native', '2.1.0', 'N/A', 'MIT', 'libs', 'http://expat.sourceforge.n=
et/', 'r0', 'autoconf-native automake-native libtool-native gnu-config-nati=
ve  gzip-native', 'None', 'None', 'Expat is an XML parser library written i=
n C. It is a stream-oriented parser in which an application registers handl=
ers for things the parser might find in the XML document (like start tags)'=
, 'ErrParseDir:/expat/:-:expat-2.1.0.tar.gz:downloads.sourceforge.net/expat=
/expat-2.1.0.tar.gz', 'N/A', 'http://downloads.sourceforge.net/expat/expat-=
2.1.0.tar.gz', 'Scott Garman <scott.a.garman@intel.com>']
['netbase', '5.0', '5.0', 'GPLv2', 'base', 'http://packages.debian.org/netb=
ase', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc   update-rc.d-native', 'None', 'None', 'This package provi=
des the necessary infrastructure for basic TCP/IP based networking', 'MATCH=
', '4.46', 'ftp://ftp.debian.org/debian/pool/main/n/netbase/netbase_5.0.tar=
=2Egz', 'Cristian Iorga <cristian.iorga@intel.com>']
['nativesdk-expat', '2.1.0', 'N/A', 'MIT', 'libs', 'http://expat.sourceforg=
e.net/', 'r0', 'autoconf-native automake-native libtool-native gnu-config-n=
ative virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysd=
k-linux-compilerlibs virtual/nativesdk-libc gzip-native', 'None', 'None', '=
Expat is an XML parser library written in C. It is a stream-oriented parser=
 in which an application registers handlers for things the parser might fin=
d in the XML document (like start tags)', 'ErrParseDir:/expat/:-:expat-2.1.=
0.tar.gz:downloads.sourceforge.net/expat/expat-2.1.0.tar.gz', 'N/A', 'http:=
//downloads.sourceforge.net/expat/expat-2.1.0.tar.gz', 'None']
['ncurses', '5.9', '5.9', 'MIT', 'libs', 'http://www.gnu.org/software/ncurs=
es/ncurses.html', 'r10.1', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  ncurses-native', 'None', 'None', 'SVr4=
 and XSI-Curses compatible curses library and terminfo tools including tic,=
 infocmp, captoinfo. Supports color, multiple highlights, forms-drawing cha=
racters, and automatic recognition of keypad and function-key sequences. Ex=
tensions include resizable windows and mouse support on both xterm and Linu=
x console using the gpm library.', 'MATCH', '5.9', 'ftp://ftp.gnu.org/gnu/n=
curses/ncurses-5.9.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['ncurses-native', '5.9', '5.9', 'MIT', 'libs', 'http://www.gnu.org/softwar=
e/ncurses/ncurses.html', 'r10.1', 'autoconf-native automake-native libtool-=
native gnu-config-native  ', 'None', 'None', 'SVr4 and XSI-Curses compatibl=
e curses library and terminfo tools including tic, infocmp, captoinfo. Supp=
orts color, multiple highlights, forms-drawing characters, and automatic re=
cognition of keypad and function-key sequences. Extensions include resizabl=
e windows and mouse support on both xterm and Linux console using the gpm l=
ibrary.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/ncurses/ncurses-5.9.tar.gz=
', 'Saul Wold <sgw@linux.intel.com>']
['nativesdk-ncurses', '5.9', '5.9', 'MIT', 'libs', 'http://www.gnu.org/soft=
ware/ncurses/ncurses.html', 'r10.1', 'autoconf-native automake-native libto=
ol-native gnu-config-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual=
/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativesdk-libc ncurses-n=
ative', 'None', 'None', 'SVr4 and XSI-Curses compatible curses library and =
terminfo tools including tic, infocmp, captoinfo. Supports color, multiple =
highlights, forms-drawing characters, and automatic recognition of keypad a=
nd function-key sequences. Extensions include resizable windows and mouse s=
upport on both xterm and Linux console using the gpm library.', 'MATCH', 'N=
/A', 'ftp://ftp.gnu.org/gnu/ncurses/ncurses-5.9.tar.gz', 'None']
['gthumb', '2.12.4', '2.12.4', 'GPLv2', 'x11/gnome', 'unknown', 'r4', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  glib-2.0 gtk+ libxml2 gnome-doc-utils libunique gconf=
 libpng gstreamer jpeg tiff gst-plugins-base gnome-common hicolor-icon-them=
e gconf gconf-native shared-mime-info-native shared-mime-info', 'None', 'No=
ne', 'gThumb is an image viewer and browser for the GNOME Desktop', 'MATCH'=
, '2.12.4', 'http://ftp.gnome.org/pub/GNOME/sources/gthumb/2.12/gthumb-2.12=
=2E4.tar.bz2;name=3Darchive', 'Valentin Popa <valentin.popa@intel.com>']
['gtk-doc-stub', '0.0+git1+3dfd0a09de696ec8c544762747f8a0f77153622e', '3dfd=
0a09de696ec8c544762747f8a0f77153622e', 'GPLv2', 'x11/base', 'unknown', 'r0'=
, 'autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  ', 'None', 'None', "Stub implementation of gtk-doc, as we don't=
 want to build the API documentation", 'MATCH', 'N/A', 'git://git.gnome.org=
/gtk-doc-stub;protocol=3Dgit', 'None']
['hicolor-icon-theme', '0.12', '0.12', 'GPLv2', 'unknown', 'http://icon-the=
me.freedesktop.org/wiki/HicolorTheme', 'r0', 'pkgconfig-native autoconf-nat=
ive automake-native libtool-native gnu-config-native  ', 'https://bugs.free=
desktop.org/', 'None', 'default icon theme that all icon themes automatical=
ly inherit from.', 'MATCH', 'N/A', 'http://icon-theme.freedesktop.org/relea=
ses/hicolor-icon-theme-0.12.tar.gz', 'Valentin Popa <valentin.popa@intel.co=
m>']
['gtk-doc-stub-native', '0.0+git1+3dfd0a09de696ec8c544762747f8a0f77153622e'=
, '3dfd0a09de696ec8c544762747f8a0f77153622e', 'GPLv2', 'x11/base', 'unknown=
', 'r0', 'autoconf-native automake-native libtool-native gnu-config-native =
 ', 'None', 'None', "Stub implementation of gtk-doc, as we don't want to bu=
ild the API documentation", 'MATCH', 'N/A', 'git://git.gnome.org/gtk-doc-st=
ub;protocol=3Dgit', 'None']
['librsvg-native', '2.32.1', '2.32.1', 'LGPLv2+', 'x11/utils', 'http://ftp.=
gnome.org/pub/GNOME/sources/librsvg/', 'r7', 'pkgconfig-native autoconf-nat=
ive automake-native libtool-native gnu-config-native  cairo-native pango-na=
tive gdk-pixbuf-native gtk-doc-stub-native', 'https://bugzilla.gnome.org/',=
 'None', 'Library for rendering SVG files', 'MATCH', 'N/A', 'http://ftp.gno=
me.org/pub/GNOME/sources/librsvg/2.32/librsvg-2.32.1.tar.bz2;name=3Darchive=
', 'Valentin Popa <valentin.popa@intel.com>']
['libunique', '1.1.6', '1.1.6', 'LGPLv2.1', 'base', 'http://live.gnome.org/=
LibUnique', 'r6', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  glib-2.0 gtk+ dbus', 'https://bugzilla.gnome.or=
g/enter_bug.cgi?product=3Dlibunique', 'None', 'Unique is a library for writ=
ing single instance application. If you launch a single instance applicatio=
n twice, the second instance will either just quit or will send a message t=
o the running instance.', 'MATCH', '2.91.4', 'http://ftp.gnome.org/pub/GNOM=
E/sources/libunique/1.1/libunique-1.1.6.tar.bz2', 'Radu Moisan <radu.moisan=
@intel.com>']
['librsvg', '2.32.1', '2.32.1', 'LGPLv2+', 'x11/utils', 'http://ftp.gnome.o=
rg/pub/GNOME/sources/librsvg/', 'r7', 'pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ libcr=
oco cairo libxml2 popt gnome-common hicolor-icon-theme gconf gconf-native s=
hared-mime-info-native shared-mime-info gtk-doc-stub-native', 'https://bugz=
illa.gnome.org/', 'None', 'Library for rendering SVG files', 'MATCH', '2.32=
=2E1', 'http://ftp.gnome.org/pub/GNOME/sources/librsvg/2.32/librsvg-2.32.1.=
tar.bz2;name=3Darchive', 'Valentin Popa <valentin.popa@intel.com>']
['libglade', '2.6.4', '2.6.4', 'LGPLv2 & LGPLv2+', 'libs', 'http://library.=
gnome.org/devel/libglade/', 'r4', 'pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib gdk-pixbu=
f gtk+ gnome-common hicolor-icon-theme gconf gconf-native shared-mime-info-=
native shared-mime-info gtk-doc-stub-native', 'https://bugzilla.gnome.org/'=
, 'None', 'Runtime support for GTK interface builder', 'MATCH', '2.6.4', 'h=
ttp://ftp.gnome.org/pub/GNOME/sources/libglade/2.6/libglade-2.6.4.tar.bz2;n=
ame=3Darchive', 'Valentin Popa <valentin.popa@intel.com>']
['gdk-pixbuf', '2.24.1', '2.24.1', 'LGPLv2', 'libs', 'http://www.gtk.org/',=
 'r6', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libpng gli=
b-2.0 jpeg', 'https://bugzilla.gnome.org/', 'None', 'Image loading library =
for GTK+', 'MATCH', 'N/A', 'http://ftp.acc.umu.se/pub/GNOME/sources/gdk-pix=
buf/2.24/gdk-pixbuf-2.24.1.tar.xz', 'Valentin Popa <valentin.popa@intel.com=
>']
['gdk-pixbuf-native', '2.24.1', '2.24.1', 'LGPLv2', 'libs', 'http://www.gtk=
=2Eorg/', 'r6', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative gnu-config-native gettext-minimal-native  libpng-native glib-2.0-nati=
ve jpeg-native', 'https://bugzilla.gnome.org/', 'None', 'Image loading libr=
ary for GTK+', 'MATCH', 'N/A', 'http://ftp.acc.umu.se/pub/GNOME/sources/gdk=
-pixbuf/2.24/gdk-pixbuf-2.24.1.tar.xz', 'Valentin Popa <valentin.popa@intel=
=2Ecom>']
['metacity', '2.30.3', '2.30.3', 'GPLv2+', 'x11/wm', 'unknown', 'r5', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  startup-notification gtk+ gconf gdk-pixbuf-native lib=
canberra gnome-doc-utils gnome-common hicolor-icon-theme gconf gconf-native=
 shared-mime-info-native shared-mime-info', 'None', 'None', 'Metacity is th=
e boring window manager for the adult in you.', 'MATCH', '2.30.3', 'http://=
ftp.gnome.org/pub/GNOME/sources/metacity/2.30/metacity-2.30.3.tar.bz2;name=
=3Darchive', 'Valentin Popa <valentin.popa@intel.com>']
['gtk-engines', '2.20.2', '2.20.2', 'LGPLv2.1', 'x11/base', 'http://www.gno=
me.org/', 'r2', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  gtk+ gnome-common hicolor-icon-t=
heme gconf gconf-native shared-mime-info-native shared-mime-info', 'https:/=
/bugzilla.gnome.org/', 'None', 'GTK theme engines', 'MATCH', 'N/A', 'http:/=
/ftp.gnome.org/pub/GNOME/sources/gtk-engines/2.20/gtk-engines-2.20.2.tar.bz=
2;name=3Darchive', 'Valentin Popa <valentin.popa@intel.com>']
['gnome-keyring', '2.32.1', '2.32.1', 'GPLv2+ & LGPLv2+ & LGPLv2.1+', 'x11/=
gnome', 'http://www.gnome.org/', 'r8', 'pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ libg=
crypt libtasn1 libtasn1-native gconf  gtk-doc-stub-native', 'https://bugzil=
la.gnome.org/', 'None', 'Password and keyring managing daemon', 'MATCH', 'N=
/A', 'http://ftp.gnome.org/pub/GNOME/sources/gnome-keyring/2.32/gnome-keyri=
ng-2.32.1.tar.bz2;name=3Darchive', 'Valentin Popa <valentin.popa@intel.com>=
']
['gtk+', '2.24.8', '2.24.8', 'LGPLv2 & LGPLv2+ & LGPLv2.1+', 'libs', 'http:=
//www.gtk.org', 'r5', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 pango atk jpeg li=
bpng gdk-pixbuf-native docbook-utils-native  libgcrypt cairo gdk-pixbuf gtk=
-doc-stub-native virtual/libx11 libxext libxcursor libxrandr libxdamage lib=
xrender libxcomposite', 'https://bugzilla.gnome.org/', 'None', 'GTK+ is a m=
ulti-platform toolkit for creating graphical user interfaces. Offering a co=
mplete set of widgets, GTK+ is suitable for projects ranging from small one=
-off projects to complete application suites.', 'MATCH', '2.24.8', 'http://=
download.gnome.org/sources/gtk+/2.24/gtk+-2.24.8.tar.bz2', 'Valentin Popa <=
valentin.popa@intel.com>']
['gnome-common', '2.28.0', '2.28.0', 'GPLv3', 'x11/gnome', 'http://www.gnom=
e.org/', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive gnu-config-native  ', 'https://bugzilla.gnome.org/', 'None', 'Common m=
acros for building GNOME applications', 'MATCH', 'N/A', 'http://ftp.gnome.o=
rg/pub/GNOME/sources/gnome-common/2.28/gnome-common-2.28.0.tar.bz2;name=3Da=
rchive', 'Valentin Popa <valentin.popa@intel.com>']
['libart-lgpl', '2.3.21', '2.3.21', 'LGPLv2', 'x11/gnome', 'unknown', 'r2',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'None', 'None', 'Library of functions for 2D=
 graphics', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/libart_=
lgpl/2.3/libart_lgpl-2.3.21.tar.bz2', 'Valentin Popa <valentin.popa@intel.c=
om>']
['libgdata', '0.7.1', '0.7.1', 'LGPLv2.1', 'base', 'http://live.gnome.org/l=
ibgdata', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native virtual/gettext gettext-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  l=
ibxml2 glib-2.0 libsoup-2.4 gnome-common hicolor-icon-theme gconf gconf-nat=
ive shared-mime-info-native shared-mime-info', 'https://bugzilla.gnome.org/=
', 'None', 'GLib-based library for accessing online service APIs using the =
GData protocol', 'MATCH', '0.8.0', 'http://ftp.gnome.org/pub/GNOME/sources/=
libgdata/0.7/libgdata-0.7.1.tar.bz2;name=3Darchive', 'Valentin Popa <valent=
in.popa@intel.com>']
['gnome-common-native', '2.28.0', '2.28.0', 'GPLv3', 'x11/gnome', 'http://w=
ww.gnome.org/', 'r1', 'pkgconfig-native autoconf-native automake-native lib=
tool-native gnu-config-native  ', 'https://bugzilla.gnome.org/', 'None', 'C=
ommon macros for building GNOME applications', 'MATCH', 'N/A', 'http://ftp.=
gnome.org/pub/GNOME/sources/gnome-common/2.28/gnome-common-2.28.0.tar.bz2;n=
ame=3Darchive', 'Valentin Popa <valentin.popa@intel.com>']
['gnome-mime-data', '2.18.0', '2.18.0', 'GPLv2 & GPLv2+', 'base', 'http://w=
ww.gnome.org/', 'r4', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc   gnome-common hicolor-icon=
-theme gconf gconf-native shared-mime-info-native shared-mime-info shared-m=
ime-info intltool-native', 'https://bugzilla.gnome.org/', 'None', 'Base MIM=
E and Application database for GNOME', 'MATCH', 'N/A', 'http://ftp.gnome.or=
g/pub/GNOME/sources/gnome-mime-data/2.18/gnome-mime-data-2.18.0.tar.bz2;nam=
e=3Darchive', 'Valentin Popa <valentin.popa@intel.com>']
['gnome-icon-theme', '2.31.0', '2.31.0', 'LGPLv3+ | CC-BY-SA-3.0', 'x11/gno=
me', 'http://www.gnome.org/', 'r3', 'autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  icon-naming-utils-native glib=
-2.0 intltool-native', 'https://bugzilla.gnome.org/', 'None', 'GNOME 2 defa=
ult icon themes', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/g=
nome-icon-theme/2.31/gnome-icon-theme-2.31.0.tar.bz2', 'Valentin Popa <vale=
ntin.popa@intel.com>']
['gconf', '3.2.3', '3.2.3', 'LGPLv2+', 'x11/gnome', 'unknown', 'r11', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  glib-2.0 dbus dbus-glib libxml2 intltool-native polki=
t gobject-introspection-stub gnome-common gtk-doc-stub-native', 'None', 'No=
ne', 'GNOME configuration system', 'MATCH', 'N/A', 'http://ftp.gnome.org/pu=
b/GNOME/sources/GConf/3.2/GConf-3.2.3.tar.bz2;name=3Darchive', 'None']
['gconf-native', '3.2.3', '3.2.3', 'LGPLv2+', 'x11/gnome', 'unknown', 'r11'=
, 'pkgconfig-native autoconf-native automake-native libtool-native gnu-conf=
ig-native  glib-2.0-native dbus-native dbus-glib-native libxml2-native intl=
tool-native gnome-common-native gobject-introspection-stub-native gtk-doc-s=
tub-native', 'None', 'None', 'GNOME configuration system', 'MATCH', 'N/A', =
'http://ftp.gnome.org/pub/GNOME/sources/GConf/3.2/GConf-3.2.3.tar.bz2;name=
=3Darchive', 'None']
['gnome-desktop', '2.32.1', '2.32.1', 'GPLv2 & LGPLv2', 'x11/gnome', 'unkno=
wn', 'r6', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  gconf libxrandr virtual/libx11 gtk+ g=
lib-2.0 gnome-doc-utils startup-notification gnome-common hicolor-icon-them=
e gconf gconf-native shared-mime-info-native shared-mime-info', 'None', 'No=
ne', 'GNOME library for reading .desktop files', 'MATCH', 'N/A', 'http://ft=
p.gnome.org/pub/GNOME/sources/gnome-desktop/2.32/gnome-desktop-2.32.1.tar.b=
z2;name=3Darchive', 'Valentin Popa <valentin.popa@intel.com>']
['gnome-doc-utils', '0.20.6', '0.20.6', 'GPLv2 & LGPLv2.1', 'base', 'unknow=
n', 'r8', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxml2=
 libxslt libxslt-native gnome-doc-utils-native glib-2.0 gnome-common hicolo=
r-icon-theme gconf gconf-native shared-mime-info-native shared-mime-info  p=
ython-native ', 'None', 'None', 'gnome-doc-utils version 0.20.6-r8', 'MATCH=
', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/gnome-doc-utils/0.20/gnom=
e-doc-utils-0.20.6.tar.bz2;name=3Darchive', 'Valentin Popa <valentin.popa@i=
ntel.com>']
['libffi', '3.0.10', '3.0.11', 'MIT', 'base', 'unknown', 'r0', 'autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ',=
 'None', 'None', "The `libffi' library provides a portable, high level prog=
ramming interface to various calling conventions.  This allows a programmer=
 to call any function specified by a call interface description at run time=
=2E FFI stands for Foreign Function Interface.  A foreign function interfac=
e is the popular name for the interface that allows code written in one lan=
guage to call code written in another language.  The `libffi' library reall=
y only provides the lowest, machine dependent layer of a fully featured for=
eign function interface.  A layer must exist above `libffi' that handles ty=
pe conversions for values passed between the two languages.", 'UPDATE', '3.=
0.10', 'ftp://sourceware.org/pub/libffi/libffi-3.0.10.tar.gz', 'Saul Wold <=
sgw@linux.intel.com>']
['libffi-native', '3.0.10', '3.0.11', 'MIT', 'base', 'unknown', 'r0', 'auto=
conf-native automake-native libtool-native gnu-config-native  ', 'None', 'N=
one', "The `libffi' library provides a portable, high level programming int=
erface to various calling conventions.  This allows a programmer to call an=
y function specified by a call interface description at run time. FFI stand=
s for Foreign Function Interface.  A foreign function interface is the popu=
lar name for the interface that allows code written in one language to call=
 code written in another language.  The `libffi' library really only provid=
es the lowest, machine dependent layer of a fully featured foreign function=
 interface.  A layer must exist above `libffi' that handles type conversion=
s for values passed between the two languages.", 'UPDATE', 'N/A', 'ftp://so=
urceware.org/pub/libffi/libffi-3.0.10.tar.gz', 'Saul Wold <sgw@linux.intel.=
com>']
['gtkhtml2', '2.11.0+svnr1161', 'N/A', 'LGPLv2', 'libs', 'unknown', 'r3', '=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive pkgconfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  gtk+ glib-2.0 libxml2', 'None', 'None', 'A GTK+ H=
TML rendering library.', 'ErrSvnAccess:svn.gnome.org/svn/gtkhtml2/', '2.11.=
1', 'svn://svn.gnome.org/svn/gtkhtml2/;module=3Dtrunk;protocol=3Dhttp', 'Va=
lentin Popa <valentin.popa@intel.com>']
['gnome-doc-utils-native', '0.20.6', '0.20.6', 'GPLv2 & LGPLv2.1', 'base', =
'unknown', 'r8', 'pkgconfig-native autoconf-native automake-native libtool-=
native gnu-config-native gettext-minimal-native  libxml2-native libxslt-nat=
ive intltool-native glib-2.0-native', 'None', 'None', 'gnome-doc-utils-nati=
ve version 0.20.6-r8', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sour=
ces/gnome-doc-utils/0.20/gnome-doc-utils-0.20.6.tar.bz2;name=3Darchive', 'V=
alentin Popa <valentin.popa@intel.com>']
['libgnome-keyring', '2.32.0', '2.32.0', 'LGPLv2 & LGPLv2+ & LGPLv2.1+', 'x=
11/gnome/libs', 'http://www.gnome.org/', 'r2', 'pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  d=
bus libgcrypt glib-2.0 gtk-doc-stub-native', 'https://bugzilla.gnome.org/',=
 'None', 'Compatibility library for accessing secrets', 'MATCH', 'N/A', 'ht=
tp://ftp.gnome.org/pub/GNOME/sources/libgnome-keyring/2.32/libgnome-keyring=
-2.32.0.tar.bz2;name=3Darchive', 'Valentin Popa <valentin.popa@intel.com>']
['nativesdk-libffi', '3.0.10', '3.0.11', 'MIT', 'base', 'unknown', 'r0', 'a=
utoconf-native automake-native libtool-native gnu-config-native virtual/i58=
6-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-linux-compilerl=
ibs virtual/nativesdk-libc', 'None', 'None', "The `libffi' library provides=
 a portable, high level programming interface to various calling convention=
s.  This allows a programmer to call any function specified by a call inter=
face description at run time. FFI stands for Foreign Function Interface.  A=
 foreign function interface is the popular name for the interface that allo=
ws code written in one language to call code written in another language.  =
The `libffi' library really only provides the lowest, machine dependent lay=
er of a fully featured foreign function interface.  A layer must exist abov=
e `libffi' that handles type conversions for values passed between the two =
languages.", 'UPDATE', 'N/A', 'ftp://sourceware.org/pub/libffi/libffi-3.0.1=
0.tar.gz', 'None']
['gtk-theme-torturer', '0.0.0+git1+99962ae39bb5aadb31929b25c58e1a053f9c9545=
', '99962ae39bb5aadb31929b25c58e1a053f9c9545', 'GPLv2', 'devel', 'http://wi=
ki.laptop.org/go/GTK_for_OLPC', 'r0', ' virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  gtk+', 'None', 'None', 'Gtk+ Th=
eme Benchmark Program', 'MATCH', 'N/A', 'git://dev.laptop.org/projects/soc-=
gtk/;protocol=3Dgit', 'Valentin Popa <valentin.popa@intel.com>']
['bluez4', '4.101', '4.101', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://www.blue=
z.org', 'r3', 'autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  udev libusb dbus-glib glib-2.0 libcheck alsa-lib', =
'None', 'None', 'Linux Bluetooth stack V4 userland components.  These inclu=
de a system configurations, daemons, tools and system libraries.', 'MATCH',=
 '4.98', 'http://kernel.org/pub/linux/bluetooth/bluez-4.101.tar.gz', 'Crist=
ian Iorga <cristian.iorga@intel.com>']
['bluez-hcidump', '2.4', '2.4', 'GPLv2+', 'console', 'unknown', 'r0', 'auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  bluez4', 'None', 'None', 'The hcidump tool reads raw HCI data coming f=
rom and going to a Bluetooth device and displays the commands, events and d=
ata in a human-readable form.', 'MATCH', 'N/A', 'http://www.kernel.org/pub/=
linux/bluetooth/bluez-hcidump-2.4.tar.gz', 'Cristian Iorga <cristian.iorga@=
intel.com>']
['gst-plugin-bluetooth', '4.101', '4.101', 'GPLv2+ & LGPLv2.1+', 'libs', 'h=
ttp://www.bluez.org', 'r0', 'autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  bluez4 gst-plugins-base alsa-lib', 'N=
one', 'None', 'Linux Bluetooth stack V4 userland components.  These include=
 a system configurations, daemons, tools and system libraries.', 'MATCH', '=
N/A', 'http://kernel.org/pub/linux/bluetooth/bluez-4.101.tar.gz', 'Cristian=
 Iorga <cristian.iorga@intel.com>']
['json-glib', '0.14.2', '0.14.2', 'LGPLv2.1', 'base', 'http://live.gnome.or=
g/JsonGlib', 'r1', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native virtual/gettext gettext-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  glib-2.0 gnome-common hicolor-icon-theme gconf gconf-native shared-mime-i=
nfo-native shared-mime-info', 'None', 'None', 'Use JSON-GLib it is possible=
 to parse and generate valid JSON data structures, using a DOM-like API. JS=
ON-GLib also offers GObject integration, providing the ability to serialize=
 and deserialize GObject instances to and from JSON data types.', 'MATCH', =
'0.14.2', 'http://ftp.gnome.org/pub/GNOME/sources/json-glib/0.14/json-glib-=
0.14.2.tar.bz2;name=3Darchive', 'Valentin Popa <valentin.popa@intel.com>']
['rt-tests', '0.83', '0.83', 'GPLv2 & GPLv2+', 'tests', 'https://rt.wiki.ke=
rnel.org/index.php/Cyclictest', 'r2', ' virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  linux-libc-headers virtual/libc=
', 'None', '1', 'Real-Time preemption testcases', 'MATCH', 'N/A', 'git://gi=
thub.com/clrkwllms/rt-tests.git', 'Darren Hart <dvhart@linux.intel.com>']
['connman', '1.4', '1.6', 'GPLv2', 'base', 'http://connman.net/', 'r17.0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  dbus glib-2.0 ppp iptables gnutls             bl=
uez4             wpa-supplicant             ofono              gtk-doc-stub=
-native update-rc.d-native base-passwd shadow-native shadow-sysroot shadow'=
, 'http://bugs.meego.com/buglist.cgi?quicksearch=3Dconnman', 'None', 'The C=
onnMan project provides a daemon for managing internet connections within e=
mbedded devices running the Linux operating system.  The Connection Manager=
 is designed to be slim and to use as few resources as possible, so it can =
be easily integrated. It is a fully modular system that can be extended, th=
rough plug-ins, to support all kinds of wired or wireless technologies. Als=
o, configuration methods, like DHCP and domain name resolving, are implemen=
ted using plug-ins.', 'UPDATE', '0.65', 'git://git.kernel.org/pub/scm/netwo=
rk/connman/connman.git', 'Cristian Iorga <cristian.iorga@intel.com>']
['connman-gnome', '0.7', '0.7', 'GPLv2 & LGPLv2.1', 'libs/network', 'http:/=
/connman.net/', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  gtk+ dbus-glib hicolor-icon-theme', 'None',=
 'None', 'gtk frontend for connman', 'MATCH', 'N/A', 'git://github.com/conn=
ectivity/connman-gnome.git;protocol=3Dgit', 'Cristian Iorga <cristian.iorga=
@intel.com>']
['libnfsidmap', '0.25', '0.25', 'BSD', 'libs', 'http://www.citi.umich.edu/p=
rojects/nfsv4/linux/', 'r0', 'autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'NFS id mapping l=
ibrary', 'MATCH', '0.24', 'http://www.citi.umich.edu/projects/nfsv4/linux/l=
ibnfsidmap/libnfsidmap-0.25.tar.gz', 'Scott Garman <scott.a.garman@intel.co=
m>']
['nfs-utils', '1.2.3', 'N/A', 'GPLv2+', 'console/network', 'http://nfs.sour=
ceforge.net/', 'r4', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  libcap libnfsidmap libevent util-linux tcp-w=
rappers update-rc.d-native', 'None', 'None', 'The nfs-utils package provide=
s a daemon for the kernel NFS server and related tools.', 'ErrParseDir:/nfs=
/:-:nfs-utils-1.2.3.tar.bz2:downloads.sourceforge.net/nfs/nfs-utils-1.2.3.t=
ar.bz2', '1.2.6', 'http://downloads.sourceforge.net/nfs/nfs-utils-1.2.3.tar=
=2Ebz2', 'Scott Garman <scott.a.garman@intel.com>']
['gypsy', '0.9', '0.9', 'GPLv2+ & LGPLv2+', 'x11', 'unknown', 'r0', 'pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  glib-2.0 dbus bluez4 dbus-glib libxslt', 'None', 'None'=
, 'Gypsy is a GPS multiplexing daemon which allows multiple clients to acce=
ss GPS data from multiple GPS sources concurrently.  Gypsy also hides the d=
etails of parsing NMEA from the client applications, passing the data as si=
mple values for the clients to use.', 'MATCH', '0.8', 'http://gypsy.freedes=
ktop.org/releases/gypsy-0.9.tar.gz', 'Cristian Iorga <cristian.iorga@intel.=
com>']
['ocf-linux', '20100325', '20100325', 'BSD', 'base', 'unknown', 'r3.0', ' v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  ', 'None', 'None', 'Install required headers to enable OCF Linux support=
', 'MATCH', 'N/A', 'http://sourceforge.net/projects/ocf-linux/files/ocf-lin=
ux/20100325/ocf-linux-20100325.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['openssl', '1.0.0j', '1.0.1', 'openssl', 'libs/network', 'http://www.opens=
sl.org/', 'r15.3', 'pkgconfig-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  perl-native-runtime ocf-linux', '=
http://www.openssl.org/news/vulnerabilities.html', 'None', 'Secure Socket L=
ayer (SSL) binary and related cryptographic tools.', 'UPDATE', '1.0.1b', 'h=
ttp://www.openssl.org/source/openssl-1.0.0j.tar.gz', 'Radu Moisan <radu.moi=
san@intel.com>']
['openssl-native', '1.0.0j', '1.0.1', 'openssl', 'libs/network', 'http://ww=
w.openssl.org/', 'r15.3', 'pkgconfig-native  perl-native-runtime-native ocf=
-linux-native', 'http://www.openssl.org/news/vulnerabilities.html', 'None',=
 'Secure Socket Layer (SSL) binary and related cryptographic tools.', 'UPDA=
TE', 'N/A', 'http://www.openssl.org/source/openssl-1.0.0j.tar.gz', 'Radu Mo=
isan <radu.moisan@intel.com>']
['ppp-dialin', '0.1', 'INVALID', 'MIT', 'console/network', 'unknown', 'r8',=
 ' ppp base-passwd shadow-native shadow-sysroot shadow', 'None', 'None', 'E=
nables PPP dial-in through a serial connection', 'MATCH', 'check', 'file://=
host-peer', 'Cristian Iorga <cristian.iorga@intel.com>']
['nativesdk-openssl', '1.0.0j', '1.0.1', 'openssl', 'libs/network', 'http:/=
/www.openssl.org/', 'r15.3', 'pkgconfig-native virtual/i586-pokysdk-linux-g=
cc-crosssdk virtual/nativesdk-i586-pokysdk-linux-compilerlibs virtual/nativ=
esdk-libc perl-native-runtime nativesdk-ocf-linux', 'http://www.openssl.org=
/news/vulnerabilities.html', 'None', 'Secure Socket Layer (SSL) binary and =
related cryptographic tools.', 'UPDATE', 'N/A', 'http://www.openssl.org/sou=
rce/openssl-1.0.0j.tar.gz', 'None']
['ocf-linux-native', '20100325', '20100325', 'BSD', 'base', 'unknown', 'r3.=
0', ' ', 'None', 'None', 'Install required headers to enable OCF Linux supp=
ort', 'MATCH', 'N/A', 'http://sourceforge.net/projects/ocf-linux/files/ocf-=
linux/20100325/ocf-linux-20100325.tar.gz', 'Saul Wold <sgw@linux.intel.com>=
']
['wireless-tools', '29', 'N/A', 'GPLv2 & (LGPLv2.1 | MPL-1.1 | BSD)', 'base=
', 'http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/Tools.html', 'r4',=
 ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  ', 'None', '1', 'Tools for the Linux Standard Wireless Extension Sub=
system', 'ErrParseDir:/personal/Jean_Tourrilhes/Linux/:-:wireless_tools.29.=
tar.gz:www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/wireless_tools.29.tar.=
gz', '29', 'http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/wireless_t=
ools.29.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>']
['nativesdk-ocf-linux', '20100325', '20100325', 'BSD', 'base', 'unknown', '=
r3.0', 'virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-poky=
sdk-linux-compilerlibs virtual/nativesdk-libc', 'None', 'None', 'Install re=
quired headers to enable OCF Linux support', 'MATCH', 'N/A', 'http://source=
forge.net/projects/ocf-linux/files/ocf-linux/20100325/ocf-linux-20100325.ta=
r.gz', 'None']
['resolvconf', '1.67', '1.67', 'GPLv2+', 'console/network', 'http://package=
s.debian.org/resolvconf', 'r0', ' ', 'None', 'None', "Resolvconf is a frame=
work for keeping track of the system's information about currently availabl=
e nameservers. It sets itself up as the intermediary between programs that =
supply nameserver information and programs that need nameserver information=
=2E", 'MATCH', 'N/A', 'ftp://ftp.debian.org/debian/pool/main/r/resolvconf/r=
esolvconf_1.67.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['libnss-mdns', '0.10', '0.10', 'LGPLv2.1+', 'libs', 'http://0pointer.de/le=
nnart/projects/nss-mdns/', 'r5', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  avahi', 'None', 'None', 'NSS mod=
ule for Multicast DNS name resolution', 'MATCH', 'N/A', 'http://0pointer.de=
/lennart/projects/nss-mdns/nss-mdns-0.10.tar.gz', 'Saul Wold <sgw@linux.int=
el.com>']
['socat', '1.7.2.0', '2.0.0', 'GPL-2.0+-with-OpenSSL-exception', 'console/n=
etwork', 'http://www.dest-unreach.org/socat/', 'r1', 'autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  openssl read=
line', 'None', 'None', 'Socat is a relay for bidirectional data transfer be=
tween two independent data channels.', 'UPDATE', '2.0.0', 'http://www.dest-=
unreach.org/socat/download/socat-1.7.2.0.tar.bz2;name=3Dsrc', 'Saul Wold <s=
gw@linux.intel.com>']
['libgalago', '0.5.2', '0.5.2', 'LGPLv2.1+', 'base', 'http://www.galago-pro=
ject.org/', 'r2', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native virtual/gettext gettext-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 dbus glib-2.0 dbus-glib', 'None', 'None', 'Galago is a desktop presence fr=
amework, designed to transmit presence information between programs.', 'MAT=
CH', '0.5.2', 'http://www.galago-project.org/files/releases/source/libgalag=
o/libgalago-0.5.2.tar.gz', 'Valentin Popa <valentin.popa@intel.com>']
['galago-daemon', '0.5.1', '0.5.1', 'GPLv2', 'base', 'http://www.galago-pro=
ject.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native virtual/gettext gettext-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 libgalago dbus glib-2.0', 'None', 'None', 'Galago is a desktop presence fr=
amework, designed to transmit presence information between programs.', 'MAT=
CH', 'N/A', 'http://www.galago-project.org/files/releases/source/galago-dae=
mon/galago-daemon-0.5.1.tar.gz', 'Valentin Popa <valentin.popa@intel.com>']
['ofono', '1.10', '1.10', 'GPLv2', 'base', 'http://www.ofono.org', 'r1', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  dbus glib-2.0 udev mobile-broadband-provider-info =
bluez4 update-rc.d-native', 'None', 'None', 'oFono is a stack for mobile te=
lephony devices on Linux. oFono supports speaking to telephony devices thro=
ugh specific drivers, or with generic AT commands.', 'MATCH', '1.6', 'http:=
//kernel.org/pub/linux/network/ofono/ofono-1.10.tar.bz2', 'Cristian Iorga <=
cristian.iorga@intel.com>']
['ppp', '2.4.5', '2.4.5', 'BSD & GPLv2+ & LGPLv2+ & PD', 'console/network',=
 'http://samba.org/ppp/', 'r6', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  libpcap', 'http://ppp.samba.org/c=
gi-bin/ppp-bugs', 'None', "ppp (Paul's PPP Package) is an open source packa=
ge which implements the Point-to-Point Protocol (PPP) on Linux and Solaris =
systems.", 'MATCH', '2.4.5', 'http://ppp.samba.org/ftp/ppp/ppp-2.4.5.tar.gz=
', 'Cristian Iorga <cristian.iorga@intel.com>']
['irda-utils', '0.9.18', 'N/A', 'GPLv2+', 'base', 'http://irda.sourceforge.=
net/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc   update-rc.d-native', 'irda-users@lists.sourceforge.=
net', 'None', 'Provides common files needed to use IrDA. IrDA allows commun=
ication over Infrared with other devices such as phones and laptops.', 'Err=
ParseDir:/irda/:-:irda-utils-0.9.18.tar.gz:downloads.sourceforge.net/irda/i=
rda-utils-0.9.18.tar.gz', '0.9.18', 'http://downloads.sourceforge.net/irda/=
irda-utils-0.9.18.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>']
['bind', '9.8.1', '9.8.1', 'ISC & BSD', 'console/network', 'http://www.isc.=
org/sw/bind/', 'r3', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  openssl libcap update-rc.d-native', 'None', =
'None', 'ISC Internet Domain Name Server', 'MATCH', '9.7.2-P3', 'ftp://ftp.=
isc.org/isc/bind9/9.8.1/bind-9.8.1.tar.gz', 'Kai Kang <kai.kang@windriver.c=
om>']
['iproute2', '3.5.1', '3.5.1', 'GPLv2+', 'base', 'http://www.linuxfoundatio=
n.org/collaborate/workgroups/networking/iproute2', 'r0', ' virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native =
bison-native', 'None', 'None', 'Iproute2 is a collection of utilities for c=
ontrolling TCP / IP networking and traffic control in Linux.  Of the utilit=
ies ip and tc are the most important.  ip controls IPv4 and IPv6 configurat=
ion and tc stands for traffic control.', 'MATCH', '3.3.0', 'http://kernel.o=
rg/pub/linux/utils/net/iproute2/iproute2-3.5.1.tar.xz', 'Cristian Iorga <cr=
istian.iorga@intel.com>']
['libtelepathy', '0.3.3', '0.3.3', 'LGPLv2.1+', 'base', 'http://telepathy.f=
reedesktop.org/wiki/', 'r4', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus dbus-=
glib telepathy-glib', 'None', 'None', 'Telepathy is a D-Bus framework for u=
nifying real time communication, including instant messaging, voice calls a=
nd video calls.  It abstracts differences between protocols to provide a un=
ified interface for applications.', 'MATCH', '0.3.3', 'http://telepathy.fre=
edesktop.org/releases/libtelepathy/libtelepathy-0.3.3.tar.gz', 'Cristian Io=
rga <cristian.iorga@intel.com>']
['wpa-supplicant', '1.0', '1.0', 'GPLv2 | BSD', 'network', 'http://hostap.e=
pitest.fi/wpa_supplicant/', 'r1', ' virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  gnutls dbus libnl', 'http://hostap.=
epitest.fi/bugz/', 'None', 'A Client for Wi-Fi Protected Access (WPA).', 'M=
ATCH', 'N/A', 'http://hostap.epitest.fi/releases/wpa_supplicant-1.0.tar.gz'=
, 'Cristian Iorga <cristian.iorga@intel.com>']
['avahi-ui', '0.6.31', '0.6.31', 'GPLv2+ & LGPLv2.1+', 'network', 'http://a=
vahi.org', 'r5.0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native virtual/gettext gettext-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  expat libcap libdaemon dbus glib-2.0 avahi gtk+ libglade update-rc.d-nati=
ve base-passwd shadow-native shadow-sysroot shadow', 'http://avahi.org/repo=
rt', 'None', 'Avahi is a fully LGPL framework for Multicast DNS Service Dis=
covery. It allows programs to publish and discover services and hosts runni=
ng on a local network with no specific configuration. This tool implements =
IPv4LL, "Dynamic Configuration of IPv4 Link-Local Addresses" (IETF RFC3927)=
, a protocol for automatic IP address configuration from the link-local 169=
=2E254.0.0/16 range without the need for a central server.', 'MATCH', 'N/A'=
, 'http://avahi.org/download/avahi-0.6.31.tar.gz', 'Valentin Popa <valentin=
=2Epopa@intel.com>']
['telepathy-mission-control', '5.13.0', '5.13.1', 'LGPLv2.1+', 'libs', 'htt=
p://mission-control.sourceforge.net/', 'r0', 'pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  lib=
telepathy dbus-glib gconf', 'None', 'None', 'Central control for Telepathy =
connection managers', 'UPDATE', 'N/A', 'http://telepathy.freedesktop.org/re=
leases/telepathy-mission-control/telepathy-mission-control-5.13.0.tar.gz', =
'Cristian Iorga <cristian.iorga@intel.com>']
['mobile-broadband-provider-info', '1.0.0+gitr1+d9995ef693cb1ea7237f928df18=
e03cccba96f16', '20090309', 'PD', 'network', 'unknown', 'r0', 'autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', =
'None', '1', 'Mobile Broadband Service Provider Database', 'UPDATE', '1.0.0=
+git', 'git://git.gnome.org/mobile-broadband-provider-info;protocol=3Dgit',=
 'Radu Moisan <radu.moisan@intel.com>']
['openssh', '6.0p1', '6.1p1', 'BSD', 'console/network', 'http://openssh.org=
', 'r3', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  zlib openssl  base-passwd shadow-native shadow-sysroot s=
hadow update-rc.d-native', 'None', 'None', 'Secure rlogin/rsh/rcp/telnet re=
placement (OpenSSH) Ssh (Secure Shell) is a program for logging into a remo=
te machine and for executing commands on a remote machine.', 'UPDATE', '6.0=
p1', 'ftp://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-6.0p1.tar.=
gz', 'Scott Garman <scott.a.garman@intel.com>']
['telepathy-python', '0.15.19', '0.15.19', 'LGPLv2.1+', 'base', 'http://tel=
epathy.freedesktop.org/wiki/', 'r6', 'autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc    python-native ', 'None', '=
None', 'Telepathy framework - Python package', 'MATCH', 'N/A', 'http://tele=
pathy.freedesktop.org/releases/telepathy-python/telepathy-python-0.15.19.ta=
r.gz', 'Cristian Iorga <cristian.iorga@intel.com>']
['telepathy-idle', '0.1.12', '0.1.12', 'LGPLv2.1', 'base', 'http://telepath=
y.freedesktop.org/wiki/', 'r0', 'pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus te=
lepathy-glib openssl', 'None', 'None', 'Telepathy implementation of the Int=
ernet Relay Chat protocols.', 'MATCH', 'N/A', 'http://telepathy.freedesktop=
=2Eorg/releases/telepathy-idle/telepathy-idle-0.1.12.tar.gz', 'Cristian Ior=
ga <cristian.iorga@intel.com>']
['telepathy-glib', '0.19.8', '0.19.8', 'LGPLv2.1+', 'base', 'http://telepat=
hy.freedesktop.org/wiki/', 'r0', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native virtual/gettext gett=
ext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  glib-2.0 dbus python-native-runtime dbus-native dbus-glib',=
 'None', 'None', 'Telepathy Framework: GLib-based helper library for connec=
tion managers', 'MATCH', 'N/A', 'http://telepathy.freedesktop.org/releases/=
telepathy-glib/telepathy-glib-0.19.8.tar.gz', 'Cristian Iorga <cristian.ior=
ga@intel.com>']
['libpcap', '1.3.0', '1.3.0', 'BSD', 'libs/network', 'http://www.tcpdump.or=
g/', 'r2.0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  flex-native bison-native bluez4', 'http://sourceforg=
e.net/tracker/?group_id=3D53067&atid=3D469577', 'None', 'Interface for user=
-level network packet capture', 'MATCH', '1.2.0', 'http://www.tcpdump.org/r=
elease/libpcap-1.3.0.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>']
['dhcp', '4.2.4-P1', '4.2.4', 'ISC', 'console/network', 'http://www.isc.org=
/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  openssl bind', 'None', 'None', 'DHCP (Dynamic Host Conf=
iguration Protocol) is a protocol which allows individual devices on an IP =
network to get their own network configuration information from a server.  =
DHCP helps make it easier to administer devices.', 'UPDATE', '4.2.3', 'ftp:=
//ftp.isc.org/isc/dhcp/4.2.4-P1/dhcp-4.2.4-P1.tar.gz', 'Saul Wold <sgw@linu=
x.intel.com>']
['avahi', '0.6.31', '0.6.31', 'GPLv2+ & LGPLv2.1+', 'network', 'http://avah=
i.org', 'r5.0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native virtual/gettext gettext-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  e=
xpat libcap libdaemon dbus glib-2.0 intltool-native update-rc.d-native base=
-passwd shadow-native shadow-sysroot shadow', 'http://avahi.org/report', 'N=
one', 'Avahi is a fully LGPL framework for Multicast DNS Service Discovery.=
 It allows programs to publish and discover services and hosts running on a=
 local network with no specific configuration. This tool implements IPv4LL,=
 "Dynamic Configuration of IPv4 Link-Local Addresses" (IETF RFC3927), a pro=
tocol for automatic IP address configuration from the link-local 169.254.0.=
0/16 range without the need for a central server.', 'MATCH', '0.6.31', 'htt=
p://avahi.org/download/avahi-0.6.31.tar.gz', 'Valentin Popa <valentin.popa@=
intel.com>']
['lttng-control', '0.89', '0.89.05122011', 'GPLv3', 'devel', 'unknown', 'r0=
', 'autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  ', 'None', 'None', 'The Linux trace toolkit is a suite of tool=
s designed to extract program execution details from the Linux operating sy=
stem and  interpret them.', 'UPDATE', 'N/A', 'http://lttng.org/files/lttng/=
ltt-control-0.89-05122011.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@in=
tel.com>']
['tiff', '4.0.2', '4.0.2', 'BSD-2-Clause', 'base', 'http://www.remotesensin=
g.org/libtiff/', 'r0', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  zlib jpeg xz', 'None', 'None', 'This softw=
are provides support for the Tag Image File Format (TIFF)', 'MATCH', '4.0.1=
', 'ftp://ftp.remotesensing.org/pub/libtiff/tiff-4.0.2.tar.gz', 'Saul Wold =
<sgw@linux.intel.com>']
['tiff-native', '4.0.2', '4.0.2', 'BSD-2-Clause', 'base', 'http://www.remot=
esensing.org/libtiff/', 'r0', 'autoconf-native automake-native libtool-nati=
ve gnu-config-native  zlib-native jpeg-native xz-native', 'None', 'None', '=
This software provides support for the Tag Image File Format (TIFF)', 'MATC=
H', 'N/A', 'ftp://ftp.remotesensing.org/pub/libtiff/tiff-4.0.2.tar.gz', 'Sa=
ul Wold <sgw@linux.intel.com>']
['portmap', '6.0', '6.0', 'BSD', 'console/network', 'http://neil.brown.name=
/portmap/', 'r7', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  virtual/fakeroot-native tcp-wrappers update-rc.d-na=
tive', 'None', 'None', 'RPC program number mapper.', 'MATCH', '6.0', 'http:=
//www.sourcefiles.org/Networking/Tools/Miscellanenous/portmap-6.0.tgz', 'Sa=
ul Wold <sgw@linux.intel.com>']
['libvorbis', '1.3.3', '1.3.3', 'BSD', 'libs', 'http://xiph.org/', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  libogg', 'https://trac.xiph.org/newticket', 'None'=
, 'Ogg Vorbis is a high-quality lossy audio codec that is free of intellect=
ual property restrictions. libvorbis is the main vorbis codec library.', 'M=
ATCH', '1.3.2', 'http://downloads.xiph.org/releases/vorbis/libvorbis-1.3.3.=
tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>']
['zeroconf', '0.9', '0.9', 'GPLv2+', 'net', 'http://www.progsoc.org/~wildfi=
re/zeroconf/', 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ', 'None', 'None', 'Zeroconf is a program that i=
s used to claim IPv4 link-local addresses. IPv4 link-local addresses are us=
eful when setting up ad-hoc networking between devices without the involvem=
ent of a either a DHCP server or network administrator. These addresses are=
 allocated from the 169.254.0.0/16 address range and are normally attached =
to each Ethernet device in your computer. Addresses are assigned randomly b=
y each host and, in case of collision, both hosts (are supposed to) renumbe=
r.', 'MATCH', '0.9', 'http://www.progsoc.org/~wildfire/zeroconf/download/ze=
roconf-0.9.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>']
['gupnp', '0.16.1', '0.16.1', 'LGPLv2+', 'base', 'unknown', 'r1', 'pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  e2fsprogs gssdp libsoup-2.4 libxml2 gnome-icon-theme gobj=
ect-introspection-stub', 'None', 'None', "GUPnP is an elegant, object-orien=
ted open source framework for creating UPnP  devices and control points, wr=
itten in C using GObject and libsoup. The GUPnP API is intended to be easy =
to use, efficient and flexible. It provides the same set of features as lib=
upnp, but shields the developer from most of UPnP's internals.", 'MATCH', '=
N/A', 'http://gupnp.org/sites/all/files/sources/gupnp-0.16.1.tar.gz', 'Radu=
 Moisan <radu.moisan@intel.com>']
['gupnp-av', '0.8.0', '0.8.0', 'LGPLv2', 'base', 'unknown', 'r1', 'pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  gupnp', 'None', 'None', 'GUPnP-AV is a collection of help=
ers for building AV (audio/video) applications using GUPnP.', 'MATCH', 'N/A=
', 'http://gupnp.org/sites/all/files/sources/gupnp-av-0.8.0.tar.gz', 'Crist=
ian Iorga <cristian.iorga@intel.com>']
['gssdp', '0.10.0', '0.10.0', 'LGPLv2', 'base', 'unknown', 'r2', 'pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  glib-2.0 libsoup-2.4 gobject-introspection-stub gtk+', 'No=
ne', 'None', 'GSSDP implements resource discovery and announcement over SSD=
P (Simpe Service Discovery Protocol).', 'MATCH', '0.10.0', 'http://gupnp.or=
g/sites/all/files/sources/gssdp-0.10.0.tar.gz', 'Cristian Iorga <cristian.i=
orga@intel.com>']
['gupnp-tools', '0.8.1', '0.8.1', 'GPLv2+', 'base', 'unknown', 'r0', 'pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  gupnp gupnp-av gtk+ libglade gnome-icon-theme', 'None'=
, 'None', 'Tools for GUPnP', 'MATCH', 'N/A', 'http://gupnp.org/sites/all/fi=
les/sources/gupnp-tools-0.8.1.tar.gz', 'Cristian Iorga <cristian.iorga@inte=
l.com>']
['mpeg2dec', '0.4.1', '0.4.1', 'GPLv2+', 'libs', 'http://libmpeg2.sourcefor=
ge.net/', 'r2', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  virtual/libx11', 'None', 'None',=
 'Library and test program for decoding mpeg-2 and mpeg-1 video streams', '=
MATCH', '0.5.1', 'http://libmpeg2.sourceforge.net/files/mpeg2dec-0.4.1.tar.=
gz', 'None']
['libpng', '1.2.49', 'N/A', 'Libpng', 'libs', 'http://www.libpng.org/', 'r1=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  zlib', 'None', 'None', 'PNG Library', 'ErrPar=
seInterDir:/project/libpng/libpng12/1.2.49/libpng-1.2.49.tar.bz2:1.2.49:-:d=
ownloads.sourceforge.net/project/libpng/libpng12/1.2.49/libpng-1.2.49.tar.b=
z2', '1.5.11', 'http://downloads.sourceforge.net/project/libpng/libpng12/1.=
2.49/libpng-1.2.49.tar.bz2', 'Scott Garman <scott.a.garman@intel.com>']
['libpng-native', '1.2.49', 'N/A', 'Libpng', 'libs', 'http://www.libpng.org=
/', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native =
gnu-config-native  zlib-native', 'None', 'None', 'PNG Library', 'ErrParseIn=
terDir:/project/libpng/libpng12/1.2.49/libpng-1.2.49.tar.bz2:1.2.49:-:downl=
oads.sourceforge.net/project/libpng/libpng12/1.2.49/libpng-1.2.49.tar.bz2',=
 'N/A', 'http://downloads.sourceforge.net/project/libpng/libpng12/1.2.49/li=
bpng-1.2.49.tar.bz2', 'Scott Garman <scott.a.garman@intel.com>']
['libid3tag', '0.15.1b', '0.15.1b', 'GPLv2+', 'libs', 'http://sourceforge.n=
et/projects/mad/', 'r6', 'pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  zlib gperf-native', 'ht=
tp://sourceforge.net/tracker/?group_id=3D12349&atid=3D112349', 'None', 'Lib=
rary for interacting with ID3 tags.', 'MATCH', '0.15.1b', 'ftp://ftp.mars.o=
rg/pub/mpeg/libid3tag-0.15.1b.tar.gz', 'Cristian Iorga <cristian.iorga@inte=
l.com>']
['speex', '1.2rc1', '1.2rc1', 'BSD', 'libs', 'http://www.speex.org', 'r2', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  libogg', 'None', 'None', 'Speex is an Open Sourc=
e/Free Software patent-free audio compression format designed for speech.',=
 'MATCH', '1.2rc1', 'http://downloads.us.xiph.org/releases/speex/speex-1.2r=
c1.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>']
['libtheora', '1.1.1', '1.2.0alpha1', 'BSD', 'libs', 'http://xiph.org/', 'r=
1', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  libogg', 'https://trac.xiph.org/newticket', =
'None', 'The libtheora reference implementation provides the standard encod=
er and decoder under a BSD license.', 'UPDATE', '1.2.0', 'http://downloads.=
xiph.org/releases/theora/libtheora-1.1.1.tar.bz2', 'None']
['pulseaudio', '2.1', '2.1', 'GPLv2+ & LGPLv2.1', 'libs/multimedia', 'http:=
//www.pulseaudio.org', 'r3', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native virtual/gettext gettext-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  libatomics-ops liboil avahi libsamplerate0 libsndfile1 libtool =
           virtual/libx11 libxtst libice libsm libxcb gtk+ udev alsa-lib gl=
ib-2.0 dbus            bluez4 libjson gdbm speex libxml-parser-perl-native =
perl-native base-passwd shadow-native shadow-sysroot shadow', 'None', 'None=
', 'Pulseaudio is a sound server for Linux and Unix-like operating systems.=
', 'MATCH', '0.9.22', 'http://freedesktop.org/software/pulseaudio/releases/=
pulseaudio-2.1.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>']
['flac', '1.2.1', 'N/A', 'GFDL-1.2 & GPLv2+ & LGPLv2.1+ & BSD', 'libs', 'ht=
tp://flac.sourceforge.net/', 'r2', 'autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native virtual/gettext gettext-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 libogg', 'http://sourceforge.net/tracker/?group_id=3D13478&atid=3D113478',=
 'None', 'FLAC stands for Free Lossless Audio Codec, an audio format simila=
r to MP3, but lossless.', 'ErrParseDir:/flac/:-:flac-1.2.1.tar.gz:downloads=
=2Esourceforge.net/flac/flac-1.2.1.tar.gz', '1.2.1', 'http://downloads.sour=
ceforge.net/flac/flac-1.2.1.tar.gz', 'Cristian Iorga <cristian.iorga@intel.=
com>']
['libatomics-ops', '7.2', '7.2', 'GPLv2 & MIT', 'optional', 'http://www.hpl=
=2Ehp.com/research/linux/atomic_ops/', 'r0', 'pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', =
'None', 'None', 'A library for atomic integer operations', 'MATCH', 'N/A', =
'http://www.hpl.hp.com/research/linux/atomic_ops/download/libatomic_ops-7.2=
=2Etar.gz', 'Scott Garman <scott.a.garman@intel.com>']
['liba52', '0.7.4', '0.7.4', 'GPLv2+', 'libs', 'http://liba52.sourceforge.n=
et/', 'r4', 'autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ', 'None', 'None', 'Library for reading some sort of =
media format.', 'MATCH', '0.7.4', 'http://liba52.sourceforge.net/files/a52d=
ec-0.7.4.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>']
['libogg', '1.3.0', '1.3.0', 'BSD', 'libs', 'http://xiph.org/', 'r0', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ', 'https://trac.xiph.org/newticket', 'None', 'libogg=
 is the bitstream and framing library for the Ogg project. It provides func=
tions which are necessary to codec libraries like libvorbis.', 'MATCH', '1.=
3.0', 'http://downloads.xiph.org/releases/ogg/libogg-1.3.0.tar.gz', 'Cristi=
an Iorga <cristian.iorga@intel.com>']
['libmusicbrainz', '3.0.3', '4.0.0', 'LGPLv2.1+', 'base', 'http://musicbrai=
nz.org', 'r4', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  expat neon  cmake-native ', 'None=
', 'None', 'The MusicBrainz client is a library which can be built into oth=
er programs.  The library allows you to access the data held on the MusicBr=
ainz server.', 'UPDATE', '3.0.3', 'http://ftp.musicbrainz.org/pub/musicbrai=
nz/libmusicbrainz-3.0.3.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>=
']
['libsndfile1', '1.0.25', '1.0.25', 'LGPLv2.1', 'libs/multimedia', 'http://=
www.mega-nerd.com/libsndfile', 'r1', 'pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  sqlite3 als=
a-lib', 'None', 'None', 'An audio format Conversion library', 'MATCH', '1.0=
=2E25', 'http://www.mega-nerd.com/libsndfile/files/libsndfile-1.0.25.tar.gz=
', 'Cristian Iorga <cristian.iorga@intel.com>']
['gst-plugins-base', '0.10.36', '0.11.90', 'GPLv2+ & LGPLv2+', 'multimedia'=
, 'http://gstreamer.freedesktop.org/', 'r4', 'pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native virtual/=
gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  gstreamer virtual/libx11 libxv alsa-lib freetyp=
e liboil libogg libvorbis libtheora util-linux tremor', 'https://bugzilla.g=
nome.org/enter_bug.cgi?product=3DGstreamer', 'None', 'Plugins for GStreamer=
', 'UPDATE', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-plugins-base/=
gst-plugins-base-0.10.36.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.co=
m>']
['gst-openmax', '0.10.1', '0.10.1', 'LGPLv2.1', 'base', 'unknown', 'r3', 'a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  gstreamer', 'None', 'None', 'gst-openmax version 0.10.1-r3', 'MATCH=
', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-openmax/gst-openmax-0.1=
0.1.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>']
['libcanberra', '0.29', '0.29', 'LGPLv2.1', 'base', 'unknown', 'r0', 'autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  gtk+ pulseaudio alsa-lib libtool libvorbis gconf gconf-native', 'None',=
 'None', 'Libcanberra is an implementation of the XDG Sound Theme and Name =
Specifications, for generating event sounds on free desktops.', 'MATCH', '0=
=2E26', 'http://0pointer.de/lennart/projects/libcanberra/libcanberra-0.29.t=
ar.xz', 'Valentin Popa <valentin.popa@intel.com>']
['gst-ffmpeg', '0.10.13', '0.11.2', 'GPLv2+ & LGPLv2+ & ( (GPLv2+ & LGPLv2.=
1+) | (GPLv3+ & LGPLv3+) )', 'multimedia', 'http://www.gstreamer.net/', 'r4=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  gstreamer gst-plugins-base zlib bzip2', 'None=
', 'None', 'FFmpeg-based GStreamer plug-in', 'UPDATE', 'N/A', 'http://gstre=
amer.freedesktop.org/src/gst-ffmpeg/gst-ffmpeg-0.10.13.tar.bz2', 'Cristian =
Iorga <cristian.iorga@intel.com>']
['gst-plugins-good', '0.10.31', '0.11.90', 'GPLv2+ & LGPLv2.1+', 'multimedi=
a', 'http://gstreamer.freedesktop.org/', 'r3', 'pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native virtua=
l/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  gstreamer gst-plugins-base gconf cairo jpeg l=
ibpng zlib libid3tag flac     speex libsoup-2.4 pulseaudio gconf gconf-nati=
ve', 'https://bugzilla.gnome.org/enter_bug.cgi?product=3DGstreamer', 'None'=
, 'Plugins for GStreamer', 'UPDATE', 'N/A', 'http://gstreamer.freedesktop.o=
rg/src/gst-plugins-good/gst-plugins-good-0.10.31.tar.bz2', 'Cristian Iorga =
<cristian.iorga@intel.com>']
['libomxil', '0.9.3', 'N/A', 'LGPLv2.1+', 'base', 'http://omxil.sourceforge=
=2Enet/', 'r0', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  libvorbis libogg alsa-lib libmad', 'None', 'None'=
, 'Bellagio OpenMAX Integration Layer', 'ErrParseDir:/omxil/:-:libomxil-bel=
lagio-0.9.3.tar.gz:downloads.sourceforge.net/omxil/libomxil-bellagio-0.9.3.=
tar.gz', '0.9.3', 'http://downloads.sourceforge.net/omxil/libomxil-bellagio=
-0.9.3.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>']
['gst-plugins-bad', '0.10.23', '0.11.90', 'GPLv2+ & LGPLv2+ & LGPLv2.1+ ', =
'multimedia', 'http://gstreamer.freedesktop.org/', 'r2', 'pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base libmusic=
brainz tremor librsvg curl', 'https://bugzilla.gnome.org/enter_bug.cgi?prod=
uct=3DGstreamer', 'None', 'Plugins for GStreamer', 'UPDATE', 'N/A', 'http:/=
/gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-0.10.23.tar.=
bz2', 'Cristian Iorga <cristian.iorga@intel.com>']
['gst-plugins-ugly', '0.10.19', '0.11.90', 'GPLv2+ & LGPLv2.1+ & LGPLv2+', =
'multimedia', 'http://gstreamer.freedesktop.org/', 'r1', 'pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base libid3ta=
g libmad mpeg2dec liba52 lame', 'https://bugzilla.gnome.org/enter_bug.cgi?p=
roduct=3DGstreamer', 'None', 'Plugins for GStreamer', 'UPDATE', 'N/A', 'htt=
p://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-0.10.19=
=2Etar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>']
['libmad', '0.15.1b', 'N/A', 'GPLv2+', 'libs', 'http://sourceforge.net/proj=
ects/mad/', 'r2', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  libid3tag', 'http://sourceforg=
e.net/tracker/?group_id=3D12349&atid=3D112349', 'None', 'MPEG Audio Decoder=
 Library', 'ErrParseDir:/mad/:-:libmad-0.15.1b.tar.gz:downloads.sourceforge=
=2Enet/mad/libmad-0.15.1b.tar.gz', '0.15.1b', 'http://downloads.sourceforge=
=2Enet/mad/libmad-0.15.1b.tar.gz', 'Saul Wold <sgw@linux.intel.com>']
['gstreamer', '0.10.36', '0.11.90', 'LGPLv2+', 'multimedia', 'http://gstrea=
mer.freedesktop.org/', 'r0', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native virtual/gettext gettext-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  glib-2.0 libxml2 bison-native flex-native', 'https://bugzilla.g=
nome.org/enter_bug.cgi?product=3DGstreamer', 'None', 'GStreamer is a multim=
edia framework for encoding and decoding video and sound. It supports a wid=
e range of formats including mp3, ogg, avi, mpeg and quicktime.', 'UPDATE',=
 '0.10.32', 'http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-0.10.=
36.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>']
['lame', '3.99.5', 'N/A', 'LGPLv2+', 'console/utils', 'http://sourceforge.n=
et/projects/lame/files/lame/', 'r1', 'autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  ', 'http://sourceforge.net/t=
racker/?group_id=3D290&atid=3D100290', 'None', 'LAME is an educational tool=
 to be used for learning about MP3 encoding.', 'ErrParseDir:/lame/:-:lame-3=
=2E99.5.tar.gz:downloads.sourceforge.net/lame/lame-3.99.5.tar.gz', '3.99.5'=
, 'http://downloads.sourceforge.net/lame/lame-3.99.5.tar.gz', 'Radu Moisan =
<radu.moisan@intel.com>']
['libsamplerate0', '0.1.8', 'N/A', 'GPLv2+', 'libs', 'unknown', 'r1', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  flac libsndfile1', 'None', 'None', 'An audio Sample R=
ate Conversion library', 'ErrParseDir:/SRC/:-:libsamplerate-0.1.8.tar.gz:ww=
w.mega-nerd.com/SRC/libsamplerate-0.1.8.tar.gz', '0.1.8', 'http://www.mega-=
nerd.com/SRC/libsamplerate-0.1.8.tar.gz', 'Cristian Iorga <cristian.iorga@i=
ntel.com>']
['gst-fluendo-mp3', '0.10.19', '0.10.20', 'MIT', 'multimedia', 'http://www.=
fluendo.com/resources/source-plugins.php', 'r0', 'pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 gstreamer zlib', 'None', 'None', 'Fluendo closed-format mp3 GStreamer plug=
-in', 'UPDATE', 'N/A', 'http://core.fluendo.com/gstreamer/src/gst-fluendo-m=
p3/gst-fluendo-mp3-0.10.19.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.=
com>']
['gst-fluendo-mpegdemux', '0.10.71', '0.10.71', 'MPLv1.1', 'multimedia', 'h=
ttp://www.fluendo.com/resources/source-plugins.php', 'r0', 'pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  gstreamer zlib', 'None', 'None', 'Fluendo closed-format mpeg vid=
eo GStreamer plug-in', 'MATCH', 'N/A', 'http://core.fluendo.com/gstreamer/s=
rc/gst-fluendo-mpegdemux/gst-fluendo-mpegdemux-0.10.71.tar.bz2', 'Cristian =
Iorga <cristian.iorga@intel.com>']
['tremor', '20120314', 'N/A', 'BSD', 'libs', 'unknown', 'r0', 'autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  lib=
ogg', 'None', 'None', 'tremor is a fixed point implementation of the vorbis=
 codec.', 'ErrSvnAccess:svn.xiph.org/trunk', '20120122', 'svn://svn.xiph.or=
g/trunk;module=3DTremor;rev=3D18221;protocol=3Dhttp', 'Cristian Iorga <cris=
tian.iorga@intel.com>']
['pax-utils', '0.2.2', '0.2.2', 'GPLv2+', 'base', 'http://www.gentoo.org/pr=
oj/en/hardened/pax-utils.xml', 'r0', ' virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'This is a sm=
all set of various PaX aware and related utilities for ELF binaries. It can=
 check ELF binary files and running processes for issues that might be rele=
vant when using ELF binaries along with PaX, such as non-PIC code or execut=
able stack and heap.', 'MATCH', 'N/A', 'http://gentoo.osuosl.org/distfiles/=
pax-utils-0.2.2.tar.bz2', 'Scott Garman <scott.a.garman@intel.com>']
['pax-utils-native', '0.2.2', '0.2.2', 'GPLv2+', 'base', 'http://www.gentoo=
=2Eorg/proj/en/hardened/pax-utils.xml', 'r0', ' ', 'None', 'None', 'This is=
 a small set of various PaX aware and related utilities for ELF binaries. I=
t can check ELF binary files and running processes for issues that might be=
 relevant when using ELF binaries along with PaX, such as non-PIC code or e=
xecutable stack and heap.', 'MATCH', 'N/A', 'http://gentoo.osuosl.org/distf=
iles/pax-utils-0.2.2.tar.bz2', 'Scott Garman <scott.a.garman@intel.com>']
['nativesdk-alsa-lib', '1.0.25', '1.0.26', 'LGPLv2.1 & GPLv2+', 'libs/multi=
media', 'http://www.alsa-project.org', 'r2', 'pkgconfig-native autoconf-nat=
ive automake-native libtool-native gnu-config-native virtual/i586-pokysdk-l=
inux-gcc-crosssdk virtual/nativesdk-i586-pokysdk-linux-compilerlibs virtual=
/nativesdk-libc', 'https://bugtrack.alsa-project.org/alsa-bug/login_page.ph=
p', 'None', 'Alsa sound library', 'UPDATE', 'N/A', 'ftp://ftp.alsa-project.=
org/pub/lib/alsa-lib-1.0.25.tar.bz2', 'None']
['alsa-utils', '1.0.25', '1.0.26', 'GPLv2+', 'console/utils', 'http://www.a=
lsa-project.org', 'r2', 'autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  alsa-lib n=
curses libsamplerate0', 'https://bugtrack.alsa-project.org/alsa-bug/login_p=
age.php', 'None', 'ALSA Utilities', 'UPDATE', 'N/A', 'ftp://ftp.alsa-projec=
t.org/pub/utils/alsa-utils-1.0.25.tar.bz2', 'Cristian Iorga <cristian.iorga=
@intel.com>']
['alsa-lib-native', '1.0.25', '1.0.26', 'LGPLv2.1 & GPLv2+', 'libs/multimed=
ia', 'http://www.alsa-project.org', 'r2', 'pkgconfig-native autoconf-native=
 automake-native libtool-native gnu-config-native  ', 'https://bugtrack.als=
a-project.org/alsa-bug/login_page.php', 'None', 'Alsa sound library', 'UPDA=
TE', 'N/A', 'ftp://ftp.alsa-project.org/pub/lib/alsa-lib-1.0.25.tar.bz2', '=
Cristian Iorga <cristian.iorga@intel.com>']
['alsa-lib', '1.0.25', '1.0.26', 'LGPLv2.1 & GPLv2+', 'libs/multimedia', 'h=
ttp://www.alsa-project.org', 'r2', 'pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'https://b=
ugtrack.alsa-project.org/alsa-bug/login_page.php', 'None', 'Alsa sound libr=
ary', 'UPDATE', 'N/A', 'ftp://ftp.alsa-project.org/pub/lib/alsa-lib-1.0.25.=
tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>']
['alsa-tools', '1.0.25', '1.0.26.1', 'GPLv2 & LGPLv2+', 'console/utils', 'h=
ttp://www.alsa-project.org', 'r0', 'autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  alsa-lib ncurses', 'https://bu=
gtrack.alsa-project.org/alsa-bug/login_page.php', 'None', 'Alsa Tools packa=
ge contains advanced tools for certain sound cards.', 'UPDATE', 'N/A', 'ftp=
://ftp.alsa-project.org/pub/tools/alsa-tools-1.0.25.tar.bz2', 'Kai Kang <ka=
i.kang@windriver.com>']
Database update successful!
Now updating pkgrecord table and generate new pkgrecord_filter table, pleas=
e wait a minute......
['milestone_target_to_db.py', '2012-04-15']
Any problem, please contact Saul Wold <sgw@linux.intel.com>=20

--tThc/1wpZn/ma/RB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="block_update_process_format_problem.log"

CHECK_DATE_pn-bigreqsproto= "Aug 27,2012"

--tThc/1wpZn/ma/RB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"
upstream_tracking.inc/67: CHECK_DATE_pn-bigreqsproto= "Aug 27,2012"
upstream_tracking.inc/69: RECIPE_UPSTREAM_DATE_pn-bind = "Jul 24,2012"
upstream_tracking.inc/70: CHECK_DATE_pn-bind = "Aug 27,2012"
upstream_tracking.inc/72: RECIPE_UPSTREAM_DATE_pn-binutils="Nov 21,2011"
upstream_tracking.inc/75: RECIPE_UPSTREAM_DATE_pn-bison="Jul 19,2012"
upstream_tracking.inc/76: CHECK_DATE_pn-bison="Aug 27,2012"
upstream_tracking.inc/82: CHECK_DATE_pn-blktrace = "Aug 27,2012"
upstream_tracking.inc/93: CHECK_DATE_pn-busybox = "Aug 27,2012"
upstream_tracking.inc/95: RECIPE_UPSTREAM_DATE_pn-byacc= "May 26,2012"
upstream_tracking.inc/107: RECIPE_UPSTREAM_DATE_pn-ccache = "Aug 11,2011"
upstream_tracking.inc/112: CHECK_DATE_pn-ccache = "Aug 27,2012"
upstream_tracking.inc/122: RECIPE_UPSTREAM_DATE_pn-clutter = "22 Mar,2012"
upstream_tracking.inc/123: CHECK_DATE_pn-clutter = "28 Aug,2012"
upstream_tracking.inc/126: CHECK_DATE_pn-cmake-native = "28 Aug, 2012"
upstream_tracking.inc/132: CHECK_DATE_pn-compositeproto = "Aug 28,2012"
upstream_tracking.inc/133: RECIPE_UPSTREAM_DATE_pn-connman-gnome="Aug 28,2012"
upstream_tracking.inc/136: CHECK_DATE_pn-connman = "Aug 28,2012"
upstream_tracking.inc/141: RECIPE_UPSTREAM_DATE_pn-consolekit = "May 2,2011"
upstream_tracking.inc/142: CHECK_DATE_pn-consolekit = "Aug 28,2012"
upstream_tracking.inc/155: CHECK_DATE_pn-createrepo = "Aug 28,2012"
upstream_tracking.inc/164: CHECK_DATE_pn-curl = "Aug 28,2012"
upstream_tracking.inc/167: CHECK_DATE_pn-cwautomacros = "Aug 28,2012"
upstream_tracking.inc/170: CHECK_DATE_pn-damageproto = "Aug 28,2012"
upstream_tracking.inc/185: RECIPE_UPSTREAM_DATE_Pn-diffutils = "Sept 3,2011"
upstream_tracking.inc/186: CHECK_DATE_pn-diffutils = "Aug 28,2012"
upstream_tracking.inc/189: CHECK_DATE_pn-directfb = "Aug 28,2012"
upstream_tracking.inc/191: RECIPE_UPSTREAM_DATE_pn-distcc="Dec 10,2008"
upstream_tracking.inc/192: CHECK_DATE_pn-distcc="Aug 28,2012"
upstream_tracking.inc/198: CHECK_DATE_pn-docbook-sgml-dtd = "Aug 28,2012"
upstream_tracking.inc/210: CHECK_DATE_pn-dropbear = "Aug 28,2012"
upstream_tracking.inc/220: CHECK_DATE_pn-ed = "Aug 28,2012"
upstream_tracking.inc/234: RECIPE_UPSTREAM_DATE_pn-empathy = "Aug 20,2012"
upstream_tracking.inc/235: CHECK_DATE_pn-empathy = "Aug 28,2012"
upstream_tracking.inc/238: CHECK_DATE_pn-enchant = "Aug 28,2012"
upstream_tracking.inc/275: CHECK_DATE_pn-fontconfig = "Aug 28,2012"
upstream_tracking.inc/278: CHECK_DATE_pn-fontsproto = "Aug 29,2012"
upstream_tracking.inc/292: CHECK_DATE_pn-fuse = "Aug 29,2012"
upstream_tracking.inc/295: CHECK_DATE_pn-gaku = "Aug 29,2012"
upstream_tracking.inc/298: CHECK_DATE_pn-galago-daemon = "Aug 29,2012"
upstream_tracking.inc/301: CHECK_DATE_pn-gamin = "Aug 29,2012"
upstream_tracking.inc/303: RECIPE_UPSTREAM_DATE_pn-gawk = "Mar 28,2012"
upstream_tracking.inc/307: RECIPE_UPSTREAM_DATE_pn-gcc = "Jun 14,2012"
upstream_tracking.inc/311: CHECK_DATE_pn-gccmakedep = "Aug 29,2012"
upstream_tracking.inc/327: RECIPE_UPSTREAM_DATE_pn-ghostscript = "Aug 8,2012"
upstream_tracking.inc/331: CHECK_DATE_pn-git = "Aug 29,2012"
upstream_tracking.inc/333: RECIPE_UPSTREAM_DATE_pn-glew = "Jun 08,2012"
upstream_tracking.inc/341: CHECK_DATE_pn-glproto = "Aug 29,2012"
upstream_tracking.inc/362: CHECK_DATE_pn-grep = "Aug 29,2012"
upstream_tracking.inc/365: CHECK_DATE_pn-groff = "Aug 29,2012"
upstream_tracking.inc/398: RECIPE_UPSTREAM_DATE_pn-guile = "Jul 07,2012"
upstream_tracking.inc/402: CHECK_DATE_pn-gupnp-av = "Aug 29,2012"
upstream_tracking.inc/405: CHECK_DATE_pn-gupnp = "Aug 29,2012"
upstream_tracking.inc/408: CHECK_DATE_pn-gypsy = "Aug 29,2012"
upstream_tracking.inc/411: CHECK_DATE_pn-gzip = "Aug 29,2012"
upstream_tracking.inc/414: CHECK_DATE_pn-hal-info = "Nov 30,2009"
upstream_tracking.inc/423: CHECK_DATE_pn-hicolor-icon-theme = "Aug 29,2012"
upstream_tracking.inc/426: CHECK_DATE_pn-hostap-utils = "Aug 29,2012"
upstream_tracking.inc/432: CHECK_DATE_pn-imake = "Aug 29,2012"
upstream_tracking.inc/435: RECIPE_UPSTREAM_DATE_pn-initscripts = "Aug 06,2012"
upstream_tracking.inc/439: CHECK_DATE_pn-inputproto = "Aug 29,2012"
upstream_tracking.inc/444: RECIPE_UPSTREAM_DATE_pn-intltool = "Feb 26,2012"
upstream_tracking.inc/445: CHECK_DATE_pn-intltool = "Aug 29,2012"
upstream_tracking.inc/448: CHECK_DATE_pn-iproute2 = "Aug 29,2012"
upstream_tracking.inc/451: CHECK_DATE_pn-iptables = "Aug 29,2012"
upstream_tracking.inc/453: RECIPE_UPSTREAM_DATE_pn-iputils = "Oct 06,2010"
upstream_tracking.inc/454: CHECK_DATE_pn-iputils = "Aug 29,2012"
upstream_tracking.inc/459: RECIPE_UPSTREAM_DATE_pn-iso-codes = "Aug 08,2012"
upstream_tracking.inc/460: CHECK_DATE_Pn-iso-codes = "Aug 29,2012"
upstream_tracking.inc/466: CHECK_DATE_pn-js = "Aug 29,2012"
upstream_tracking.inc/468: RECIPE_UPSTREAM_DATE_pn-json-glib = "Jun 30,2012"
upstream_tracking.inc/469: CHECK_DATE_pn-json-glib = "Aug 29,2012"
upstream_tracking.inc/472: CHECK_DATE_pn-kbproto = "Aug 29,2012"
upstream_tracking.inc/480: CHECK_DATE_pn-kexec-tools = "Aug 29,2012"
upstream_tracking.inc/503: CHECK_DATE_pn_libacpi = "Aug 29,2012"
upstream_tracking.inc/509: CHECK_DATE_pn-libarchive = "Aug 29,2012"
upstream_tracking.inc/512: CHECK_DATE_pn-libart-lgpl = "Aug 30,2010"
upstream_tracking.inc/518: RECIPE_UPSTREAM_DATE_pn-libcanberra = "May 15,2012"
upstream_tracking.inc/519: CHECK_DATE_pn-libcanberra = "Aug 30,2012"
upstream_tracking.inc/527: RECIPE_UPSTREAM_DATE_pn-libconvert-asn1-perl = "Apr 16,2008"
upstream_tracking.inc/528: CHECK_DATE_pn-libconvert-asn1-perl = "Aug 30,2012"
upstream_tracking.inc/531: CHECK_DATE_pn-libcroco = "Aug 30,2012"
upstream_tracking.inc/534: CHECK_DATE_pn-libdaemon = "Aug 30,2012"
upstream_tracking.inc/537: CHECK_DATE_pn-libdmx = "Aug 30,2012"
upstream_tracking.inc/541: CHECK_DATE_pn-libdrm = "Aug 30,2012"
upstream_tracking.inc/544: CHECK_DATE_pn-liberation-fonts = "Aug 30,2012"
upstream_tracking.inc/547: RECIPE_UPSTREAM_DATE_pn-libetpan = "Sep 06,2011"
upstream_tracking.inc/548: CHECK_DATE_pn-libetpan = "Aug 30,2012"
upstream_tracking.inc/557: CHECK_DATE_pn-libfakekey = "Aug 30,2012"
upstream_tracking.inc/560: CHECK_DATE_pn-libffi = "Aug 30,2012"
upstream_tracking.inc/568: RECIPE_UPSTREAM_DATE_pn-libfribidi = "Aug 27,2012"
upstream_tracking.inc/569: CHECK_DATE_pn-libfribidi = "Aug 30,2012"
upstream_tracking.inc/571: RECIPE_UPSTREAM_DATE_pn-libgalago = "Oct 07,2006"
upstream_tracking.inc/572: CHECK_DATE_pn-libgalago = "Aug 30,2012"
upstream_tracking.inc/574: RECIPE_UPSTREAM_DATE_pn-libgcc = "Jun 07,2012"
upstream_tracking.inc/578: CHECK_DATE_pn-libgcrypt = "Aug 30,2012"
upstream_tracking.inc/580: RECIPE_UPSTREAM_DATE_pn-libgdata = "Apr 02,2012"
upstream_tracking.inc/581: CHECK_DATE_pn-libgdata = "Aug 30,2012"
upstream_tracking.inc/590: CHECK_DATE_pn-libgnome-keyring = "30 Aug 2012"
upstream_tracking.inc/592: RECIPE_UPSTREAM_DATE_pn-libgnomecanvas = "Jan 31,2011"
upstream_tracking.inc/593: CHECK_DATE_pn-libgnomecanvas = "Aug 30,2012"
upstream_tracking.inc/595: RECIPE_UPSTREAM_DATE_pn-libgnomekbd = "Aug 25,2012"
upstream_tracking.inc/596: CHECK_DATE_pn-libgnomekbd = "Aug 30,2012"
upstream_tracking.inc/601: RECIPE_UPSTREAM_DATE_pn-libgsf = "Apr 20,2012"
upstream_tracking.inc/602: CHECK_DATE_pn-libgsf = "Aug 30,2012"
upstream_tracking.inc/607: RECIPE_UPSTREAM_DATE_pn-libgtkstylus = "Jun 1,2012"
upstream_tracking.inc/608: CHECK_DATE_pn-libgtkstylus = "Aug 30,2012"
upstream_tracking.inc/614: CHECK_DATE_pn-libice = "Aug 30,2012"
upstream_tracking.inc/620: CHECK_DATE_pn-libid3tag = "Aug 30,2012"
upstream_tracking.inc/623: CHECK_DATE_pn-libidn = "Aug 30,2012"
upstream_tracking.inc/626: CHECK_DATE_pn-libjson = "Aug 30,2012"
upstream_tracking.inc/629: CHECK_DATE_pn-liblbuxutil = "Aug 30,2012"
upstream_tracking.inc/635: CHECK_DATE_pn-libmatchbox = "Aug 30,2012"
upstream_tracking.inc/641: CHECK_DATE_pn-libmusicbrainz = "Aug 30,2012"
upstream_tracking.inc/644: CHECK_DATE_pn-libnewt = "Aug 30,2012"
upstream_tracking.inc/647: CHECK_DATE_pn-libnfsidmap = "Aug 30,2012"
upstream_tracking.inc/649: RECIPE_UPSTREAM_DATE_pn-libnice = "Apr 03,2012"
upstream_tracking.inc/650: CHECK_DATE_pn-libnice = "Aug 30,2012"
upstream_tracking.inc/656: CHECK_DATE_pn-libnss-mdns = "Aug 30,2012"
upstream_tracking.inc/659: CHECK_DATE_pn-libogg = "Aug 30,2012"
upstream_tracking.inc/662: CHECK_DATE_pn-liboil = "Aug 30,2012"
upstream_tracking.inc/667: RECIPE_UPSTREAM_DATE_pn-libopensyc-plugin-evolution2 = "Aug 26,2011"
upstream_tracking.inc/668: CHECK_DATE_pn-libopensync-plugin-evolution2 = "Aug 30,2012"
upstream_tracking.inc/672: CHECK_DATE_pn-libowl-av = "Aug 30,2012"
upstream_tracking.inc/675: CHECK_DATE_pn-libowl = "Aug 30,2012"
upstream_tracking.inc/681: CHECK_DATE_pn-libpcap = "Aug 30,2012"
upstream_tracking.inc/684: CHECK_DATE_pn-libpciaccess = "Aug 30,2012"
upstream_tracking.inc/697: CHECK_DATE_pn-libpthread-stubs = "Aug 30,2012"
upstream_tracking.inc/700: CHECK_DATE_pn-librsvg = "Aug 30,2012"
upstream_tracking.inc/708: CHECK_DATE_pn-libsm = "Aug 30,2012"
upstream_tracking.inc/711: CHECK_DATE_pn-libsndfile1 = "Aug 30,2012"
upstream_tracking.inc/714: RECIPE_UPSTREAM_DATE_pn-libsoup = "Aug 20,2012"
upstream_tracking.inc/715: CHECK_DATE_pn-libsoup = "Aug 30,2012"
upstream_tracking.inc/718: CHECK_DATE_pn-libtasn1 = "Aug 30,2012"
upstream_tracking.inc/720: RECIPE_UPSTREAM_DATE_pn-libtelepathy = "Feb 11,2008"
upstream_tracking.inc/721: CHECK_DATE_pn-libtelepathy = "Aug 30,2012"
upstream_tracking.inc/724: CHECK_DATE_pn-libtheora = "Aug 30,2012"
upstream_tracking.inc/735: RECIPE_UPSTREAM_DATE_pn-libunistring = "May 02,2012"
upstream_tracking.inc/739: CHECK_DATE_pn-liburcu = "Aug 30,2012"
upstream_tracking.inc/742: CHECK_DATE_pn-liburi-perl = "Aug 30,2012"
upstream_tracking.inc/745: CHECK_DATE_pn-libusb-compat = "Aug 30,2012"
upstream_tracking.inc/748: CHECK_DATE_pn-libusb = "Aug 30,2012"
upstream_tracking.inc/754: CHECK_DATE_pn-libvorbis = "31 Aug,2012"
upstream_tracking.inc/757: CHECK_DATE_pn-libx11 = "Aug 31,2012"
upstream_tracking.inc/760: CHECK_DATE_pn-libxau = "Aug 31,2012"
upstream_tracking.inc/763: CHECK_DATE_pn-libxaw = "Aug 31,2012"
upstream_tracking.inc/766: CHECK_DATE_pn-libxcalibrate = "Aug 31,2012"
upstream_tracking.inc/769: CHECK_DATE_pn-libxcb = "Aug 31,2012"
upstream_tracking.inc/772: CHECK_DATE_pn-libxcomposite = "Aug 31,2012"
upstream_tracking.inc/775: CHECK_DATE_pn-libxcursor = "Aug 31,2012"
upstream_tracking.inc/778: CHECK_DATE_pn-libxdamage = "Aug 31,2012"
upstream_tracking.inc/781: CHECK_DATE_pn-libxdmcp = "Aug 31,2012"
upstream_tracking.inc/783: RECIPE_UPSTREAM_DATE_pn-libxevie = "Oct 31,2010"
upstream_tracking.inc/784: CHECK_DATE_pn-libxevie = "Aug 31,2012"
upstream_tracking.inc/787: CHECK_DATE_pn-libxext = "Aug 31,2012"
upstream_tracking.inc/790: CHECK_DATE_pn-libxfixes = "Aug 31,2012"
upstream_tracking.inc/793: CHECK_DATE_pn-libxfont = "Aug 31,2012"
upstream_tracking.inc/796: CHECK_DATE_pn-libxfontcache = "Aug 31,2012"
upstream_tracking.inc/798: RECIPE_UPSTREAM_DATE_pn-libxft = "Jun 02,2012"
upstream_tracking.inc/799: CHECK_DATE_pn-libxft = "Aug 31,2012"
upstream_tracking.inc/802: CHECK_DATE_pn-libxi = "Aug 31,2012"
upstream_tracking.inc/805: CHECK_DATE_pn-libxinerama = "Aug 31,2012"
upstream_tracking.inc/808: CHECK_DATE_pn-libxkbfile = "Aug 31,2012"
upstream_tracking.inc/810: RECIPE_UPSTREAM_DATE_pn-libxkbui = "Apr 27,2006"
upstream_tracking.inc/811: CHECK_DATE_pn-libxkbui = "Aug 31,2012"
upstream_tracking.inc/813: RECIPE_UPSTREAM_DATE_pn-libxklavier = "Jan 11,2010"
upstream_tracking.inc/814: CHECK_DATE_pn-libxklavier = "Aug 31,2012"
upstream_tracking.inc/817: CHECK_DATE_pn-libxml-parser-perl = "Aug 31,2012"
upstream_tracking.inc/820: CHECK_DATE_pn-libxml2 = "Aug 31,2012"
upstream_tracking.inc/824: CHECK_DATE_pn-libxml2 = "Aug 31,2012"
upstream_tracking.inc/827: CHECK_DATE_pn-libxp = "Aug 31,2012"
upstream_tracking.inc/830: CHECK_DATE_pn-libxmp = "Aug 31,2012"
upstream_tracking.inc/833: CHECK_DATE_pn-libxprintapputil = "Aug 31,2012"
upstream_tracking.inc/836: CHECK_DATE_pn-libxprintutil = "Aug 31,2012"
upstream_tracking.inc/839: CHECK_DATE_pn-libxrandr = "Aug 31,2012"
upstream_tracking.inc/842: CHECK_DATE_pn-libxrender = "Aug 31,2012"
upstream_tracking.inc/845: CHECK_DATE_pn-libxres = "Aug 31,2012"
upstream_tracking.inc/848: CHECK_DATE_pn-libxscrnsaver = "Aug 31,2012"
upstream_tracking.inc/851: CHECK_DATE_pn0libxsettings-client = "Aug 31,2012"
upstream_tracking.inc/857: CHECK_DATE_pn-libxt = "Aug 31,2012"
upstream_tracking.inc/860: CHECK_DATE_pn-libxtrap = "Aug 31,2012"
upstream_tracking.inc/863: CHECK_DATE_pn-libxtst = "Aug 31,2012"
upstream_tracking.inc/865: RECIPE_UPSTREAM_DATE_pn-libxv = "Mar 08,2012"
upstream_tracking.inc/866: CHECK_DATE_pn-libxv = "Aug 31,2012"
upstream_tracking.inc/869: CHECK_DATE_pn-libxvmc = "Aug 31,2012"
upstream_tracking.inc/872: CHECK_DATE_pn-libxv = "Aug 31,2012"
upstream_tracking.inc/875: CHECK_DATE_pn-libxxf86dga = "Aug 31,2012"
upstream_tracking.inc/878: CHECK_DATE_pn-libxxf86misc = "Aug 31,2012"
upstream_tracking.inc/881: CHECK_DATE_pn-libxxf86vm = "Aug 31,2012"
upstream_tracking.inc/883: CHECK_DATE_pn-libzypp = "Aug 31,2012"
upstream_tracking.inc/886: CHECK_DATE_pn-lighttpd = "Aug 31,2012"
upstream_tracking.inc/889: CHECK_DATE_pn-linux-firmware = "Aug 31,2012"
upstream_tracking.inc/890: RECIPE_UPSTREAM_DATE_pn-linuxdoc-tools = "Nov 22,2009"
upstream_tracking.inc/892: CHECK_DATE_pn-linuxdoc-tools = "Aug 31,2012"
upstream_tracking.inc/894: RECIPE_UPSTREAM_DATE_pn-logrotate = "Apr 28,2010"
upstream_tracking.inc/895: CHECK_DATE_pn-logrotate = "Aug 31,2012"
upstream_tracking.inc/897: RECIPE_UPSTREAM_DATE_pn-loudmouth = "Mar 27,2012"
upstream_tracking.inc/898: CHECK_DATE_pn-loudmouth = "Aug 31,2012"
upstream_tracking.inc/911: RECIPE_UPSTREAM_DATE_pn-lsof = "Apr 10,2012"
upstream_tracking.inc/918: CHECK_DATE_pn-lzo = "Aug 31,2012"
upstream_tracking.inc/920: RECIPE_UPSTREAM_DATE_pn-m4 = "Mar 01,2011"
upstream_tracking.inc/925: RECIPE_UPSTREAM_DATE_pn-make = "Aug 20,2010"
upstream_tracking.inc/926: CHECK_DATE_pn-make = "Aug 31,2012"
upstream_tracking.inc/928: RECIPE_UPSTREAM_DATE_pn-makedepend = "Mar 08,2012"
upstream_tracking.inc/929: CHECK_DATE_pn-makedepend = "Aug 31,2012"
upstream_tracking.inc/931: RECIPE_UPSTREAM_DATE_pn-makedevs = "Feb 11,2009"
upstream_tracking.inc/932: CHECK_DATE_pn-makedevs = "Aug 31,2012"
upstream_tracking.inc/935: CHECK_DATE_pn-man = "Aug 31,2012"
upstream_tracking.inc/939: CHECK_DATE_pn-mc = "Aug 31,2012"
upstream_tracking.inc/942: CHECK_DATE_pn-mdadm = "Aug 31,2012"
upstream_tracking.inc/945: CHECK_DATE_pn-menu-cache = "Aug 31,2012"
upstream_tracking.inc/947: RECIPE_UPSTREAM_DATE_pn-minicom = "Mar 29,2012"
upstream_tracking.inc/951: CHECK_DATE_pn-mesa-dri = "Aug 31,2012"
upstream_tracking.inc/954: RECIPE_UPSTREAM_DATE_pn-metacity = "Mar 20,2012"
upstream_tracking.inc/955: CHECK_DATE_pn-metacity = "Aug 31,2012"
upstream_tracking.inc/957: RECIPE_UPSTREAM_DATE_pn_mingetty = "Jan 18,2008"
upstream_tracking.inc/964: CHECK_DATE_pn-mkfontdir = "Aug 31,2012"
upstream_tracking.inc/967: CHECK_DATE_pn-mkfontscale = "Aug 31,2012"
upstream_tracking.inc/969: RECIPE_UPSTREAM_DATE_pn-mktemp = "Apr 25,2010"
upstream_tracking.inc/970: CHECK_DATE_pn-mktemp = "Aug 31,2012"
upstream_tracking.inc/974: CHECK_DATE_pn-module-init-tools = "Aug 31,2012"
upstream_tracking.inc/977: RECIPE_UPSTREAM_DATE_pn-mpeg2dec = "Jul 19,2008"
upstream_tracking.inc/985: CHECK_DATE_pn-msynctool = "Aug 31,2012"
upstream_tracking.inc/989: CHECK_DATE_pn-mtools = "Aug 31,2012"
upstream_tracking.inc/991: RECIPE_UPSTREAM_DATE_pn-mutter = "Aug 8,2012"
upstream_tracking.inc/992: CHECK_DATE_pn-mutter = "Aug 31,2012"
upstream_tracking.inc/993: RECIPE_UPSTREAM_DATE_pn-nasm= "Aug 18,2012"
upstream_tracking.inc/1001: CHECK_DATE_pn-neon = "Aug 31,2012"
upstream_tracking.inc/1003: RECIPE_UPSTREAM_DATE_pn-net-tools = "Apr 15,2001"
upstream_tracking.inc/1004: CHECK_DATE_pn-net-tools = "Aug 31,2012"
upstream_tracking.inc/1007: CHECK_DATE_pn-netbase = "Aug 31,2012"
upstream_tracking.inc/1013: CHECK_DATE_pn-ocf-linux = "Aug 31,2012"
upstream_tracking.inc/1016: CHECK_DATE_pn-ofono = "Aug 31,2012"
upstream_tracking.inc/1020: CHECK_DATE_pn-openjade = "Aug 31,2012"
upstream_tracking.inc/1022: RECIPE_UPSTREAM_DATE_pn-openobex = "Jul 29,2012"
upstream_tracking.inc/1023: CHECK_DATE_pn-openobex = "Aug 31,2012"
upstream_tracking.inc/1029: CHECK_DATE_pn-openssh = "Aug 31,2012"
upstream_tracking.inc/1033: CHECK_DATE_pn-openssl = "Aug 31,2012"
upstream_tracking.inc/1035: RECIPE_UPSTREAM_DATE_pn-openswan = "Mar 23,2012"
upstream_tracking.inc/1036: CHECK_DATE_pn-openswan = "Aug 31,2012"
upstream_tracking.inc/1043: CHECK_DATE_pn-opkg_nogpg = "Aug 31,2012"
upstream_tracking.inc/1053: CHECK_DATE_pn-owl-video = "Aug 31,2012"
upstream_tracking.inc/1056: CHECK_DATE_pn-pango = "Aug 31,2012"
upstream_tracking.inc/1058: RECIPE_UPSTREAM_DATE_pn-parted = "Mar 16,2012"
upstream_tracking.inc/1061: RECIPE_UPSTREAM_DATE_pn-patch = "Nov 13,2009"
upstream_tracking.inc/1065: CHECK_DATE_pn-pax-utils = "Aug 31,2012"
upstream_tracking.inc/1068: CHECK_DATE_pn-pax = "Aug 31,2012"
upstream_tracking.inc/1071: CHECK_DATE_pn-pciutils = "AUg 31,2012"
upstream_tracking.inc/1077: CHECK_DATE_pn-pcmciautils = "Aug 31,2012"
upstream_tracking.inc/1082: CHECK_DATE_pn-pixman = "Aug 31,2012"
upstream_tracking.inc/1088: CHECK_DATE_pn-pm-utils = "Aug 31,2012"
upstream_tracking.inc/1094: CHECK_DATE_pn-polkit = "Aug 31,2012"
upstream_tracking.inc/1097: RECIPE_UPSTREAM_DATE_pn-poppler-data = "Aug 31,2011"
upstream_tracking.inc/1098: CHECK_DATE_pn-poppler-data "Aug 31,2012"
upstream_tracking.inc/1100: RECIPE_UPSTREAM_DATE_pn-poppler = "Aug 10,2012"
upstream_tracking.inc/1101: CHECK_DATE_pn-poppler-data = "Aug 31,2012"
upstream_tracking.inc/1104: CHECK_DATE_pn-popt = "Aug 31,2012"
upstream_tracking.inc/1107: CHECK_DATE_pn-portmap = "Aug 31,2012"
upstream_tracking.inc/1116: CHECK_DATE_pn-ppp = "Aug 31,2012"
upstream_tracking.inc/1121: CHECK_DATE_pn-printproto = "Aug 31,2012"
upstream_tracking.inc/1124: CHECK_DATE_pn-procps = "Aug 31,2012"
upstream_tracking.inc/1132: CHECK_DATE_pn-psplash = "Aug 31,2012"
upstream_tracking.inc/1135: CHECK_DATE_pn-pth = "Aug 31,2012"
upstream_tracking.inc/1138: CHECK_DATE_pn-pulseaudio = "Aug 31,2012"
upstream_tracking.inc/1143: CHECK_DATE_pn-python-pycurl = "Aug 31,2012"
upstream_tracking.inc/1145: RECIPE_UPSTREAM_DATE_pn-python = "Apr 10,2012"
upstream_tracking.inc/1149: RECIPE_UPSTREAM_DATE_pn-qemu = "Jun 1,2012"
upstream_tracking.inc/1150: CHECK_DATE_pn-qemu = "3 Sep,2012"
upstream_tracking.inc/1160: CHECK_DATE_pn-qt-mobility-embedded = "Sep 03,2012"
upstream_tracking.inc/1163: CHECK_DATE_pn-quickly = "Sep 31,2012"
upstream_tracking.inc/1165: RECIPE_UPSTREAM_DATE_pn-quilt = "Feb 29,2012"
upstream_tracking.inc/1166: CHECK_DATE_pn-quilt = "Sep 03,2012"
upstream_tracking.inc/1172: CHECK_DATE_pn-randrproto = "Sep 03,2012"
upstream_tracking.inc/1178: CHECK_DATE_pn-recordproto = "Sep 03,2012"
upstream_tracking.inc/1181: CHECK_DATE_pn-renderproto = "Sep 03,2012"
upstream_tracking.inc/1184: CHECK_DATE_pn-resolvconf = "Sep 03,2012"
upstream_tracking.inc/1187: CHECK_DATE_pn-resourceproto = "Sep 03,2012"
upstream_tracking.inc/1193: CHECK_DATE_pn-rpm = "Sep 03,2012"
upstream_tracking.inc/1196: CHECK_DATE_pn-rsync = "Sep 03,2012"
upstream_tracking.inc/1199: CHECK_DATE_pn-rt-tests = "Sep 03,2012"
upstream_tracking.inc/1203: CHECK_DATE_pn-rxvt-unicode = "Sep 03,2012"
upstream_tracking.inc/1207: CHECK_DATE_pn-sato-icon-theme = "Sep 03,2012"
upstream_tracking.inc/1215: CHECK_DATE_pn-scrnsaverproto = "Sep 03,2012"
upstream_tracking.inc/1224: CHECK_DATE_pn-settings-daemon = "Sep 03,2012"
upstream_tracking.inc/1227: CHECK_DATE_pn-sgml-common = "Sep 03,2012"
upstream_tracking.inc/1230: CHECK_DATE_pn-sgmlspl = "Sep 03,2012"
upstream_tracking.inc/1233: CHECK_DATE_pn-shadow = "Sep 03,2012"
upstream_tracking.inc/1236: CHECK_DATE_pn-shared-mime-info = "Sep 03,2012"
upstream_tracking.inc/1239: RECIPE_UPSTREAM_DATE_pn-slang = "Apr 11,2011"
upstream_tracking.inc/1246: CHECK_DATE_pn-speex = "Sep 03,2012"
upstream_tracking.inc/1255: CHECK_DATE_pn-startup-notification = "Sep 03,2012"
upstream_tracking.inc/1262: RECIPE_UPSTREAM_DATE_pn-subversion = "Aug 15,2012"
upstream_tracking.inc/1266: CHECK_DATE_pn-sudo = "Sep 03,2012"
upstream_tracking.inc/1271: RECIPE_UPSTREAM_DATE_pn-sysklogd = "Oct 25,2010"
upstream_tracking.inc/1272: CHECK_DATE_pn-sysklogd = "Sep 03,2012"
upstream_tracking.inc/1279: CHECK_DATE_pn-sysprof = "Sep 03,2012"
upstream_tracking.inc/1284: RECIPE_UPSTREAM_DATE_pn-sysvinit = "Oct 10,2006"
upstream_tracking.inc/1285: CHECK_DATE_pn-sysvinit = "Sep 03,2012"
upstream_tracking.inc/1291: RECIPE_UPSTREAM_DATE_pn-talloc = "Sep 16,2011"
upstream_tracking.inc/1292: CHECK_DATE_pn-talloc = "Sep 03,2012"
upstream_tracking.inc/1304: CHECK_DATE_pn-telepathy-glib = "Sep 03,2012"
upstream_tracking.inc/1313: CHECK_DATE_pn-texinfo = "Sep 03,2012"
upstream_tracking.inc/1315: RECIPE_UPSTREAM_DATE_pn-tidy = "Mar 25,2009"
upstream_tracking.inc/1316: CHECK_DATE_pn-tidy = "Sep 03,2012"
upstream_tracking.inc/1318: RECIPE_UPSTREAM_DATE_pn-tiff = "Jun 15,2012"
upstream_tracking.inc/1322: CHECK_DATE_pn-time = "Sep 09,2012"
upstream_tracking.inc/1329: CHECK_DATE_pn-trace-cmd = "Sep 03,2012"
upstream_tracking.inc/1332: CHECK_DATE_pn-transfig = "Sep 03,2012"
upstream_tracking.inc/1335: CHECK_DATE_pn-trapproto = "Sep 03,2012"
upstream_tracking.inc/1338: CHECK_DATE_pn-tremor = "Sep 03,2012"
upstream_tracking.inc/1344: CHECK_DATE_pn-ttf-bitstream-vera = "Sep 03,2012"
upstream_tracking.inc/1347: CHECK_DATE_pn-tzdata = "Sep 06,2012"
upstream_tracking.inc/1355: CHECK_DATE_pn-udev = "Sep 03,2012"
upstream_tracking.inc/1357: RECIPE_UPSTREAM_DATE_pn-unifdef = "Feb 05,2011"
upstream_tracking.inc/1358: CHECK_DATE_pn-unifdef = "Sep 03,2012"
upstream_tracking.inc/1369: CHECK_DATE_pn-util-linux = "Sep 03,2012"
upstream_tracking.inc/1372: CHECK_DATE_pn-v86d = "Sep 03,2012"
upstream_tracking.inc/1380: CHECK_DATE_pn-vte = "Sep 03,2012"
upstream_tracking.inc/1385: RECIPE_UPSTREAM_DATE_pn-wbxml2 = "Jul 06,2010"
upstream_tracking.inc/1386: CHECK_DATE_pn-wbxml2 = "Sep 03,2012"
upstream_tracking.inc/1389: CHECK_DATE_pn-web-webkit = "Sep 03,2012"
upstream_tracking.inc/1402: CHECK_DATE_pn-wpa-supplicant = "Sep 03,2012"
upstream_tracking.inc/1404: RECIPE_UPSTREAM_DATE_pn-wv = "Jan 24,2011"
upstream_tracking.inc/1405: CHECK_DATE_pn-wv = "Sep 03,2012"
upstream_tracking.inc/1410: RECIPE_UPSTREAM_DATE_pn-x11perf = "Jul 28,2011"
upstream_tracking.inc/1411: CHECK_DATE_pn-x11perf = "Sep 03,2012"
upstream_tracking.inc/1417: CHECK_DATE_pn-xauth = "Sep 03,2012"
upstream_tracking.inc/1420: CHECK_DATE_pn-xbacklight = "Sep 03,2012"
upstream_tracking.inc/1423: CHECK_DATE_pn-xcb-proto = "Sep 03,2012"
upstream_tracking.inc/1426: CHECK_DATE_pn-xcmiscproto = "Sep 03,2012"
upstream_tracking.inc/1429: CHECK_DATE_pn-xcursor-transparent-theme = "Sep 03,2012"
upstream_tracking.inc/1431: RECIPE_UPSTREAM_DATE_pn-xdg-utils = "unkown"
upstream_tracking.inc/1432: CHECK_DATE_pn-xdg-utils = "Sep 03,2012"
upstream_tracking.inc/1436: CHECK_DATE_pn-xdpyinfo = "Sep 03,2012"
upstream_tracking.inc/1438: RECIPE_UPSTREAM_DATE_pn-xev = "Oct 13,2009"
upstream_tracking.inc/1439: CHECK_DATE_pn-xev = "Sep 04,2012"
upstream_tracking.inc/1442: CHECK_DATE_pn-xextproto = "Oct 04,2012"
upstream_tracking.inc/1444: RECIPE_UPSTREAM_DATE_pn-xeyes = "Nov 25,2010"
upstream_tracking.inc/1445: CHECK_DATE_pn-xeyes = "Sep 04,2012"
upstream_tracking.inc/1448: CHECK_DATE_pn-x86-input-keyboard = "Sep 04,2012"
upstream_tracking.inc/1451: CHECK_DATE_pn-xf86bigfontproto = "Sep 04,2012"
upstream_tracking.inc/1454: CHECK_DATE_pn-x86dgaproto = "Sep 04,2012"
upstream_tracking.inc/1457: CHECK_DATE_pn-xf86driproto = "Sep 04,2012"
upstream_tracking.inc/1460: CHECK_DATE_pn-xf86miscproto = "Sep 04,2012"
upstream_tracking.inc/1463: CHECK_DATE_pn-xf86rushproto = "Sep 04,2012"
upstream_tracking.inc/1466: CHECK_DATE_pn-xf86vidmodeproto = "Sep 04,2012"
upstream_tracking.inc/1469: CHECK_DATE_pn-xhost = "Sep 04,2012"
upstream_tracking.inc/1472: CHECK_DATE_pn-xineramaproto = "Sep 04,2012"
upstream_tracking.inc/1474: RECIPE_UPSTREAM_DATE_pn-xinetd = "May 9,2012"
upstream_tracking.inc/1475: CHECK_DATE_pn-xinetd = "Sep 04,2012"
upstream_tracking.inc/1478: CHECK_DATE_pn-xinit = "Sep 04,2012"
upstream_tracking.inc/1483: CHECK_DATE_pn-xkbcomp = "Sep 04,2012"
upstream_tracking.inc/1486: CHECK_DATE_pn-xkeyboard-config = "Sep 04,2012"
upstream_tracking.inc/1489: CHECK_DATE_pn-xmodmap = "Sep 04,2012"
upstream_tracking.inc/1492: RECIPE_UPSTREAM_DATE_pn-xournal = "Jul 4,2012"
upstream_tracking.inc/1493: CHECK_DATE_pn-xournal = "Sep 04,2012"
upstream_tracking.inc/1496: CHECK_DATE_pn-xprop = "Sep 04,2012"
upstream_tracking.inc/1499: CHECK_DATE_pn-xproto = "Sep 04,2012"
upstream_tracking.inc/1502: CHECK_DATE_pn-xproxymanagementprotocol = "Sep 04,2012"
upstream_tracking.inc/1505: CHECK_DATE_pn-xrandr = "Sep 04,2012"
upstream_tracking.inc/1507: RECIPE_UPSTREAM_DATE_pn-xrdb = "Apr 05,2011"
upstream_tracking.inc/1508: CHECK_DATE_pn-xrdb = "Sep 04,2012"
upstream_tracking.inc/1515: CHECK_DATE_pn-xset = "Sep 04,2012"
upstream_tracking.inc/1518: CHECK_DATE_pn-xtrans = "Sep 04,2012"
upstream_tracking.inc/1521: CHECK_DATE_pn-xtscal = "Sep 04,2012"
upstream_tracking.inc/1524: CHECK_DATE_pn-xvideo-tests = "Sep 04,2012"
upstream_tracking.inc/1526: RECIPE_UPSTREAM_DATE_pn-xvinfo = "Feb 25,2012"
upstream_tracking.inc/1527: CHECK_DATE_pn-xvinfo = "Sep 04,2012"
upstream_tracking.inc/1530: CHECK_DATE_pn-xwininfo = "Sep 04,2012"
upstream_tracking.inc/1533: CHECK_DATE_pn-xz = "Sep 04,2012"
upstream_tracking.inc/1535: RECIPE_UPSTREAM_DATE_pn-yaffs2-utils = "Jul 6,2012"
upstream_tracking.inc/1536: CHECK_DATE_pn-yaffs2-utils = "Sep 04,2012"
upstream_tracking.inc/1542: CHECK_DATE_pn-zeroconf = "Sep 04,2012"
upstream_tracking.inc/1548: CHECK_DATE_pn-zlib = "Sep 04,2012"

--tThc/1wpZn/ma/RB--
