Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA48BE00DB7; Tue, 14 May 2019 02:42:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [91.90.150.80 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from s2080.ppsmtp.net (s2080.ppsmtp.net [91.90.150.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 560ADE00D9E
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 02:42:13 -0700 (PDT)
Received: from pps.filterd (s2080.ppsmtp.net [127.0.0.1])
	by s2080.ppsmtp.net (8.16.0.27/8.16.0.27) with SMTP id x4E9flbU022592
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 11:42:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : mime-version : content-type :
	content-transfer-encoding; s=pps;
	bh=rMWLzwPV81jpW6OomfMhl6xUU+qLm9SJWOI1/vM3Ocs=;
	b=Po0ytn+QJoQCJC+etFfd4rxnJ7EhkkBJTW+3pUKxM5WewyfYcg0vK5AeWo/b2btHW1Qh
	3DGmHEPrcUzUK8tjUn80/QXhjlBg9fPJxfj8qdfc7U68qb6U8x9ifs2+4dL1b7a4JqOa
	EjkZF7ju84iYVXC6F86/DFyypeuLfWm9dWuFv04rs1SLgXYtQ4HlUHlZfIbZW5XPRQZ1
	XHMYrHId0Coar2p3vBCs53H3zAbv9eqDkg02+EKkweiIfMw+RS+qahN0U3QqMDQchwrm
	8nnnIXJuiz+TBAJ3E8bfh341525fdg8Sh+Qp0soVnl2yK+pjMs35Yfhds22ZQdFJV8AA
	GQ== 
Received: from deesdmz226.dmz.es.de.ifm (mail26.ifm.com [194.156.152.226])
	by s2080.ppsmtp.net with ESMTP id 2sfgwah2pk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 11:42:12 +0200
Received: from deesdmz226.dmz.es.de.ifm (localhost.localdomain [127.0.0.1])
	by deesdmz226.dmz.es.de.ifm (Postfix) with ESMTP id 81549703842
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 11:42:11 +0200 (CEST)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ntp recipe not able to install few packages in the rootfs
Thread-Index: AdUKOBAtfuj1m45HTWSKwqCF2dM8JA==
Date: Tue, 14 May 2019 09:42:10 +0000
Message-ID: <19d34d87c85a4b71936613b8fbb5736c@ifm.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.111]
X-TM-AS-Product-Ver: SMEX-12.5.0.1684-8.5.1010-24610.002
X-TM-AS-Result: No-19.966900-5.000000-10
X-TMASE-MatchedRID: ZFzIhWOuIzvDBNgbKIiiTNtkEpZdBqoNMhomkrNJ+uzJC2Vrkbq/8Y29
	F7ctK2ClooqRp/SUGCvbfJ0SKt8a1cBH2qqdDtmaEPf7TDUOGoo/2Vs6mJY4ZiXA/FZCuuQ5ZfO
	7QhVVnP4zlaN++BIhSFf+wCFGZIKv4nM8SgEQxQrCtSG/SQAC8ZSL3AH2CZxK0ieyZ5IRMmY/sJ
	JrvRfE1KYT5hBaW7zFMEsioGk5kbwiDrsceLMV4b9bzwD89thZkKAa/khZ3iS/wPtA9baOj2jG/
	QBXoE4DMfn8X826aVPa+1K3CjvC9OchH/UJ5B6Ph2VzUlo4HVPxuhkRWK22GLsVAA7Kzak9igDB
	5Hfw5PITYI/85Kqi2t5f2X08jN39LSTGw1g/Kd5fLa2Qr61pJDFcf92WG8u/FAsTXoyZ8MvMlL6
	pgzzZip682k0b651vtBlBH6EljsdFsw2Lp+kSuHV895e/Bd2Jj5hUmqusTPhJdkX1f2fQXRz9Tk
	CTvD9+2A9CP2uYfmtRw3l4cc6G36+E45fdyyZX/c0+LJTMrN3SL+EVfOJR0wpcq1+LTpsUo8WMk
	QWv6iUfACoClnjRoeTCMddcL/gjkGUtrowrXLg=
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--19.966900-5.000000
X-TMASE-Version: SMEX-12.5.0.1684-8.5.1010-24610.002
X-TM-SNTS-SMTP: B7D5A45FC8D2CF20445D872B79F74EB9B3DB568C348811DEB30B78E00B5C4F362002:9
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.19367.x86_64 COMPUMAIL Date:
	20190514094211Z
X-Proofpoint-ID: SID=2sfgwah2pk QID=2sfgwah2pk-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-05-14_06:, , signatures=0
Subject: Re: ntp recipe not able to install few packages in the rootfs
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
X-List-Received-Date: Tue, 14 May 2019 09:42:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi
I was trying to add ntp package to my image, I used the meta-networking lay=
er for the recipe and added the ntp package to my custom image.bb recipe.
After compiling I can see multiple packages in package-split directory of t=
he working directory of ntp package, but these binaries are missing in the =
ROOTFS directory.
Below is my ntp recipe:


SUMMARY =3D "Network Time Protocol daemon and utilities"
DESCRIPTION =3D "The Network Time Protocol (NTP) is used to \
synchronize the time of a computer client or server to \
another server or reference time source, such as a radio \
or satellite receiver or modem."
HOMEPAGE =3D "http://support.ntp.org"
SECTION =3D "net"
LICENSE =3D "NTP"
LIC_FILES_CHKSUM =3D "file://COPYRIGHT;md5=3De877a1d567a6a58996d2b66e3e3870=
03"

DEPENDS =3D "libevent"

SRC_URI =3D "http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-4.2/ntp-${PV=
}.tar.gz \
           file://ntp-4.2.4_p6-nano.patch \
           file://reproducibility-fixed-path-to-posix-shell.patch \
           file://reproducibility-respect-source-date-epoch.patch \
           file://ntpd \
           file://ntp.conf \
           file://ntpdate \
           file://ntpdate.default \
           file://ntpdate.service \
           file://ntpd.service \
           file://sntp.service \
           file://sntp \
           file://ntpd.list \
"

SRC_URI[md5sum] =3D "1522d66574bae14abb2622746dad2bdc"
SRC_URI[sha256sum] =3D "709b222b5013d77d26bfff532b5ea470a8039497ef29d093639=
31c036cb30454"

inherit autotools update-rc.d useradd systemd pkgconfig

# The ac_cv_header_readline_history is to stop ntpdc depending on either
# readline or curses
EXTRA_OECONF +=3D "--with-net-snmp-config=3Dno \
                 --without-ntpsnmpd \
                 ac_cv_header_readline_history_h=3Dno \
                 --with-yielding_select=3Dyes \
                 --with-locfile=3Dredhat \
                 --without-rpath \
                 "
CFLAGS_append =3D " -DPTYS_ARE_GETPT -DPTYS_ARE_SEARCHED"

USERADD_PACKAGES =3D "${PN}"
NTP_USER_HOME ?=3D "/var/lib/ntp"
USERADD_PARAM_${PN} =3D "--system --home-dir ${NTP_USER_HOME} \
                       --no-create-home \
                       --shell /bin/false --user-group ntp"

# NB: debug is default-enabled by NTP; keep it default-enabled here.
PACKAGECONFIG ??=3D "cap debug refclocks openssl \
    ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)} \
"
PACKAGECONFIG[openssl] =3D "--with-openssl-libdir=3D${STAGING_LIBDIR} \
                          --with-openssl-incdir=3D${STAGING_INCDIR} \
                          --with-crypto, \
                          --without-openssl --without-crypto, \
                          openssl"
PACKAGECONFIG[cap] =3D "--enable-linuxcaps,--disable-linuxcaps,libcap"
PACKAGECONFIG[readline] =3D "--with-lineeditlibs,--without-lineeditlibs,rea=
dline"
PACKAGECONFIG[refclocks] =3D "--enable-all-clocks,--disable-all-clocks,pps-=
tools"
PACKAGECONFIG[debug] =3D "--enable-debugging,--disable-debugging"
PACKAGECONFIG[mdns] =3D "ac_cv_header_dns_sd_h=3Dyes,ac_cv_header_dns_sd_h=
=3Dno,mdns"
PACKAGECONFIG[ipv6] =3D "--enable-ipv6,--disable-ipv6,"

do_install_append() {
    install -d ${D}${sysconfdir}/init.d
    install -m 644 ${WORKDIR}/ntp.conf ${D}${sysconfdir}
    install -m 755 ${WORKDIR}/ntpd ${D}${sysconfdir}/init.d
    install -d ${D}${bindir}
    install -m 755 ${WORKDIR}/ntpdate ${D}${bindir}/ntpdate-sync

    install -m 755 -d ${D}${NTP_USER_HOME}
    chown ntp:ntp ${D}${NTP_USER_HOME}

    # Fix hardcoded paths in scripts
    sed -i 's!/usr/sbin/!${sbindir}/!g' ${D}${sysconfdir}/init.d/ntpd ${D}$=
{bindir}/ntpdate-sync
    sed -i 's!/usr/bin/!${bindir}/!g' ${D}${sysconfdir}/init.d/ntpd ${D}${b=
indir}/ntpdate-sync
    sed -i 's!/etc/!${sysconfdir}/!g' ${D}${sysconfdir}/init.d/ntpd ${D}${b=
indir}/ntpdate-sync
    sed -i 's!/var/!${localstatedir}/!g' ${D}${sysconfdir}/init.d/ntpd ${D}=
${bindir}/ntpdate-sync
    sed -i 's!^PATH=3D.*!PATH=3D${base_sbindir}:${base_bindir}:${sbindir}:$=
{bindir}!' ${D}${bindir}/ntpdate-sync
    sed -i '1s,#!.*perl -w,#! ${bindir}/env perl,' ${D}${sbindir}/ntptrace
    sed -i '/use/i use warnings;' ${D}${sbindir}/ntptrace
    sed -i '1s,#!.*perl,#! ${bindir}/env perl,' ${D}${sbindir}/ntp-wait
    sed -i '/use/i use warnings;' ${D}${sbindir}/ntp-wait
    sed -i '1s,#!.*perl -w,#! ${bindir}/env perl,' ${D}${sbindir}/calc_tick=
adj
    sed -i '/use/i use warnings;' ${D}${sbindir}/calc_tickadj

    install -d ${D}/${sysconfdir}/default
    install -m 644 ${WORKDIR}/ntpdate.default ${D}${sysconfdir}/default/ntp=
date
    install -m 0644 ${WORKDIR}/sntp ${D}${sysconfdir}/default/

    install -d ${D}/${sysconfdir}/network/if-up.d
    ln -s ${bindir}/ntpdate-sync ${D}/${sysconfdir}/network/if-up.d

    install -d ${D}${systemd_unitdir}/system
    install -m 0644 ${WORKDIR}/ntpdate.service ${D}${systemd_unitdir}/syste=
m/
    install -m 0644 ${WORKDIR}/ntpd.service ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/sntp.service ${D}${systemd_unitdir}/system/

    install -d ${D}${systemd_unitdir}/ntp-units.d
    install -m 0644 ${WORKDIR}/ntpd.list ${D}${systemd_unitdir}/ntp-units.d=
/60-ntpd.list

    # Remove an empty libexecdir.
    rmdir --ignore-fail-on-non-empty ${D}${libexecdir}
}

PACKAGES +=3D "ntpdate sntp ntpq ${PN}-tickadj ${PN}-utils"
# NOTE: you don't need ntpdate, use "ntpd -q -g -x"

# ntp originally includes tickadj. It's split off for inclusion in small fi=
rmware images on platforms
# with wonky clocks (e.g. OpenSlug)
RDEPENDS_${PN} =3D "${PN}-tickadj"
# ntpd require libgcc for execution
RDEPENDS_${PN} +=3D "libgcc"
# Handle move from bin to utils package
RPROVIDES_${PN}-utils =3D "${PN}-bin"
RREPLACES_${PN}-utils =3D "${PN}-bin"
RCONFLICTS_${PN}-utils =3D "${PN}-bin"
# ntpq was split out of ntp-utils
RDEPENDS_${PN}-utils =3D "ntpq"

SYSTEMD_PACKAGES =3D "${PN} ntpdate sntp"
SYSTEMD_SERVICE_${PN} =3D "ntpd.service"
SYSTEMD_SERVICE_ntpdate =3D "ntpdate.service"
SYSTEMD_SERVICE_sntp =3D "sntp.service"
SYSTEMD_AUTO_ENABLE_sntp =3D "disable"

RPROVIDES_${PN} +=3D "${PN}-systemd"
RREPLACES_${PN} +=3D "${PN}-systemd"
RCONFLICTS_${PN} +=3D "${PN}-systemd"

RPROVIDES_ntpdate +=3D "ntpdate-systemd"
RREPLACES_ntpdate +=3D "ntpdate-systemd"
RCONFLICTS_ntpdate +=3D "ntpdate-systemd"

RSUGGESTS_${PN} =3D "iana-etc"

FILES_${PN} =3D "${sbindir}/ntpd.ntp ${sysconfdir}/ntp.conf ${sysconfdir}/i=
nit.d/ntpd ${libdir} \
    ${NTP_USER_HOME} \
    ${systemd_unitdir}/ntp-units.d/60-ntpd.list ${libexecdir}\
"
FILES_${PN}-tickadj =3D "${sbindir}/tickadj"
FILES_${PN}-utils =3D "${sbindir} ${datadir}/ntp/lib"
RDEPENDS_${PN}-utils +=3D "perl"
FILES_ntpdate =3D "${sbindir}/ntpdate \
    ${sysconfdir}/network/if-up.d/ntpdate-sync \
    ${bindir}/ntpdate-sync \
    ${sysconfdir}/default/ntpdate \
    ${systemd_unitdir}/system/ntpdate.service \
"
FILES_sntp =3D "${sbindir}/sntp \
              ${sysconfdir}/default/sntp \
              ${systemd_unitdir}/system/sntp.service \
             "
FILES_ntpq =3D "${sbindir}/ntpq"

CONFFILES_${PN} =3D "${sysconfdir}/ntp.conf"
CONFFILES_ntpdate =3D "${sysconfdir}/default/ntpdate"

INITSCRIPT_NAME =3D "ntpd"
# No dependencies, so just go in at the standard level (20)
INITSCRIPT_PARAMS =3D "defaults"

pkg_postinst_ntpdate() {
    if ! grep -q -s ntpdate $D/var/spool/cron/root; then
        echo "adding crontab"
        test -d $D/var/spool/cron || mkdir -p $D/var/spool/cron
        echo "30 * * * *    ${bindir}/ntpdate-sync silent" >> $D/var/spool/=
cron/root
    fi
}

inherit update-alternatives

ALTERNATIVE_PRIORITY =3D "100"

ALTERNATIVE_${PN} =3D "ntpd"
ALTERNATIVE_LINK_NAME[ntpd] =3D "${sbindir}/ntpd"

Now the ntpq package is missing from the rootfile system while its there in=
 package-split and image directory of the ntp app.

Can anyone tell me what could be the problem.
Thanks and regards
Kamal Pandey


