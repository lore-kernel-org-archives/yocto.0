Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14BADE00DB7; Tue, 14 May 2019 03:14:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7196E00DA9
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 03:14:28 -0700 (PDT)
Received: by mail-ot1-f51.google.com with SMTP id n14so7753687otk.2
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 03:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=PzVU+/qdyBWC7pAehzd9FNNdUAtwPAbQIuDJnwjXumQ=;
	b=WKyiABp6GRH8FsBXleD8kKvcR3REf8KCIkAiK1C0JTjXrCM2lUpUIkcYqPrkvv9nFQ
	puNuigfvZkGVnTCrkU7jKdZ3TgGsgqxsZPcm1b+HtXwNZauNDM01jCKq4R7hyrUOHgzV
	yqpb0EzbEjVQWaskNAasMBiJbDbE/dRicL6gkJEqkqAYeMXvzCaHayQHNc3O/AKos4Wl
	QMH3CMbjyPPoptA0XaJdKQRhxjg0zBstXLD6w5jQcphJuvA4CWqcfpJ908w6huBUEzsu
	DPzB9yzQxU0PPzXD2+IhCR01orrcgY2MRkVp+B2xEVTau1OnFho2SpDz1jn4/Tbo//Yb
	Ktzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=PzVU+/qdyBWC7pAehzd9FNNdUAtwPAbQIuDJnwjXumQ=;
	b=bYjhuCGAh5bgC7ZzB8J5x6+3+dLf8/aoMUauMZMvsO384BKSTA3iepRHa/K5kZYriR
	i6+8aFk/IWc8Q9QgJfsjfLcvlKr/apcZ0zhJ8T3MZeC7GEjulvWYVPkbiwNKbtyGlEU7
	3T5/1jv1jFcBejeqatA3ncOmjyfu1hsUaaiVU24axmCwcYMNdtXjr+9p1qc4NUNpIvQz
	LRmL1LPUjqZkYUpKPKWtKHKEHFP+0OckDDZGlYTTPOPKDKB1Fhzl/z8+k57BgzOL0X6J
	4d7NzTdhTsAZquoSUjeov4jvphoYdTlcv6mEIgUBCLV2H7aGEEDELqfxIjJ9uSzAv757
	g+FA==
X-Gm-Message-State: APjAAAWNqhqg6+l+L9dAg3SUP7DIqJ8MksLzvXQWFruYpIAzukY0iAuE
	UseCvIgVTw2O1CaqL1xei/V/fp/kIJKymHhemIk=
X-Google-Smtp-Source: APXvYqwlXkrjsqGcpK8726c5CzLPUGtXe2LIQRgv8huR4fYajws7fx3ziRxQ0iVPUTs4uK3iEk8p9dNXl9kJvI1gsGM=
X-Received: by 2002:a9d:560b:: with SMTP id e11mr2778126oti.60.1557828868240; 
	Tue, 14 May 2019 03:14:28 -0700 (PDT)
MIME-Version: 1.0
References: <19d34d87c85a4b71936613b8fbb5736c@ifm.com>
In-Reply-To: <19d34d87c85a4b71936613b8fbb5736c@ifm.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 14 May 2019 12:14:17 +0200
Message-ID: <CANNYZj8B6qGjRF5eB6nTQdi5cgi+NH9hxtNy_W28kkR4eN3Wgw@mail.gmail.com>
To: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 14 May 2019 10:14:30 -0000
Content-Type: text/plain; charset="UTF-8"

How does your image recipe look like? Also, log.do_rootfs can provide
a hint about what got installed into the image (you will find it in
the image build directory).

Alex

