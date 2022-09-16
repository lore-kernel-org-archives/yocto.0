Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A95DC54EE9
	for <webhook@archiver.kernel.org>; Fri, 16 Sep 2022 09:03:38 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.3945.1663319015774635439
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Sep 2022 02:03:36 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D267B1D34;
	Fri, 16 Sep 2022 02:03:41 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.88.114])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9DEA73F73D;
	Fri, 16 Sep 2022 02:03:34 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: diego.sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 1/4] zephyr-core/scripts: Introduce script to
 generate new versions
Date: Fri, 16 Sep 2022 10:03:15 +0100
Message-Id: <20220916090318.1293922-2-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220916090318.1293922-1-peter.hoyes@arm.com>
References: <20220916090318.1293922-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Sep 2022 09:03:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58055

From: Peter Hoyes <Peter.Hoyes@arm.com>

Add a Python script which can be used to automatically generate
configuration for new Zephyr versions. This script:
 * Takes the Zephyr version as a single argument
 * Uses the Github API to find the version tag's SHA1
 * Uses West as a library to parse the version's manifest file
 * Uses a Jinja template to generate a .inc file for the version
 * Outputs the .inc file directly into the zephyr-kernel directory

The generated .inc file includes:
 * SRCREVs for all modules
 * Separate SRC_URI_x variables for each module, to make it easier to
   swap out a specific URL for a fork or mirror
 * A version-specific SRC_URI, containing only the modules defined in
   the release
 * A list of the ZEPHYR_MODULES

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 README.txt                                    | 17 +++++
 meta-zephyr-core/scripts/generate-version.py  | 73 +++++++++++++++++++
 .../scripts/zephyr-kernel-src.inc.jinja       | 35 +++++++++
 3 files changed, 125 insertions(+)
 create mode 100755 meta-zephyr-core/scripts/generate-version.py
 create mode 100644 meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja

diff --git a/README.txt b/README.txt
index 4776a8a..ea129ba 100644
--- a/README.txt
+++ b/README.txt
@@ -125,6 +125,23 @@ you will need to run the above, copy the conf files =
from the deploy dir to the
 machine conf directory and then run your build. This shouldn't need to h=
appen=20
 often.
