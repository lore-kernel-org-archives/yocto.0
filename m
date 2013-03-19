Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5097CE0147F
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 03:10:23 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 19 Mar 2013 03:10:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,870,1355126400"; d="scan'208";a="308684960"
Received: from unknown (HELO helios.localnet) ([10.255.13.154])
	by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2013 03:10:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Date: Tue, 19 Mar 2013 10:10:15 +0000
Message-ID: <1558587.S9v9mAN4hA@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-25-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <cover.1363640001.git.kevin.strasser@linux.intel.com>
References: <cover.1363640001.git.kevin.strasser@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-baryon] [PATCH 0/5] Updates and fixes
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
X-List-Received-Date: Tue, 19 Mar 2013 10:10:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Kevin,

On Monday 18 March 2013 18:05:21 Kevin Strasser wrote:
> Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
> 
> The following changes since commit 566cb211cee8a9870257a4ac2fc706990a70b9d2:
> 
>   nfs-utils: update bbappend version to 1.2.7 (2013-02-27 15:24:30 +0000)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib strassek/baryon
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=strassek/baryon
> 
> Kevin Strasser (5):
>   kernel: enable nfsd in linux-yocto 3.8
>   ffmpegthumbnailer: update to 2.0.8
>   ffmpegthumbnailer: include cstring
>   samba: sync with meta-oe
>   lvm2: sync with meta-oe
> 
>  recipes-connectivity/samba/files/smb.conf          |   10 -
>  .../bug_221618_precise-64bit-prototype.patch       |   20 +
>  ...4104_mention-kerberos-in-smbspool-manpage.patch |   34 +
>  ...m_7499-nss_wins-dont-clobber-daemons-logs.patch |   47 +
>  .../bug_601406_fix-perl-path-in-example.patch      |   15 +
>  ...04768_upstream_7826_drop-using-samba-link.patch |   21 +
>  ...ug_604768_upstream_7826_fix-WHATSNEW-link.patch |   18 +
>  ...onfigure-disable-core_pattern-cross-check.patch |   20 +
>  .../configure-disable-getaddrinfo-cross.patch      |   11 +
>  .../samba/samba-3.6.8/documentation.patch          |  302 +
>  .../samba/samba-3.6.8/documentation2.patch         |  314 +
>  .../samba-3.6.8/dont-build-VFS-examples.patch      |   31 +
>  .../samba/samba-3.6.8/fhs-filespaths.patch         |   65 +
>  .../samba/samba-3.6.8/installswat.sh.patch         |   23 +
>  .../samba-3.6.8/libutil_drop_AI_ADDRCONFIG.patch   |   54 +
>  .../samba-3.6.8/only_export_public_symbols.patch   |   21 +
>  .../samba/samba-3.6.8/pam-examples.patch           |   17 +
>  .../samba/samba-3.6.8/shadow_copy2_backport.patch  | 2101 +++
>  .../samba/samba-3.6.8/smbclient-pager.patch        |   18 +
>  .../samba/samba-3.6.8/smbtar-bashism.patch         |   19 +
>  .../samba/samba-3.6.8/smbtorture-manpage.patch     |   94 +
>  .../samba/samba-3.6.8/undefined-symbols.patch      |   24 +
>  .../samba/samba-3.6.8/usershare.patch              |   38 +
>  .../samba/samba-3.6.8/waf-as-source.patch          |18534
> ++++++++++++++++++++ recipes-connectivity/samba/samba-basic.inc         |  
> 38 +-
>  recipes-connectivity/samba/samba.inc               |   43 +-
>  .../samba/samba/Managing-Samba.txt                 |   40 +
>  recipes-connectivity/samba/samba/cifs.patch        |   10 +
>  .../samba/{files => samba}/config-h.patch          |    0
>  .../samba/{files => samba}/config-lfs.patch        |    0
>  .../samba/samba/configure-3.3.0.patch              |   85 +
>  .../samba/{files/init => samba/init.samba}         |    4 +-
>  recipes-connectivity/samba/samba/init.winbind      |   38 +
>  recipes-connectivity/samba/samba/mtab.patch        |   11 +
>  .../samba/{files => samba}/quota.patch             |    0
>  .../{files/smb.conf.example => samba/smb.conf}     |   34 +-
>  recipes-connectivity/samba/{files => samba}/tdb.pc |    2 +-
>  .../samba/{files => samba}/tdbheaderfix.patch      |    0
>  .../samba/{files => samba}/volatiles.03_samba      |    0
>  recipes-connectivity/samba/samba_3.5.6.bb          |   50 -
>  recipes-connectivity/samba/samba_3.6.8.bb          |   59 +
>  ...yocto_3.0.bbappend => linux-yocto_3.8.bbappend} |    0
>  .../ffmpeg/ffmpegthumbnailer/include-cstring.patch |   25 +
>  ...bnailer_2.0.7.bb => ffmpegthumbnailer_2.0.8.bb} |    9 +-
>  recipes-support/lvm2/lvm2.inc                      |    6 +-
>  recipes-support/lvm2/lvm2_2.02.85.bb               |    7 -
>  recipes-support/lvm2/lvm2_2.02.97.bb               |    6 +
>  47 files changed, 22209 insertions(+), 109 deletions(-)
>  delete mode 100644 recipes-connectivity/samba/files/smb.conf
>  create mode 100644
> recipes-connectivity/samba/samba-3.6.8/bug_221618_precise-64bit-prototype.p
> atch create mode 100644
> recipes-connectivity/samba/samba-3.6.8/bug_387266_upstream_4104_mention-ker
> beros-in-smbspool-manpage.patch create mode 100644
> recipes-connectivity/samba/samba-3.6.8/bug_598313_upstream_7499-nss_wins-do
> nt-clobber-daemons-logs.patch create mode 100644
> recipes-connectivity/samba/samba-3.6.8/bug_601406_fix-perl-path-in-example.
> patch create mode 100644
> recipes-connectivity/samba/samba-3.6.8/bug_604768_upstream_7826_drop-using-
> samba-link.patch create mode 100644
> recipes-connectivity/samba/samba-3.6.8/bug_604768_upstream_7826_fix-WHATSNE
> W-link.patch create mode 100644
> recipes-connectivity/samba/samba-3.6.8/configure-disable-core_pattern-cross
> -check.patch create mode 100644
> recipes-connectivity/samba/samba-3.6.8/configure-disable-getaddrinfo-cross.
> patch create mode 100644
> recipes-connectivity/samba/samba-3.6.8/documentation.patch create mode
> 100644 recipes-connectivity/samba/samba-3.6.8/documentation2.patch create
> mode 100644
> recipes-connectivity/samba/samba-3.6.8/dont-build-VFS-examples.patch create
> mode 100644 recipes-connectivity/samba/samba-3.6.8/fhs-filespaths.patch
> create mode 100644
> recipes-connectivity/samba/samba-3.6.8/installswat.sh.patch create mode
> 100644
> recipes-connectivity/samba/samba-3.6.8/libutil_drop_AI_ADDRCONFIG.patch
> create mode 100644
> recipes-connectivity/samba/samba-3.6.8/only_export_public_symbols.patch
> create mode 100644
> recipes-connectivity/samba/samba-3.6.8/pam-examples.patch create mode
> 100644 recipes-connectivity/samba/samba-3.6.8/shadow_copy2_backport.patch
> create mode 100644
> recipes-connectivity/samba/samba-3.6.8/smbclient-pager.patch create mode
> 100644 recipes-connectivity/samba/samba-3.6.8/smbtar-bashism.patch create
> mode 100644 recipes-connectivity/samba/samba-3.6.8/smbtorture-manpage.patch
> create mode 100644
> recipes-connectivity/samba/samba-3.6.8/undefined-symbols.patch create mode
> 100644 recipes-connectivity/samba/samba-3.6.8/usershare.patch create mode
> 100644 recipes-connectivity/samba/samba-3.6.8/waf-as-source.patch create
> mode 100644 recipes-connectivity/samba/samba/Managing-Samba.txt create mode
> 100644 recipes-connectivity/samba/samba/cifs.patch
>  rename recipes-connectivity/samba/{files => samba}/config-h.patch (100%)
>  rename recipes-connectivity/samba/{files => samba}/config-lfs.patch (100%)
>  create mode 100644 recipes-connectivity/samba/samba/configure-3.3.0.patch
>  rename recipes-connectivity/samba/{files/init => samba/init.samba} (98%)
>  create mode 100644 recipes-connectivity/samba/samba/init.winbind
>  create mode 100644 recipes-connectivity/samba/samba/mtab.patch
>  rename recipes-connectivity/samba/{files => samba}/quota.patch (100%)
>  rename recipes-connectivity/samba/{files/smb.conf.example =>
> samba/smb.conf} (94%) rename recipes-connectivity/samba/{files =>
> samba}/tdb.pc (87%)
>  rename recipes-connectivity/samba/{files => samba}/tdbheaderfix.patch
> (100%) rename recipes-connectivity/samba/{files =>
> samba}/volatiles.03_samba (100%) delete mode 100644
> recipes-connectivity/samba/samba_3.5.6.bb
>  create mode 100644 recipes-connectivity/samba/samba_3.6.8.bb
>  rename recipes-kernel/linux/{linux-yocto_3.0.bbappend =>
> linux-yocto_3.8.bbappend} (100%) create mode 100644
> recipes-multimedia/ffmpeg/ffmpegthumbnailer/include-cstring.patch rename
> recipes-multimedia/ffmpeg/{ffmpegthumbnailer_2.0.7.bb =>
> ffmpegthumbnailer_2.0.8.bb} (71%) delete mode 100644
> recipes-support/lvm2/lvm2_2.02.85.bb
>  create mode 100644 recipes-support/lvm2/lvm2_2.02.97.bb

Looks good, thanks. My only concern is with the samba update - without testing 
it, it looks a bit like it won't be configured to work out of the box. Perhaps 
we can get away with this though given that it can be configured through 
Webmin. What do you think?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

