Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1546E00B46; Wed, 25 Nov 2015 16:00:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA3D4E009EF
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 16:00:05 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2015 16:00:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,344,1444719600"; d="scan'208";a="847188918"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2015 16:00:04 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Nov 2015 18:00:33 -0600
Message-Id: <1448496046-13186-5-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 04/17] upgradehelper: Reorder files into directories.
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
X-List-Received-Date: Thu, 26 Nov 2015 00:00:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Reorder files into modules directory to provide a better
source tree.

Changed was made for update the import lines and include
modules directory into search path.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 bitbake.py                    | 124 --------
 buildhistory.py               |  75 -----
 emailhandler.py               | 108 -------
 errors.py                     |  93 ------
 git.py                        | 101 -------
 gitrecipe.py                  |  94 ------
 modules/buildhistory.py       |  75 +++++
 modules/errors.py             |  93 ++++++
 modules/recipe/__init__.py    |   0
 modules/recipe/base.py        | 671 ++++++++++++++++++++++++++++++++++++++++++
 modules/recipe/git.py         |  94 ++++++
 modules/recipe/svn.py         |  28 ++
 modules/statistics.py         | 102 +++++++
 modules/steps.py              | 143 +++++++++
 modules/utils/__init__.py     |   0
 modules/utils/bitbake.py      | 124 ++++++++
 modules/utils/emailhandler.py | 108 +++++++
 modules/utils/git.py          | 102 +++++++
 recipe.py                     | 669 -----------------------------------------
 statistics.py                 | 102 -------
 steps.py                      | 142 ---------
 svnrecipe.py                  |  28 --
 upgradehelper.py              |  11 +-
 23 files changed, 1547 insertions(+), 1540 deletions(-)
 delete mode 100644 bitbake.py
 delete mode 100644 buildhistory.py
 delete mode 100644 emailhandler.py
 delete mode 100644 errors.py
 delete mode 100644 git.py
 delete mode 100644 gitrecipe.py
 create mode 100644 modules/buildhistory.py
 create mode 100644 modules/errors.py
 create mode 100644 modules/recipe/__init__.py
 create mode 100644 modules/recipe/base.py
 create mode 100644 modules/recipe/git.py
 create mode 100644 modules/recipe/svn.py
 create mode 100644 modules/statistics.py
 create mode 100644 modules/steps.py
 create mode 100644 modules/utils/__init__.py
 create mode 100644 modules/utils/bitbake.py
 create mode 100644 modules/utils/emailhandler.py
 create mode 100644 modules/utils/git.py
 delete mode 100644 recipe.py
 delete mode 100644 statistics.py
 delete mode 100644 steps.py
 delete mode 100644 svnrecipe.py

