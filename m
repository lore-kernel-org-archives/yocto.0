Return-Path: <mulhern@gmail.com>
Received: from mail-qa0-f54.google.com (mail-qa0-f54.google.com
	[209.85.216.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9B9FE01532;
	Sun, 25 Aug 2013 18:17:38 -0700 (PDT)
Received: by mail-qa0-f54.google.com with SMTP id bn16so5875qab.13
	for <multiple recipients>; Sun, 25 Aug 2013 18:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
	:references; bh=MnzWauwafFoHsQl29eVM6mdMdftg4pbj3GEujaHwMIs=;
	b=GP1Y1+zRySXFna+ZSC8Nafkv1s37KQ81JT2+YbotFoPkdSVStJK3unYYJP0vt3X8+9
	y4McYUiSAPgEl3O3SZ7ajZb6RMGljK/F1ghz8GQcLQmREacIHN7+6m38oa3+6X6s4Nrl
	4s5Co2uNJjPAxN11tX4kH0F4J3QUbMfme7BbmIpiER5ggtLClv/va5v6xWOEqftTJM8q
	x6YIJboKArxJAlICZ8pzhngyKyQzsLCD6W9KX5rVY0VRab3gtFq6Y/9N1IrHM4Qn8KNw
	6uJXomfnfyDVoek6wiTAf65trKpZLKJfmQhpa0Rrv9hW56DE5RB2zwSFx08kU+ljl36z
	sTZg==
X-Received: by 10.224.96.194 with SMTP id i2mr13122832qan.26.1377479857846;
	Sun, 25 Aug 2013 18:17:37 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-24-128-153-12.hsd1.ma.comcast.net.
	[24.128.153.12])
	by mx.google.com with ESMTPSA id 9sm18858841qau.3.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Sun, 25 Aug 2013 18:17:37 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Sun, 25 Aug 2013 21:17:35 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Sun, 25 Aug 2013 21:17:12 -0400
Message-Id: <349e64db470d1dd1b87a1ee1ac45dbf698a88f2c.1377479358.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1377479358.git.mulhern@yoctoproject.org>
References: <cover.1377479358.git.mulhern@yoctoproject.org>
In-Reply-To: <cover.1377479358.git.mulhern@yoctoproject.org>
References: <cover.1377479358.git.mulhern@yoctoproject.org>
Subject: [PATCH 5/5] Bastille: set Yocto specific questions via config file.
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
X-List-Received-Date: Mon, 26 Aug 2013 01:17:39 -0000

[YOCTO #3867]

The python script, set_required_questions.py reads the list of questions and
answers from the config file and edits the REQUIRE_DISTRO field for those
questions in the questions file so that it includes "Yocto" if it is not
already present. This has the effect of causing Bastille, when loading
questions for the Yocto distribution, to load only those that are answered
in the existing config file. Under the assumption that the exisitng config
file contains question/answer pairs that are relevant to the Yocto project,
this will cause the interactive question screen to have answers that are
relevant to the Yocto project.

Signed-off-by: mulhern <mulhern@yoctoproject.org>
---
 recipes-security/bastille/bastille_3.2.1.bb        |    3 +
 .../bastille/files/set_required_questions.py       |  135 ++++++++++++++++++++
 2 files changed, 138 insertions(+)
 create mode 100755 recipes-security/bastille/files/set_required_questions.py

diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index 8969f6b..094f09c 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -139,6 +139,9 @@ do_install () {
 	install -m 0644 OSMap/HP-UX.service    ${D}${datadir}/Bastille/OSMap
 	install -m 0644 OSMap/OSX.bastille    ${D}${datadir}/Bastille/OSMap
 	install -m 0644 OSMap/OSX.system    ${D}${datadir}/Bastille/OSMap
+
+        ${THISDIR}/files/set_required_questions.py ${WORKDIR}/config Questions
+
 	install -m 0777 ${WORKDIR}/config ${D}${sysconfdir}/Bastille/config
 
 	for file in `cat Modules.txt` ; do
diff --git a/recipes-security/bastille/files/set_required_questions.py b/recipes-security/bastille/files/set_required_questions.py
new file mode 100755
index 0000000..a432dc5
--- /dev/null
+++ b/recipes-security/bastille/files/set_required_questions.py
@@ -0,0 +1,135 @@
+#!/usr/bin/env python
+
+import argparse, os, shutil, sys, tempfile
+from os import path
+
+
+
+def get_config(lines):
+  """
+  From a sequence of lines retrieve the question file name, question identifier
+  pairs.
+  """
+  for l in lines:
+    if not l.startswith("#"):
+      try:
+        (coord, value) = l.split("=")
+        try:
+          (fname, ident) = coord.split(".")
+          yield fname, ident
+        except ValueError as e:
+          raise ValueError("Badly formatted coordinates %s in line %s." % (coord, l.strip()))
+      except ValueError as e:
+        raise ValueError("Skipping badly formatted line %s, %s" % (l.strip(), e))
+
+
+
+def check_contains(line, name):
+  """
+  Check if the value field for REQUIRE_DISTRO contains the given name.
+  @param name line The REQUIRE_DISTRO line
+  @param name name The name to look for in the value field of the line.
+  """
+  try:
+    (label, distros) = line.split(":")
+    return name in distros.split()
+  except ValueError as e:
+    raise ValueError("Error splitting REQUIRE_DISTRO line: %s" % e)
+
+
+
+def add_requires(the_ident, distro, lines):
+
+  """
+  Yield a sequence of lines the same as lines except that where
+  the_ident matches a question identifier change the REQUIRE_DISTRO so that
+  it includes the specified distro.
+
+  @param name the_ident The question identifier to be matched.
+  @param name distro The distribution to added to the questions REQUIRE_DISTRO
+                     field.
+  @param lines The sequence to be processed.
+  """
+  for l in lines:
+    yield l
+    if l.startswith("LABEL:"):
+      try:
+        (label, ident) = l.split(":")
+        if ident.strip() == the_ident:
+          break
+      except ValueError as e:
+        raise ValueError("Unexpected line %s in questions file." % l.strip())
+  for l in lines:
+    if l.startswith("REQUIRE_DISTRO"):
+      if not check_contains(l, distro):
+        yield l.rstrip() + " " + distro + "\n"
+      else:
+        yield l
+      break;
+    else:
+      yield l
+  for l in lines:
+    yield l
+
+
+
+def xform_file(qfile, distro, qlabel):
+  questions_in = open(qfile)
+  questions_out = tempfile.NamedTemporaryFile(delete=False)
+  for l in add_requires(qlabel, distro, questions_in):
+    questions_out.write(l)
+  questions_out.close()
+  questions_in.close()
+  shutil.move(questions_out.name, qfile)
+
+
+
+def handle_args(parser):
+  parser.add_argument('config_file',
+                      help = "Configuration file path.")
+  parser.add_argument('questions_dir',
+                      help = "Directory containing Questions files.")
+  parser.add_argument('--distro', '-d',
+                      help = "The distribution, the default is Yocto.",
+                      default = "Yocto")
+  return parser.parse_args()
+
+
+
+def check_args(args):
+  args.config_file = os.path.abspath(args.config_file)
+  args.questions_dir = os.path.abspath(args.questions_dir)
+
+  if not os.path.isdir(args.questions_dir):
+    raise ValueError("Specified Questions directory %s does not exist or is not a directory." % args.questions_dir)
+
+  if not os.path.isfile(args.config_file):
+    raise ValueError("Specified configuration file %s not found." % args.config_file)
+
+
+
+def main():
+  opts = handle_args(argparse.ArgumentParser(description="A simple script that sets required questions based on the question/answer pairs in a configuration file."))
+
+  try:
+    check_args(opts)
+  except ValueError as e:
+    sys.exit("Fatal error: %s" % e)
+
+
+  try:
+    config_in = open(opts.config_file)
+    for qfile, qlabel in get_config(config_in):
+      questions_file = os.path.join(opts.questions_dir, qfile + ".txt")
+      xform_file(questions_file, opts.distro, qlabel)
+    config_in.close()
+
+  except IOError as e:
+    sys.exit("Fatal error reading config file: %s" % e)
+  except ValueError as e:
+    sys.exit("Fatal error: %s" % e)
+
+
+
+if __name__ == "__main__":
+  main()
-- 
1.7.10.4


