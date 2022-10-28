Return-Path: <gary@missionsecure.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D7D2ECAAA1
	for <webhook@archiver.kernel.org>; Fri, 28 Oct 2022 16:59:37 +0000 (UTC)
Subject: #kirkstone  #bitbake Suricata QA error directories not shipped
To: yocto@lists.yoctoproject.org
From: "Gary Huband" <gary@missionsecure.com>
X-Originating-Location: Charlottesville, Virginia, US (216.197.64.240)
X-Originating-Platform: Linux Firefox 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 28 Oct 2022 09:59:27 -0700
Message-ID: <m3Mw.1666976367878724975.KRS1@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="uMUUh9STGgymPWNW96aW"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Oct 2022 16:59:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58433

--uMUUh9STGgymPWNW96aW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm getting a directories not shipped QA error when building Suricata on Ki=
rkstone:

ERROR: mc:x86-2021-minimal:suricata-6.0.4-r0 do_package: QA Issue: suricata=
: Files/directories were installed but not shipped in any package:
/usr/lib
/usr/lib/python3.10
/usr/lib/python3.10/site-packages
/usr/lib/python3.10/site-packages/suricata-6.0.4-py3.10.egg-info
/usr/lib/python3.10/site-packages/suricata
/usr/lib/python3.10/site-packages/suricatasc
/usr/lib/python3.10/site-packages/suricata/__init__.py
/usr/lib/python3.10/site-packages/suricata/sc
/usr/lib/python3.10/site-packages/suricata/ctl
/usr/lib/python3.10/site-packages/suricata/__pycache__
/usr/lib/python3.10/site-packages/suricata/config
/usr/lib/python3.10/site-packages/suricata/sc/suricatasc.py
/usr/lib/python3.10/site-packages/suricata/sc/__init__.py
/usr/lib/python3.10/site-packages/suricata/sc/specs.py
/usr/lib/python3.10/site-packages/suricata/sc/__pycache__
/usr/lib/python3.10/site-packages/suricata/sc/__pycache__/specs.cpython-310=
.pyc
/usr/lib/python3.10/site-packages/suricata/sc/__pycache__/suricatasc.cpytho=
n-310.pyc
/usr/lib/python3.10/site-packages/suricata/sc/__pycache__/__init__.cpython-=
310.pyc
/usr/lib/python3.10/site-packages/suricata/ctl/main.py
/usr/lib/python3.10/site-packages/suricata/ctl/loghandler.py
/usr/lib/python3.10/site-packages/suricata/ctl/test_filestore.py
/usr/lib/python3.10/site-packages/suricata/ctl/__init__.py
/usr/lib/python3.10/site-packages/suricata/ctl/filestore.py
/usr/lib/python3.10/site-packages/suricata/ctl/__pycache__
/usr/lib/python3.10/site-packages/suricata/ctl/__pycache__/main.cpython-310=
.pyc
/usr/lib/python3.10/site-packages/suricata/ctl/__pycache__/test_filestore.c=
python-310.pyc
/usr/lib/python3.10/site-packages/suricata/ctl/__pycache__/loghandler.cpyth=
on-310.pyc
/usr/lib/python3.10/site-packages/suricata/ctl/__pycache__/filestore.cpytho=
n-310.pyc
/usr/lib/python3.10/site-packages/suricata/ctl/__pycache__/__init__.cpython=
-310.pyc
/usr/lib/python3.10/site-packages/suricata/__pycache__/__init__.cpython-310=
.pyc
/usr/lib/python3.10/site-packages/suricata/config/defaults.py
/usr/lib/python3.10/site-packages/suricata/config/__init__.py
/usr/lib/python3.10/site-packages/suricata/config/__pycache__
/usr/lib/python3.10/site-packages/suricata/config/__pycache__/__init__.cpyt=
hon-310.pyc
/usr/lib/python3.10/site-packages/suricata/config/__pycache__/defaults.cpyt=
hon-310.pyc
/usr/lib/python3.10/site-packages/suricatasc/__init__.py
/usr/lib/python3.10/site-packages/suricatasc/__pycache__
/usr/lib/python3.10/site-packages/suricatasc/__pycache__/__init__.cpython-3=
10.pyc
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.
suricata: 38 installed and not shipped files. [installed-vs-shipped]
ERROR: mc:x86-2021-minimal:suricata-6.0.4-r0 do_package: Fatal QA errors we=
re found, failing task.
ERROR: Logfile of failure stored in: /data/kirkstone/yocto_intel/build/tmp-=
x86-2021-minimal-glibc/work/corei7-64-ese-linux/suricata/6.0.4-r0/temp/log.=
do_package.346985
ERROR: Task (mc:x86-2021-minimal:/data/kirkstone/yocto_intel/build/../intel=
-embedded-system-enabling/meta-security/recipes-ids/suricata/suricata_6.0.4=
.bb:do_package) failed with exit code '1

The Suricata recipe has

FILES : ${ PN } - python =3D "${bindir}/suricatasc ${PYTHON_SITEPACKAGES_DI=
R}"

I have in my conf/local.conf
PACKAGECONFIG:append:pn-suricata =3D " python"

Any ideas on a fix?

--uMUUh9STGgymPWNW96aW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I'm getting a directories not shipped QA error when building Suricata on=
 Kirkstone:<br /><br />ERROR: mc:x86-2021-minimal:suricata-6.0.4-r0 do_pack=