On Tue, 14 May 2019 at 11:42, Pandey, Kamal <Kamal.Pandey@ifm.com> wrote:
>
> Hi
> I was trying to add ntp package to my image, I used the meta-networking layer for the recipe and added the ntp package to my custom image.bb recipe.
> After compiling I can see multiple packages in package-split directory of the working directory of ntp package, but these binaries are missing in the ROOTFS directory.
> Below is my ntp recipe:
>
>
> SUMMARY = "Network Time Protocol daemon and utilities"
> DESCRIPTION = "The Network Time Protocol (NTP) is used to \
> synchronize the time of a computer client or server to \
> another server or reference time source, such as a radio \
> or satellite receiver or modem."
> HOMEPAGE = "http://support.ntp.org"
> SECTION = "net"
> LICENSE = "NTP"
> LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=e877a1d567a6a58996d2b66e3e387003"
>
> DEPENDS = "libevent"
>
> SRC_URI = "http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-4.2/ntp-${PV}.tar.gz \
>            file://ntp-4.2.4_p6-nano.patch \
>            file://reproducibility-fixed-path-to-posix-shell.patch \
>            file://reproducibility-respect-source-date-epoch.patch \
>            file://ntpd \
>            file://ntp.conf \
>            file://ntpdate \
>            file://ntpdate.default \
>            file://ntpdate.service \
>            file://ntpd.service \
>            file://sntp.service \
>            file://sntp \
>            file://ntpd.list \
> "
>
> SRC_URI[md5sum] = "1522d66574bae14abb2622746dad2bdc"
> SRC_URI[sha256sum] = "709b222b5013d77d26bfff532b5ea470a8039497ef29d09363931c036cb30454"
>
> inherit autotools update-rc.d useradd systemd pkgconfig
>
> # The ac_cv_header_readline_history is to stop ntpdc depending on either
> # readline or curses
> EXTRA_OECONF += "--with-net-snmp-config=no \
>                  --without-ntpsnmpd \
>                  ac_cv_header_readline_history_h=no \
>                  --with-yielding_select=yes \
>                  --with-locfile=redhat \
>                  --without-rpath \
>                  "
> CFLAGS_append = " -DPTYS_ARE_GETPT -DPTYS_ARE_SEARCHED"
>
> USERADD_PACKAGES = "${PN}"
> NTP_USER_HOME ?= "/var/lib/ntp"
> USERADD_PARAM_${PN} = "--system --home-dir ${NTP_USER_HOME} \
>                        --no-create-home \
>                        --shell /bin/false --user-group ntp"
>
> # NB: debug is default-enabled by NTP; keep it default-enabled here.
> PACKAGECONFIG ??= "cap debug refclocks openssl \
>     ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)} \
> "
> PACKAGECONFIG[openssl] = "--with-openssl-libdir=${STAGING_LIBDIR} \
>                           --with-openssl-incdir=${STAGING_INCDIR} \
>                           --with-crypto, \
>                           --without-openssl --without-crypto, \
>                           openssl"
> PACKAGECONFIG[cap] = "--enable-linuxcaps,--disable-linuxcaps,libcap"
> PACKAGECONFIG[readline] = "--with-lineeditlibs,--without-lineeditlibs,readline"
> PACKAGECONFIG[refclocks] = "--enable-all-clocks,--disable-all-clocks,pps-tools"
> PACKAGECONFIG[debug] = "--enable-debugging,--disable-debugging"
> PACKAGECONFIG[mdns] = "ac_cv_header_dns_sd_h=yes,ac_cv_header_dns_sd_h=no,mdns"
> PACKAGECONFIG[ipv6] = "--enable-ipv6,--disable-ipv6,"
>
> do_install_append() {
>     install -d ${D}${sysconfdir}/init.d
>     install -m 644 ${WORKDIR}/ntp.conf ${D}${sysconfdir}
>     install -m 755 ${WORKDIR}/ntpd ${D}${sysconfdir}/init.d
>     install -d ${D}${bindir}
>     install -m 755 ${WORKDIR}/ntpdate ${D}${bindir}/ntpdate-sync
>
>     install -m 755 -d ${D}${NTP_USER_HOME}
>     chown ntp:ntp ${D}${NTP_USER_HOME}
>
>     # Fix hardcoded paths in scripts
>     sed -i 's!/usr/sbin/!${sbindir}/!g' ${D}${sysconfdir}/init.d/ntpd ${D}${bindir}/ntpdate-sync
>     sed -i 's!/usr/bin/!${bindir}/!g' ${D}${sysconfdir}/init.d/ntpd ${D}${bindir}/ntpdate-sync
>     sed -i 's!/etc/!${sysconfdir}/!g' ${D}${sysconfdir}/init.d/ntpd ${D}${bindir}/ntpdate-sync
>     sed -i 's!/var/!${localstatedir}/!g' ${D}${sysconfdir}/init.d/ntpd ${D}${bindir}/ntpdate-sync
>     sed -i 's!^PATH=.*!PATH=${base_sbindir}:${base_bindir}:${sbindir}:${bindir}!' ${D}${bindir}/ntpdate-sync
>     sed -i '1s,#!.*perl -w,#! ${bindir}/env perl,' ${D}${sbindir}/ntptrace
>     sed -i '/use/i use warnings;' ${D}${sbindir}/ntptrace
>     sed -i '1s,#!.*perl,#! ${bindir}/env perl,' ${D}${sbindir}/ntp-wait
>     sed -i '/use/i use warnings;' ${D}${sbindir}/ntp-wait
>     sed -i '1s,#!.*perl -w,#! ${bindir}/env perl,' ${D}${sbindir}/calc_tickadj
>     sed -i '/use/i use warnings;' ${D}${sbindir}/calc_tickadj
>
>     install -d ${D}/${sysconfdir}/default
>     install -m 644 ${WORKDIR}/ntpdate.default ${D}${sysconfdir}/default/ntpdate
>     install -m 0644 ${WORKDIR}/sntp ${D}${sysconfdir}/default/
>
>     install -d ${D}/${sysconfdir}/network/if-up.d
>     ln -s ${bindir}/ntpdate-sync ${D}/${sysconfdir}/network/if-up.d
>
>     install -d ${D}${systemd_unitdir}/system
>     install -m 0644 ${WORKDIR}/ntpdate.service ${D}${systemd_unitdir}/system/
>     install -m 0644 ${WORKDIR}/ntpd.service ${D}${systemd_unitdir}/system/
>     install -m 0644 ${WORKDIR}/sntp.service ${D}${systemd_unitdir}/system/
>
>     install -d ${D}${systemd_unitdir}/ntp-units.d
>     install -m 0644 ${WORKDIR}/ntpd.list ${D}${systemd_unitdir}/ntp-units.d/60-ntpd.list
>
>     # Remove an empty libexecdir.
>     rmdir --ignore-fail-on-non-empty ${D}${libexecdir}
> }
>
> PACKAGES += "ntpdate sntp ntpq ${PN}-tickadj ${PN}-utils"
> # NOTE: you don't need ntpdate, use "ntpd -q -g -x"
>
> # ntp originally includes tickadj. It's split off for inclusion in small firmware images on platforms
> # with wonky clocks (e.g. OpenSlug)
> RDEPENDS_${PN} = "${PN}-tickadj"
> # ntpd require libgcc for execution
> RDEPENDS_${PN} += "libgcc"
> # Handle move from bin to utils package
> RPROVIDES_${PN}-utils = "${PN}-bin"
> RREPLACES_${PN}-utils = "${PN}-bin"
> RCONFLICTS_${PN}-utils = "${PN}-bin"
> # ntpq was split out of ntp-utils
> RDEPENDS_${PN}-utils = "ntpq"
>
> SYSTEMD_PACKAGES = "${PN} ntpdate sntp"
> SYSTEMD_SERVICE_${PN} = "ntpd.service"
> SYSTEMD_SERVICE_ntpdate = "ntpdate.service"
> SYSTEMD_SERVICE_sntp = "sntp.service"
> SYSTEMD_AUTO_ENABLE_sntp = "disable"
>
> RPROVIDES_${PN} += "${PN}-systemd"
> RREPLACES_${PN} += "${PN}-systemd"
> RCONFLICTS_${PN} += "${PN}-systemd"
>
> RPROVIDES_ntpdate += "ntpdate-systemd"
> RREPLACES_ntpdate += "ntpdate-systemd"
> RCONFLICTS_ntpdate += "ntpdate-systemd"
>
> RSUGGESTS_${PN} = "iana-etc"
>
> FILES_${PN} = "${sbindir}/ntpd.ntp ${sysconfdir}/ntp.conf ${sysconfdir}/init.d/ntpd ${libdir} \
>     ${NTP_USER_HOME} \
>     ${systemd_unitdir}/ntp-units.d/60-ntpd.list ${libexecdir}\
> "
> FILES_${PN}-tickadj = "${sbindir}/tickadj"
> FILES_${PN}-utils = "${sbindir} ${datadir}/ntp/lib"
> RDEPENDS_${PN}-utils += "perl"
> FILES_ntpdate = "${sbindir}/ntpdate \
>     ${sysconfdir}/network/if-up.d/ntpdate-sync \
>     ${bindir}/ntpdate-sync \
>     ${sysconfdir}/default/ntpdate \
>     ${systemd_unitdir}/system/ntpdate.service \
> "
> FILES_sntp = "${sbindir}/sntp \
>               ${sysconfdir}/default/sntp \
>               ${systemd_unitdir}/system/sntp.service \
>              "
> FILES_ntpq = "${sbindir}/ntpq"
>
> CONFFILES_${PN} = "${sysconfdir}/ntp.conf"
> CONFFILES_ntpdate = "${sysconfdir}/default/ntpdate"
>
> INITSCRIPT_NAME = "ntpd"
> # No dependencies, so just go in at the standard level (20)
> INITSCRIPT_PARAMS = "defaults"
>
> pkg_postinst_ntpdate() {
>     if ! grep -q -s ntpdate $D/var/spool/cron/root; then
>         echo "adding crontab"
>         test -d $D/var/spool/cron || mkdir -p $D/var/spool/cron
>         echo "30 * * * *    ${bindir}/ntpdate-sync silent" >> $D/var/spool/cron/root
>     fi
> }
>
> inherit update-alternatives
>
> ALTERNATIVE_PRIORITY = "100"
>
> ALTERNATIVE_${PN} = "ntpd"
> ALTERNATIVE_LINK_NAME[ntpd] = "${sbindir}/ntpd"
>
> Now the ntpq package is missing from the rootfile system while its there in package-split and image directory of the ntp app.
>
> Can anyone tell me what could be the problem.
> Thanks and regards
> Kamal Pandey
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