diff --git a/bitbake.py b/bitbake.py
deleted file mode 100644
index cdbce2b..0000000
--- a/bitbake.py
+++ /dev/null
@@ -1,124 +0,0 @@
-#!/usr/bin/env python
-# vim: set ts=4 sw=4 et:
-#
-# Copyright (c) 2013 - 2014 Intel Corporation
-#
-# This program is free software; you can redistribute it and/or
-# modify it under the terms of the GNU General Public License
-# as published by the Free Software Foundation; either version 2
-# of the License, or (at your option) any later version.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License
-# along with this program; if not, write to the Free Software
-# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
-#
-# AUTHORS
-# Laurentiu Palcu   <laurentiu.palcu@intel.com>
-# Marius Avram      <marius.avram@intel.com>
-#
-
-import os
-import logging as log
-from logging import info as I
-from logging import debug as D
-from logging import error as E
-from logging import critical as C
-import sys
-import re
-
-from errors import *
-
-for path in os.environ["PATH"].split(':'):
-    if os.path.exists(path) and "bitbake" in os.listdir(path):
-        sys.path.insert(0, os.path.join(path, "../lib"))
-        import bb
-
-BITBAKE_ERROR_LOG = 'bitbake_error_log.txt'
-
-class Bitbake(object):
-    def __init__(self, build_dir):
-        self.build_dir = build_dir
-        self.log_dir = None
-        super(Bitbake, self).__init__()
-
-    def _cmd(self, recipe=None, options=None, env_var=None, output_filter=None):
-        cmd = ""
-        if env_var is not None:
-            cmd += env_var + " "
-        cmd += "bitbake "
-        if options is not None:
-            cmd += options + " "
-
-        if recipe is not None:
-            cmd += recipe
-
-        if output_filter is not None:
-            cmd += ' |  grep ' + output_filter
-
-        os.chdir(self.build_dir)
-
-        try:
-            stdout, stderr = bb.process.run(cmd)
-        except bb.process.ExecutionError as e:
-            D("%s returned:\n%s" % (cmd, e.__str__()))
-
-            if self.log_dir is not None and os.path.exists(self.log_dir):
-                with open(os.path.join(self.log_dir, BITBAKE_ERROR_LOG), "w+") as log:
-                    log.write(e.stdout)
-
-            raise Error("\'" + cmd + "\' failed", e.stdout, e.stderr)
-
-        return stdout
-
-    def set_log_dir(self, dir):
-        self.log_dir = dir
-
-    def get_stdout_log(self):
-        return os.path.join(self.log_dir, BITBAKE_ERROR_LOG)
-
-    def env(self, recipe=None):
-        stdout = self._cmd(recipe, "-e", output_filter="-v \"^#\"")
-
-        assignment = re.compile("^([^ \t=]*)=(.*)")
-        bb_env = dict()
-        for line in stdout.split('\n'):
-            m = assignment.match(line)
-            if m:
-                if m.group(1) in bb_env:
-                    continue
-
-                bb_env[m.group(1)] = m.group(2).strip("\"")
-
-        if not bb_env:
-            raise EmptyEnvError(stdout)
-
-        return bb_env
-
-    def fetch(self, recipe):
-        return self._cmd(recipe, "-c fetch")
-
-    def unpack(self, recipe):
-        return self._cmd(recipe, "-c unpack")
-
-    def checkpkg(self, recipe):
-        if recipe == "universe":
-            return self._cmd(recipe, "-c checkpkg -k")
-        else:
-            return self._cmd(recipe, "-c checkpkg")
-
-    def cleanall(self, recipe):
-        return self._cmd(recipe, "-c cleanall")
-
-    def cleansstate(self, recipe):
-        return self._cmd(recipe, "-c cleansstate")
-
-    def complete(self, recipe, machine):
-        return self._cmd(recipe, env_var="MACHINE=" + machine)
-
-    def dependency_graph(self, package_list):
-        return self._cmd(package_list, "-g")
diff --git a/buildhistory.py b/buildhistory.py
deleted file mode 100644
index 842efc3..0000000
--- a/buildhistory.py
+++ /dev/null
@@ -1,75 +0,0 @@
-#!/usr/bin/env python
-# vim: set ts=4 sw=4 et:
-#
-# Copyright (c) 2015 Intel Corporation
-#
-# This program is free software; you can redistribute it and/or
-# modify it under the terms of the GNU General Public License
-# as published by the Free Software Foundation; either version 2
-# of the License, or (at your option) any later version.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License
-# along with this program; if not, write to the Free Software
-# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
-#
-
-import os
-import logging as log
-from logging import debug as D
-from logging import info as I
-from logging import warning as W
-from logging import error as E
-from logging import critical as C
-import sys
-from errors import *
-
-from bitbake import *
-from git import Git
-
-class BuildHistory(object):
-    def __init__(self, bb, pn, workdir):
-        self.bb = bb
-        self.pn = pn
-        self.workdir = workdir
-        self.revs = []
-
-        self.buildhistory_dir = os.path.join(self.workdir, 'buildhistory')
-        if not os.path.exists(self.buildhistory_dir):
-            os.mkdir(self.buildhistory_dir)
-
-        self.git = Git(self.buildhistory_dir)
-
-        os.environ['BB_ENV_EXTRAWHITE'] = os.environ['BB_ENV_EXTRAWHITE'] + \
-                                    " BUILDHISTORY_DIR"
-        os.environ["BUILDHISTORY_DIR"] = self.buildhistory_dir
-
-    def init(self, machines):
-        self.bb.cleanall(self.pn)
-        for machine in machines:
-            self.bb.complete(self.pn, machine)
-            self.revs.append(self.git.last_commit("master"))
-
-    def add(self):
-        self.revs.append(self.git.last_commit("master"))
-
-    def diff(self):
-        rev_initial = self.revs[0]
-        rev_final = self.revs[-1]
-
-        cmd = "buildhistory-diff -a -p %s %s %s"  % (self.buildhistory_dir, 
-                rev_initial, rev_final)
-
-        try:
-            stdout, stderr = bb.process.run(cmd)
-
-            if stdout and os.path.exists(self.workdir):
-                with open(os.path.join(self.workdir, "buildhistory-diff.txt"),
-                        "w+") as log:
-                    log.write(stdout)
-        except bb.process.ExecutionError as e:
-            W( "%s: Buildhistory checking fails\n%s" % (self.pn, e.stdout))
diff --git a/emailhandler.py b/emailhandler.py
deleted file mode 100644
index 970fb59..0000000
--- a/emailhandler.py
+++ /dev/null
@@ -1,108 +0,0 @@
-#!/usr/bin/env python
-# vim: set ts=4 sw=4 et:
-#
-# Copyright (c) 2013 - 2014 Intel Corporation
-#
-# This program is free software; you can redistribute it and/or
-# modify it under the terms of the GNU General Public License
-# as published by the Free Software Foundation; either version 2
-# of the License, or (at your option) any later version.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License
-# along with this program; if not, write to the Free Software
-# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
-#
-# AUTHORS
-# Laurentiu Palcu   <laurentiu.palcu@intel.com>
-# Marius Avram      <marius.avram@intel.com>
-#
-
-import os
-import logging as log
-from logging import error as E
-from logging import info as I
-from smtplib import SMTP
-import mimetypes
-from email.mime.text import MIMEText
-from email.mime.base import MIMEBase
-from email.mime.multipart import MIMEMultipart
-from email.generator import Generator
-import shutil
-from cStringIO import StringIO
-
-class Email(object):
-    def __init__(self, settings):
-        self.smtp_host = None
-        self.smtp_port = None
-        self.from_addr = None
-        if "smtp" in settings:
-            smtp_entry = settings["smtp"].split(":")
-            if len(smtp_entry) == 1:
-                self.smtp_host = smtp_entry[0]
-                self.smtp_port = 25
-            elif len(smtp_entry) == 2:
-                self.smtp_host = smtp_entry[0]
-                self.smtp_port = smtp_entry[1]
-        else:
-            E(" smtp host not set! Sending emails disabled!")
-
-        if "from" in settings:
-            self.from_addr = settings["from"]
-        else:
-            E(" 'From' address not set! Sending emails disabled!")
-
-        super(Email, self).__init__()
-
-    def send_email(self, to_addr, subject, text, files=[], cc_addr=None):
-        if self.smtp_host is None or self.from_addr is None:
-            return 0
-
-        I(" Sending email to: %s" % to_addr)
-
-        msg = MIMEMultipart()
-        msg['From'] = self.from_addr
-        if type(to_addr) is list:
-            msg['To'] = ', '.join(to_addr)
-        else:
-            msg['To'] = to_addr
-        if cc_addr is not None:
-            if type(cc_addr) is list:
-                msg['Cc'] = ', '.join(cc_addr)
-            else:
-                msg['Cc'] = cc_addr
-        msg['Subject'] = subject
-
-        msg.attach(MIMEText(text))
-
-        for file in files:
-            ctype, encoding = mimetypes.guess_type(file)
-            if ctype is None or encoding is not None:
-                ctype = 'application/octet-stream'
-            maintype, subtype = ctype.split('/', 1)
-
-            if maintype == "text":
-                attachment = MIMEText(open(file).read(), _subtype=subtype)
-            else:
-                attachment = MIMEBase(maintype, _subtype=subtype)
-                attachment.set_payload(open(file, 'rb').read())
-
-            attachment.add_header('Content-Disposition', 'attachment; filename="%s"'
-                                  % os.path.basename(file))
-            msg.attach(attachment)
-
-        out = StringIO()
-        Generator(out, mangle_from_=False).flatten(msg)
-        msg_text = out.getvalue()
-
-        try:
-            smtp = SMTP(self.smtp_host, self.smtp_port)
-            smtp.sendmail(self.from_addr, to_addr, msg_text)
-            smtp.close()
-        except Exception as e:
-            E("Could not send email: %s" % str(e))
-
diff --git a/errors.py b/errors.py
deleted file mode 100644
index 1504fa5..0000000
--- a/errors.py
+++ /dev/null
@@ -1,93 +0,0 @@
-#!/usr/bin/env python
-# vim: set ts=4 sw=4 et:
-#
-# Copyright (c) 2013 - 2014 Intel Corporation
-#
-# This program is free software; you can redistribute it and/or
-# modify it under the terms of the GNU General Public License
-# as published by the Free Software Foundation; either version 2
-# of the License, or (at your option) any later version.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License
-# along with this program; if not, write to the Free Software
-# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
-#
-# AUTHORS
-# Laurentiu Palcu   <laurentiu.palcu@intel.com>
-# Marius Avram      <marius.avram@intel.com>
-#
-
-class Error(Exception):
-    def __init__(self, message=None, stdout=None, stderr=None):
-        self.message = message
-        self.stdout = stdout
-        self.stderr = stderr
-
-    def __str__(self):
-        return "Failed(other errors)"
-
-class MaintainerError(Error):
-    """ Class for group error that can be sent to Maintainer's """
-    def __init__(self, message=None, stdout=None, stderr=None):
-        super(MaintainerError, self).__init__(message, stdout, stderr)
-
-class FetchError(Error):
-    def __init__(self):
-        super(FetchError, self).__init__("do_fetch failed")
-
-    def __str__(self):
-        return "Failed(do_fetch)"
-
-class PatchError(MaintainerError):
-    def __init__(self):
-        super(PatchError, self).__init__("do_patch failed")
-
-    def __str__(self):
-        return "Failed(do_patch)"
-
-class ConfigureError(MaintainerError):
-    def __init__(self):
-        super(ConfigureError, self).__init__("do_configure failed")
-
-    def __str__(self):
-        return "Failed(do_configure)"
-
-class CompilationError(MaintainerError):
-    def __init__(self):
-        super(CompilationError, self).__init__("do_compile failed")
-
-    def __str__(self):
-        return "Failed(do_compile)"
-
-class LicenseError(MaintainerError):
-    def __init__(self):
-        super(LicenseError, self).__init__("license checksum does not match")
-
-    def __str__(self):
-        return "Failed(license issue)"
-
-class UnsupportedProtocolError(Error):
-    def __init__(self):
-        super(UnsupportedProtocolError, self).__init__("SRC_URI protocol not supported")
-
-    def __str__(self):
-        return "Failed(Unsupported protocol)"
-
-class UpgradeNotNeededError(Error):
-    def __init__(self):
-        super(UpgradeNotNeededError, self).__init__("Recipe already up to date")
-
-    def __str__(self):
-        return "Failed(up to date)"
-
-class EmptyEnvError(Error):
-    def __init__(self, stdout):
-        super(EmptyEnvError, self).__init__("Empty environment returned", stdout)
-
-    def __str__(self):
-        return "Failed(get_env)"
diff --git a/git.py b/git.py
deleted file mode 100644
index 9661364..0000000
--- a/git.py
+++ /dev/null
@@ -1,101 +0,0 @@
-#!/usr/bin/env python
-# vim: set ts=4 sw=4 et:
-#
-# Copyright (c) 2013 - 2014 Intel Corporation
-#
-# This program is free software; you can redistribute it and/or
-# modify it under the terms of the GNU General Public License
-# as published by the Free Software Foundation; either version 2
-# of the License, or (at your option) any later version.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License
-# along with this program; if not, write to the Free Software
-# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
-#
-# AUTHORS
-# Laurentiu Palcu   <laurentiu.palcu@intel.com>
-# Marius Avram      <marius.avram@intel.com>
-#
-
-import os
-import logging as log
-from logging import debug as D
-from bitbake import *
-
-class Git(object):
-    def __init__(self, dir):
-        self.repo_dir = dir
-        super(Git, self).__init__()
-
-    def _cmd(self, operation):
-        os.chdir(self.repo_dir)
-
-        cmd = "git " + operation
-        try:
-            stdout, stderr = bb.process.run(cmd)
-        except bb.process.ExecutionError as e:
-            D("%s returned:\n%s" % (cmd, e.__str__()))
-            raise Error("The following git command failed: " + operation,
-                        e.stdout, e.stderr)
-
-        return stdout
-
-    def mv(self, src, dest):
-        return self._cmd("mv -f " + src + " " + dest)
-
-    def stash(self):
-        return self._cmd("stash")
-
-    def commit(self, commit_message, author=None):
-        if author is None:
-            return self._cmd("commit -a -s -m \"" + commit_message + "\"")
-        else:
-            return self._cmd("commit -a --author=\"" + author + "\" -m \"" + commit_message + "\"")
-
-    def create_patch(self, out_dir):
-        return self._cmd("format-patch -M10 -1 -o " + out_dir)
-
-    def status(self):
-        return self._cmd("status --porcelain")
-
-    def checkout_branch(self, branch_name):
-        return self._cmd("checkout " + branch_name)
-
-    def create_branch(self, branch_name):
-        return self._cmd("checkout -b " + branch_name)
-
-    def delete_branch(self, branch_name):
-        return self._cmd("branch -D " + branch_name)
-
-    def pull(self):
-        return self._cmd("pull")
-
-    def reset_hard(self, no_of_patches=0):
-        if no_of_patches == 0:
-            return self._cmd("reset --hard HEAD")
-        else:
-            return self._cmd("reset --hard HEAD~" + str(no_of_patches))
-
-    def reset_soft(self, no_of_patches):
-        return self._cmd("reset --soft HEAD~" + str(no_of_patches))
-
-    def clean_untracked(self):
-        return self._cmd("clean -fd")
-
-    def last_commit(self, branch_name):
-        return self._cmd("log --pretty=format:\"%H\" -1 " + branch_name)
-
-    def ls_remote(self, repo_url=None, options=None, refs=None):
-        cmd = "ls-remote"
-        if options is not None:
-            cmd += " " + options
-        if repo_url is not None:
-            cmd += " " + repo_url
-        if refs is not None:
-            cmd += " " + refs
-        return self._cmd(cmd)
diff --git a/gitrecipe.py b/gitrecipe.py
deleted file mode 100644
index dfa5cd2..0000000
--- a/gitrecipe.py
+++ /dev/null
@@ -1,94 +0,0 @@
-#!/usr/bin/env python
-# vim: set ts=4 sw=4 et:
-#
-# Copyright (c) 2013 - 2014 Intel Corporation
-#
-# This program is free software; you can redistribute it and/or
-# modify it under the terms of the GNU General Public License
-# as published by the Free Software Foundation; either version 2
-# of the License, or (at your option) any later version.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License
-# along with this program; if not, write to the Free Software
-# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
-#
-# AUTHORS
-# Laurentiu Palcu   <laurentiu.palcu@intel.com>
-# Marius Avram      <marius.avram@intel.com>
-#
-
-from recipe import *
-
-class GitRecipe(Recipe):
-    def _extract_tag_from_ver(self, ver):
-        m = re.match("(.*)\+.*\+.*", ver)
-        if m is not None:
-            return m.group(1)
-
-        # allow errors in the reporting system
-        return ver
-
-    def _get_tag_sha1(self, new_tag):
-        m = re.match(".*(git://[^ ;]*).*", self.env['SRC_URI'])
-        if m is None:
-            raise Error("could not extract repo url from SRC_URI")
-
-        repo_url = m.group(1)
-        tags = self.git.ls_remote(repo_url, "--tags")
-
-        # Try to find tag ending with ^{}
-        for tag in tags.split('\n'):
-            if tag.endswith(new_tag + "^{}"):
-                return tag.split()[0]
-
-        # If not found, try to find simple tag
-        for tag in tags.split('\n'):
-            if tag.endswith(new_tag):
-                return tag.split()[0]
-
-        return None
-
-    def rename(self):
-        old_git_tag = self._extract_tag_from_ver(self.env['PKGV'])
-        new_git_tag = self._extract_tag_from_ver(self.new_ver)
-
-        if new_git_tag == old_git_tag:
-            raise UpgradeNotNeededError()
-
-        tag_sha1 = self._get_tag_sha1(new_git_tag)
-        if tag_sha1 is None:
-            raise Error("could not extract tag sha1")
-
-        for f in os.listdir(self.recipe_dir):
-            full_path_f = os.path.join(self.recipe_dir, f)
-            if os.path.isfile(full_path_f) and \
-                    ((f.find(self.env['PN']) == 0 and (f.find(old_git_tag) != -1 or
-                      f.find("git") != -1) and f.find(".bb") != -1) or
-                     (f.find(self.env['PN']) == 0 and f.find(".inc") != -1)):
-                with open(full_path_f + ".tmp", "w+") as temp_recipe:
-                    with open(full_path_f) as recipe:
-                        for line in recipe:
-                            m1 = re.match("^SRCREV *= *\".*\"", line)
-                            m2 = re.match("PV *= *\"[^\+]*(.*)\"", line)
-                            if m1 is not None:
-                                temp_recipe.write("SRCREV = \"" + tag_sha1 + "\"\n")
-                            elif m2 is not None:
-                                temp_recipe.write("PV = \"" + new_git_tag + m2.group(1) + "\"\n")
-                            else:
-                                temp_recipe.write(line)
-
-                os.rename(full_path_f + ".tmp", full_path_f)
-
-        self.env['PKGV'] = old_git_tag
-        self.new_ver = new_git_tag
-
-        super(GitRecipe, self).rename()
-
-    def fetch(self):
-        pass
-
diff --git a/modules/buildhistory.py b/modules/buildhistory.py
new file mode 100644
index 0000000..d8ca46d
--- /dev/null
+++ b/modules/buildhistory.py
@@ -0,0 +1,75 @@
+#!/usr/bin/env python
+# vim: set ts=4 sw=4 et:
+#
+# Copyright (c) 2015 Intel Corporation
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License
+# as published by the Free Software Foundation; either version 2
+# of the License, or (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
+#
+
+import os
+import logging as log
+from logging import debug as D
+from logging import info as I
+from logging import warning as W
+from logging import error as E
+from logging import critical as C
+import sys
+
+from errors import *
+from utils.git import Git
+from utils.bitbake import *
+
+class BuildHistory(object):
+    def __init__(self, bb, pn, workdir):
+        self.bb = bb
+        self.pn = pn
+        self.workdir = workdir
+        self.revs = []
+
+        self.buildhistory_dir = os.path.join(self.workdir, 'buildhistory')
+        if not os.path.exists(self.buildhistory_dir):
+            os.mkdir(self.buildhistory_dir)
+
+        self.git = Git(self.buildhistory_dir)
+
+        os.environ['BB_ENV_EXTRAWHITE'] = os.environ['BB_ENV_EXTRAWHITE'] + \
+                                    " BUILDHISTORY_DIR"
+        os.environ["BUILDHISTORY_DIR"] = self.buildhistory_dir
+
+    def init(self, machines):
+        self.bb.cleanall(self.pn)
+        for machine in machines:
+            self.bb.complete(self.pn, machine)
+            self.revs.append(self.git.last_commit("master"))
+
+    def add(self):
+        self.revs.append(self.git.last_commit("master"))
+
+    def diff(self):
+        rev_initial = self.revs[0]
+        rev_final = self.revs[-1]
+
+        cmd = "buildhistory-diff -a -p %s %s %s"  % (self.buildhistory_dir, 
+                rev_initial, rev_final)
+
+        try:
+            stdout, stderr = bb.process.run(cmd)
+
+            if stdout and os.path.exists(self.workdir):
+                with open(os.path.join(self.workdir, "buildhistory-diff.txt"),
+                        "w+") as log:
+                    log.write(stdout)
+        except bb.process.ExecutionError as e:
+            W( "%s: Buildhistory checking fails\n%s" % (self.pn, e.stdout))
diff --git a/modules/errors.py b/modules/errors.py
new file mode 100644
index 0000000..1504fa5
--- /dev/null
+++ b/modules/errors.py
@@ -0,0 +1,93 @@
+#!/usr/bin/env python
+# vim: set ts=4 sw=4 et:
+#
+# Copyright (c) 2013 - 2014 Intel Corporation
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License
+# as published by the Free Software Foundation; either version 2
+# of the License, or (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
+#
+# AUTHORS
+# Laurentiu Palcu   <laurentiu.palcu@intel.com>
+# Marius Avram      <marius.avram@intel.com>
+#
+
+class Error(Exception):
+    def __init__(self, message=None, stdout=None, stderr=None):
+        self.message = message
+        self.stdout = stdout
+        self.stderr = stderr
+
+    def __str__(self):
+        return "Failed(other errors)"
+
+class MaintainerError(Error):
+    """ Class for group error that can be sent to Maintainer's """
+    def __init__(self, message=None, stdout=None, stderr=None):
+        super(MaintainerError, self).__init__(message, stdout, stderr)
+
+class FetchError(Error):
+    def __init__(self):
+        super(FetchError, self).__init__("do_fetch failed")
+
+    def __str__(self):
+        return "Failed(do_fetch)"
+
+class PatchError(MaintainerError):
+    def __init__(self):
+        super(PatchError, self).__init__("do_patch failed")
+
+    def __str__(self):
+        return "Failed(do_patch)"
+
+class ConfigureError(MaintainerError):
+    def __init__(self):
+        super(ConfigureError, self).__init__("do_configure failed")
+
+    def __str__(self):
+        return "Failed(do_configure)"
+
+class CompilationError(MaintainerError):
+    def __init__(self):
+        super(CompilationError, self).__init__("do_compile failed")
+
+    def __str__(self):
+        return "Failed(do_compile)"
+
+class LicenseError(MaintainerError):
+    def __init__(self):
+        super(LicenseError, self).__init__("license checksum does not match")
+
+    def __str__(self):
+        return "Failed(license issue)"
+
+class UnsupportedProtocolError(Error):
+    def __init__(self):
+        super(UnsupportedProtocolError, self).__init__("SRC_URI protocol not supported")
+
+    def __str__(self):
+        return "Failed(Unsupported protocol)"
+
+class UpgradeNotNeededError(Error):
+    def __init__(self):
+        super(UpgradeNotNeededError, self).__init__("Recipe already up to date")
+
+    def __str__(self):
+        return "Failed(up to date)"
+
+class EmptyEnvError(Error):
+    def __init__(self, stdout):
+        super(EmptyEnvError, self).__init__("Empty environment returned", stdout)
+
+    def __str__(self):
+        return "Failed(get_env)"
diff --git a/modules/recipe/__init__.py b/modules/recipe/__init__.py
new file mode 100644
index 0000000..e69de29
diff --git a/modules/recipe/base.py b/modules/recipe/base.py
new file mode 100644
index 0000000..14aa5bb
--- /dev/null
+++ b/modules/recipe/base.py
@@ -0,0 +1,671 @@
+#!/usr/bin/env python
+# vim: set ts=4 sw=4 et:
+#
+# Copyright (c) 2013 - 2014 Intel Corporation
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License
+# as published by the Free Software Foundation; either version 2
+# of the License, or (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
+#
+# AUTHORS
+# Laurentiu Palcu   <laurentiu.palcu@intel.com>
+# Marius Avram      <marius.avram@intel.com>
+#
+
+import os
+import re
+import sys
+import logging as log
+from logging import debug as D
+from logging import info as I
+from logging import warning as W
+
+from errors import *
+from utils.bitbake import *
+
+class Recipe(object):
+    def __init__(self, env, new_ver, interactive, workdir, recipe_dir, bitbake, git):
+        self.env = env
+        self.new_ver = new_ver
+        self.interactive = interactive
+        self.workdir = workdir
+        self.recipe_dir = recipe_dir
+        self.bb = bitbake
+        self.bb.set_log_dir(workdir)
+        self.git = git
+
+        self.retried_recipes = set()
+        self.license_diff_file = None
+
+        self.recipes_renamed = False
+        self.checksums_changed = False
+
+        self.removed_patches = False
+
+        self.suffixes = [
+            "tar.gz", "tgz", "zip", "tar.bz2", "tar.xz", "tar.lz4", "bz2",
+            "lz4", "orig.tar.gz", "src.tar.gz", "src.rpm", "src.tgz",
+            "svnr\d+.tar.bz2", "stable.tar.gz", "src.rpm"]
+        self.old_env = None
+
+        self.commit_msg = self.env['PN'] + ": upgrade to " + self.new_ver + "\n\n"
+        self.rm_patches_msg = "\n\nRemoved the following patch(es):\n"
+
+        super(Recipe, self).__init__()
+
+    def update_env(self, env):
+        self.env = env
+
+    def _rename_files_dir(self, old_ver, new_ver):
+        # The files directory is renamed only if the previous
+        # one has the following format PackageName-PackageVersion.
+        # Otherwise is kept the same way.
+        src_dir = os.path.join(self.recipe_dir, self.env['PN'] + "-" + old_ver)
+        dest_dir = os.path.join(self.recipe_dir, self.env['PN'] + "-" + new_ver)
+
+        if os.path.exists(src_dir) and os.path.isdir(src_dir):
+            self.git.mv(src_dir, dest_dir)
+
+    def rename(self):
+        # change PR before renaming
+        for f in os.listdir(self.recipe_dir):
+            full_path_f = os.path.join(self.recipe_dir, f)
+            if os.path.isfile(full_path_f) and \
+                    ((f.find(self.env['PN']) == 0 and f.find(self.env['PKGV']) != -1 and
+                      f.find(".bb") != -1) or
+                     (f.find(self.env['PN']) == 0 and f.find(".inc") != -1)):
+                with open(full_path_f + ".tmp", "w+") as temp_recipe:
+                    with open(full_path_f) as recipe:
+                        for line in recipe:
+                            if line.startswith("PR=") or line.startswith("PR ="):
+                                continue
+                            else:
+                                temp_recipe.write(line)
+                os.rename(full_path_f + ".tmp", full_path_f)
+
+        # rename recipes (not directories)
+        for path in os.listdir(self.recipe_dir):
+            full_path = os.path.join(self.recipe_dir, path)
+            if os.path.isfile(full_path) \
+              and path.find(self.env['PN']) == 0 \
+              and path.find(self.env['PKGV']) != -1:
+                new_path = re.sub(re.escape(self.env['PKGV']), self.new_ver, path)
+                self.git.mv(os.path.join(self.recipe_dir, path),
+                            os.path.join(self.recipe_dir, new_path))
+
+        # rename files/PN-PV directories to PN
+        self._rename_files_dir(self.env['PKGV'], self.new_ver)
+
+        self.recipes_renamed = True
+
+        # since we did some renaming, backup the current environment
+        self.old_env = self.env
+
+        # start formatting the commit message
+
+    def create_diff_file(self, file, old_md5, new_md5):
+        old_file = os.path.join(self.old_env['S'], file)
+        new_file = os.path.join(self.env['S'], file)
+        cmd = "diff -Nup " + old_file + " " + new_file + " > " + \
+              os.path.join(self.workdir, os.path.basename(file + ".diff"))
+
+        try:
+            stdout, stderr = bb.process.run(cmd)
+        except bb.process.ExecutionError:
+            pass
+
+        with open(os.path.join(self.workdir, "license_checksums.txt"), "w+") as f:
+            f.write("old checksum = %s\n" % old_md5)
+            f.write("new_checksum = %s\n" % new_md5)
+
+        for f in os.listdir(self.recipe_dir):
+            full_path_f = os.path.join(self.recipe_dir, f)
+            if os.path.isfile(full_path_f) and \
+                    ((f.find(self.env['PN']) == 0 and
+                      f.find(self.env['PKGV']) != -1 and
+                      f.find(".bb") != -1) or
+                     (f.find(self.env['PN']) == 0 and
+                      f.find(".inc") != -1)):
+                with open(full_path_f + ".tmp", "w+") as temp_recipe:
+                    with open(full_path_f) as recipe:
+                        for line in recipe:
+                            m = re.match("(.*)" + old_md5 + "(.*)", line)
+                            if m is not None:
+                                temp_recipe.write(m.group(1) + new_md5 + m.group(2) + "\n")
+                            else:
+                                temp_recipe.write(line)
+
+                os.rename(full_path_f + ".tmp", full_path_f)
+
+    def _change_recipe_checksums(self, fetch_log):
+        sums = {}
+
+        with open(os.path.realpath(fetch_log)) as log:
+            for line in log:
+                m = None
+                key = None
+                m1 = re.match("^SRC_URI\[(.*)md5sum\].*", line)
+                m2 = re.match("^SRC_URI\[(.*)sha256sum\].*", line)
+                if m1:
+                    m = m1
+                    key = "md5sum"
+                elif m2:
+                    m = m2
+                    key = "sha256sum"
+
+                if m:
+                    name = m.group(1)
+                    sum_line = m.group(0) + '\n'
+                    if name not in sums:
+                        sums[name] = {}
+                    sums[name][key] = sum_line;
+
+        if len(sums) == 0:
+            raise FetchError()
+
+        I(" %s: Update recipe checksums ..." % self.env['PN'])
+        # checksums are usually in the main recipe but they can also be in inc
+        # files... Go through the recipes/inc files until we find them
+        for f in os.listdir(self.recipe_dir):
+            full_path_f = os.path.join(self.recipe_dir, f)
+            if os.path.isfile(full_path_f) and \
+                    ((f.find(self.env['PN']) == 0 and f.find(self.env['PKGV']) != -1 and
+                      f.find(".bb") != -1) or
+                     (f.find(self.env['PN']) == 0 and f.find(".inc") != -1)):
+                with open(full_path_f + ".tmp", "w+") as temp_recipe:
+                    with open(full_path_f) as recipe:
+                        for line in recipe:
+                            for name in sums:
+                                m1 = re.match("^SRC_URI\["+ name + "md5sum\].*", line)
+                                m2 = re.match("^SRC_URI\["+ name + "sha256sum\].*", line)
+                                if m1:
+                                    temp_recipe.write(sums[name]["md5sum"])
+                                elif m2:
+                                    temp_recipe.write(sums[name]["sha256sum"])
+                                else:
+                                    temp_recipe.write(line)
+
+                os.rename(full_path_f + ".tmp", full_path_f)
+        
+        self.checksums_changed = True
+
+    def _is_uri_failure(self, fetch_log):
+        uri_failure = None
+        checksum_failure = None
+        with open(os.path.realpath(fetch_log)) as log:
+            for line in log:
+                if not uri_failure:
+                    uri_failure = re.match(".*Fetcher failure for URL.*", line)
+                if not checksum_failure:
+                    checksum_failure = re.match(".*Checksum mismatch.*", line)
+        if uri_failure and not checksum_failure:
+            return True
+        else:
+            return False
+
+
+    def _change_source_suffix(self, new_suffix):
+        # Will change the extension of the archive from the SRC_URI
+        for f in os.listdir(self.recipe_dir):
+            full_path_f = os.path.join(self.recipe_dir, f)
+            if os.path.isfile(full_path_f) and \
+                    ((f.find(self.env['PN']) == 0 and f.find(self.env['PKGV']) != -1 and
+                      f.find(".bb") != -1) or
+                     (f.find(self.env['PN']) == 0 and f.find(".inc") != -1)):
+                with open(full_path_f + ".tmp", "w+") as temp_recipe:
+                    with open(full_path_f) as recipe:
+                        source_found = False
+                        for line in recipe:
+                            # source on first line
+                            m1 = re.match("^SRC_URI.*\${PV}\.(.*)[\" \\\\].*", line)
+                            # SRC_URI alone on the first line
+                            m2 = re.match("^SRC_URI.*", line)
+                            # source on second line
+                            m3 = re.match(".*\${PV}\.(.*)[\" \\\\].*", line)
+                            if m1:
+                                old_suffix = m1.group(1)
+                                line = line.replace(old_suffix, new_suffix+" ")
+                            if m2 and not m1:
+                                source_found = True
+                            if m3 and source_found:
+                                old_suffix = m3.group(1)
+                                line = line.replace(old_suffix, new_suffix+" ")
+                                source_found = False
+
+                            temp_recipe.write(line)
+                os.rename(full_path_f + ".tmp", full_path_f)
+
+    def _remove_patch_uri(self, uri):
+        recipe_files = [
+            os.path.join(self.recipe_dir, self.env['PN'] + ".inc"),
+            self.env['FILE']]
+
+        for recipe_filename in recipe_files:
+            if os.path.isfile(recipe_filename):
+                with open(recipe_filename + ".tmp", "w+") as temp_recipe:
+                    with open(recipe_filename) as recipe:
+                        for line in recipe:
+                            if line.find(uri) == -1:
+                                temp_recipe.write(line)
+                                continue
+                            
+                            m1 = re.match("SRC_URI *\+*= *\" *" + uri + " *\"", line)
+                            m2 = re.match("(SRC_URI *\+*= *\" *)" + uri + " *\\\\", line)
+                            m3 = re.match("[\t ]*" + uri + " *\\\\", line)
+                            m4 = re.match("([\t ]*)" + uri + " *\"", line)
+
+                            # patch on a single SRC_URI line:
+                            if m1:
+                                continue
+                            # patch is on the first SRC_URI line
+                            elif m2:
+                                temp_recipe.write(m2.group(1) + "\\\n")
+                            # patch is in the middle
+                            elif m3:
+                                continue
+                            # patch is last in list
+                            elif m4:
+                                temp_recipe.write(m4.group(1) + "\"\n")
+                            # nothing matched in recipe but we deleted the patch
+                            # anyway? Then we must bail out!
+                            else:
+                                return False
+
+                os.rename(recipe_filename + ".tmp", recipe_filename)
+
+        return True
+
+    def _remove_faulty_patch(self, patch_log):
+        patch_file = None
+        is_reverse_applied = False
+
+        with open(patch_log) as log:
+            for line in log:
+                m1 = re.match("^Patch ([^ ]*) does not apply.*", line)
+                m2 = re.match("Patch ([^ ]*) can be reverse-applied", line)
+                if m2:
+                    m1 = m2
+                    is_reverse_applied = True
+                if m1:
+                    patch_file = m1.group(1)
+                    break
+
+        if not patch_file:
+            return False
+
+        I(" %s: Removing patch %s ..." % (self.env['PN'], patch_file))
+        reason = None
+        found = False
+        dirs = [self.env['PN'] + "-" + self.env['PKGV'], self.env['PN'], "files"]
+        for dir in dirs:
+            patch_file_path = os.path.join(self.recipe_dir, dir, patch_file)
+            if not os.path.exists(patch_file_path):
+                continue
+            else:
+                found = True
+                # Find out upstream status of the patch
+                with open(patch_file_path) as patch:
+                    for line in patch:
+                        m = re.match(".*Upstream-Status:(.*)\n", line)
+                        if m:
+                            reason = m.group(1).strip().split()[0].lower()
+                os.remove(patch_file_path)
+                if not self._remove_patch_uri("file://" + patch_file):
+                    return False
+        if not found:
+            return False
+
+        self.rm_patches_msg += " * " + patch_file
+        if reason:
+            self.rm_patches_msg += " (" + reason + ") "
+        if is_reverse_applied:
+            self.rm_patches_msg += "+ reverse-applied"
+        self.rm_patches_msg += "\n"
+        return True
+
+    def _is_license_issue(self, config_log):
+        with open(config_log) as log:
+            for line in log:
+                m = re.match("ERROR: " + self.env['PN'] +
+                             "[^:]*: md5 data is not matching for file", line)
+                if m is not None:
+                    return True
+
+        return False
+
+    def _license_issue_handled(self, config_log):
+        license_file = None
+        with open(config_log) as log:
+            for line in log:
+                if not line.startswith("ERROR:"):
+                    continue
+                m_old = re.match("ERROR: " + self.env['PN'] +
+                        "[^:]*: md5 data is not matching for file://([^;]*);md5=(.*)$", line)
+                if not m_old:
+                    m_old = re.match("ERROR: " + self.env['PN'] +
+                            "[^:]*: md5 data is not matching for file://([^;]*);beginline=[0-9]*;endline=[0-9]*;md5=(.*)$", line)
+                if not m_old:
+                    m_old = re.match("ERROR: " + self.env['PN'] +
+                            "[^:]*: md5 data is not matching for file://([^;]*);endline=[0-9]*;md5=(.*)$", line)
+                if not m_old:
+                    m_old = re.match("ERROR: " + self.env['PN'] +
+                            "[^:]*: md5 data is not matching for file://([^;]*);beginline=[0-9]*;md5=(.*)$", line)
+                m_new = re.match("ERROR: " + self.env['PN'] +
+                        "[^:]*: The new md5 checksum is (.*)", line)
+                if m_old:
+                    license_file = m_old.group(1)
+                    old_md5 = m_old.group(2)
+                elif m_new:
+                    new_md5 = m_new.group(1)
+        
+        if license_file is not None:
+            self.create_diff_file(license_file, old_md5, new_md5)
+            self.license_diff_file = os.path.join(self.workdir, os.path.basename(license_file + ".diff"))
+            if self.interactive:
+                W("  %s: license checksum failed for file %s. The recipe has"
+                  "been updated! View diff? (Y/n)" % (self.env['PN'], license_file))
+                answer = sys.stdin.readline().strip().upper()
+                if answer == '' or answer == 'Y':
+                    I(" ################ Licence file diff #################")
+                    with open(self.license_diff_file) as diff:
+                        I("%s" % diff.read())
+                    I(" ####################################################")
+                I(" Retry compilation? (Y/n)")
+                answer = sys.stdin.readline().strip().upper()
+                if answer == '' or answer == 'Y':
+                    return True
+            else:
+                W(" %s: license checksum failed for file %s."
+                  " The recipe has been updated! Diff file located at %s" %
+                  (self.env['PN'], license_file, self.license_diff_file))
+                I(" Recompiling ...")
+                self.commit_msg += "License checksum changed for file " + license_file
+                return True
+
+        return False
+
+    def get_license_diff_file_name(self):
+        file_name = None
+        if not self.license_diff_file is None:
+            file_name = os.path.basename(self.license_diff_file)
+
+        return file_name
+
+    def _get_failed_recipes(self, output):
+        failed_tasks = dict()
+        machine = None
+
+        for line in output.split("\n"):
+            machine_match = re.match("MACHINE[\t ]+= *\"(.*)\"$", line)
+            task_log_match = re.match("ERROR: Logfile of failure stored in: (.*/([^/]*)/[^/]*/temp/log\.(.*)\.[0-9]*)", line)
+            # For some reason do_package is reported differently
+            qa_issue_match = re.match("ERROR: QA Issue: ([^ :]*): (.*) not shipped", line)
+
+            if task_log_match:
+                failed_tasks[task_log_match.group(2)] = (task_log_match.group(3), task_log_match.group(1))
+            elif qa_issue_match:
+                # Improvise path to log file
+                failed_tasks[qa_issue_match.group(1)] = ("do_package", self.bb.get_stdout_log())
+            elif machine_match:
+                machine = machine_match.group(1)
+
+        # we didn't detect any failed tasks? then something else is wrong
+        if len(failed_tasks) == 0:
+            raise Error("could not detect failed task")
+
+        return (machine, failed_tasks)
+
+    def _is_incompatible_host(self, output):
+        for line in output.split("\n"):
+            incomp_host = re.match("ERROR: " + self.env['PN'] + " was skipped: incompatible with host (.*) \(.*$", line)
+
+            if incomp_host is not None:
+                return True
+
+        return False
+
+    def _add_not_shipped(self, package_log):
+        files_not_shipped = False
+        files = []
+        occurences = []
+        prefixes = {
+          "/usr"            : "prefix",
+          "/bin"            : "base_bindir",
+          "/sbin"           : "base_sbindir",
+          "/lib"            : "base_libdir",
+          "/usr/share"      : "datadir",
+          "/etc"            : "sysconfdir",
+          "/var"            : "localstatedir",
+          "/usr/share/info" : "infodir",
+          "/usr/share/man"  : "mandir",
+          "/usr/share/doc"  : "docdir",
+          "/srv"            : "servicedir",
+          "/usr/bin"        : "bindir",
+          "/usr/sbin"       : "sbindir",
+          "/usr/libexec"    : "libexecdir",
+          "/usr/lib"        : "libdir",
+          "/usr/include"    : "includedir",
+          "/usr/lib/opie"   : "palmtopdir",
+          "/usr/lib/opie"   : "palmqtdir",
+        }
+
+        I(" %s: Add new files in recipe ..." %  self.env['PN'])
+        with open(package_log) as log:
+            for line in log:
+                if re.match(".*Files/directories were installed but not shipped.*", line):
+                    files_not_shipped = True
+                # Extract path
+                line = line.strip()
+                if line:
+                    line = line.split()[0]
+                if files_not_shipped and os.path.isabs(line):
+                    # Count occurences for globbing
+                    path_exists = False
+                    for i in range(0, len(files)):
+                        if line.find(files[i]) == 0:
+                            path_exists = True
+                            occurences[i] += 1
+                            break
+                    if not path_exists:
+                        files.append(line)
+                        occurences.append(1)
+
+        for i in range(0, len(files)):
+            # Change paths to globbing expressions where is the case
+            if occurences[i] > 1:
+                files[i] += "/*"
+            largest_prefix = ""
+            # Substitute prefix
+            for prefix in prefixes:
+                if files[i].find(prefix) == 0 and len(prefix) > len(largest_prefix):
+                    largest_prefix = prefix
+            if largest_prefix:
+                replacement = "${" + prefixes[largest_prefix] + "}"
+                files[i] = files[i].replace(largest_prefix, replacement)
+
+        recipe_files = [
+            os.path.join(self.recipe_dir, self.env['PN'] + ".inc"),
+            self.env['FILE']]
+
+        # Append the new files
+        for recipe_filename in recipe_files:
+            if os.path.isfile(recipe_filename):
+                with open(recipe_filename + ".tmp", "w+") as temp_recipe:
+                    with open(recipe_filename) as recipe:
+                        files_clause = False
+                        for line in recipe:
+                            if re.match("^FILES_\${PN}[ +=].*", line):
+                                files_clause = True
+                                temp_recipe.write(line)
+                                continue
+                            # Get front spacing
+                            if files_clause:
+                                front_spacing = re.sub("[^ \t]", "", line)
+                            # Append once the last line has of FILES has been reached
+                            if re.match(".*\".*", line) and files_clause:
+                                files_clause = False
+                                line = line.replace("\"", "")
+                                line = line.rstrip()
+                                front_spacing = re.sub("[^ \t]", "", line)
+                                # Do not write an empty line
+                                if line.strip():
+                                    temp_recipe.write(line + " \\\n")
+                                # Add spacing in case there was none
+                                if len(front_spacing) == 0:
+                                    front_spacing = " " * 8
+                                # Write to file
+                                for i in range(len(files)-1):
+                                    line = front_spacing + files[i] + " \\\n"
+                                    temp_recipe.write(line)
+
+                                line = front_spacing + files[len(files) - 1] + "\"\n"
+                                temp_recipe.write(line)
+                                continue
+
+                            temp_recipe.write(line)
+
+                os.rename(recipe_filename + ".tmp", recipe_filename)
+
+    def unpack(self):
+        self.bb.unpack(self.env['PN'])
+
+    def fetch(self):
+        from recipe.git import GitRecipe
+
+        def _try_fetch():
+            try:
+                self.bb.fetch(self.env['PN'])
+                return
+            except Error as e:
+                machine, failed_recipes = self._get_failed_recipes(e.stdout)
+                if not self.env['PN'] in failed_recipes:
+                    raise Error("Unknown error occured during fetch",
+                            stdout = e.stdout, stderr = e.stderr)
+
+                fetch_log = failed_recipes[self.env['PN']][1]
+
+                if not self._is_uri_failure(fetch_log) and not \
+                        self.checksums_changed:
+                    self._change_recipe_checksums(fetch_log)
+                    self.checksums_changed = True
+                    return True
+
+                return False
+
+        succeed = _try_fetch()
+
+        if not succeed and not isinstance(self, GitRecipe):
+            for sfx in self.suffixes:
+                I(" Trying new SRC_URI suffix: %s ..." % sfx)
+                self._change_source_suffix(sfx)
+
+                succeed = _try_fetch()
+                if succeed:
+                    break
+
+        if not succeed:
+            raise Error("Can't built a valid SRC_URI")
+        elif self.recipes_renamed and not self.checksums_changed:
+            raise Error("Fetch succeeded without changing checksums")
+
+    def cleanall(self):
+        self.bb.cleanall(self.env['PN'])
+
+    def _clean_failed_recipes(self, failed_recipes):
+        already_retried = False
+        for recipe in failed_recipes:
+            if recipe in self.retried_recipes:
+                # we already retried, we'd best leave it to a human to handle
+                # it :)
+                already_retried = True
+            # put the recipe in the retried list
+            self.retried_recipes.add(recipe)
+
+        if already_retried:
+            return False
+        else:
+            I(" %s: The following recipe(s): %s, failed.  "
+              "Doing a 'cleansstate' and then retry ..." %
+              (self.env['PN'], ' '.join(failed_recipes.keys())))
+
+            self.bb.cleansstate(' '.join(failed_recipes.keys()))
+            return True
+
+    def _undo_temporary(self):
+        # Undo removed patches
+        if self.removed_patches:
+            self.git.checkout_branch("upgrades")
+            self.git.delete_branch("remove_patches")
+            self.git.reset_hard()
+            self.git.reset_soft(1)
+            self.removed_patches = False
+
+    def compile(self, machine):
+        try:
+            self.bb.complete(self.env['PN'], machine)
+            if self.removed_patches:
+                # move temporary changes into upgrades branch
+                self.git.checkout_branch("upgrades")
+                self.git.delete_branch("remove_patches")
+                self.git.reset_soft(1)
+                self.commit_msg += self.rm_patches_msg + "\n"
+                self.removed_patches = False
+        except Error as e:
+            if self._is_incompatible_host(e.stdout):
+                W(" %s: compilation failed: incompatible host" % self.env['PN'])
+                return
+            machine, failed_recipes = self._get_failed_recipes(e.stdout)
+            if not self.env['PN'] in failed_recipes:
+                if not self._clean_failed_recipes(failed_recipes):
+                    self._undo_temporary()
+                    raise CompilationError()
+
+                # retry
+                self.compile(machine)
+            else:
+                failed_task = failed_recipes[self.env['PN']][0]
+                log_file = failed_recipes[self.env['PN']][1]
+                if failed_task == "do_patch":
+                    # Remove one patch after the other until
+                    # compilation works.
+                    if not self.removed_patches:
+                        self.git.commit("temporary")
+                        self.git.create_branch("remove_patches")
+                        self.git.checkout_branch("remove_patches")
+                        self.removed_patches = True
+                    if not self._remove_faulty_patch(log_file):
+                        self._undo_temporary()
+                        raise PatchError()
+
+                    # retry
+                    I(" %s: Recompiling for %s ..." % (self.env['PN'], machine))
+                    self.compile(machine)
+                elif failed_task == "do_configure":
+                    self._undo_temporary()
+                    if not self._is_license_issue(log_file):
+                        raise ConfigureError()
+
+                    if not self._license_issue_handled(log_file):
+                        raise LicenseError()
+                    #retry
+                    self.compile(machine)
+                elif failed_task == "do_fetch":
+                    raise FetchError()
+                elif failed_task == "do_package":
+                    self._add_not_shipped(log_file)
+                    self.compile(machine)
+                else:
+                    self._undo_temporary()
+                    # throw a compilation exception for everything else. It
+                    # doesn't really matter
+                    raise CompilationError()
diff --git a/modules/recipe/git.py b/modules/recipe/git.py
new file mode 100644
index 0000000..7526a67
--- /dev/null
+++ b/modules/recipe/git.py
@@ -0,0 +1,94 @@
+#!/usr/bin/env python
+# vim: set ts=4 sw=4 et:
+#
+# Copyright (c) 2013 - 2014 Intel Corporation
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License
+# as published by the Free Software Foundation; either version 2
+# of the License, or (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
+#
+# AUTHORS
+# Laurentiu Palcu   <laurentiu.palcu@intel.com>
+# Marius Avram      <marius.avram@intel.com>
+#
+
+from recipe.base import Recipe
+
+class GitRecipe(Recipe):
+    def _extract_tag_from_ver(self, ver):
+        m = re.match("(.*)\+.*\+.*", ver)
+        if m is not None:
+            return m.group(1)
+
+        # allow errors in the reporting system
+        return ver
+
+    def _get_tag_sha1(self, new_tag):
+        m = re.match(".*(git://[^ ;]*).*", self.env['SRC_URI'])
+        if m is None:
+            raise Error("could not extract repo url from SRC_URI")
+
+        repo_url = m.group(1)
+        tags = self.git.ls_remote(repo_url, "--tags")
+
+        # Try to find tag ending with ^{}
+        for tag in tags.split('\n'):
+            if tag.endswith(new_tag + "^{}"):
+                return tag.split()[0]
+
+        # If not found, try to find simple tag
+        for tag in tags.split('\n'):
+            if tag.endswith(new_tag):
+                return tag.split()[0]
+
+        return None
+
+    def rename(self):
+        old_git_tag = self._extract_tag_from_ver(self.env['PKGV'])
+        new_git_tag = self._extract_tag_from_ver(self.new_ver)
+
+        if new_git_tag == old_git_tag:
+            raise UpgradeNotNeededError()
+
+        tag_sha1 = self._get_tag_sha1(new_git_tag)
+        if tag_sha1 is None:
+            raise Error("could not extract tag sha1")
+
+        for f in os.listdir(self.recipe_dir):
+            full_path_f = os.path.join(self.recipe_dir, f)
+            if os.path.isfile(full_path_f) and \
+                    ((f.find(self.env['PN']) == 0 and (f.find(old_git_tag) != -1 or
+                      f.find("git") != -1) and f.find(".bb") != -1) or
+                     (f.find(self.env['PN']) == 0 and f.find(".inc") != -1)):
+                with open(full_path_f + ".tmp", "w+") as temp_recipe:
+                    with open(full_path_f) as recipe:
+                        for line in recipe:
+                            m1 = re.match("^SRCREV *= *\".*\"", line)
+                            m2 = re.match("PV *= *\"[^\+]*(.*)\"", line)
+                            if m1 is not None:
+                                temp_recipe.write("SRCREV = \"" + tag_sha1 + "\"\n")
+                            elif m2 is not None:
+                                temp_recipe.write("PV = \"" + new_git_tag + m2.group(1) + "\"\n")
+                            else:
+                                temp_recipe.write(line)
+
+                os.rename(full_path_f + ".tmp", full_path_f)
+
+        self.env['PKGV'] = old_git_tag
+        self.new_ver = new_git_tag
+
+        super(GitRecipe, self).rename()
+
+    def fetch(self):
+        pass
+
diff --git a/modules/recipe/svn.py b/modules/recipe/svn.py
new file mode 100644
index 0000000..6d60529
--- /dev/null
+++ b/modules/recipe/svn.py
@@ -0,0 +1,28 @@
+#!/usr/bin/env python
+# vim: set ts=4 sw=4 et:
+#
+# Copyright (c) 2013 - 2014 Intel Corporation
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License
+# as published by the Free Software Foundation; either version 2
+# of the License, or (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
+#
+# AUTHORS
+# Laurentiu Palcu   <laurentiu.palcu@intel.com>
+# Marius Avram      <marius.avram@intel.com>
+#
+
+from base import Recipe
+
+class SvnRecipe(Recipe):
+    pass
diff --git a/modules/statistics.py b/modules/statistics.py
new file mode 100644
index 0000000..32a6748
--- /dev/null
+++ b/modules/statistics.py
@@ -0,0 +1,102 @@
+#!/usr/bin/env python
+# vim: set ts=4 sw=4 et:
+#
+# Copyright (c) 2013 - 2014 Intel Corporation
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License
+# as published by the Free Software Foundation; either version 2
+# of the License, or (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
+#
+# AUTHORS
+# Laurentiu Palcu   <laurentiu.palcu@intel.com>
+# Marius Avram      <marius.avram@intel.com>
+#
+
+class Statistics(object):
+    def __init__(self):
+        self.succeeded = dict()
+        self.failed = dict()
+        self.succeeded["total"] = 0
+        self.failed["total"] = 0
+        self.upgrade_stats = dict()
+        self.maintainers = set()
+        self.total_attempted = 0
+
+    def update(self, pn, new_ver, maintainer, error):
+        if type(error).__name__ == "UpgradeNotNeededError":
+            return
+        elif error is None:
+            status = "Succeeded"
+        else:
+            status = str(error)
+
+        if not status in self.upgrade_stats:
+            self.upgrade_stats[status] = []
+
+        self.upgrade_stats[status].append((pn, new_ver, maintainer))
+
+        # add maintainer to the set of unique maintainers
+        self.maintainers.add(maintainer)
+
+        if not maintainer in self.succeeded:
+            self.succeeded[maintainer] = 0
+        if not maintainer in self.failed:
+            self.failed[maintainer] = 0
+
+        if status == "Succeeded":
+            self.succeeded["total"] += 1
+            self.succeeded[maintainer] += 1
+        else:
+            self.failed["total"] += 1
+            self.failed[maintainer] += 1
+
+        self.total_attempted += 1
+
+    def pkg_stats(self):
+        stat_msg = "\nUpgrade statistics:\n"
+        stat_msg += "====================================================\n"
+        for status in self.upgrade_stats:
+            list_len = len(self.upgrade_stats[status])
+            if list_len > 0:
+                stat_msg += "* " + status + ": " + str(list_len) + "\n"
+
+                for pkg, new_ver, maintainer in self.upgrade_stats[status]:
+                    stat_msg += "    " + pkg + ", " + new_ver + ", " + \
+                                maintainer + "\n"
+
+        if self.total_attempted == 0:
+            percent_succeded = 0
+            percent_failed = 0
+        else:
+            percent_succeded = self.succeeded["total"] * 100.0 / self.total_attempted
+            percent_failed = self.failed["total"] * 100.0 / self.total_attempted
+        stat_msg += "++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
+        stat_msg += "TOTAL: attempted=%d succeeded=%d(%.2f%%) failed=%d(%.2f%%)\n\n" % \
+                    (self.total_attempted, self.succeeded["total"],
+                    percent_succeded,
+                    self.failed["total"],
+                    percent_failed)
+
+        return stat_msg
+
+    def maintainer_stats(self):
+        stat_msg = "* Statistics per maintainer:\n"
+        for m in self.maintainers:
+            attempted = self.succeeded[m] + self.failed[m]
+            stat_msg += "    %s: attempted=%d succeeded=%d(%.2f%%) failed=%d(%.2f%%)\n\n" % \
+                        (m.split("@")[0], attempted, self.succeeded[m],
+                        self.succeeded[m] * 100.0 / attempted,
+                        self.failed[m],
+                        self.failed[m] * 100.0 / attempted)
+
+        return stat_msg
diff --git a/modules/steps.py b/modules/steps.py
new file mode 100644
index 0000000..b85a0dc
--- /dev/null
+++ b/modules/steps.py
@@ -0,0 +1,143 @@
+#!/usr/bin/env python
+# vim: set ts=4 sw=4 et:
+#
+# Copyright (c) 2013 - 2015 Intel Corporation
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License
+# as published by the Free Software Foundation; either version 2
+# of the License, or (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
+#
+
+import os
+import sys
+
+from logging import debug as D
+from logging import info as I
+from logging import warning as W
+from logging import error as E
+from logging import critical as C
+
+from errors import *
+from buildhistory import BuildHistory
+
+from recipe.base import Recipe
+from recipe.git import GitRecipe
+from recipe.svn import SvnRecipe
+
+def load_env(bb, git, opts, pkg_ctx):
+    stdout = git.status()
+    if stdout != "":
+        if opts['interactive']:
+            W(" %s: git repository has uncommited work which will be dropped!" \
+                    " Proceed? (y/N)" % pkg_ctx['PN'])
+            answer = sys.stdin.readline().strip().upper()
+            if answer == '' or answer != 'Y':
+                I(" %s: User abort!" % pkg_ctx['PN'])
+                exit(1)
+
+        I(" %s: Dropping uncommited work!" % pkg_ctx['PN'])
+        git.reset_hard()
+        git.clean_untracked()
+
+    pkg_ctx['env'] = bb.env(pkg_ctx['PN'])
+    if pkg_ctx['env']['PV'] == pkg_ctx['NPV']:
+        raise UpgradeNotNeededError
+
+def load_dirs(bb, git, opts, pkg_ctx):
+    pkg_ctx['workdir'] = os.path.join(pkg_ctx['base_dir'], pkg_ctx['PN'])
+    os.mkdir(pkg_ctx['workdir'])
+
+    pkg_ctx['recipe_dir'] = os.path.dirname(pkg_ctx['env']['FILE'])
+
+def clean_repo(bb, git, opts, pkg_ctx):
+    try:
+        git.checkout_branch("upgrades")
+    except Error:
+        git.create_branch("upgrades")
+
+    try:
+        git.delete_branch("remove_patches")
+    except:
+        pass
+
+def detect_recipe_type(bb, git, opts, pkg_ctx):
+    if pkg_ctx['env']['SRC_URI'].find("ftp://") != -1 or  \
+            pkg_ctx['env']['SRC_URI'].find("http://") != -1 or \
+            pkg_ctx['env']['SRC_URI'].find("https://") != -1:
+        recipe = Recipe
+    elif pkg_ctx['env']['SRC_URI'].find("git://") != -1:
+        recipe = GitRecipe
+    else:
+        raise UnsupportedProtocolError
+
+    pkg_ctx['recipe'] = recipe(pkg_ctx['env'], pkg_ctx['NPV'],
+            opts['interactive'], pkg_ctx['workdir'],
+            pkg_ctx['recipe_dir'], bb, git)
+
+def buildhistory_init(bb, git, opts, pkg_ctx):
+    if not opts['buildhistory_enabled']:
+        return
+
+    pkg_ctx['buildhistory'] = BuildHistory(bb, pkg_ctx['PN'],
+            pkg_ctx['workdir'])
+    I(" %s: Initial buildhistory for %s ..." % (pkg_ctx['PN'],
+            opts['machines']))
+    pkg_ctx['buildhistory'].init(opts['machines'])
+
+def unpack_original(bb, git, opts, pkg_ctx):
+    pkg_ctx['recipe'].unpack()
+
+def rename(bb, git, opts, pkg_ctx):
+    pkg_ctx['recipe'].rename()
+
+    pkg_ctx['env'] = bb.env(pkg_ctx['PN'])
+
+    pkg_ctx['recipe'].update_env(pkg_ctx['env'])
+
+def cleanall(bb, git, opts, pkg_ctx):
+    pkg_ctx['recipe'].cleanall()
+
+def fetch(bb, git, opts, pkg_ctx):
+    pkg_ctx['recipe'].fetch()
+
+def compile(bb, git, opts, pkg_ctx):
+    if opts['skip_compilation']:
+        W(" %s: Compilation was skipped by user choice!")
+        return
+
+    for machine in opts['machines']:
+        I(" %s: compiling for %s ..." % (pkg_ctx['PN'], machine))
+        pkg_ctx['recipe'].compile(machine)
+        if opts['buildhistory_enabled']:
+            pkg_ctx['buildhistory'].add()
+
+def buildhistory_diff(bb, git, opts, pkg_ctx):
+    if not opts['buildhistory_enabled']:
+        return
+
+    I(" %s: Checking buildhistory ..." % pkg_ctx['PN'])
+    pkg_ctx['buildhistory'].diff()
+
+upgrade_steps = [
+    (load_env, "Loading environment ..."),
+    (load_dirs, None),
+    (clean_repo, "Cleaning git repository of temporary branch ..."),
+    (detect_recipe_type, None),
+    (buildhistory_init, None),
+    (unpack_original, "Fetch & unpack original version ..."),
+    (rename, "Renaming recipes, reset PR (if exists) ..."),
+    (cleanall, "Clean all ..."),
+    (fetch, "Fetch new version (old checksums) ..."),
+    (compile, None),
+    (buildhistory_diff, None)
+]
diff --git a/modules/utils/__init__.py b/modules/utils/__init__.py
new file mode 100644
index 0000000..e69de29
diff --git a/modules/utils/bitbake.py b/modules/utils/bitbake.py
new file mode 100644
index 0000000..cdbce2b
--- /dev/null
+++ b/modules/utils/bitbake.py
@@ -0,0 +1,124 @@
+#!/usr/bin/env python
+# vim: set ts=4 sw=4 et:
+#
+# Copyright (c) 2013 - 2014 Intel Corporation
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License
+# as published by the Free Software Foundation; either version 2
+# of the License, or (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
+#
+# AUTHORS
+# Laurentiu Palcu   <laurentiu.palcu@intel.com>
+# Marius Avram      <marius.avram@intel.com>
+#
+
+import os
+import logging as log
+from logging import info as I
+from logging import debug as D
+from logging import error as E
+from logging import critical as C
+import sys
+import re
+
+from errors import *
+
+for path in os.environ["PATH"].split(':'):
+    if os.path.exists(path) and "bitbake" in os.listdir(path):
+        sys.path.insert(0, os.path.join(path, "../lib"))
+        import bb
+
+BITBAKE_ERROR_LOG = 'bitbake_error_log.txt'
+
+class Bitbake(object):
+    def __init__(self, build_dir):
+        self.build_dir = build_dir
+        self.log_dir = None
+        super(Bitbake, self).__init__()
+
+    def _cmd(self, recipe=None, options=None, env_var=None, output_filter=None):
+        cmd = ""
+        if env_var is not None:
+            cmd += env_var + " "
+        cmd += "bitbake "
+        if options is not None:
+            cmd += options + " "
+
+        if recipe is not None:
+            cmd += recipe
+
+        if output_filter is not None:
+            cmd += ' |  grep ' + output_filter
+
+        os.chdir(self.build_dir)
+
+        try:
+            stdout, stderr = bb.process.run(cmd)
+        except bb.process.ExecutionError as e:
+            D("%s returned:\n%s" % (cmd, e.__str__()))
+
+            if self.log_dir is not None and os.path.exists(self.log_dir):
+                with open(os.path.join(self.log_dir, BITBAKE_ERROR_LOG), "w+") as log:
+                    log.write(e.stdout)
+
+            raise Error("\'" + cmd + "\' failed", e.stdout, e.stderr)
+
+        return stdout
+
+    def set_log_dir(self, dir):
+        self.log_dir = dir
+
+    def get_stdout_log(self):
+        return os.path.join(self.log_dir, BITBAKE_ERROR_LOG)
+
+    def env(self, recipe=None):
+        stdout = self._cmd(recipe, "-e", output_filter="-v \"^#\"")
+
+        assignment = re.compile("^([^ \t=]*)=(.*)")
+        bb_env = dict()
+        for line in stdout.split('\n'):
+            m = assignment.match(line)
+            if m:
+                if m.group(1) in bb_env:
+                    continue
+
+                bb_env[m.group(1)] = m.group(2).strip("\"")
+
+        if not bb_env:
+            raise EmptyEnvError(stdout)
+
+        return bb_env
+
+    def fetch(self, recipe):
+        return self._cmd(recipe, "-c fetch")
+
+    def unpack(self, recipe):
+        return self._cmd(recipe, "-c unpack")
+
+    def checkpkg(self, recipe):
+        if recipe == "universe":
+            return self._cmd(recipe, "-c checkpkg -k")
+        else:
+            return self._cmd(recipe, "-c checkpkg")
+
+    def cleanall(self, recipe):
+        return self._cmd(recipe, "-c cleanall")
+
+    def cleansstate(self, recipe):
+        return self._cmd(recipe, "-c cleansstate")
+
+    def complete(self, recipe, machine):
+        return self._cmd(recipe, env_var="MACHINE=" + machine)
+
+    def dependency_graph(self, package_list):
+        return self._cmd(package_list, "-g")
diff --git a/modules/utils/emailhandler.py b/modules/utils/emailhandler.py
new file mode 100644
index 0000000..970fb59
--- /dev/null
+++ b/modules/utils/emailhandler.py
@@ -0,0 +1,108 @@
+#!/usr/bin/env python
+# vim: set ts=4 sw=4 et:
+#
+# Copyright (c) 2013 - 2014 Intel Corporation
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License
+# as published by the Free Software Foundation; either version 2
+# of the License, or (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
+#
+# AUTHORS
+# Laurentiu Palcu   <laurentiu.palcu@intel.com>
+# Marius Avram      <marius.avram@intel.com>
+#
+
+import os
+import logging as log
+from logging import error as E
+from logging import info as I
+from smtplib import SMTP
+import mimetypes
+from email.mime.text import MIMEText
+from email.mime.base import MIMEBase
+from email.mime.multipart import MIMEMultipart
+from email.generator import Generator
+import shutil
+from cStringIO import StringIO
+
+class Email(object):
+    def __init__(self, settings):
+        self.smtp_host = None
+        self.smtp_port = None
+        self.from_addr = None
+        if "smtp" in settings:
+            smtp_entry = settings["smtp"].split(":")
+            if len(smtp_entry) == 1:
+                self.smtp_host = smtp_entry[0]
+                self.smtp_port = 25
+            elif len(smtp_entry) == 2:
+                self.smtp_host = smtp_entry[0]
+                self.smtp_port = smtp_entry[1]
+        else:
+            E(" smtp host not set! Sending emails disabled!")
+
+        if "from" in settings:
+            self.from_addr = settings["from"]
+        else:
+            E(" 'From' address not set! Sending emails disabled!")
+
+        super(Email, self).__init__()
+
+    def send_email(self, to_addr, subject, text, files=[], cc_addr=None):
+        if self.smtp_host is None or self.from_addr is None:
+            return 0
+
+        I(" Sending email to: %s" % to_addr)
+
+        msg = MIMEMultipart()
+        msg['From'] = self.from_addr
+        if type(to_addr) is list:
+            msg['To'] = ', '.join(to_addr)
+        else:
+            msg['To'] = to_addr
+        if cc_addr is not None:
+            if type(cc_addr) is list:
+                msg['Cc'] = ', '.join(cc_addr)
+            else:
+                msg['Cc'] = cc_addr
+        msg['Subject'] = subject
+
+        msg.attach(MIMEText(text))
+
+        for file in files:
+            ctype, encoding = mimetypes.guess_type(file)
+            if ctype is None or encoding is not None:
+                ctype = 'application/octet-stream'
+            maintype, subtype = ctype.split('/', 1)
+
+            if maintype == "text":
+                attachment = MIMEText(open(file).read(), _subtype=subtype)
+            else:
+                attachment = MIMEBase(maintype, _subtype=subtype)
+                attachment.set_payload(open(file, 'rb').read())
+
+            attachment.add_header('Content-Disposition', 'attachment; filename="%s"'
+                                  % os.path.basename(file))
+            msg.attach(attachment)
+
+        out = StringIO()
+        Generator(out, mangle_from_=False).flatten(msg)
+        msg_text = out.getvalue()
+
+        try:
+            smtp = SMTP(self.smtp_host, self.smtp_port)
+            smtp.sendmail(self.from_addr, to_addr, msg_text)
+            smtp.close()
+        except Exception as e:
+            E("Could not send email: %s" % str(e))
+
diff --git a/modules/utils/git.py b/modules/utils/git.py
new file mode 100644
index 0000000..48ed46d
--- /dev/null
+++ b/modules/utils/git.py
@@ -0,0 +1,102 @@
+#!/usr/bin/env python
+# vim: set ts=4 sw=4 et:
+#
+# Copyright (c) 2013 - 2014 Intel Corporation
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License
+# as published by the Free Software Foundation; either version 2
+# of the License, or (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
+#
+# AUTHORS
+# Laurentiu Palcu   <laurentiu.palcu@intel.com>
+# Marius Avram      <marius.avram@intel.com>
+#
+
+import os
+import logging as log
+from logging import debug as D
+
+from utils.bitbake import *
+
+class Git(object):
+    def __init__(self, dir):
+        self.repo_dir = dir
+        super(Git, self).__init__()
+
+    def _cmd(self, operation):
+        os.chdir(self.repo_dir)
+
+        cmd = "git " + operation
+        try:
+            stdout, stderr = bb.process.run(cmd)
+        except bb.process.ExecutionError as e:
+            D("%s returned:\n%s" % (cmd, e.__str__()))
+            raise Error("The following git command failed: " + operation,
+                        e.stdout, e.stderr)
+
+        return stdout
+
+    def mv(self, src, dest):
+        return self._cmd("mv -f " + src + " " + dest)
+
+    def stash(self):
+        return self._cmd("stash")
+
+    def commit(self, commit_message, author=None):
+        if author is None:
+            return self._cmd("commit -a -s -m \"" + commit_message + "\"")
+        else:
+            return self._cmd("commit -a --author=\"" + author + "\" -m \"" + commit_message + "\"")
+
+    def create_patch(self, out_dir):
+        return self._cmd("format-patch -M10 -1 -o " + out_dir)
+
+    def status(self):
+        return self._cmd("status --porcelain")
+
+    def checkout_branch(self, branch_name):
+        return self._cmd("checkout " + branch_name)
+
+    def create_branch(self, branch_name):
+        return self._cmd("checkout -b " + branch_name)
+
+    def delete_branch(self, branch_name):
+        return self._cmd("branch -D " + branch_name)
+
+    def pull(self):
+        return self._cmd("pull")
+
+    def reset_hard(self, no_of_patches=0):
+        if no_of_patches == 0:
+            return self._cmd("reset --hard HEAD")
+        else:
+            return self._cmd("reset --hard HEAD~" + str(no_of_patches))
+
+    def reset_soft(self, no_of_patches):
+        return self._cmd("reset --soft HEAD~" + str(no_of_patches))
+
+    def clean_untracked(self):
+        return self._cmd("clean -fd")
+
+    def last_commit(self, branch_name):
+        return self._cmd("log --pretty=format:\"%H\" -1 " + branch_name)
+
+    def ls_remote(self, repo_url=None, options=None, refs=None):
+        cmd = "ls-remote"
+        if options is not None:
+            cmd += " " + options
+        if repo_url is not None:
+            cmd += " " + repo_url
+        if refs is not None:
+            cmd += " " + refs
+        return self._cmd(cmd)
diff --git a/recipe.py b/recipe.py
deleted file mode 100644
index 64e6e14..0000000
--- a/recipe.py
+++ /dev/null
@@ -1,669 +0,0 @@
-#!/usr/bin/env python
-# vim: set ts=4 sw=4 et:
-#
-# Copyright (c) 2013 - 2014 Intel Corporation
-#
-# This program is free software; you can redistribute it and/or
-# modify it under the terms of the GNU General Public License
-# as published by the Free Software Foundation; either version 2
-# of the License, or (at your option) any later version.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License
-# along with this program; if not, write to the Free Software
-# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
-#
-# AUTHORS
-# Laurentiu Palcu   <laurentiu.palcu@intel.com>
-# Marius Avram      <marius.avram@intel.com>
-#
-
-import os
-import re
-import sys
-import logging as log
-from logging import debug as D
-from logging import info as I
-from logging import warning as W
-from errors import *
-from bitbake import *
-
-class Recipe(object):
-    def __init__(self, env, new_ver, interactive, workdir, recipe_dir, bitbake, git):
-        self.env = env
-        self.new_ver = new_ver
-        self.interactive = interactive
-        self.workdir = workdir
-        self.recipe_dir = recipe_dir
-        self.bb = bitbake
-        self.bb.set_log_dir(workdir)
-        self.git = git
-
-        self.retried_recipes = set()
-        self.license_diff_file = None
-
-        self.recipes_renamed = False
-        self.checksums_changed = False
-
-        self.removed_patches = False
-
-        self.suffixes = [
-            "tar.gz", "tgz", "zip", "tar.bz2", "tar.xz", "tar.lz4", "bz2",
-            "lz4", "orig.tar.gz", "src.tar.gz", "src.rpm", "src.tgz",
-            "svnr\d+.tar.bz2", "stable.tar.gz", "src.rpm"]
-        self.old_env = None
-
-        self.commit_msg = self.env['PN'] + ": upgrade to " + self.new_ver + "\n\n"
-        self.rm_patches_msg = "\n\nRemoved the following patch(es):\n"
-
-        super(Recipe, self).__init__()
-
-    def update_env(self, env):
-        self.env = env
-
-    def _rename_files_dir(self, old_ver, new_ver):
-        # The files directory is renamed only if the previous
-        # one has the following format PackageName-PackageVersion.
-        # Otherwise is kept the same way.
-        src_dir = os.path.join(self.recipe_dir, self.env['PN'] + "-" + old_ver)
-        dest_dir = os.path.join(self.recipe_dir, self.env['PN'] + "-" + new_ver)
-
-        if os.path.exists(src_dir) and os.path.isdir(src_dir):
-            self.git.mv(src_dir, dest_dir)
-
-    def rename(self):
-        # change PR before renaming
-        for f in os.listdir(self.recipe_dir):
-            full_path_f = os.path.join(self.recipe_dir, f)
-            if os.path.isfile(full_path_f) and \
-                    ((f.find(self.env['PN']) == 0 and f.find(self.env['PKGV']) != -1 and
-                      f.find(".bb") != -1) or
-                     (f.find(self.env['PN']) == 0 and f.find(".inc") != -1)):
-                with open(full_path_f + ".tmp", "w+") as temp_recipe:
-                    with open(full_path_f) as recipe:
-                        for line in recipe:
-                            if line.startswith("PR=") or line.startswith("PR ="):
-                                continue
-                            else:
-                                temp_recipe.write(line)
-                os.rename(full_path_f + ".tmp", full_path_f)
-
-        # rename recipes (not directories)
-        for path in os.listdir(self.recipe_dir):
-            full_path = os.path.join(self.recipe_dir, path)
-            if os.path.isfile(full_path) \
-              and path.find(self.env['PN']) == 0 \
-              and path.find(self.env['PKGV']) != -1:
-                new_path = re.sub(re.escape(self.env['PKGV']), self.new_ver, path)
-                self.git.mv(os.path.join(self.recipe_dir, path),
-                            os.path.join(self.recipe_dir, new_path))
-
-        # rename files/PN-PV directories to PN
-        self._rename_files_dir(self.env['PKGV'], self.new_ver)
-
-        self.recipes_renamed = True
-
-        # since we did some renaming, backup the current environment
-        self.old_env = self.env
-
-        # start formatting the commit message
-
-    def create_diff_file(self, file, old_md5, new_md5):
-        old_file = os.path.join(self.old_env['S'], file)
-        new_file = os.path.join(self.env['S'], file)
-        cmd = "diff -Nup " + old_file + " " + new_file + " > " + \
-              os.path.join(self.workdir, os.path.basename(file + ".diff"))
-
-        try:
-            stdout, stderr = bb.process.run(cmd)
-        except bb.process.ExecutionError:
-            pass
-
-        with open(os.path.join(self.workdir, "license_checksums.txt"), "w+") as f:
-            f.write("old checksum = %s\n" % old_md5)
-            f.write("new_checksum = %s\n" % new_md5)
-
-        for f in os.listdir(self.recipe_dir):
-            full_path_f = os.path.join(self.recipe_dir, f)
-            if os.path.isfile(full_path_f) and \
-                    ((f.find(self.env['PN']) == 0 and
-                      f.find(self.env['PKGV']) != -1 and
-                      f.find(".bb") != -1) or
-                     (f.find(self.env['PN']) == 0 and
-                      f.find(".inc") != -1)):
-                with open(full_path_f + ".tmp", "w+") as temp_recipe:
-                    with open(full_path_f) as recipe:
-                        for line in recipe:
-                            m = re.match("(.*)" + old_md5 + "(.*)", line)
-                            if m is not None:
-                                temp_recipe.write(m.group(1) + new_md5 + m.group(2) + "\n")
-                            else:
-                                temp_recipe.write(line)
-
-                os.rename(full_path_f + ".tmp", full_path_f)
-
-    def _change_recipe_checksums(self, fetch_log):
-        sums = {}
-
-        with open(os.path.realpath(fetch_log)) as log:
-            for line in log:
-                m = None
-                key = None
-                m1 = re.match("^SRC_URI\[(.*)md5sum\].*", line)
-                m2 = re.match("^SRC_URI\[(.*)sha256sum\].*", line)
-                if m1:
-                    m = m1
-                    key = "md5sum"
-                elif m2:
-                    m = m2
-                    key = "sha256sum"
-
-                if m:
-                    name = m.group(1)
-                    sum_line = m.group(0) + '\n'
-                    if name not in sums:
-                        sums[name] = {}
-                    sums[name][key] = sum_line;
-
-        if len(sums) == 0:
-            raise FetchError()
-
-        I(" %s: Update recipe checksums ..." % self.env['PN'])
-        # checksums are usually in the main recipe but they can also be in inc
-        # files... Go through the recipes/inc files until we find them
-        for f in os.listdir(self.recipe_dir):
-            full_path_f = os.path.join(self.recipe_dir, f)
-            if os.path.isfile(full_path_f) and \
-                    ((f.find(self.env['PN']) == 0 and f.find(self.env['PKGV']) != -1 and
-                      f.find(".bb") != -1) or
-                     (f.find(self.env['PN']) == 0 and f.find(".inc") != -1)):
-                with open(full_path_f + ".tmp", "w+") as temp_recipe:
-                    with open(full_path_f) as recipe:
-                        for line in recipe:
-                            for name in sums:
-                                m1 = re.match("^SRC_URI\["+ name + "md5sum\].*", line)
-                                m2 = re.match("^SRC_URI\["+ name + "sha256sum\].*", line)
-                                if m1:
-                                    temp_recipe.write(sums[name]["md5sum"])
-                                elif m2:
-                                    temp_recipe.write(sums[name]["sha256sum"])
-                                else:
-                                    temp_recipe.write(line)
-
-                os.rename(full_path_f + ".tmp", full_path_f)
-        
-        self.checksums_changed = True
-
-    def _is_uri_failure(self, fetch_log):
-        uri_failure = None
-        checksum_failure = None
-        with open(os.path.realpath(fetch_log)) as log:
-            for line in log:
-                if not uri_failure:
-                    uri_failure = re.match(".*Fetcher failure for URL.*", line)
-                if not checksum_failure:
-                    checksum_failure = re.match(".*Checksum mismatch.*", line)
-        if uri_failure and not checksum_failure:
-            return True
-        else:
-            return False
-
-
-    def _change_source_suffix(self, new_suffix):
-        # Will change the extension of the archive from the SRC_URI
-        for f in os.listdir(self.recipe_dir):
-            full_path_f = os.path.join(self.recipe_dir, f)
-            if os.path.isfile(full_path_f) and \
-                    ((f.find(self.env['PN']) == 0 and f.find(self.env['PKGV']) != -1 and
-                      f.find(".bb") != -1) or
-                     (f.find(self.env['PN']) == 0 and f.find(".inc") != -1)):
-                with open(full_path_f + ".tmp", "w+") as temp_recipe:
-                    with open(full_path_f) as recipe:
-                        source_found = False
-                        for line in recipe:
-                            # source on first line
-                            m1 = re.match("^SRC_URI.*\${PV}\.(.*)[\" \\\\].*", line)
-                            # SRC_URI alone on the first line
-                            m2 = re.match("^SRC_URI.*", line)
-                            # source on second line
-                            m3 = re.match(".*\${PV}\.(.*)[\" \\\\].*", line)
-                            if m1:
-                                old_suffix = m1.group(1)
-                                line = line.replace(old_suffix, new_suffix+" ")
-                            if m2 and not m1:
-                                source_found = True
-                            if m3 and source_found:
-                                old_suffix = m3.group(1)
-                                line = line.replace(old_suffix, new_suffix+" ")
-                                source_found = False
-
-                            temp_recipe.write(line)
-                os.rename(full_path_f + ".tmp", full_path_f)
-
-    def _remove_patch_uri(self, uri):
-        recipe_files = [
-            os.path.join(self.recipe_dir, self.env['PN'] + ".inc"),
-            self.env['FILE']]
-
-        for recipe_filename in recipe_files:
-            if os.path.isfile(recipe_filename):
-                with open(recipe_filename + ".tmp", "w+") as temp_recipe:
-                    with open(recipe_filename) as recipe:
-                        for line in recipe:
-                            if line.find(uri) == -1:
-                                temp_recipe.write(line)
-                                continue
-                            
-                            m1 = re.match("SRC_URI *\+*= *\" *" + uri + " *\"", line)
-                            m2 = re.match("(SRC_URI *\+*= *\" *)" + uri + " *\\\\", line)
-                            m3 = re.match("[\t ]*" + uri + " *\\\\", line)
-                            m4 = re.match("([\t ]*)" + uri + " *\"", line)
-
-                            # patch on a single SRC_URI line:
-                            if m1:
-                                continue
-                            # patch is on the first SRC_URI line
-                            elif m2:
-                                temp_recipe.write(m2.group(1) + "\\\n")
-                            # patch is in the middle
-                            elif m3:
-                                continue
-                            # patch is last in list
-                            elif m4:
-                                temp_recipe.write(m4.group(1) + "\"\n")
-                            # nothing matched in recipe but we deleted the patch
-                            # anyway? Then we must bail out!
-                            else:
-                                return False
-
-                os.rename(recipe_filename + ".tmp", recipe_filename)
-
-        return True
-
-    def _remove_faulty_patch(self, patch_log):
-        patch_file = None
-        is_reverse_applied = False
-
-        with open(patch_log) as log:
-            for line in log:
-                m1 = re.match("^Patch ([^ ]*) does not apply.*", line)
-                m2 = re.match("Patch ([^ ]*) can be reverse-applied", line)
-                if m2:
-                    m1 = m2
-                    is_reverse_applied = True
-                if m1:
-                    patch_file = m1.group(1)
-                    break
-
-        if not patch_file:
-            return False
-
-        I(" %s: Removing patch %s ..." % (self.env['PN'], patch_file))
-        reason = None
-        found = False
-        dirs = [self.env['PN'] + "-" + self.env['PKGV'], self.env['PN'], "files"]
-        for dir in dirs:
-            patch_file_path = os.path.join(self.recipe_dir, dir, patch_file)
-            if not os.path.exists(patch_file_path):
-                continue
-            else:
-                found = True
-                # Find out upstream status of the patch
-                with open(patch_file_path) as patch:
-                    for line in patch:
-                        m = re.match(".*Upstream-Status:(.*)\n", line)
-                        if m:
-                            reason = m.group(1).strip().split()[0].lower()
-                os.remove(patch_file_path)
-                if not self._remove_patch_uri("file://" + patch_file):
-                    return False
-        if not found:
-            return False
-
-        self.rm_patches_msg += " * " + patch_file
-        if reason:
-            self.rm_patches_msg += " (" + reason + ") "
-        if is_reverse_applied:
-            self.rm_patches_msg += "+ reverse-applied"
-        self.rm_patches_msg += "\n"
-        return True
-
-    def _is_license_issue(self, config_log):
-        with open(config_log) as log:
-            for line in log:
-                m = re.match("ERROR: " + self.env['PN'] +
-                             "[^:]*: md5 data is not matching for file", line)
-                if m is not None:
-                    return True
-
-        return False
-
-    def _license_issue_handled(self, config_log):
-        license_file = None
-        with open(config_log) as log:
-            for line in log:
-                if not line.startswith("ERROR:"):
-                    continue
-                m_old = re.match("ERROR: " + self.env['PN'] +
-                        "[^:]*: md5 data is not matching for file://([^;]*);md5=(.*)$", line)
-                if not m_old:
-                    m_old = re.match("ERROR: " + self.env['PN'] +
-                            "[^:]*: md5 data is not matching for file://([^;]*);beginline=[0-9]*;endline=[0-9]*;md5=(.*)$", line)
-                if not m_old:
-                    m_old = re.match("ERROR: " + self.env['PN'] +
-                            "[^:]*: md5 data is not matching for file://([^;]*);endline=[0-9]*;md5=(.*)$", line)
-                if not m_old:
-                    m_old = re.match("ERROR: " + self.env['PN'] +
-                            "[^:]*: md5 data is not matching for file://([^;]*);beginline=[0-9]*;md5=(.*)$", line)
-                m_new = re.match("ERROR: " + self.env['PN'] +
-                        "[^:]*: The new md5 checksum is (.*)", line)
-                if m_old:
-                    license_file = m_old.group(1)
-                    old_md5 = m_old.group(2)
-                elif m_new:
-                    new_md5 = m_new.group(1)
-        
-        if license_file is not None:
-            self.create_diff_file(license_file, old_md5, new_md5)
-            self.license_diff_file = os.path.join(self.workdir, os.path.basename(license_file + ".diff"))
-            if self.interactive:
-                W("  %s: license checksum failed for file %s. The recipe has"
-                  "been updated! View diff? (Y/n)" % (self.env['PN'], license_file))
-                answer = sys.stdin.readline().strip().upper()
-                if answer == '' or answer == 'Y':
-                    I(" ################ Licence file diff #################")
-                    with open(self.license_diff_file) as diff:
-                        I("%s" % diff.read())
-                    I(" ####################################################")
-                I(" Retry compilation? (Y/n)")
-                answer = sys.stdin.readline().strip().upper()
-                if answer == '' or answer == 'Y':
-                    return True
-            else:
-                W(" %s: license checksum failed for file %s."
-                  " The recipe has been updated! Diff file located at %s" %
-                  (self.env['PN'], license_file, self.license_diff_file))
-                I(" Recompiling ...")
-                self.commit_msg += "License checksum changed for file " + license_file
-                return True
-
-        return False
-
-    def get_license_diff_file_name(self):
-        file_name = None
-        if not self.license_diff_file is None:
-            file_name = os.path.basename(self.license_diff_file)
-
-        return file_name
-
-    def _get_failed_recipes(self, output):
-        failed_tasks = dict()
-        machine = None
-
-        for line in output.split("\n"):
-            machine_match = re.match("MACHINE[\t ]+= *\"(.*)\"$", line)
-            task_log_match = re.match("ERROR: Logfile of failure stored in: (.*/([^/]*)/[^/]*/temp/log\.(.*)\.[0-9]*)", line)
-            # For some reason do_package is reported differently
-            qa_issue_match = re.match("ERROR: QA Issue: ([^ :]*): (.*) not shipped", line)
-
-            if task_log_match:
-                failed_tasks[task_log_match.group(2)] = (task_log_match.group(3), task_log_match.group(1))
-            elif qa_issue_match:
-                # Improvise path to log file
-                failed_tasks[qa_issue_match.group(1)] = ("do_package", self.bb.get_stdout_log())
-            elif machine_match:
-                machine = machine_match.group(1)
-
-        # we didn't detect any failed tasks? then something else is wrong
-        if len(failed_tasks) == 0:
-            raise Error("could not detect failed task")
-
-        return (machine, failed_tasks)
-
-    def _is_incompatible_host(self, output):
-        for line in output.split("\n"):
-            incomp_host = re.match("ERROR: " + self.env['PN'] + " was skipped: incompatible with host (.*) \(.*$", line)
-
-            if incomp_host is not None:
-                return True
-
-        return False
-
-    def _add_not_shipped(self, package_log):
-        files_not_shipped = False
-        files = []
-        occurences = []
-        prefixes = {
-          "/usr"            : "prefix",
-          "/bin"            : "base_bindir",
-          "/sbin"           : "base_sbindir",
-          "/lib"            : "base_libdir",
-          "/usr/share"      : "datadir",
-          "/etc"            : "sysconfdir",
-          "/var"            : "localstatedir",
-          "/usr/share/info" : "infodir",
-          "/usr/share/man"  : "mandir",
-          "/usr/share/doc"  : "docdir",
-          "/srv"            : "servicedir",
-          "/usr/bin"        : "bindir",
-          "/usr/sbin"       : "sbindir",
-          "/usr/libexec"    : "libexecdir",
-          "/usr/lib"        : "libdir",
-          "/usr/include"    : "includedir",
-          "/usr/lib/opie"   : "palmtopdir",
-          "/usr/lib/opie"   : "palmqtdir",
-        }
-
-        I(" %s: Add new files in recipe ..." %  self.env['PN'])
-        with open(package_log) as log:
-            for line in log:
-                if re.match(".*Files/directories were installed but not shipped.*", line):
-                    files_not_shipped = True
-                # Extract path
-                line = line.strip()
-                if line:
-                    line = line.split()[0]
-                if files_not_shipped and os.path.isabs(line):
-                    # Count occurences for globbing
-                    path_exists = False
-                    for i in range(0, len(files)):
-                        if line.find(files[i]) == 0:
-                            path_exists = True
-                            occurences[i] += 1
-                            break
-                    if not path_exists:
-                        files.append(line)
-                        occurences.append(1)
-
-        for i in range(0, len(files)):
-            # Change paths to globbing expressions where is the case
-            if occurences[i] > 1:
-                files[i] += "/*"
-            largest_prefix = ""
-            # Substitute prefix
-            for prefix in prefixes:
-                if files[i].find(prefix) == 0 and len(prefix) > len(largest_prefix):
-                    largest_prefix = prefix
-            if largest_prefix:
-                replacement = "${" + prefixes[largest_prefix] + "}"
-                files[i] = files[i].replace(largest_prefix, replacement)
-
-        recipe_files = [
-            os.path.join(self.recipe_dir, self.env['PN'] + ".inc"),
-            self.env['FILE']]
-
-        # Append the new files
-        for recipe_filename in recipe_files:
-            if os.path.isfile(recipe_filename):
-                with open(recipe_filename + ".tmp", "w+") as temp_recipe:
-                    with open(recipe_filename) as recipe:
-                        files_clause = False
-                        for line in recipe:
-                            if re.match("^FILES_\${PN}[ +=].*", line):
-                                files_clause = True
-                                temp_recipe.write(line)
-                                continue
-                            # Get front spacing
-                            if files_clause:
-                                front_spacing = re.sub("[^ \t]", "", line)
-                            # Append once the last line has of FILES has been reached
-                            if re.match(".*\".*", line) and files_clause:
-                                files_clause = False
-                                line = line.replace("\"", "")
-                                line = line.rstrip()
-                                front_spacing = re.sub("[^ \t]", "", line)
-                                # Do not write an empty line
-                                if line.strip():
-                                    temp_recipe.write(line + " \\\n")
-                                # Add spacing in case there was none
-                                if len(front_spacing) == 0:
-                                    front_spacing = " " * 8
-                                # Write to file
-                                for i in range(len(files)-1):
-                                    line = front_spacing + files[i] + " \\\n"
-                                    temp_recipe.write(line)
-
-                                line = front_spacing + files[len(files) - 1] + "\"\n"
-                                temp_recipe.write(line)
-                                continue
-
-                            temp_recipe.write(line)
-
-                os.rename(recipe_filename + ".tmp", recipe_filename)
-
-    def unpack(self):
-        self.bb.unpack(self.env['PN'])
-
-    def fetch(self):
-        from gitrecipe import GitRecipe
-
-        def _try_fetch():
-            try:
-                self.bb.fetch(self.env['PN'])
-                return
-            except Error as e:
-                machine, failed_recipes = self._get_failed_recipes(e.stdout)
-                if not self.env['PN'] in failed_recipes:
-                    raise Error("Unknown error occured during fetch",
-                            stdout = e.stdout, stderr = e.stderr)
-
-                fetch_log = failed_recipes[self.env['PN']][1]
-
-                if not self._is_uri_failure(fetch_log) and not \
-                        self.checksums_changed:
-                    self._change_recipe_checksums(fetch_log)
-                    self.checksums_changed = True
-                    return True
-
-                return False
-
-        succeed = _try_fetch()
-        if not succeed and not isinstance(self, GitRecipe):
-            for sfx in self.suffixes:
-                I(" Trying new SRC_URI suffix: %s ..." % sfx)
-                self._change_source_suffix(sfx)
-
-                succeed = _try_fetch()
-                if succeed:
-                    break
-
-        if not succeed:
-            raise Error("Can't built a valid SRC_URI")
-        elif self.recipes_renamed and not self.checksums_changed:
-            raise Error("Fetch succeeded without changing checksums")
-
-    def cleanall(self):
-        self.bb.cleanall(self.env['PN'])
-
-    def _clean_failed_recipes(self, failed_recipes):
-        already_retried = False
-        for recipe in failed_recipes:
-            if recipe in self.retried_recipes:
-                # we already retried, we'd best leave it to a human to handle
-                # it :)
-                already_retried = True
-            # put the recipe in the retried list
-            self.retried_recipes.add(recipe)
-
-        if already_retried:
-            return False
-        else:
-            I(" %s: The following recipe(s): %s, failed.  "
-              "Doing a 'cleansstate' and then retry ..." %
-              (self.env['PN'], ' '.join(failed_recipes.keys())))
-
-            self.bb.cleansstate(' '.join(failed_recipes.keys()))
-            return True
-
-    def _undo_temporary(self):
-        # Undo removed patches
-        if self.removed_patches:
-            self.git.checkout_branch("upgrades")
-            self.git.delete_branch("remove_patches")
-            self.git.reset_hard()
-            self.git.reset_soft(1)
-            self.removed_patches = False
-
-    def compile(self, machine):
-        try:
-            self.bb.complete(self.env['PN'], machine)
-            if self.removed_patches:
-                # move temporary changes into upgrades branch
-                self.git.checkout_branch("upgrades")
-                self.git.delete_branch("remove_patches")
-                self.git.reset_soft(1)
-                self.commit_msg += self.rm_patches_msg + "\n"
-                self.removed_patches = False
-        except Error as e:
-            if self._is_incompatible_host(e.stdout):
-                W(" %s: compilation failed: incompatible host" % self.env['PN'])
-                return
-            machine, failed_recipes = self._get_failed_recipes(e.stdout)
-            if not self.env['PN'] in failed_recipes:
-                if not self._clean_failed_recipes(failed_recipes):
-                    self._undo_temporary()
-                    raise CompilationError()
-
-                # retry
-                self.compile(machine)
-            else:
-                failed_task = failed_recipes[self.env['PN']][0]
-                log_file = failed_recipes[self.env['PN']][1]
-                if failed_task == "do_patch":
-                    # Remove one patch after the other until
-                    # compilation works.
-                    if not self.removed_patches:
-                        self.git.commit("temporary")
-                        self.git.create_branch("remove_patches")
-                        self.git.checkout_branch("remove_patches")
-                        self.removed_patches = True
-                    if not self._remove_faulty_patch(log_file):
-                        self._undo_temporary()
-                        raise PatchError()
-
-                    # retry
-                    I(" %s: Recompiling for %s ..." % (self.env['PN'], machine))
-                    self.compile(machine)
-                elif failed_task == "do_configure":
-                    self._undo_temporary()
-                    if not self._is_license_issue(log_file):
-                        raise ConfigureError()
-
-                    if not self._license_issue_handled(log_file):
-                        raise LicenseError()
-                    #retry
-                    self.compile(machine)
-                elif failed_task == "do_fetch":
-                    raise FetchError()
-                elif failed_task == "do_package":
-                    self._add_not_shipped(log_file)
-                    self.compile(machine)
-                else:
-                    self._undo_temporary()
-                    # throw a compilation exception for everything else. It
-                    # doesn't really matter
-                    raise CompilationError()
diff --git a/statistics.py b/statistics.py
deleted file mode 100644
index 32a6748..0000000
--- a/statistics.py
+++ /dev/null
@@ -1,102 +0,0 @@
-#!/usr/bin/env python
-# vim: set ts=4 sw=4 et:
-#
-# Copyright (c) 2013 - 2014 Intel Corporation
-#
-# This program is free software; you can redistribute it and/or
-# modify it under the terms of the GNU General Public License
-# as published by the Free Software Foundation; either version 2
-# of the License, or (at your option) any later version.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License
-# along with this program; if not, write to the Free Software
-# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
-#
-# AUTHORS
-# Laurentiu Palcu   <laurentiu.palcu@intel.com>
-# Marius Avram      <marius.avram@intel.com>
-#
-
-class Statistics(object):
-    def __init__(self):
-        self.succeeded = dict()
-        self.failed = dict()
-        self.succeeded["total"] = 0
-        self.failed["total"] = 0
-        self.upgrade_stats = dict()
-        self.maintainers = set()
-        self.total_attempted = 0
-
-    def update(self, pn, new_ver, maintainer, error):
-        if type(error).__name__ == "UpgradeNotNeededError":
-            return
-        elif error is None:
-            status = "Succeeded"
-        else:
-            status = str(error)
-
-        if not status in self.upgrade_stats:
-            self.upgrade_stats[status] = []
-
-        self.upgrade_stats[status].append((pn, new_ver, maintainer))
-
-        # add maintainer to the set of unique maintainers
-        self.maintainers.add(maintainer)
-
-        if not maintainer in self.succeeded:
-            self.succeeded[maintainer] = 0
-        if not maintainer in self.failed:
-            self.failed[maintainer] = 0
-
-        if status == "Succeeded":
-            self.succeeded["total"] += 1
-            self.succeeded[maintainer] += 1
-        else:
-            self.failed["total"] += 1
-            self.failed[maintainer] += 1
-
-        self.total_attempted += 1
-
-    def pkg_stats(self):
-        stat_msg = "\nUpgrade statistics:\n"
-        stat_msg += "====================================================\n"
-        for status in self.upgrade_stats:
-            list_len = len(self.upgrade_stats[status])
-            if list_len > 0:
-                stat_msg += "* " + status + ": " + str(list_len) + "\n"
-
-                for pkg, new_ver, maintainer in self.upgrade_stats[status]:
-                    stat_msg += "    " + pkg + ", " + new_ver + ", " + \
-                                maintainer + "\n"
-
-        if self.total_attempted == 0:
-            percent_succeded = 0
-            percent_failed = 0
-        else:
-            percent_succeded = self.succeeded["total"] * 100.0 / self.total_attempted
-            percent_failed = self.failed["total"] * 100.0 / self.total_attempted
-        stat_msg += "++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
-        stat_msg += "TOTAL: attempted=%d succeeded=%d(%.2f%%) failed=%d(%.2f%%)\n\n" % \
-                    (self.total_attempted, self.succeeded["total"],
-                    percent_succeded,
-                    self.failed["total"],
-                    percent_failed)
-
-        return stat_msg
-
-    def maintainer_stats(self):
-        stat_msg = "* Statistics per maintainer:\n"
-        for m in self.maintainers:
-            attempted = self.succeeded[m] + self.failed[m]
-            stat_msg += "    %s: attempted=%d succeeded=%d(%.2f%%) failed=%d(%.2f%%)\n\n" % \
-                        (m.split("@")[0], attempted, self.succeeded[m],
-                        self.succeeded[m] * 100.0 / attempted,
-                        self.failed[m],
-                        self.failed[m] * 100.0 / attempted)
-
-        return stat_msg
diff --git a/steps.py b/steps.py
deleted file mode 100644
index ea314da..0000000
--- a/steps.py
+++ /dev/null
@@ -1,142 +0,0 @@
-#!/usr/bin/env python
-# vim: set ts=4 sw=4 et:
-#
-# Copyright (c) 2013 - 2015 Intel Corporation
-#
-# This program is free software; you can redistribute it and/or
-# modify it under the terms of the GNU General Public License
-# as published by the Free Software Foundation; either version 2
-# of the License, or (at your option) any later version.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License
-# along with this program; if not, write to the Free Software
-# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
-#
-
-import os
-import sys
-
-from logging import debug as D
-from logging import info as I
-from logging import warning as W
-from logging import error as E
-from logging import critical as C
-
-from errors import *
-from buildhistory import BuildHistory
-from recipe import Recipe
-from gitrecipe import GitRecipe
-from svnrecipe import SvnRecipe
-
-def load_env(bb, git, opts, pkg_ctx):
-    stdout = git.status()
-    if stdout != "":
-        if opts['interactive']:
-            W(" %s: git repository has uncommited work which will be dropped!" \
-                    " Proceed? (y/N)" % pkg_ctx['PN'])
-            answer = sys.stdin.readline().strip().upper()
-            if answer == '' or answer != 'Y':
-                I(" %s: User abort!" % pkg_ctx['PN'])
-                exit(1)
-
-        I(" %s: Dropping uncommited work!" % pkg_ctx['PN'])
-        git.reset_hard()
-        git.clean_untracked()
-
-    pkg_ctx['env'] = bb.env(pkg_ctx['PN'])
-    if pkg_ctx['env']['PV'] == pkg_ctx['NPV']:
-        raise UpgradeNotNeededError
-
-def load_dirs(bb, git, opts, pkg_ctx):
-    pkg_ctx['workdir'] = os.path.join(pkg_ctx['base_dir'], pkg_ctx['PN'])
-    os.mkdir(pkg_ctx['workdir'])
-
-    pkg_ctx['recipe_dir'] = os.path.dirname(pkg_ctx['env']['FILE'])
-
-def clean_repo(bb, git, opts, pkg_ctx):
-    try:
-        git.checkout_branch("upgrades")
-    except Error:
-        git.create_branch("upgrades")
-
-    try:
-        git.delete_branch("remove_patches")
-    except:
-        pass
-
-def detect_recipe_type(bb, git, opts, pkg_ctx):
-    if pkg_ctx['env']['SRC_URI'].find("ftp://") != -1 or  \
-            pkg_ctx['env']['SRC_URI'].find("http://") != -1 or \
-            pkg_ctx['env']['SRC_URI'].find("https://") != -1:
-        recipe = Recipe
-    elif pkg_ctx['env']['SRC_URI'].find("git://") != -1:
-        recipe = GitRecipe
-    else:
-        raise UnsupportedProtocolError
-
-    pkg_ctx['recipe'] = recipe(pkg_ctx['env'], pkg_ctx['NPV'],
-            opts['interactive'], pkg_ctx['workdir'],
-            pkg_ctx['recipe_dir'], bb, git)
-
-def buildhistory_init(bb, git, opts, pkg_ctx):
-    if not opts['buildhistory_enabled']:
-        return
-
-    pkg_ctx['buildhistory'] = BuildHistory(bb, pkg_ctx['PN'],
-            pkg_ctx['workdir'])
-    I(" %s: Initial buildhistory for %s ..." % (pkg_ctx['PN'],
-            opts['machines']))
-    pkg_ctx['buildhistory'].init(opts['machines'])
-
-def unpack_original(bb, git, opts, pkg_ctx):
-    pkg_ctx['recipe'].unpack()
-
-def rename(bb, git, opts, pkg_ctx):
-    pkg_ctx['recipe'].rename()
-
-    pkg_ctx['env'] = bb.env(pkg_ctx['PN'])
-
-    pkg_ctx['recipe'].update_env(pkg_ctx['env'])
-
-def cleanall(bb, git, opts, pkg_ctx):
-    pkg_ctx['recipe'].cleanall()
-
-def fetch(bb, git, opts, pkg_ctx):
-    pkg_ctx['recipe'].fetch()
-
-def compile(bb, git, opts, pkg_ctx):
-    if opts['skip_compilation']:
-        W(" %s: Compilation was skipped by user choice!")
-        return
-
-    for machine in opts['machines']:
-        I(" %s: compiling for %s ..." % (pkg_ctx['PN'], machine))
-        pkg_ctx['recipe'].compile(machine)
-        if opts['buildhistory_enabled']:
-            pkg_ctx['buildhistory'].add()
-
-def buildhistory_diff(bb, git, opts, pkg_ctx):
-    if not opts['buildhistory_enabled']:
-        return
-
-    I(" %s: Checking buildhistory ..." % pkg_ctx['PN'])
-    pkg_ctx['buildhistory'].diff()
-
-upgrade_steps = [
-    (load_env, "Loading environment ..."),
-    (load_dirs, None),
-    (clean_repo, "Cleaning git repository of temporary branch ..."),
-    (detect_recipe_type, None),
-    (buildhistory_init, None),
-    (unpack_original, "Fetch & unpack original version ..."),
-    (rename, "Renaming recipes, reset PR (if exists) ..."),
-    (cleanall, "Clean all ..."),
-    (fetch, "Fetch new version (old checksums) ..."),
-    (compile, None),
-    (buildhistory_diff, None)
-]
diff --git a/svnrecipe.py b/svnrecipe.py
deleted file mode 100644
index 7d8ad16..0000000
--- a/svnrecipe.py
+++ /dev/null
@@ -1,28 +0,0 @@
-#!/usr/bin/env python
-# vim: set ts=4 sw=4 et:
-#
-# Copyright (c) 2013 - 2014 Intel Corporation
-#
-# This program is free software; you can redistribute it and/or
-# modify it under the terms of the GNU General Public License
-# as published by the Free Software Foundation; either version 2
-# of the License, or (at your option) any later version.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License
-# along with this program; if not, write to the Free Software
-# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
-#
-# AUTHORS
-# Laurentiu Palcu   <laurentiu.palcu@intel.com>
-# Marius Avram      <marius.avram@intel.com>
-#
-
-from recipe import Recipe
-
-class SvnRecipe(Recipe):
-    pass
diff --git a/upgradehelper.py b/upgradehelper.py
index 22365b7..e526597 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -44,14 +44,17 @@ import ConfigParser as cp
 from datetime import datetime
 from datetime import date
 import shutil
+
+sys.path.insert(1, os.path.join(os.path.abspath(
+    os.path.dirname(__file__)), 'modules'))
+
 from errors import *
 
-from git import Git
-from bitbake import Bitbake
+from utils.git import Git
+from utils.bitbake import Bitbake
+from utils.emailhandler import Email
 
-from emailhandler import Email
 from statistics import Statistics
-
 from steps import upgrade_steps
 
 help_text = """Usage examples:
-- 
2.1.4


