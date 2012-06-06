Return-Path: <joshua.lock@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3DA4E01436
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2012 17:46:32 -0700 (PDT)
Received: from mail-pz0-f52.google.com ([209.85.210.52])
	by mga11.intel.com with ESMTP/TLS/RC4-MD5; 05 Jun 2012 17:46:32 -0700
Received: by dano14 with SMTP id o14so7708979dan.25
	for <yocto@yoctoproject.org>; Tue, 05 Jun 2012 17:46:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=w5Pszw/JUK9KefL1KDWqruO2V8HKCWLgPZPQ4n2X1V8=;
	b=DRuijtT7cN/Na5iprlL4C6TlrsfKQ6O49jaUfUtFMFugz+GaNU+/89kLFNdtYwBu09
	q7FptHAvcHdpN5w7S0A2inu0boW6fQ0SCWfzsH2/CCIPk8tICcicxilp0AL3Lz+2wVp4
	OT0zEb/jbKdfUvVa+HeST9oFXslwxf+1JWxjdnbKlJBz6gIK+NdoenHeKtYQL33B+QFV
	YKlbTI+uPkFPbNQgxvkLVFCfrpjn+04qE0QPJ0rWHNGAXeLNjo/h+otjV0e6NI1KDVNN
	LTLIXZjMAu64+2gX2Perwl11j5HMgMtSOw+E4epn3c2+883XVmoVjD3WcOrGhfqxcnJX
	SeqA==
Received: by 10.68.190.131 with SMTP id gq3mr53165965pbc.17.1338943591693;
	Tue, 05 Jun 2012 17:46:31 -0700 (PDT)
Received: from shamshir.amr.corp.intel.com ([192.55.55.41])
	by mx.google.com with ESMTPS id pg3sm531536pbc.2.2012.06.05.17.46.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Jun 2012 17:46:31 -0700 (PDT)
From: Joshua Lock <joshua.lock@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Jun 2012 17:45:36 -0700
Message-Id: <cover.1338942853.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
X-Gm-Message-State: ALoCoQltR5vzmsv3GvaVdHmRAekPWtPo2EGL6KxB1VjLIV4JhghOEsYwOUDylQRu8k8hRnL3/iyG
Subject: [PATCH x32 Edison 0/2] Fixes for meta-x32 edison branch
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
X-List-Received-Date: Wed, 06 Jun 2012 00:46:32 -0000

The following patches are required to use the edison branch of meta-x32 with
the current edison branch of Poky.

The first change is required because the edison branch updated its openssl
version some time ago for security fixes.

The gmp change is required so that gmp-native can be used by ppl.

Regards,
Joshua

CC: Nitin Kamble <nitin.a.kamble@intel.com>

The following changes since commit 78a8f65718b7ad7c93103a82026575687271cf5d:

  gmp: also built libgmpxx for gmp-native (2011-10-14 10:30:03 -0700)

are available in the git repository at:
  git://github.com/incandescant/meta-x32.git josh/edison
  https://github.com/incandescant/meta-x32

Joshua Lock (2):
  openssl: update bbappend to match version in poky edison
  gmp: Fix EXTRA_OECONF for native target

 gmp/gmp_5.0.2.bbappend                             |    2 +-
 ...ssl_0.9.8r.bbappend => openssl_0.9.8s.bbappend} |    0
 2 files changed, 1 insertions(+), 1 deletions(-)
 rename openssl/{openssl_0.9.8r.bbappend => openssl_0.9.8s.bbappend} (100%)

-- 
1.7.7.6


