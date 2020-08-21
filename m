Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web12.143612.1598047714832576403
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Aug 2020 15:08:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=C9v56zp4;
 spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: C9Xg9VQJ2ivFUleETIf9uSHAWP7TuTMEcdy0Q3H6X/k1/mPHtUrw/WTQCvkSh5HKBscTpCy0V9
 gZNsRtD99R2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9720"; a="154907259"
X-IronPort-AV: E=Sophos;i="5.76,338,1592895600"; 
   d="scan'208";a="154907259"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Aug 2020 15:08:33 -0700
IronPort-SDR: elpxl3bA9id08dOOdN+gre2o2BwxdXUzmrHZt6B31WiIE0jmQbBcD4MSSE/RzxgbbT16jKnng6
 0Pg63HZ5Z/tQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,338,1592895600"; 
   d="scan'208";a="335430345"
Received: from orsmsx606-2.jf.intel.com (HELO ORSMSX606.amr.corp.intel.com) ([10.22.229.86])
  by FMSMGA003.fm.intel.com with ESMTP; 21 Aug 2020 15:08:33 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 21 Aug 2020 15:08:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 21 Aug 2020 15:08:32 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 21 Aug 2020 15:08:32 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 21 Aug 2020 15:08:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=glJjNvF8kSTezcWb6VWwBY5h7QYNXKk7/Owxl1YL6KmKJg7q7jV8RqCQexXAf/V3ltffiPEa7Ezl7YN9yxKckCHa5yb+gRtf34IN9WEHxc+3MNaeCT0vp77v0Q5KODeFvSWCGf5qePN5hVOvgCn2vv7xXavJPboIkltszicbp2R5qN4CqZwTV8o+2wURGaoRTYyA77zrSfFXJjC8HIz7drnD0RRdk35MDkzLrnyJ1yNIPXNjqDztGtTGF12QeWES7sC3aIIYTY2Zpuvx0owSc2RzHJslf2DtrWvvFIDEsimdGqKclLNBHPxmoGt0dEWnPAWncTTyV7zkZEuPUYhZyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tMM/cjEZEWPpMLBmjWg2Y9+FU8/KPArz8OzqBbK5a+U=;
 b=QSstgvbIqUgh4sz/af3Mm/HkAeG9HB8SmB+NMuigGQyFpZxBP5xGV5ZWal6tksTjCQh5lLJ1lFIkGcwvmBdqqRrrHeWoAj0Y3u9ZteHbt1mVaSuEF6DqJymoHbWfNVYRI/F9QLR5vS3EdtNA4hVr90KNvfr8WwW7WTn53W6WUCfrizihlxm31XGSt1OD8ZLFKIRJ/MNY66/NB+8l5lKL9TUyTlS9t7RsG42AaCHX8dwLcxeUcuw1BFCklwPSlgDA5AjEmy0tFXrJtW137JQDepcxbmLZiEq0UQg7CnnByTJmvDCah4EGFQS/bKqtuXXSSmAKiRW7+Upjb/ScQJhzXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tMM/cjEZEWPpMLBmjWg2Y9+FU8/KPArz8OzqBbK5a+U=;
 b=C9v56zp4azupAn5ecUwaL2PLoGzB7ZOpBZx9mdRB/Wk8C4+6gvEGM7SUV6tFyu5FvFCy89vo7k/mtgiuWQWY5E9PdrhnUjC8WBc7u8LqVrghC5uYXwQexAiXKUxE0t9GJ3+fcKRv+v/uT8pKS5hw8gOXkO5Fx2v2408uZV3caaA=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (52.135.226.29) by
 BYAPR11MB3543.namprd11.prod.outlook.com (20.178.239.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3283.15; Fri, 21 Aug 2020 22:08:31 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::61bf:2321:b9de:8866]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::61bf:2321:b9de:8866%7]) with mapi id 15.20.3305.026; Fri, 21 Aug 2020
 22:08:31 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [yocto] [ANNOUNCEMENT] Yocto Project 3.0.4 (zeus 22.0.4) Released
