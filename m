Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E83EB4C80BCF
	for <yocto@yoctoproject.org>; Fri,  7 Jan 2011 15:19:37 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Jan 2011 13:19:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,290,1291622400"; d="scan'208";a="694684214"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga001.jf.intel.com with ESMTP; 07 Jan 2011 13:19:36 -0800
Message-Id: <1ecad1ad846225cbaa7eaab62c63609e6d973f67.1294436282.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294436282.git.jessica.zhang@intel.com>
References: <cover.1294436282.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
Date: Fri, 7 Jan 2011 13:31:15 -0800
To: yocto@yoctoproject.org
CC: 
Subject: [PATCH 2/2] Fix MIT Lic issues and leave references to adt repo entry empty before it's setup
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
X-List-Received-Date: Fri, 07 Jan 2011 21:19:38 -0000

Signed-off-by: Jessica Zhang <jessica.zhang@intel.com>
---
 .../installer/adt-installer/adt_installer          |   30 +++++++++++--------
 .../installer/adt-installer/adt_installer.conf     |   25 +++++++++++++++-
 .../adt-installer/opkg/conf/opkg-sdk-i586.conf     |    6 ++--
 .../adt-installer/opkg/conf/opkg-sdk-x86_64.conf   |    6 ++--
 .../adt-installer/scripts/adt_installer_internal   |   30 ++++++++++---------
 .../installer/adt-installer/scripts/data_define    |   31 +++++++++++--------
 .../installer/adt-installer/scripts/extract_rootfs |   30 +++++++++++--------
 .../installer/adt-installer/scripts/util           |   31 +++++++++++--------
 .../installer/adt-installer_1.0.bb                 |   23 ++++++++++++++
 9 files changed, 139 insertions(+), 73 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/adt_installer b/meta/recipes-devtools/installer/adt-installer/adt_installer
index 9ccb9cb..d47be41 100755
--- a/meta/recipes-devtools/installer/adt-installer/adt_installer
+++ b/meta/recipes-devtools/installer/adt-installer/adt_installer
@@ -1,21 +1,25 @@
 #/bin/bash
 # Yocto ADT Installer
 #
-# Copyright (C) 2010 Intel Corp.
+# Copyright 2010-2011 by Intel Corp.
 #
-# This program is free software; you can redistribute it and/or modify
-# it under the terms of the GNU General Public License version 2 as
-# published by the Free Software Foundation.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License along
-# with this program; if not, write to the Free Software Foundation, Inc.,
-# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
-
+# Permission is hereby granted, free of charge, to any person obtaining a copy 
+# of this software and associated documentation files (the "Software"), to deal 
+# in the Software without restriction, including without limitation the rights 
+# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
+# copies of the Software, and to permit persons to whom the Software is 
+# furnished to do so, subject to the following conditions:
+
+# The above copyright notice and this permission notice shall be included in 
+# all copies or substantial portions of the Software.
+
+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
+# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
+# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
+# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
+# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
+# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
+# THE SOFTWARE.
 
 
 usage ()
diff --git a/meta/recipes-devtools/installer/adt-installer/adt_installer.conf b/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
index b65fe5d..a31e559 100644
--- a/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
+++ b/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
@@ -1,6 +1,29 @@
+# Yocto ADT Installer Configuration File
+#
+# Copyright 2010-2011 by Intel Corp.
+#
+# Permission is hereby granted, free of charge, to any person obtaining a copy 
+# of this software and associated documentation files (the "Software"), to deal 
+# in the Software without restriction, including without limitation the rights 
+# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
+# copies of the Software, and to permit persons to whom the Software is 
+# furnished to do so, subject to the following conditions:
+
+# The above copyright notice and this permission notice shall be included in 
+# all copies or substantial portions of the Software.
+
+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
+# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
+# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
+# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
+# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
+# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
+# THE SOFTWARE.
+
+
 # Your yocto distro repository, this should include IPKG based packages and root filesystem files where the installation is based on
 
-YOCTOADT_IPKG_REPO="http://llu-piketon.sh.intel.com/rootfs"
+YOCTOADT_IPKG_REPO="http://"
 
 # The following are for system wide setup
 # Target architectures that you want to setup host cross dev environment for
diff --git a/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf
index 21ab4d2..36e585c 100644
--- a/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf
+++ b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf
@@ -2,6 +2,6 @@ arch all 1
 arch any 6
 arch noarch 11
 arch i586-nativesdk 16
-src oe http://llu-piketon.sh.intel.com/ipk_sdknew
-src oe-all http://llu-piketon.sh.intel.com/ipk_sdknew/all
-src oe-i586-nativesdk http://llu-piketon.sh.intel.com/ipk_sdknew/i586-nativesdk
+src oe http://
+src oe-all http://
+src oe-i586-nativesdk http://
diff --git a/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
index a6eee7d..3ab4930 100644
--- a/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
+++ b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
@@ -2,6 +2,6 @@ arch all 1
 arch any 6
 arch noarch 11
 arch x86_64-nativesdk 16
-src oe http://llu-piketon.sh.intel.com/ipk_sdknew
-src oe-all http://llu-piketon.sh.intel.com/ipk_sdknew/all
-src oe-x86_64-nativesdk http://llu-piketon.sh.intel.com/ipk_sdknew/x86_64-nativesdk
+src oe http://
+src oe-all http://
+src oe-x86_64-nativesdk http://
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
index 13e89e6..78e5c97 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
@@ -2,23 +2,25 @@
 
 # Yocto ADT Installer
 #
