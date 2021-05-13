Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web10.7931.1620872715778184632
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 19:25:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oa7EkqPW;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id y32so19892315pga.11
        for <yocto@lists.yoctoproject.org>; Wed, 12 May 2021 19:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=xaxMe2+luuPQ2/VBDnQ2cjdps4+S0FlsadOeO68yju4=;
        b=oa7EkqPWKAEoWj+km/wCjMwjDrriwkru/8Ym3K0ot+xKC1Rzj42I3GASeZw1nDZAUm
         n2yU+RRPHqX4Ul3HvqoOio/v7hXHOLLDyMfF7ggtQrZFTFInj782EdddO/9PzM7rY6GM
         lSAq1G4GhhrOHgz4yWQbol39NFn9grOLct5U1cGzfV4l4JB1PFhRT593gK6o4Az8aZbf
         OqE74PcmwAaFvBMsw2ujjMPWjHNC3yhCrCyP/7KGnTJFTxvh0+yO4PjDb0f5bDZObr6q
         BMWWKYG+JfLWyjuVvGRs9inDKzxWG+HHJG3oJhfPPpEngsuBEHUs60zocmYKVqRHhKb0
         vLDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xaxMe2+luuPQ2/VBDnQ2cjdps4+S0FlsadOeO68yju4=;
        b=oWS+Q1uHHE9MstqtpSkGurzZvn7svfumDUDZEzLaaofmHuE72Fa5iFyGhWm8ggsd2B
         Nvqlu57DnGMnp5hGR+30vNX9r4JYFzT/0bdTVJT01xZxtIuevXCMnA88g0uM1fAa7uFW
         XzVd7ioQ2iwdcd2nnQ1pXt5BS5SFSA2RZQI0JAPuzC+/glAx814jmpRE0Nj24LZ+ZlSi
         Qm9uTB0pm5kSuVnUSa82czhaACPXXW4gspXYEMFwI/6AzEVAAp7NLSZjk0VivjzxxQDy
         RVPhn4iftqh2wxd28PSi36mnthT4beWrykPNPyzynKuUu9gDJNwvlNTZVT8tg//nBTym
         3l1w==
X-Gm-Message-State: AOAM533+qB2GE2e3Cw9wKOwNTYUf4AEgqW/wSsz0U1/K6P0JWK6wcGbP
	l+1+U8zyDNMwrRc7KJ8GCGbEwuAcNyo=
X-Google-Smtp-Source: ABdhPJzkn2+8kdgwdjYSmpIDQbeHDC3NRYKtxRq19nhh2kOePnaRSdDMdTV21Qu3MUVwN1E5ET7q1g==
X-Received: by 2002:a17:90a:73c4:: with SMTP id n4mr1831578pjk.201.1620872715084;
        Wed, 12 May 2021 19:25:15 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id v12sm870777pgi.44.2021.05.12.19.25.14
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 19:25:14 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/6] aide: Add another ids
Date: Thu, 13 May 2021 02:25:09 +0000
Message-Id: <20210513022510.3370797-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210513022510.3370797-1-akuster808@gmail.com>
References: <20210513022510.3370797-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/aide/aide/aide.conf | 94 +++++++++++++++++++++++++++++++++
 recipes-ids/aide/aide_0.17.3.bb | 41 ++++++++++++++
 2 files changed, 135 insertions(+)
 create mode 100644 recipes-ids/aide/aide/aide.conf
 create mode 100644 recipes-ids/aide/aide_0.17.3.bb