Thread-Topic: [yocto] [ANNOUNCEMENT] Yocto Project 3.0.4 (zeus 22.0.4)
 Released
Thread-Index: AdZ4AC6N3DaanL80T1eqkQuCqkEQSw==
Date: Fri, 21 Aug 2020 22:08:31 +0000
Message-ID: <BYAPR11MB2790772FAB5D3A45BCF56C24885B0@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.103.152.191]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c6865d4-1fa6-44aa-17ae-08d8461ebd4f
x-ms-traffictypediagnostic: BYAPR11MB3543:
x-microsoft-antispam-prvs: <BYAPR11MB354355CF3DC877504DAFEBA0885B0@BYAPR11MB3543.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Nm/kPPDokPorAWUjq4KDGQpHfTqeW6G0N21el7OLJQfN4JU7b3Wh+5fdQVAD1tBzpLJFOo/Setc/TXRyAemQpciqv2QQw4ta59Q+blOgfMYMzAw+pa7VZw9iQ26M5WpztTh86QgifIG7FrD4g4yWKGB0Vd9P0iHQL7PVzHtQ5Y8TGdTs2GjepAavnHHP8WcJqJTzgVBddxPz1fi85tW1eStXFIlnPGeNr4swtAzBeaQ2Bg4njtma2VGgjV4ckSSJmSY7qVoL/VeqT2ebz5dinmf3NOvjcy/nykksPL9Yt+k2U+gjpIn525h6mEDo0qOR8EyWhf7abA02Q/UPG1LblMioASohPDAFoUZ1HhAWOLdUc2HK1xykl/tyvCtLVKf6XqC4bb3nFp2s84qoWnOZCjqAQFM+3i+tIbjQB6hKT0pfiy9yuVNJymvgPM3kGUPC
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2790.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39860400002)(376002)(396003)(346002)(136003)(45080400002)(2906002)(76116006)(110136005)(478600001)(52536014)(66476007)(66946007)(9686003)(966005)(66556008)(64756008)(5660300002)(55016002)(66446008)(316002)(71200400001)(6506007)(83380400001)(26005)(7696005)(8936002)(86362001)(186003)(33656002)(8676002)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: rB9pANjY2mKPU12Q6TsurVzR7SYPaDI/Y5pfCfaluJVcHkmZlJRHRxdH1ZvHCvHgaVOYtyWBLfPbla97L4SyrYMkSm02xkrDk9lZpRVQj01RRFxh41QZKE+FpUGTYeGBUyWV0K5DaaH8cmaKqNY107fFgd1sugcF1UvkBnW76FUUdtmGV+paSCzVs9pNKQH7czFiNuEWPdZklKsq1I5x97Y7kmljn1o/DwondXCCV6hsqPp5RjUgf4M31mln0AqVvdMJYMCONLvgu45HrnjYVdQBXxbRA6vBwNptuur3b7CpR0crLDwgfYKBQja00LxpbKAIQ9cic+U3JjCZpds2h+Ux8WkZAHBThAYCDjvw+987UetOFTvfOOc4Dwd+62ijUO4KL0tpRNj7NQsMfKqT2x3pnhGeah/l1yiZ3KnNLviUP+z3qBUHgnVj0Yfmks/PneQgx8dNReeKrAxHmAJFzGXTw5bWAfas97Yd5bTINACaVa1Gx03i8DGHk3J2U5BCW+pm9ynQNIIiYIdth8tP/+2n+x/ZMInOfHAh96/kVC1YOvl6hSmMyfOfzJjt4zSn6OBsxVUetrp83roRzQetiVYgFCxW4W0zRRvx1NEPDnCZcW69vHJXtKa5QpaK97fwH/q2MjdhDUuAtdYyuKnUSg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c6865d4-1fa6-44aa-17ae-08d8461ebd4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2020 22:08:31.0476
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BzYUdGU6Qaa/jZJdl4P0SnraGsPQ2VatYkf90wmA8XcfWKEMSSy4h2DR9Wb4K3Yxu1FpCM2J2X0+Xwf9ILIK+yoD1QkHyEzMnlTlg/qu6wo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3543
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.0.4 (zeus-22.0.4) Release is=
 now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.4/poky-zeus-22.0=