-# Copyright (C) 2010 Intel Corp.
+# Copyright 2010-2011 by Intel Corp.
 #
-# This program is free software; you can redistribute it and/or modify
-# it under the terms of the GNU General Public License version 2 as
-# published by the Free Software Foundation.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License along
-# with this program; if not, write to the Free Software Foundation, Inc.,
-# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
-
-
-
+# Permission is hereby granted, free of charge, to any person obtaining a copy 
+# of this software and associated documentation files (the "Software"), to deal 
+# in the Software without restriction, including without limitation the rights 
+# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
+# copies of the Software, and to permit persons to whom the Software is 
+# furnished to do so, subject to the following conditions:
+
+# The above copyright notice and this permission notice shall be included in 
+# all copies or substantial portions of the Software.
+
+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
+# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
+# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
+# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
+# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
+# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
+# THE SOFTWARE.
 
 parse_config()
 {
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/data_define b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
index f446811..e975077 100644
--- a/meta/recipes-devtools/installer/adt-installer/scripts/data_define
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
@@ -2,20 +2,25 @@
 
 # Yocto ADT Installer
 #
-# Copyright (C) 2010 Intel Corp.
+# Copyright 2010-2011 by Intel Corp.
 #
-# This program is free software; you can redistribute it and/or modify
-# it under the terms of the GNU General Public License version 2 as
-# published by the Free Software Foundation.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License along
-# with this program; if not, write to the Free Software Foundation, Inc.,
-# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+# Permission is hereby granted, free of charge, to any person obtaining a copy 
+# of this software and associated documentation files (the "Software"), to deal 
+# in the Software without restriction, including without limitation the rights 
+# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
+# copies of the Software, and to permit persons to whom the Software is 
+# furnished to do so, subject to the following conditions:
+
+# The above copyright notice and this permission notice shall be included in 
+# all copies or substantial portions of the Software.
+
+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
+# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
+# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
+# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
+# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
+# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
+# THE SOFTWARE.
 
 config_file="adt_installer.conf"
 source $config_file
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs b/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
index 0266283..3dd47f0 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
@@ -2,21 +2,25 @@
 
 # Yocto ADT Installer
 #
-# Copyright (C) 2010 Intel Corp.
+# Copyright 2010-2011 by Intel Corp.
 #
-# This program is free software; you can redistribute it and/or modify
-# it under the terms of the GNU General Public License version 2 as
-# published by the Free Software Foundation.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License along
-# with this program; if not, write to the Free Software Foundation, Inc.,
-# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+# Permission is hereby granted, free of charge, to any person obtaining a copy 
+# of this software and associated documentation files (the "Software"), to deal 
+# in the Software without restriction, including without limitation the rights 
+# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
+# copies of the Software, and to permit persons to whom the Software is 
+# furnished to do so, subject to the following conditions:
+
+# The above copyright notice and this permission notice shall be included in 
+# all copies or substantial portions of the Software.
 
+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
+# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
+# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
+# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
+# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
+# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
+# THE SOFTWARE.
 
 extract_rootfs()
 {
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/util b/meta/recipes-devtools/installer/adt-installer/scripts/util
index 9db1242..4b88fee 100644
--- a/meta/recipes-devtools/installer/adt-installer/scripts/util
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/util
@@ -2,20 +2,25 @@
 
 # Yocto ADT Installer
 #
-# Copyright (C) 2010 Intel Corp.
+# Copyright 2010-2011 by Intel Corp.
 #
-# This program is free software; you can redistribute it and/or modify
-# it under the terms of the GNU General Public License version 2 as
-# published by the Free Software Foundation.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License along
-# with this program; if not, write to the Free Software Foundation, Inc.,
-# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+# Permission is hereby granted, free of charge, to any person obtaining a copy 
+# of this software and associated documentation files (the "Software"), to deal 
+# in the Software without restriction, including without limitation the rights 
+# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
+# copies of the Software, and to permit persons to whom the Software is 
+# furnished to do so, subject to the following conditions:
+
+# The above copyright notice and this permission notice shall be included in 
+# all copies or substantial portions of the Software.
+
+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
+# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
+# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
+# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
+# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
+# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
+# THE SOFTWARE.
 
 echo_info()
 {
diff --git a/meta/recipes-devtools/installer/adt-installer_1.0.bb b/meta/recipes-devtools/installer/adt-installer_1.0.bb
index 23eb4ec..226e375 100644
--- a/meta/recipes-devtools/installer/adt-installer_1.0.bb
+++ b/meta/recipes-devtools/installer/adt-installer_1.0.bb
@@ -1,3 +1,26 @@
+# Yocto ADT Installer bb file
+#
+# Copyright 2010-2011 by Intel Corp.
+#
+# Permission is hereby granted, free of charge, to any person obtaining a copy 
+# of this software and associated documentation files (the "Software"), to deal 
+# in the Software without restriction, including without limitation the rights 
+# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
+# copies of the Software, and to permit persons to whom the Software is 
+# furnished to do so, subject to the following conditions:
+
+# The above copyright notice and this permission notice shall be included in 
+# all copies or substantial portions of the Software.
+
+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
+# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
+# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
+# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
+# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
+# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
+# THE SOFTWARE.
+
+
 DESCRIPTION = "Meta package for creating sdk installer tarball"
 LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-- 
1.7.0.4


