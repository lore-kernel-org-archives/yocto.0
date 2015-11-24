Return-Path: <caiortp@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B82B3E00BAB; Tue, 24 Nov 2015 05:48:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (caiortp[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 738C4E00BB7
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 05:48:14 -0800 (PST)
Received: by vkfr145 with SMTP id r145so11655805vkf.0
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 05:48:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ES+PdMI4hSJVYd3/haI6TQdpJOkfyLmzHfrqYiGTAXg=;
	b=wB+y4SAM3YtKPlaPgkEH+OteQRZqOt5vygSuZh81tfU+7HmC0t4sXweTq+dIUQoMSe
	Jog0WBIBM7B38XsKQjwjbpl0SNIe361TzwsN/qlsrcEFz3L7X+bp1T4nnwMzqEYPNNis
	TkESj5+VtT3XFk79YvzMU0X+/kCycMFxgN7R92yHcPKq+uYNhTHKPS3XjQe2qwa1f64t
	Sk7UQW+WzHJIh+m9J8i063TCAJEYYUMe4VsMv20wgsSSJeqRXTUoUUbkbQ1cszx0XBh8
	lrKtZC8jgxm6jPQnmJLSWpoaublZQen13fa+J8attGiG4SY0TVsjA9SCOiSRL+VOdzO5
	ElYA==
MIME-Version: 1.0
X-Received: by 10.31.154.12 with SMTP id c12mr12036506vke.152.1448372893540;
	Tue, 24 Nov 2015 05:48:13 -0800 (PST)
Received: by 10.31.82.3 with HTTP; Tue, 24 Nov 2015 05:48:13 -0800 (PST)
Date: Tue, 24 Nov 2015 11:48:13 -0200
Message-ID: <CAJqtCybKFSzf2uhe3ox7LTExCOF+KGNGRHL_hecz6LipTKNmug@mail.gmail.com>
From: Caio <caiortp@gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Help with Opensips Recipe - QA run found fatal errors
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
X-List-Received-Date: Tue, 24 Nov 2015 13:48:28 -0000
Content-Type: multipart/alternative; boundary=001a1140f58ad2671c0525499731

--001a1140f58ad2671c0525499731
Content-Type: text/plain; charset=UTF-8

Hello,

I'm writing a recipe to a Sip proxy Opensips, but I'm having problems with
QA Issues.
In the First time I tried to use make install from Opensips Makefile I had
problem with QA Issues,  so I added all the folders to FILES_${PN} and
FILES_${PN} but I still having problem.

So I decided to start small, creating the folder structure and copy only
the binary files and after I will copy all the files using the  do_install
function.

But when I added the folders and I started to have problems with QA again.

FILES_${PN} = " \
        ${sbindir}/* \
        ${sysconfdir}/* \
        ${sysconfdir}/opensips/* \
        ${libdir}/* \
        ${libdir}/opensips/* \
        ${libdir}/opensips/modules/* \
        "
Someone could help me with this problem?


Thank you very much

Best Regards,

Caio Pereira


ERROR: QA Issue: opensips: The compile log indicates that host include
and/or library paths were used.
         Please check the log
'/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky-linux-gnueabi/opensips/2.2.0-r0/temp/log.do_compile'
for more information. [compile-host-path]


ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky-linux-gnueabi/opensips/2.2.0-r0/temp/log.do_package_qa.30973
ERROR: Task 9
(/home/icchw/fsl-community-bsp/sources/icchw/meta-caio/recipes-telephony/opensips/
opensips_2.2.0.bb, do_package_qa) failed with exit code '1'


cat
/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky-linux-gnueabi/opensips/2.2.0-r0/temp/log.do_package_qa.30973

DEBUG: Python function read_subpackage_metadata finished
ERROR: QA Issue: opensips: The compile log indicates that host include
and/or library paths were used.
         Please check the log
'/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky-linux-gnueabi/opensips/2.2.0-r0/temp/log.do_compile'
for more information. [compile-host-path]
NOTE: Checking Package: opensips-dbg
NOTE: arm-poky-linux-gnueabi-objdump -p
/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky-linux-gnueabi/opensips/2.2.0-r0/packages-split/opensips-dbg/usr/sbin/.debug/opensips
NOTE: Checking Package: opensips-staticdev
NOTE: Checking Package: opensips-dev
NOTE: Checking Package: opensips-doc
NOTE: Checking Package: opensips-locale
NOTE: Checking Package: opensips
NOTE: arm-poky-linux-gnueabi-objdump -p
/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky-linux-gnueabi/opensips/2.2.0-r0/packages-split/opensips/usr/sbin/opensips
ERROR: QA run found fatal errors. Please consider fixing them.
DEBUG: Python function do_package_qa finished
ERROR: Function failed: do_package_qa


opensips_2.2.bb

DESCRIPTION = "SIP Proxy"
HOMEPAGE = "http://www.opensips.org"
LICENSE = "GPLv2"
DEPENDS = "sqlite3 libxml2 openssl confuse curl"
LIC_FILES_CHKSUM = "file://COPYING;md5=007e0c25afacf8e39c37f27c8212bc67"

SRC_URI = "git://github.com/OpenSIPS/opensips.git;branch=master \
           file://Makefile.conf \
           "
SRCREV = "d6660513634c8e4305e7c5b03510893efced1b68"
S = "${WORKDIR}/git"
inherit autotools pkgconfig

OPENSIPS_CPPFLAGS = "-fexpensive-optimizations -fomit-frame-pointer
-fsigned-char -Wcast-align -fPIC "

OSREL = "${LINUX_VERSION}"
OSREL .= "3.10.17"
#FIX-ME
OPENSIPS_ARCH .= "${TUNE_PKGARCH}"
OPENSIPS_MAKEFLAGS = "ARCH=${OPENSIPS_ARCH}  OS=linux OSREL=${OSREL}"
OPENSIPS_BUILD_DIR = "${S}"
OPENSIPS_INCLUDE_BASE_MODULES = "\"presence db_sqlite\""
export TLS = "1"
OPENSIPS_EXCLUDE_MODULES = "\"aaa_radius b2b_logic cachedb_cassandra
cachedb_couchbase cachedb_memcached cachedb_mongodb cachedb_redis
carrierroute compression cpl-c db_berkeley db_http db_mysql db_oracle
db_perlvdb db_postgres db_unixodbc dialplan emergency event_rabbitmq h350
regex identity jabber json ldap lua httpd mi_xmlrpc_ng mmgeoip osp perl
pi_http presence presence_dialoginfo presence_mwi presence_xml proto_sctp
proto_tls pua pua_bla pua_dialoginfo pua_mi pua_usrloc pua_xmpp python
rest_client rls sngtc snmpstats tlsops xcap xcap_client xmpp proto_wsi\""

OPENSIPS_DEBUG_MODE = ""

do_configure(){
        cp ${WORKDIR}/Makefile.conf ${S}
}

do_compile() {
        oe_runmake -C ${OPENSIPS_BUILD_DIR} ${OPENSIPS_MAKEFLAGS}
${OPENSIPS_DEBUG_MODE} include_modules="${OPENSIPS_INCLUDE_BASE_MODULES}"
prefix=${D}${prefix} modules app

}

#I decide to move in small steps, so this installations doesn't have all
the files
do_install() {

        install -d ${D}${sbindir}/
        install -d ${D}${sysconfdir}
        install -d ${D}${sysconfdir}/opensips/
        install -d ${D}${libdir}
        install -d ${D}${libdir}/opensips
        install -d ${D}${libdir}/opensips/modules
        install -m 0755 ${S}/opensips ${D}${sbindir}/

        #oe_runmake -C ${OPENSIPS_BUILD_DIR}
include_modules="${OPENSIPS_INCLUDE_BASE_MODULES}" prefix=${D}${prefix}
install-modules

}

do_install_append() {
#       rm -rf ${D}${prefix}/share/
#       rm -rf ${D}${libdir}/opensips/opensipsctl/
#       rm -rf ${D}${prefix}/etc/
#       rm -rf ${D}${prefix}/etc/opensips/tls/
#       rm -rf ${D}${prefix}${libdir}/opensips/opensipsctl
#       rm -rf ${D}${prefix}${libdir}/opensips/modules/.debug
#       rm -rf ${D}${prefix}/share
}

FILES_${PN} = " \
        ${sbindir}/* \
        ${sysconfdir}/* \
        ${sysconfdir}/opensips/* \
        ${libdir}/* \
        ${libdir}/opensips/* \
        ${libdir}/opensips/modules/* \
        "

FILES_${PN}-dbg += "${sbindir}/opensips/modules/.debug/* \
                   ${sbindir}/.debug/*"

RDEPENDS_${PN} = "python"

ALLOW_EMPTY_${PN} = "1"
ALLOW_EMPTY_${PN}-dev = "1"
ALLOW_EMPTY_${PN}-locale = "1"
ALLOW_EMPTY_${PN}-doc = "1"
ALLOW_EMPTY_${PN}-staticdev = "1"

PACKAGE = "${PN} ${PN}-dbg "


-- 
----------------------------------------------
Caio Pereira

--001a1140f58ad2671c0525499731
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br><br>I&#39;m writing a recipe to a=
 Sip proxy Opensips, but I&#39;m having problems with QA Issues.<br>In the =
First time I tried to use make install from Opensips Makefile I had problem=
 with QA Issues,=C2=A0 so I added all the folders to FILES_${PN} and FILES_=
${PN} but I still having problem.<br><br>So I decided to start small, creat=
ing the folder structure and copy only the binary files and after I will co=
py all the files using the=C2=A0 do_install function.<br><br>But when I add=
ed the folders and I started to have problems with QA again.<br><br>FILES_$=
{PN} =3D &quot; \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${sbindir}/=
* \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${sysconfdir}/* \<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${sysconfdir}/opensips/* \<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${libdir}/* \<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 ${libdir}/opensips/* \<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 ${libdir}/opensips/modules/* \<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 &quot;<br>Someone could help me with this problem?<br=
><br><br></div>Thank you very much<br><br>Best Regards, <br></div><br></div=
>Caio Pereira<br><div><div><div><br><div><br>ERROR: QA Issue: opensips: The=
 compile log indicates that host include and/or library paths were used.<br=
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Please check the log &#39=
;/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-pok=
y-linux-gnueabi/opensips/2.2.0-r0/temp/log.do_compile&#39; for more informa=
tion. [compile-host-path]<br><br></div><div></div><div><br>ERROR: QA run fo=
und fatal errors. Please consider fixing them.<br>ERROR: Function failed: d=
o_package_qa<br>ERROR: Logfile of failure stored in: /home/icchw/fsl-commun=
ity-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky-linux-gnueabi/opensip=
s/2.2.0-r0/temp/log.do_package_qa.30973<br>ERROR: Task 9 (/home/icchw/fsl-c=
ommunity-bsp/sources/icchw/meta-caio/recipes-telephony/opensips/<a href=3D"=
http://opensips_2.2.0.bb">opensips_2.2.0.bb</a>, do_package_qa) failed with=
 exit code &#39;1&#39;<br><br></div><div><br>cat /home/icchw/fsl-community-=
bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky-linux-gnueabi/opensips/2.=
2.0-r0/temp/log.do_package_qa.30973<br><br>DEBUG: Python function read_subp=
ackage_metadata finished<br>ERROR: QA Issue: opensips: The compile log indi=
cates that host include and/or library paths were used.<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Please check the log &#39;/home/icchw/fsl=
-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky-linux-gnueabi/=
opensips/2.2.0-r0/temp/log.do_compile&#39; for more information. [compile-h=
ost-path]<br>NOTE: Checking Package: opensips-dbg<br>NOTE: arm-poky-linux-g=
nueabi-objdump -p /home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7a=
t2hf-vfp-neon-poky-linux-gnueabi/opensips/2.2.0-r0/packages-split/opensips-=
dbg/usr/sbin/.debug/opensips<br>NOTE: Checking Package: opensips-staticdev<=
br>NOTE: Checking Package: opensips-dev<br>NOTE: Checking Package: opensips=
-doc<br>NOTE: Checking Package: opensips-locale<br>NOTE: Checking Package: =
opensips<br>NOTE: arm-poky-linux-gnueabi-objdump -p /home/icchw/fsl-communi=
ty-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky-linux-gnueabi/opensips=
/2.2.0-r0/packages-split/opensips/usr/sbin/opensips<br>ERROR: QA run found =
fatal errors. Please consider fixing them.<br>DEBUG: Python function do_pac=
kage_qa finished<br>ERROR: Function failed: do_package_qa<br><br></div><div=
><br></div><div><a href=3D"http://opensips_2.2.bb">opensips_2.2.bb</a><br><=
/div><div><br>DESCRIPTION =3D &quot;SIP Proxy&quot;<br>HOMEPAGE =3D &quot;<=
a href=3D"http://www.opensips.org">http://www.opensips.org</a>&quot;<br>LIC=
ENSE =3D &quot;GPLv2&quot;<br>DEPENDS =3D &quot;sqlite3 libxml2 openssl con=
fuse curl&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D007e0c25=
afacf8e39c37f27c8212bc67&quot;<br><br>SRC_URI =3D &quot;git://<a href=3D"ht=
tp://github.com/OpenSIPS/opensips.git;branch=3Dmaster">github.com/OpenSIPS/=
opensips.git;branch=3Dmaster</a> \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 file://Makefile.conf \<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;<br>SRCREV =3D &quot;d6660513634=
c8e4305e7c5b03510893efced1b68&quot;<br>S =3D &quot;${WORKDIR}/git&quot;<br>=
inherit autotools pkgconfig<br><br clear=3D"all"><div><div><div><div>OPENSI=
PS_CPPFLAGS =3D &quot;-fexpensive-optimizations -fomit-frame-pointer -fsign=
ed-char -Wcast-align -fPIC &quot;<br><br>OSREL =3D &quot;${LINUX_VERSION}&q=
uot;<br>OSREL .=3D &quot;3.10.17&quot;<br>#FIX-ME<br>OPENSIPS_ARCH .=3D &qu=
ot;${TUNE_PKGARCH}&quot;<br>OPENSIPS_MAKEFLAGS =3D &quot;ARCH=3D${OPENSIPS_=
ARCH}=C2=A0 OS=3Dlinux OSREL=3D${OSREL}&quot;<br>OPENSIPS_BUILD_DIR =3D &qu=
ot;${S}&quot;<br>OPENSIPS_INCLUDE_BASE_MODULES =3D &quot;\&quot;presence db=
_sqlite\&quot;&quot;<br>export TLS =3D &quot;1&quot;<br>OPENSIPS_EXCLUDE_MO=
DULES =3D &quot;\&quot;aaa_radius b2b_logic cachedb_cassandra cachedb_couch=
base cachedb_memcached cachedb_mongodb cachedb_redis carrierroute compressi=
on cpl-c db_berkeley db_http db_mysql db_oracle db_perlvdb db_postgres db_u=
nixodbc dialplan emergency event_rabbitmq h350 regex identity jabber json l=
dap lua httpd mi_xmlrpc_ng mmgeoip osp perl pi_http presence presence_dialo=
ginfo presence_mwi presence_xml proto_sctp proto_tls pua pua_bla pua_dialog=
info pua_mi pua_usrloc pua_xmpp python rest_client rls sngtc snmpstats tlso=
ps xcap xcap_client xmpp proto_wsi\&quot;&quot;<br><br>OPENSIPS_DEBUG_MODE =
=3D &quot;&quot;<br><br>do_configure(){<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 cp ${WORKDIR}/Makefile.conf ${S}<br>}<br><br>do_compile() {<br=
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 oe_runmake -C ${OPENSIPS_BUILD_=
DIR} ${OPENSIPS_MAKEFLAGS} ${OPENSIPS_DEBUG_MODE} include_modules=3D&quot;$=
{OPENSIPS_INCLUDE_BASE_MODULES}&quot;=C2=A0 prefix=3D${D}${prefix} modules =
app<br><br>}<br><br></div><div>#I decide to move in small steps, so this in=
stallations doesn&#39;t have all the files<br></div><div>do_install() {<br>=
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${sbindir}/<b=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${sysconfdir}<b=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${sysconfdir}/o=
pensips/<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${lib=
dir}<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${libdir}=
/opensips<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${li=
bdir}/opensips/modules<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 instal=
l -m 0755 ${S}/opensips ${D}${sbindir}/<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #oe_runmake -C =
${OPENSIPS_BUILD_DIR} include_modules=3D&quot;${OPENSIPS_INCLUDE_BASE_MODUL=
ES}&quot; prefix=3D${D}${prefix} install-modules<br><br>}<br><br>do_install=
_append() {<br>#=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rm -rf ${D}${prefix}/s=
hare/<br>#=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rm -rf ${D}${libdir}/opensip=
s/opensipsctl/<br>#=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rm -rf ${D}${prefix=
}/etc/<br>#=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rm -rf ${D}${prefix}/etc/op=
ensips/tls/<br>#=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rm -rf ${D}${prefix}${=
libdir}/opensips/opensipsctl<br>#=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rm -r=
f ${D}${prefix}${libdir}/opensips/modules/.debug<br>#=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 rm -rf ${D}${prefix}/share<br>}<br><br>FILES_${PN} =3D &quo=
t; \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${sbindir}/* \<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${sysconfdir}/* \<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${sysconfdir}/opensips/* \<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${libdir}/* \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 ${libdir}/opensips/* \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 ${libdir}/opensips/modules/* \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 &quot;<br><br>FILES_${PN}-dbg +=3D &quot;${sbindir}/opensips/modu=
les/.debug/* \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${sbindir}/.debug/*&quo=
t;<br><br>RDEPENDS_${PN} =3D &quot;python&quot;<br><br>ALLOW_EMPTY_${PN} =
=3D &quot;1&quot;<br>ALLOW_EMPTY_${PN}-dev =3D &quot;1&quot;<br>ALLOW_EMPTY=
_${PN}-locale =3D &quot;1&quot;<br>ALLOW_EMPTY_${PN}-doc =3D &quot;1&quot;<=
br>ALLOW_EMPTY_${PN}-staticdev =3D &quot;1&quot;<br><br>PACKAGE =3D &quot;$=
{PN} ${PN}-dbg &quot;<br><br><br>-- <br><div class=3D"gmail_signature">----=
------------------------------------------<br>Caio Pereira</div>
</div></div></div></div></div></div></div></div></div>

--001a1140f58ad2671c0525499731--