.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0.4/poky-zeus-22.0.4.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.4/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.4/testreport.txt

Thank you for everyone's contributions to this release.

Sincerely,

Vineela Tummalapalli
Yocto Project Build and Release
vineela.tummalapalli@intel.com


--------------------------
yocto-3.0.4 Release Notes
--------------------------


--------------------------
 Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: zeus
Tag: yocto-3.0.4
Git Revision: f2eb22a8783f1eecf99bd4042695bab920eed00e
Release Artefact: poky-zeus-22.0.4
sha: da85224a290d484eeadb05ed69c64e3b9e0c873cf91c2e84e96dd54c4fd2752c
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.4/poky-zeus-22.0=
.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0.4/poky-zeus-22.0.4.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: zeus
Tag: 2019-10.4-zeus
Git Revision: 9cad716656b427e625a470a820b8b29b1ec9f976
Release Artefact: oecore-zeus-22.0.4
sha: 03e21646b2240382feb755ceaecc2474dca72a59ad796af1b2e993d253e2a242
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.4/oecore-zeus-22=
.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0.4/oecore-zeus-22.0.4.tar.bz=
2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: zeus
Tag: yocto-3.0.4
Git Revision: 756963cc28ebc163df7d7f4b4ee004c18d3d3260
Release Artefact: meta-mingw-zeus-22.0.4
sha: 434d33b2ea01134b1deb07ce67a83402239b707c8ef54287dcda83ee2f0a3346
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.4/meta-mingw-zeu=
s-22.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0.4/meta-mingw-zeus-22.0.4.ta=
r.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: zeus
Tag: yocto-3.0.4
Git Revision: 0f4eecc000f66d114ad258fa31aed66afa292166
Release Artefact: meta-gplv2-zeus-22.0.4
sha: 55008a3633729a17c33426b3f81792f204d3c4473beb148e5f9b46ab345850b8
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.4/meta-gplv2-zeu=
s-22.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0.4/meta-gplv2-zeus-22.0.4.ta=
r.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: zeus
Tag: 2019-10.4-zeus
Git Revision: fd279f857c98d492f43cc62d9ebae18ce6412b6e
Release Artefact: bitbake-zeus-22.0.4
sha: 1b3d68805fd9015a40bc52886618c513de7cc3817db8adbeb5daaa65e3c078eb
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.4/bitbake-zeus-2=
2.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0.4/bitbake-zeus-22.0.4.tar.b=
z2

---------------
Contributors
---------------
Adrian Bunk
Ahmad Fatoum
akuster
Alexander Kanavin
Anuj Mittal
Armin Kuster
Bruce Ashfield
Charles-Antoine Couret
haiqing
He Zhe
Hongxu Jia
Jain Sangeeta
Jan-Simon Moeller
jason.lau
Joe Slater
Kai Kang
Khem Raj
Konrad Weihmann
Lee Chee Yang
Lili Li
Li Zhou
Michael Halstead
Nicolas Dechesne
Otavio Salvador
Ovidiu Panait
Paul Barker
Peter Kjellerstedt
Pierre-Jean Texier
Rahul Taya
Ralph Siemsen
Richard Leitner
Richard Purdie
Sakib Sajal
Stephen Jolley
Tim Orling
Trevor Gamblin
Vineela Tummalapalli
wenlin.kang@windriver.com
Yann Dirson
Yi Zhao
Zhixiong Chi

---------------
 Known Issues
---------------
* vulkan-tools doesn't build on hosts where python3 is version 3.8.=20
  For such hosts this can be worked around with a buildtools tarball.