diff --git a/recipes-ids/aide/aide/aide.conf b/recipes-ids/aide/aide/aide.conf
new file mode 100644
index 0000000..2c99e07
--- /dev/null
+++ b/recipes-ids/aide/aide/aide.conf
@@ -0,0 +1,94 @@
+# Example configuration file for AIDE.
+
+@@define DBDIR /usr/lib/aide
+@@define LOGDIR /usr/lib/aide/logs
+
+# The location of the database to be read.
+database_in=file:@@{DBDIR}/aide.db.gz
+
+# The location of the database to be written.
+#database_out=sql:host:port:database:login_name:passwd:table
+#database_out=file:aide.db.new
+database_out=file:@@{DBDIR}/aide.db.gz
+
+# Whether to gzip the output to database
+gzip_dbout=yes
+
+# Default.
+log_level=warning
+
+report_url=file:@@{LOGDIR}/aide.log
+report_url=stdout
+#report_url=stderr
+#NOT IMPLEMENTED report_url=mailto:root@foo.com
+#NOT IMPLEMENTED report_url=syslog:LOG_AUTH
+
+# These are the default rules.
+#
+#p:      permissions
+#i:      inode:
+#n:      number of links
+#u:      user
+#g:      group
+#s:      size
+#b:      block count
+#m:      mtime
+#a:      atime
+#c:      ctime
+#S:      check for growing size
+#acl:           Access Control Lists
+#selinux        SELinux security context
+#xattrs:        Extended file attributes
+#md5:    md5 checksum
+#sha1:   sha1 checksum
+#sha256:        sha256 checksum
+#sha512:        sha512 checksum
+#rmd160: rmd160 checksum
+#tiger:  tiger checksum
+
+#haval:  haval checksum (MHASH only)
+#gost:   gost checksum (MHASH only)
+#crc32:  crc32 checksum (MHASH only)
+#whirlpool:     whirlpool checksum (MHASH only)
+
+FIPSR = p+i+n+u+g+s+m+c+acl+selinux+xattrs+sha256
+
+#R:             p+i+n+u+g+s+m+c+acl+selinux+xattrs+md5
+#L:             p+i+n+u+g+acl+selinux+xattrs
+#E:             Empty group
+#>:             Growing logfile p+u+g+i+n+S+acl+selinux+xattrs
+
+# You can create custom rules like this.
+# With MHASH...
+# ALLXTRAHASHES = sha1+rmd160+sha256+sha512+whirlpool+tiger+haval+gost+crc32
+ALLXTRAHASHES = sha1+rmd160+sha256+sha512+tiger
+# Everything but access time (Ie. all changes)
+EVERYTHING = R+ALLXTRAHASHES
+
+# Sane, with multiple hashes
+# NORMAL = R+rmd160+sha256+whirlpool
+NORMAL = FIPSR+sha512
+
+# For directories, don't bother doing hashes
+DIR = p+i+n+u+g+acl+selinux+xattrs
+
+# Access control only
+PERMS = p+i+u+g+acl+selinux
+
+# Logfile are special, in that they often change
+LOG = >
+
+# Just do sha256 and sha512 hashes
+LSPP = FIPSR+sha512
+
+# Some files get updated automatically, so the inode/ctime/mtime change
+# but we want to know when the data inside them changes
+DATAONLY =  p+n+u+g+s+acl+selinux+xattrs+sha256
+
+# Next decide what directories/files you want in the database.
+
+# Check only permissions, inode, user and group for /etc, but
+# cover some important files closely.
+/bin NORMAL
+/sbin NORMAL
+/lib NORMAL
diff --git a/recipes-ids/aide/aide_0.17.3.bb b/recipes-ids/aide/aide_0.17.3.bb
new file mode 100644
index 0000000..522cd85
--- /dev/null
+++ b/recipes-ids/aide/aide_0.17.3.bb
@@ -0,0 +1,41 @@
+SUMMARY = "Advanced Intrusion Detection Environment"
+HOMEPAGE = "https://aide.github.io"
+LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
+LICENSE = "GPL-2.0"
+
+DEPENDS = "bison-native libpcre"
+
+SRC_URI = "https://github.com/aide/aide/releases/download/v${PV}/${BPN}-${PV}.tar.gz \
+           file://aide.conf"
+
+SRC_URI[sha256sum] = "a2eb1883cafaad056fbe43ee1e8ae09fd36caa30a0bc8edfea5d47bd67c464f8"
+
+inherit autotools pkgconfig
+
+PACKAGECONFIG ??=" mhash zlib e2fsattrs \
+                 ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux audit', '', d)} \
+                 ${@bb.utils.contains('DISTRO_FEATURES', 'xattr', 'xattr', '', d)} \
+                 "
+PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux, libselinux"
+PACKAGECONFIG[zlib] = "--with-zlib, --without-zlib, zlib, zlib "
+PACKAGECONFIG[xattr] = "--with-xattr, --without-xattr, attr, attr"
+PACKAGECONFIG[curl] = "--with-curl, --without-curl, curl, libcurl"
+PACKAGECONFIG[audit] = "--with-audit, --without-audit,"
+PACKAGECONFIG[gcrypt] = "--with-gcrypt, --without-gcrypt, libgcrypt, libgcrypt"
+PACKAGECONFIG[mhash] = "--with-mhash, --without-mhash, libmhash, libmhash"
+PACKAGECONFIG[e2fsattrs] = "--with-e2fsattrs, --without-e2fsattrs, e2fsprogs, e2fsprogs"
+
+do_install_append () {
+    install -d ${D}${libdir}/${PN}/logs   
+    install -d ${D}${sysconfdir}   
+    install ${WORKDIR}/aide.conf ${D}${sysconfdir}/
+}
+
+CONF_FILE = "${sysconfdir}/aide.conf"
+
+FILES_${PN} += "${libdir}/${PN} ${sysconfdir}/aide.conf"
+
+pkg_postinst_ontarget_${PN} () {
+    /usr/bin/aide -i
+}
+RDPENDS_${PN} = "bison, libpcre"
-- 
2.25.1