age: QA Issue: suricata: Files/directories were installed but not shipped i=
n any package:<br />&nbsp; /usr/lib<br />&nbsp; /usr/lib/python3.10<br />&n=
bsp; /usr/lib/python3.10/site-packages<br />&nbsp; /usr/lib/python3.10/site=
-packages/suricata-6.0.4-py3.10.egg-info<br />&nbsp; /usr/lib/python3.10/si=
te-packages/suricata<br />&nbsp; /usr/lib/python3.10/site-packages/suricata=
sc<br />&nbsp; /usr/lib/python3.10/site-packages/suricata/__init__.py<br />=
&nbsp; /usr/lib/python3.10/site-packages/suricata/sc<br />&nbsp; /usr/lib/p=
ython3.10/site-packages/suricata/ctl<br />&nbsp; /usr/lib/python3.10/site-p=
ackages/suricata/__pycache__<br />&nbsp; /usr/lib/python3.10/site-packages/=
suricata/config<br />&nbsp; /usr/lib/python3.10/site-packages/suricata/sc/s=
uricatasc.py<br />&nbsp; /usr/lib/python3.10/site-packages/suricata/sc/__in=
it__.py<br />&nbsp; /usr/lib/python3.10/site-packages/suricata/sc/specs.py<=
br />&nbsp; /usr/lib/python3.10/site-packages/suricata/sc/__pycache__<br />=
&nbsp; /usr/lib/python3.10/site-packages/suricata/sc/__pycache__/specs.cpyt=
hon-310.pyc<br />&nbsp; /usr/lib/python3.10/site-packages/suricata/sc/__pyc=
ache__/suricatasc.cpython-310.pyc<br />&nbsp; /usr/lib/python3.10/site-pack=
ages/suricata/sc/__pycache__/__init__.cpython-310.pyc<br />&nbsp; /usr/lib/=
python3.10/site-packages/suricata/ctl/main.py<br />&nbsp; /usr/lib/python3.=
10/site-packages/suricata/ctl/loghandler.py<br />&nbsp; /usr/lib/python3.10=
/site-packages/suricata/ctl/test_filestore.py<br />&nbsp; /usr/lib/python3.=
10/site-packages/suricata/ctl/__init__.py<br />&nbsp; /usr/lib/python3.10/s=
ite-packages/suricata/ctl/filestore.py<br />&nbsp; /usr/lib/python3.10/site=
-packages/suricata/ctl/__pycache__<br />&nbsp; /usr/lib/python3.10/site-pac=
kages/suricata/ctl/__pycache__/main.cpython-310.pyc<br />&nbsp; /usr/lib/py=
thon3.10/site-packages/suricata/ctl/__pycache__/test_filestore.cpython-310.=
pyc<br />&nbsp; /usr/lib/python3.10/site-packages/suricata/ctl/__pycache__/=
loghandler.cpython-310.pyc<br />&nbsp; /usr/lib/python3.10/site-packages/su=
ricata/ctl/__pycache__/filestore.cpython-310.pyc<br />&nbsp; /usr/lib/pytho=
n3.10/site-packages/suricata/ctl/__pycache__/__init__.cpython-310.pyc<br />=
&nbsp; /usr/lib/python3.10/site-packages/suricata/__pycache__/__init__.cpyt=
hon-310.pyc<br />&nbsp; /usr/lib/python3.10/site-packages/suricata/config/d=
efaults.py<br />&nbsp; /usr/lib/python3.10/site-packages/suricata/config/__=
init__.py<br />&nbsp; /usr/lib/python3.10/site-packages/suricata/config/__p=
ycache__<br />&nbsp; /usr/lib/python3.10/site-packages/suricata/config/__py=
cache__/__init__.cpython-310.pyc<br />&nbsp; /usr/lib/python3.10/site-packa=
ges/suricata/config/__pycache__/defaults.cpython-310.pyc<br />&nbsp; /usr/l=
ib/python3.10/site-packages/suricatasc/__init__.py<br />&nbsp; /usr/lib/pyt=
hon3.10/site-packages/suricatasc/__pycache__<br />&nbsp; /usr/lib/python3.1=
0/site-packages/suricatasc/__pycache__/__init__.cpython-310.pyc<br />Please=
 set FILES such that these items are packaged. Alternatively if they are un=
needed, avoid installing them or delete them within do_install.<br />surica=
ta: 38 installed and not shipped files. [installed-vs-shipped]<br />ERROR: =
mc:x86-2021-minimal:suricata-6.0.4-r0 do_package: Fatal QA errors were foun=
d, failing task.<br />ERROR: Logfile of failure stored in: /data/kirkstone/=
yocto_intel/build/tmp-x86-2021-minimal-glibc/work/corei7-64-ese-linux/suric=
ata/6.0.4-r0/temp/log.do_package.346985<br />ERROR: Task (mc:x86-2021-minim=
al:/data/kirkstone/yocto_intel/build/../intel-embedded-system-enabling/meta=
-security/recipes-ids/suricata/suricata_6.0.4.bb:do_package) failed with ex=
it code '1<br /><br />The Suricata recipe has</p>
<pre><code></code></pre>
<pre><span class=3D"nv">FILES</span><span class=3D"p">:</span><span class=
=3D"err">${</span><span class=3D"nv">PN</span><span class=3D"err">}</span><=
span class=3D"o">-</span><span class=3D"nv">python</span> <span class=3D"o"=
>=3D</span> <span class=3D"s2">"${bindir}/suricatasc ${PYTHON_SITEPACKAGES_=
DIR}"</span></pre>
<pre><code></code></pre>
<p>I have in my conf/local.conf<br />PACKAGECONFIG:append:pn-suricata =3D "=
 python"<br /><br />Any ideas on a fix?<br /><br /><br /></p>

--uMUUh9STGgymPWNW96aW--