---------------
Security Fixes
---------------
libpcre: Add fix for CVE-2020-14155
go: Security Advisory - go - CVE-2020-15586
glibc: CVE-2020-6096
nss: Fix CVE-2020-12399
sqlite: backport CVE fix
python3: fix CVE-2020-14422
systemd: fix CVE-2020-13776
wpa-supplicant: Security fix CVE-2020-12695
perl: fix CVE-2020-10543 & CVE-2020-10878
dbus: fix CVE-2020-12049
libexif: fix CVE-2020-13114
gnutls: fixed CVE-2020-13777
qemu: fix CVE-2020-10702 & CVE-2020-13765
libjpeg-turbo: Fix CVE-2020-13790
nfs-utils: fix CVE-2019-3689
bind: fix CVE-2020-8616/7
glibc: CVE-2020-1752
ghostscript : fix CVE-2019-10216
qemu: fix CVE-2020-11869
python3: fix CVE-2020-8492


---------------
Fixes
---------------
Documentation: Prepared for 3.0.4 release
build-appliance-image: Update to zeus head revision
poky.conf: Bump version for 3.0.4 zeus release
pypi.bbclass: use new pypi UPSTREAM_CHECK_URI
pypi.bbclass: mind package suffix on version check
gstreamer1.0: fix builds with make 4.3
core: glib-2.0: fix requested libmount/mkostemp/selinux not being linked in
cve-update: handle baseMetricV2 as optional
python3-numpy: Stop shipping manual config files
selftest/context: Avoid tracebacks from tests using multiprocessing
perf: Correct the substitution of python shebangs
perf: fix build for v5.5+
utils: fix gcc 10 version detection
iso-codes: switch upstream branch master -> main
perl: Fix host specific modules problems
bind: update to 9.11.19
bind: update 9.11.5-P4 -> 9.11.13
mtd-utils: Fix return value of ubiformat
encodings: clear postinst script
wpa-supplicant: remove service templates from SYSTEMD_SERVICE
vim: _FORTIFY_SOURCE=3D2 be gone
patchelf: Add patch to address corrupt shared library issue
cve-check: include epoch in product version output
cve-check: Run it after do_fetch
file: add bzip2-replacement-native to DEPENDS to fix sstate issue
gcr: depends on gnupg-native
timezone: upgrade 2019c -> 2020a
python3: Upgrade 3.7.7 -> 3.7.8
libpam: Remove option 'obscure' from common-password
relocatable.bbclass: Avoid an exception if an empty pkgconfig dir exist
kernel.bbclass: Fix Module.symvers support
kernel-fitimage: introduce FIT_SIGN_ALG
python3: un-break disabling the readline PACKAGECONFIG
python3: make gdbm optional
bitbake: tests/fetch: Switch from git.infradead.org to a YP mirror
mesa: fix meson configure fix when 'dri' is excluded from PACKAGECONFIG
avahi: Don't advertise example services by default
strace: fix failing ptests
icu: update SRC_URI
gst-validate: upgrade 1.16.1 -> 1.16.2
gstreamer1.0-vaapi: upgrade 1.16.1 -> 1.16.2
gstreamer1.0-rtsp-server: upgrade 1.16.1 -> 1.16.2
gstreamer1.0-python: upgrade 1.16.1 -> 1.16.2
gstreamer1.0-omx: upgrade 1.16.1 -> 1.16.2
gstreamer1.0-libav: upgrade 1.16.1 -> 1.16.2
gstreamer1.0-plugins-ugly: upgrade 1.16.1 -> 1.16.2
gstreamer1.0-plugins-bad: upgrade 1.16.1 -> 1.16.2
gstreamer1.0-plugins-good: upgrade 1.16.1 -> 1.16.2
gstreamer1.0-plugins-base: upgrade 1.16.1 -> 1.16.2
gstreamer1.0: upgrade 1.16.1 -> 1.16.2
gstreamer1.0-python: add a patch to fix python 3.8 builds
wireless-regdb: Upgrade 2019.06.03 -> 2020.04.29
sstatesig: Optimise get_taskhash for hashequiv
targetcontrol: Fix leaking log handler
oeqa/qemurunner: Clean up failure handling
Documentation: Prepared for 3.0.3 release
resulttool/resultutils: Fix unicode error handling
