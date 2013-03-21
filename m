Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD906E0148A
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 13:27:48 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Mar 2013 13:27:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,888,1355126400"; d="scan'208";a="305787521"
Received: from wrk.jf.intel.com ([10.7.202.62])
	by orsmga002.jf.intel.com with ESMTP; 21 Mar 2013 13:27:46 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Mar 2013 13:24:21 -0700
Message-Id: <cover.1363896182.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1558587.S9v9mAN4hA@helios>
References: <1558587.S9v9mAN4hA@helios>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [meta-baryon] [PATCH v2 0/6] Updates and fixes
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
X-List-Received-Date: Thu, 21 Mar 2013 20:27:48 -0000

Hi Paul,

The old configuration bits are now included with the new samba recipe and
everything is again working out-of-the-box. Also, I've added a commit to 
the series that removes our workaround for the NFS regression; it has been
fixed both in OE-core as well as upstream.

The following changes since commit 566cb211cee8a9870257a4ac2fc706990a70b9d2:

  nfs-utils: update bbappend version to 1.2.7 (2013-02-27 15:24:30 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib strassek/baryon
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=strassek/baryon

Kevin Strasser (6):
  kernel: enable nfsd in linux-yocto 3.8
  ffmpegthumbnailer: update to 2.0.8
  ffmpegthumbnailer: include cstring
  lvm2: sync with meta-oe
  nfs-utils: remove NFS upcall workaround
  samba: sync with meta-oe

 .../nfs-utils/nfs-utils_1.2.7.bbappend             |    8 -
 .../bug_221618_precise-64bit-prototype.patch       |   20 +
 ...4104_mention-kerberos-in-smbspool-manpage.patch |   34 +
 ...m_7499-nss_wins-dont-clobber-daemons-logs.patch |   47 +
 .../bug_601406_fix-perl-path-in-example.patch      |   15 +
 ...04768_upstream_7826_drop-using-samba-link.patch |   21 +
 ...ug_604768_upstream_7826_fix-WHATSNEW-link.patch |   18 +
 ...onfigure-disable-core_pattern-cross-check.patch |   20 +
 .../configure-disable-getaddrinfo-cross.patch      |   11 +
 .../samba/samba-3.6.8/documentation.patch          |  302 +
 .../samba/samba-3.6.8/documentation2.patch         |  314 +
 .../samba-3.6.8/dont-build-VFS-examples.patch      |   31 +
 .../samba/samba-3.6.8/fhs-filespaths.patch         |   65 +
 .../samba/samba-3.6.8/installswat.sh.patch         |   23 +
 .../samba-3.6.8/libutil_drop_AI_ADDRCONFIG.patch   |   54 +
 .../samba-3.6.8/only_export_public_symbols.patch   |   21 +
 .../samba/samba-3.6.8/pam-examples.patch           |   17 +
 .../samba/samba-3.6.8/shadow_copy2_backport.patch  | 2101 +++
 .../samba/samba-3.6.8/smbclient-pager.patch        |   18 +
 .../samba/samba-3.6.8/smbtar-bashism.patch         |   19 +
 .../samba/samba-3.6.8/smbtorture-manpage.patch     |   94 +
 .../samba/samba-3.6.8/undefined-symbols.patch      |   24 +
 .../samba/samba-3.6.8/usershare.patch              |   38 +
 .../samba/samba-3.6.8/waf-as-source.patch          |18534 ++++++++++++++++++++
 recipes-connectivity/samba/samba-basic.inc         |   38 +-
 recipes-connectivity/samba/samba.inc               |   41 +-
 .../samba/samba/Managing-Samba.txt                 |   40 +
 recipes-connectivity/samba/samba/cifs.patch        |   10 +
 .../samba/{files => samba}/config-h.patch          |    0
 .../samba/{files => samba}/config-lfs.patch        |    0
 .../samba/samba/configure-3.3.0.patch              |   85 +
 .../samba/{files/init => samba/init.samba}         |    4 +-
 recipes-connectivity/samba/samba/init.winbind      |   38 +
 recipes-connectivity/samba/samba/mtab.patch        |   11 +
 .../samba/{files => samba}/quota.patch             |    0
 .../samba/{files => samba}/smb.conf                |    0
 .../samba/{files => samba}/smb.conf.example        |   34 +-
 recipes-connectivity/samba/{files => samba}/tdb.pc |    2 +-
 .../samba/{files => samba}/tdbheaderfix.patch      |    0
 .../samba/{files => samba}/volatiles.03_samba      |    0
 recipes-connectivity/samba/samba_3.5.6.bb          |   50 -
 recipes-connectivity/samba/samba_3.6.8.bb          |   73 +
 ...yocto_3.0.bbappend => linux-yocto_3.8.bbappend} |    0
 .../ffmpeg/ffmpegthumbnailer/include-cstring.patch |   25 +
 ...bnailer_2.0.7.bb => ffmpegthumbnailer_2.0.8.bb} |    9 +-
 recipes-support/lvm2/lvm2.inc                      |    6 +-
 recipes-support/lvm2/lvm2_2.02.85.bb               |    7 -
 recipes-support/lvm2/lvm2_2.02.97.bb               |    6 +
 48 files changed, 22223 insertions(+), 105 deletions(-)
 delete mode 100644 recipes-connectivity/nfs-utils/nfs-utils_1.2.7.bbappend
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/bug_221618_precise-64bit-prototype.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/bug_387266_upstream_4104_mention-kerberos-in-smbspool-manpage.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/bug_598313_upstream_7499-nss_wins-dont-clobber-daemons-logs.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/bug_601406_fix-perl-path-in-example.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/bug_604768_upstream_7826_drop-using-samba-link.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/bug_604768_upstream_7826_fix-WHATSNEW-link.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/configure-disable-core_pattern-cross-check.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/configure-disable-getaddrinfo-cross.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/documentation.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/documentation2.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/dont-build-VFS-examples.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/fhs-filespaths.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/installswat.sh.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/libutil_drop_AI_ADDRCONFIG.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/only_export_public_symbols.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/pam-examples.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/shadow_copy2_backport.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/smbclient-pager.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/smbtar-bashism.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/smbtorture-manpage.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/undefined-symbols.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/usershare.patch
 create mode 100644 recipes-connectivity/samba/samba-3.6.8/waf-as-source.patch
 create mode 100644 recipes-connectivity/samba/samba/Managing-Samba.txt
 create mode 100644 recipes-connectivity/samba/samba/cifs.patch
 rename recipes-connectivity/samba/{files => samba}/config-h.patch (100%)
 rename recipes-connectivity/samba/{files => samba}/config-lfs.patch (100%)
 create mode 100644 recipes-connectivity/samba/samba/configure-3.3.0.patch
 rename recipes-connectivity/samba/{files/init => samba/init.samba} (98%)
 create mode 100644 recipes-connectivity/samba/samba/init.winbind
 create mode 100644 recipes-connectivity/samba/samba/mtab.patch
 rename recipes-connectivity/samba/{files => samba}/quota.patch (100%)
 rename recipes-connectivity/samba/{files => samba}/smb.conf (100%)
 rename recipes-connectivity/samba/{files => samba}/smb.conf.example (94%)
 rename recipes-connectivity/samba/{files => samba}/tdb.pc (87%)
 rename recipes-connectivity/samba/{files => samba}/tdbheaderfix.patch (100%)
 rename recipes-connectivity/samba/{files => samba}/volatiles.03_samba (100%)
 delete mode 100644 recipes-connectivity/samba/samba_3.5.6.bb
 create mode 100644 recipes-connectivity/samba/samba_3.6.8.bb
 rename recipes-kernel/linux/{linux-yocto_3.0.bbappend => linux-yocto_3.8.bbappend} (100%)
 create mode 100644 recipes-multimedia/ffmpeg/ffmpegthumbnailer/include-cstring.patch
 rename recipes-multimedia/ffmpeg/{ffmpegthumbnailer_2.0.7.bb => ffmpegthumbnailer_2.0.8.bb} (71%)
 delete mode 100644 recipes-support/lvm2/lvm2_2.02.85.bb
 create mode 100644 recipes-support/lvm2/lvm2_2.02.97.bb

Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
-- 
1.7.9.5