=20
+Generating new Zephyr recipe versions
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+The script meta-zephyr-core/scripts/generate-version.py is used to gener=
ate
+Yocto configuration for a Zephyr version from the West configuration in =
the
+Zephyr repository. It requires the west and jinja2 Python packages to be
+installed on the host. Run it as follows:
+
+    $ ./meta-zephyr-core/scripts/generate-version.py x.x.x
+
+where x.x.x is the Zephyr version.
+
+The patch files added to SRC_URI in the generated file should be validat=
ed and
+modified if required.
+
+The new version should be committed and submitted to the mailing list as
+described in "Contributing".
+
 Contributing
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
diff --git a/meta-zephyr-core/scripts/generate-version.py b/meta-zephyr-c=
ore/scripts/generate-version.py
new file mode 100755
index 0000000..550f8df
--- /dev/null
+++ b/meta-zephyr-core/scripts/generate-version.py
@@ -0,0 +1,73 @@
+#!/usr/bin/env python3
+
+import json
+import pathlib
+import re
+import sys
+import urllib.parse
+import urllib.request
+
+# These non-standard modules must be installed on the host
+import jinja2
+import west.manifest
+
+# This script takes one argument - the Zephyr version in the form x.y.z
+version =3D sys.argv[1]
+if not re.match(r'\d+.\d+.\d+', version):
+    raise ValueError("Please provide a valid Zephyr version")
+
+# Convert the version (x.y.z) into the Git commit SHA using the Github A=
PI
+# This is a two-step process - first obtain the tag SHA
+ref_url =3D f'https://api.github.com/repos/zephyrproject-rtos/zephyr/git=
/refs/tags/v{version}'
+with urllib.request.urlopen(ref_url) as f:
+    ref_data =3D json.load(f)
+    ref_sha =3D ref_data['object']['sha']
+
+# Secondly, obtain the commit SHA of the tag SHA
+tag_url =3D f'https://api.github.com/repos/zephyrproject-rtos/zephyr/git=
/tags/{ref_sha}'
+with urllib.request.urlopen(tag_url) as f:
+    tag_data =3D json.load(f)
+    tag_sha =3D tag_data['object']['sha']
+
+# Obtain the West manifest and decode using west as a library
+manifest_url =3D f'https://raw.githubusercontent.com/zephyrproject-rtos/=
zephyr/v{version}/west.yml'
+with urllib.request.urlopen(manifest_url) as f:
+    source_data =3D f.read().decode()
+    manifest =3D west.manifest.Manifest(source_data=3Dsource_data,
+        import_flags=3Dwest.manifest.ImportFlag.IGNORE)
+    projects =3D manifest.get_projects([])
+
+# projects contains a 'manifest' project for 'self' which we don't want =
to use
+projects =3D list(filter(lambda project: project.name !=3D 'manifest', p=
rojects))
+template_params =3D dict(version=3Dversion, tag_sha=3Dtag_sha, projects=3D=
projects)
+
+def git_url_to_bitbake(url):
+    """
+    A template helper function which converts an URL for a Git repositor=
y into
+    a Bitbake-style URL with a 'protocol' suffix
+    """
+    parts =3D urllib.parse.urlparse(url)
+    original_sceme =3D parts.scheme
+    parts =3D parts._replace(scheme=3D'git')
+    return parts.geturl() + ';protocol=3D' + original_sceme
+
+def bitbake_var(name):
+    """
+    Returns a string suitable for use in a Bitbake variable name
+    """
+    return name.upper().replace('-', '_')
+
+# Set up the Jinja environment
+template_dir =3D pathlib.Path(__file__).parent
+env =3D jinja2.Environment(loader=3Djinja2.FileSystemLoader(template_dir=
))
+env.filters['git_url_to_bitbake'] =3D git_url_to_bitbake
+env.filters['bitbake_var'] =3D bitbake_var
+template =3D env.get_template('zephyr-kernel-src.inc.jinja')
+
+# Output directly to the zephyr-kernel directory
+dest_path =3D pathlib.Path(__file__).parents[1] / 'recipes-kernel' /\
+    'zephyr-kernel' / f'zephyr-kernel-src-{version}.inc'
+
+# Generate the Bitbake include file
+with open(dest_path, 'w') as f:
+    f.write(template.render(**template_params))
diff --git a/meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja b/meta-=
zephyr-core/scripts/zephyr-kernel-src.inc.jinja
new file mode 100644
index 0000000..e7981ed
--- /dev/null
+++ b/meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja
@@ -0,0 +1,35 @@
+# Auto-generated from zephyr-kernel-src.inc.jinja
+{%- set short_version =3D '.'.join(version.split('.')[0:2]) %}
+
+SRCREV_FORMAT =3D "default"
+
+SRCREV_default =3D "{{ tag_sha }}"
+{% for project in projects -%}
+SRCREV_{{ project.name }} =3D "{{ project.revision }}"
+{% endfor %}
+SRC_URI_ZEPHYR ?=3D "git://github.com/zephyrproject-rtos/zephyr.git;prot=
ocol=3Dhttps"
+{%- for project in projects %}
+SRC_URI_{{ project.name | bitbake_var }} ?=3D "{{ project.url | git_url_=
to_bitbake }}"
+{%- endfor %}
+
+SRC_URI_PATCHES ?=3D "\
+    file://0001-{{ short_version }}-cmake-add-yocto-toolchain.patch;patc=
hdir=3Dzephyr \
+    file://0001-{{ short_version }}-x86-fix-efi-binary-generation-issue-=
in-cross-compila.patch;patchdir=3Dzephyr \
+"
+
+SRC_URI =3D "\
+    ${SRC_URI_ZEPHYR};branch=3D${ZEPHYR_BRANCH};name=3Ddefault;destsuffi=
x=3Dgit/zephyr \
+{%- for project in projects %}
+    ${SRC_URI_{{ project.name | bitbake_var }}};name=3D{{ project.name }=
};nobranch=3D1;destsuffix=3Dgit/{{ project.path }} \
+{%- endfor %}
+    ${SRC_URI_PATCHES} \
+"
+
+ZEPHYR_MODULES =3D "\{% for project in projects %}
+${S}/{{ project.path }}\;\
+{%- endfor %}
+"
+
+ZEPHYR_BRANCH =3D "v{{ short_version }}-branch"
+PV =3D "{{ version }}+git${SRCPV}"
+
--=20
2.25.1


