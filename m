Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D0DEC77B73
	for <webhook@archiver.kernel.org>; Wed, 19 Apr 2023 16:00:51 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.41867.1681920047840260459
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Apr 2023 09:00:48 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9C4BB16F8;
	Wed, 19 Apr 2023 09:01:30 -0700 (PDT)
Received: from e125920.cambridge.arm.com (unknown [10.1.199.64])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 665A73F5A1;
	Wed, 19 Apr 2023 09:00:46 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 1/3] zephyr-core/scripts: Resolve Zephyr tag using git ls-remote
Date: Wed, 19 Apr 2023 17:00:29 +0100
Message-Id: <20230419160031.457614-1-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Apr 2023 16:00:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59733

From: Peter Hoyes <Peter.Hoyes@arm.com>

To simplify the logic to resolve Git tags to SHAs, and so that it works
with non-Github repositories, use git ls-remote instead of the Github
API.

Make the resolve_revision function available as a Jinja filter and move
the version resolution to the template.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 meta-zephyr-core/scripts/generate-version.py  | 36 +++++++++++--------
 .../scripts/zephyr-kernel-src.inc.jinja       |  4 +--
 2 files changed, 23 insertions(+), 17 deletions(-)

diff --git a/meta-zephyr-core/scripts/generate-version.py b/meta-zephyr-c=
ore/scripts/generate-version.py
index 550f8df..d795a70 100755
--- a/meta-zephyr-core/scripts/generate-version.py
+++ b/meta-zephyr-core/scripts/generate-version.py
@@ -1,8 +1,8 @@
 #!/usr/bin/env python3
=20
-import json
 import pathlib
 import re
+import subprocess
 import sys
 import urllib.parse
 import urllib.request
@@ -16,19 +16,6 @@ version =3D sys.argv[1]
 if not re.match(r'\d+.\d+.\d+', version):
     raise ValueError("Please provide a valid Zephyr version")
=20
-# Convert the version (x.y.z) into the Git commit SHA using the Github A=
PI
-# This is a two-step process - first obtain the tag SHA
-ref_url =3D f'https://api.github.com/repos/zephyrproject-rtos/zephyr/git=
/refs/tags/v{version}'
-with urllib.request.urlopen(ref_url) as f:
-    ref_data =3D json.load(f)
-    ref_sha =3D ref_data['object']['sha']
-
-# Secondly, obtain the commit SHA of the tag SHA
-tag_url =3D f'https://api.github.com/repos/zephyrproject-rtos/zephyr/git=
/tags/{ref_sha}'
-with urllib.request.urlopen(tag_url) as f:
-    tag_data =3D json.load(f)
-    tag_sha =3D tag_data['object']['sha']
-
 # Obtain the West manifest and decode using west as a library
 manifest_url =3D f'https://raw.githubusercontent.com/zephyrproject-rtos/=
zephyr/v{version}/west.yml'
 with urllib.request.urlopen(manifest_url) as f:
@@ -39,7 +26,25 @@ with urllib.request.urlopen(manifest_url) as f:
=20
 # projects contains a 'manifest' project for 'self' which we don't want =
to use
 projects =3D list(filter(lambda project: project.name !=3D 'manifest', p=
rojects))
-template_params =3D dict(version=3Dversion, tag_sha=3Dtag_sha, projects=3D=
projects)
+template_params =3D dict(version=3Dversion,
+                       zephyr_url=3D'https://github.com/zephyrproject-rt=
os/zephyr.git',
+                       projects=3Dprojects)
+
+# Convert a revision specifier into the Git commit SHA
+def resolve_revision(revision, repo_url):
+    # If revision is a Git SHA, return it
+    if re.match(r'[a-f0-9]{40}', revision):
+        return revision
+
+    # Otherwise, resolve using git ls-remote
+    try:
+        # Prefer a deferenced tag (if annotated)
+        output =3D subprocess.check_output(['git', 'ls-remote', '--exit-=
code', repo_url, f'{revision}^{{}}'])
+        return output.split()[0].decode()
+    except subprocess.CalledProcessError:
+        # Fall back to tag name (if lightweight)
+        output =3D subprocess.check_output(['git', 'ls-remote', '--exit-=
code', repo_url, revision])
+        return output.split()[0].decode()
=20
 def git_url_to_bitbake(url):
     """
@@ -62,6 +67,7 @@ template_dir =3D pathlib.Path(__file__).parent
 env =3D jinja2.Environment(loader=3Djinja2.FileSystemLoader(template_dir=
))
 env.filters['git_url_to_bitbake'] =3D git_url_to_bitbake
 env.filters['bitbake_var'] =3D bitbake_var
+env.filters['resolve_revision'] =3D resolve_revision
 template =3D env.get_template('zephyr-kernel-src.inc.jinja')
=20
 # Output directly to the zephyr-kernel directory
diff --git a/meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja b/meta-=
zephyr-core/scripts/zephyr-kernel-src.inc.jinja
index a2d2232..e18fcf1 100644
--- a/meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja
+++ b/meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja
@@ -3,11 +3,11 @@
=20
 SRCREV_FORMAT =3D "default"
=20
-SRCREV_default =3D "{{ tag_sha }}"
+SRCREV_default =3D "{{ ('v' ~ version) | resolve_revision(zephyr_url) }}=
"
 {% for project in projects -%}
 SRCREV_{{ project.name }} =3D "{{ project.revision }}"
 {% endfor %}
-SRC_URI_ZEPHYR ?=3D "git://github.com/zephyrproject-rtos/zephyr.git;prot=
ocol=3Dhttps"
+SRC_URI_ZEPHYR ?=3D "{{ zephyr_url | git_url_to_bitbake }}"
 {%- for project in projects %}
 SRC_URI_ZEPHYR_{{ project.name | bitbake_var }} ?=3D "{{ project.url | g=
it_url_to_bitbake }}"
 {%- endfor %}
--=20
2.34.1


