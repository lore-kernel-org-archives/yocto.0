Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FC18E011C0
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 11:10:39 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Sep 2012 11:10:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,417,1344236400"; d="scan'208";a="192664224"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 13 Sep 2012 11:10:38 -0700
Received: by linux.intel.com (Postfix, from userid 48)
	id 1FC8E2C8001; Thu, 13 Sep 2012 11:10:40 -0700 (PDT)
Received: from 10.7.202.84 (SquirrelMail authenticated user kevin.strasser)
	by linux.intel.com with HTTP; Thu, 13 Sep 2012 11:10:40 -0700 (PDT)
Message-ID: <33104.10.7.202.84.1347559840.squirrel@linux.intel.com>
In-Reply-To: <2619220.qq68ZOnzsN@helios>
References: <05bc846eb9ec84e5094832dcac903fef085fd9d8.1347312790.git.kevin.strasser@linux.intel.com>
	<04fa9227d221efb17c22fb301ede5af31777247c.1347312790.git.kevin.strasser@linux.intel.com>
	<2619220.qq68ZOnzsN@helios>
Date: Thu, 13 Sep 2012 11:10:40 -0700 (PDT)
From: kevin.strasser@linux.intel.com
To: "Paul Eggleton" <paul.eggleton@linux.intel.com>
User-Agent: SquirrelMail/1.4.8-5.el4.centos.8
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Cc: yocto@yoctoproject.org, Kevin Strasser <kevstras@gmail.com>
Subject: Re: [meta-baryon][PATCH 2/2] proftpd: update package to 1.3.4b
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
X-List-Received-Date: Thu, 13 Sep 2012 18:10:39 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

Thanks, Paul. I've made those changes and added the bbappend for the new
kernel.

The updates are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib strassek/baryon-updates
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=strassek/baryon-updates

-Kevin

> Hi Kevin,
>
> On Monday 10 September 2012 14:50:10 Kevin Strasser wrote:
>> The contrib directry now contains its own Makefile which is
>> used during installation. It was required to pass DESTDIR through
>> when it gets called from the base Makefile.
>>
>> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
>> ---
>>  recipes-extended/proftpd/files/contrib.patch       |   38
>> ++++++++++++++++++++ .../{proftpd_1.3.3c.bb => proftpd_1.3.4b.bb}
>> |
>>  7 ++--
>>  2 files changed, 42 insertions(+), 3 deletions(-)
>>  create mode 100644 recipes-extended/proftpd/files/contrib.patch
>>  rename recipes-extended/proftpd/{proftpd_1.3.3c.bb =>
>> proftpd_1.3.4b.bb}
>> (82%)
>>
>> diff --git a/recipes-extended/proftpd/files/contrib.patch
>> b/recipes-extended/proftpd/files/contrib.patch new file mode 100644
>> index 0000000..76b9a5c
>> --- /dev/null
>> +++ b/recipes-extended/proftpd/files/contrib.patch
>> @@ -0,0 +1,38 @@
>> +Upstream-Status: Inappropriate [configuration]
>> +
>> +Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
>> +---
>> + Makefile.in         |    2 +-
>> + contrib/Makefile.in |    6 +++---
>> + 2 files changed, 4 insertions(+), 4 deletions(-)
>> +
>> +diff --git a/Makefile.in b/Makefile.in
>> +index 5b2e683..ee72fe1 100644
>> +--- a/Makefile.in
>> ++++ b/Makefile.in
>> +@@ -120,7 +120,7 @@ install-modules: $(DESTDIR)$(libexecdir)
>> $(DESTDIR)$(sysconfdir) + 	test -z "$(SHARED_MODULE_OBJS)" -a -z
>> "$(SHARED_MODULE_DIRS)" -a -z "$(STATIC_MODULE_DIRS)" || (cd modules/ &&
>> $(MAKE) install) +
>> + install-utils: $(DESTDIR)$(sbindir) $(DESTDIR)$(bindir)
>> +-	cd contrib/ && $(MAKE) install-utils
>> ++	cd contrib/ && $(MAKE) DESTDIR=${DESTDIR} install-utils
>> + 	$(INSTALL_BIN)  ftpcount $(DESTDIR)$(bindir)/ftpcount
>> + 	$(INSTALL_BIN)  ftpdctl  $(DESTDIR)$(bindir)/ftpdctl
>> + 	$(INSTALL_SBIN) ftpscrub $(DESTDIR)$(sbindir)/ftpscrub
>> +diff --git a/contrib/Makefile.in b/contrib/Makefile.in
>> +index 5bcc038..51d248c 100644
>> +--- a/contrib/Makefile.in
>> ++++ b/contrib/Makefile.in
>> +@@ -18,6 +18,6 @@ Makefile: Makefile.in ../config.status
>> + 	cd ../ && ./config.status
>> +
>> + install-utils:
>> +-	$(INSTALL) -o $(INSTALL_USER) -g $(INSTALL_GROUP) -m 0755 ftpasswd
>> $(DESTDIR)$(bindir)/ftpasswd +-	$(INSTALL) -o $(INSTALL_USER) -g
>> $(INSTALL_GROUP) -m 0755 ftpmail $(DESTDIR)$(bindir)/ftpmail
>> +-	$(INSTALL)
>> -o $(INSTALL_USER) -g $(INSTALL_GROUP) -m 0755 ftpquota
>> $(DESTDIR)$(bindir)/ftpquota ++	$(INSTALL) -m 0755 ftpasswd
>> $(DESTDIR)$(bindir)/ftpasswd
>> ++	$(INSTALL) -m 0755 ftpmail $(DESTDIR)$(bindir)/ftpmail
>> ++	$(INSTALL) -m 0755 ftpquota $(DESTDIR)$(bindir)/ftpquota
>> +--
>> +1.7.9.5
>> +
>> diff --git a/recipes-extended/proftpd/proftpd_1.3.3c.bb
>> b/recipes-extended/proftpd/proftpd_1.3.4b.bb similarity index 82%
>> rename from recipes-extended/proftpd/proftpd_1.3.3c.bb
>> rename to recipes-extended/proftpd/proftpd_1.3.4b.bb
>> index 8de80fc..b7e201b 100644
>> --- a/recipes-extended/proftpd/proftpd_1.3.3c.bb
>> +++ b/recipes-extended/proftpd/proftpd_1.3.4b.bb
>> @@ -2,17 +2,18 @@ DESCRIPTION = "Secure ftp daemon"
>>  SECTION = "console/network"
>>
>>  LICENSE = "GPLv2+"
>> -LIC_FILES_CHKSUM =
>> "file://COPYING;md5=fdedcde17b1ffd967d86c20fe0ac158a"
>> +LIC_FILES_CHKSUM =
>> "file://COPYING;md5=fb0d1484d11915fa88a6a7702f1dc184"
>
> A few points:
>
> 1) Re contrib.patch - surely it would be valid to pass DESTDIR through for
> everyone? If so we should be able to consider sending this patch upstream,
> in
> which case Upstream-Status should be Pending.
>
> 2) When LIC_FILES_CHKSUM changes for any reason we need to mention clearly
> why
> in the commit message (even if it is a mundane reason such as the
> copyright
> year changing).
>
> 3) Minor - s/directry/directory in the commit message.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



