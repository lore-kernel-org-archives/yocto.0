Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C361E013D6
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:21:53 -0700 (PDT)
Received: by wgbdq13 with SMTP id dq13so21408wgb.11
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=9CL/N/XXMU86ueY7P2/q5p5qXchcNiMqky9xxh7YHsI=;
	b=h0LALlyilUlZAlYedUbpbbk7TJvPZHEq5lMXWG+/NuLCh2cPyNrkGoOPv6hAkN+3bA
	02hGBbH0AxbbdsQ3djpxHze9NOyyMYEydE3zMUuImVlLOB/BR/Wz/glWx8HsnH0At9IP
	gQpGe3vqzrbZWznjUH0OVDu9Z5sn1ZUy/f8eJqsTw9nlIjUpjUtQqoxDIuRQ6EIuEGQV
	ipdYDlob09a4mUHe37m7EDQEmc3M10xPwH2zN2SZ6MycLbs7/y/I/cWiOKlSEDK/5NLZ
	3gF4ddUg7VY+jcjXphpZp5Gni+9iRSJ68BpQxeEjt0oD3UGMHvmIxMjsnpsPBWn2GkAR
	x7Lg==
Received: by 10.180.81.166 with SMTP id b6mr9933902wiy.0.1333059712416;
	Thu, 29 Mar 2012 15:21:52 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id ff9sm769133wib.2.2012.03.29.15.21.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:21:51 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:21:47 +0200
Message-Id: <cover.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Subject: [opkg-utils][PATCH 00/22] Partially prepare for python3 and fix old Packages file reuse
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
X-List-Received-Date: Thu, 29 Mar 2012 22:21:53 -0000

First 5 patches are taken from oe-core.

Then there are some cleanups and fixes for issues I've found while looking 
for cause of very long package-index calls.

Some patches uses compatible changes from 2to3 (tested with python2.7), but
python3 support is not 100% complete, but were closer.

And in the end I've found the cause.. printing long fields (e. g. description)
with opkg.py was producing empty lines in Packages file (which are Packages entry 
separators) so only first entries till first empty line were processed from old
Packages file and the rest was always extracted from control files in packaged .ipk.

And this also fixes Packages.filelist generation.

I don't use python very much, so please review.

And the speedup? Almost 60 times :)
before:
real    20m10.484s
user    18m32.335s
sys     0m11.885s

after
real    0m24.492s
user    0m23.748s
sys     0m0.565s

The following changes since commit 002d29bc605d7c2d02e4cf20a43c5277c15f5597:

  [opkg-utils] fix install fail problem  Thanks for khorben's patch :-)  https://docs.openmoko.org/trac/attachment/ticket/2072/patch-opkg-utils_Makefile_install_path.diff (2008-11-03 03:59:59 +0000)

are available in the git repository at:
  git://github.com/shr-project/opkg-utils jansa/pull
  https://github.com/shr-project/opkg-utils/tree/jansa/pull

Christopher Larson (1):
  Use python via the PATH, rather than hardcoding /usr/bin/python

Enrico Scholz (1):
  opkg-make-index: convert mtime to int before comparing it

Khem Raj (1):
  opkg.py: Add knowledge about License field in ipk headers

Martin Jansa (17):
  opkg.py: use hashlib instead of old md5 module
  opkg.py, arfile.py: report which file has wrong format and use the
    same test
  arfile: decode read lines as ascii string before getting fields from
    it
  2to3: use subprocess instead of commands
  2to3: print fixes
  2to3: dictionary fixes
  2to3: exception handling fixes
  opkg-make-index: show OSError/IOError
  opkg.py: use string funtcions directly on string variable
  opkg.py: catch TypeError when reading control file, to show which one
    is failing
  arfile: fix test
  opkg-make-index: don't use stdout for Packages output and use __str__
    instead of __repr__
  opkg.py: cast lines from controlfile as string
  opkg.py: computeFileMD5 only when we have fn, otherwise fails to read
    None file
  opkg.py: fix write_package when called from main test
  opkg.py: use textwrap for description writing
  opkg.py: improve test so it prints temporary control file with long
    description and then reads it back

Richard Purdie (1):
  opkg-make-index: don't error out when some package disappears

Scott Anderson (1):
  arfile.py: handle six digit UIDs

 arfile.py            |   55 +++++++++++++---------
 makePackage          |    2 +-
 opkg-compare-indexes |   22 ++++----
 opkg-list-fields     |    4 +-
 opkg-make-index      |   74 +++++++++++++++++++----------
 opkg-show-deps       |   28 +++++------
 opkg-unbuild         |    4 +-
 opkg-update-index    |    5 +-
 opkg.py              |  125 +++++++++++++++++++++++++++++--------------------
 9 files changed, 186 insertions(+), 133 deletions(-)

-- 
1.7.8.5


