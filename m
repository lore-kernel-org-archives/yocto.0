Return-Path: <tarek.elsherbiny@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6B8CE002AC
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 05:08:14 -0700 (PDT)
Received: by qady1 with SMTP id y1so1029232qad.14
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 05:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=flDJn48EBO77tuOW21HuEuNfW0FDuAG4Uk1QKkqHN9I=;
	b=MCp1YyTmM24VimD2BQ12as5tsc1D3u+ribEpBE19fNR3Ar+8nrU2Ey9CFufM92JDKH
	gbIM6a2TphXM5RkIWedWXUDKziwlaqnv0QnGWmKDpb+EZBkJkjWI4FFkTvmrtgM30Ve3
	cZIKcsY3Il2/4eCOez4z2pVg2m7IWHKeW9O6MiBtQFqMhjGz49S9/mGEIZJxDIIjWOu/
	wayjgvUemgwPAo2wM//xfZ+bT9irmxq0vMgmrqqAgWs9IeQWeOym2yF+ea0sgVbn8FL6
	XiQ2D8HX4AOYxl28G935/97IS5WKon356tng25JSHZnexEt0ff7acaiJXdmB/cW2VeOd
	Hoxw==
MIME-Version: 1.0
Received: by 10.224.206.198 with SMTP id fv6mr6577010qab.65.1348056494050;
	Wed, 19 Sep 2012 05:08:14 -0700 (PDT)
Received: by 10.224.174.19 with HTTP; Wed, 19 Sep 2012 05:08:13 -0700 (PDT)
Date: Wed, 19 Sep 2012 13:08:13 +0100
Message-ID: <CAB3sqtaSno+aXJ41YOZ9zXhjbF1xPwDYS3TYdooWHP0GoJB=yg@mail.gmail.com>
From: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
To: yocto@yoctoproject.org
Subject: Lighttpd recipe is falling ERROR: Error executing a python function
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
X-List-Received-Date: Wed, 19 Sep 2012 12:08:15 -0000
Content-Type: multipart/alternative; boundary=20cf300fb2db770c9504ca0cdc2a

--20cf300fb2db770c9504ca0cdc2a
Content-Type: text/plain; charset=ISO-8859-1

I would like to build lighttpd for my imx6 project.

Her is the error I'm getting after I type bitbake lighttpd

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 644 of 885 (ID: 9,
/home/telsherbiny/work/fsl/sources/poky/meta/recipes-extended/lighttpd/
lighttpd_1.4.30.bb, do_package)
NOTE: Running task 882 of 885 (ID: 3,
/home/telsherbiny/work/fsl/sources/poky/meta/recipes-extended/lighttpd/
lighttpd_1.4.30.bb, do_populate_sysroot)
NOTE: package lighttpd-1.4.30-r12: task do_package: Started
NOTE: package lighttpd-1.4.30-r12: task do_populate_sysroot: Started
NOTE: package lighttpd-1.4.30-r12: task do_populate_sysroot: Succeeded
ERROR: Error executing a python function in
/home/telsherbiny/work/fsl/sources/poky/meta/recipes-extended/lighttpd/
lighttpd_1.4.30.bb:
AttributeError: 'NoneType' object has no attribute 'split'

ERROR: The stack trace of python calls that resulted in this
exception/failure was:
ERROR:   File "populate_packages", line 323, in <module>
ERROR:
ERROR:   File "populate_packages", line 115, in populate_packages
ERROR:
ERROR:   File "populate_packages", line 72, in systemd_check_services
ERROR:
ERROR: The code that was being executed was:
ERROR:      0319: bb.note("%s contains dangling symlink to %s" % (pkg, l))
ERROR:      0320: d.setVar('RDEPENDS_' + pkg, bb.utils.join_deps(rdepends,
commasep=False))
ERROR:      0321:
ERROR:      0322:
ERROR:  *** 0323:populate_packages(d)
ERROR:      0324:
ERROR: (file: 'populate_packages', lineno: 323, function: <module>)
ERROR:      0111: for pkg_systemd in d.getVar('SYSTEMD_PACKAGES',
1).split():
ERROR:      0112: if d.getVar('SYSTEMD_SERVICE' + "_" + pkg_systemd, 1) and
d.getVar('SYSTEMD_SERVICE' + "_" + pkg_systemd, 1).strip():
ERROR:      0113: systemd_generate_package_scripts(pkg_systemd)
ERROR:      0114: systemd_add_rdepends(pkg_systemd)
ERROR:  *** 0115: systemd_check_services()
ERROR:      0116:        lighttpd_libdir = d.expand('/usr/lib')
ERROR:      0117:        do_split_packages(d, lighttpd_libdir,
'^mod_(.*)\.so$', 'lighttpd-module-%s', 'Lighttpd module for %s',
extra_depends='')
ERROR:      0118: def update_rcd_package(pkg):
ERROR:      0119: bb.debug(1, 'adding update-rc.d calls to postinst/postrm
for %s' % pkg)
ERROR: (file: 'populate_packages', lineno: 115, function: populate_packages)
ERROR: Function failed: populate_packages
ERROR: Logfile of failure stored in:
/home/telsherbiny/work/fsl/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/lighttpd-1.4.30-r12/temp/log.do_package.32369
NOTE: package lighttpd-1.4.30-r12: task do_package: Failed
ERROR: Task 9
(/home/telsherbiny/work/fsl/sources/poky/meta/recipes-extended/lighttpd/
lighttpd_1.4.30.bb, do_package) failed with exit code '1'
NOTE: Tasks Summary: Attempted 882 tasks of which 880 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:
  /home/telsherbiny/work/fsl/sources/poky/meta/recipes-extended/lighttpd/
lighttpd_1.4.30.bb, do_package
Summary: There were 27 ERROR messages shown, returning a non-zero exit code.


Can anyone help to solve this problem?

Regards

--20cf300fb2db770c9504ca0cdc2a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I would like to build lighttpd for my imx6=A0project.<div><br></div><div>He=
r is the error I&#39;m getting after I type bitbake lighttpd</div><div><br>=
</div><div><div>NOTE: Resolving any missing task queue dependencies</div><d=
iv>
NOTE: Preparing runqueue</div><div>NOTE: Executing SetScene Tasks</div><div=
>NOTE: Executing RunQueue Tasks</div><div>NOTE: Running task 644 of 885 (ID=
: 9, /home/telsherbiny/work/fsl/sources/poky/meta/recipes-extended/lighttpd=
/<a href=3D"http://lighttpd_1.4.30.bb">lighttpd_1.4.30.bb</a>, do_package)<=
/div>
<div>NOTE: Running task 882 of 885 (ID: 3, /home/telsherbiny/work/fsl/sourc=
es/poky/meta/recipes-extended/lighttpd/<a href=3D"http://lighttpd_1.4.30.bb=
">lighttpd_1.4.30.bb</a>, do_populate_sysroot)</div><div>NOTE: package ligh=
ttpd-1.4.30-r12: task do_package: Started</div>
<div>NOTE: package lighttpd-1.4.30-r12: task do_populate_sysroot: Started</=
div><div>NOTE: package lighttpd-1.4.30-r12: task do_populate_sysroot: Succe=
eded</div><div>ERROR: Error executing a python function in /home/telsherbin=
y/work/fsl/sources/poky/meta/recipes-extended/lighttpd/<a href=3D"http://li=
ghttpd_1.4.30.bb">lighttpd_1.4.30.bb</a>:</div>
<div>AttributeError: &#39;NoneType&#39; object has no attribute &#39;split&=
#39;</div><div><br></div><div>ERROR: The stack trace of python calls that r=
esulted in this exception/failure was:</div><div>ERROR: =A0 File &quot;popu=
late_packages&quot;, line 323, in &lt;module&gt;</div>
<div>ERROR:=A0</div><div>ERROR: =A0 File &quot;populate_packages&quot;, lin=
e 115, in populate_packages</div><div>ERROR:=A0</div><div>ERROR: =A0 File &=
quot;populate_packages&quot;, line 72, in systemd_check_services</div><div>=
ERROR:=A0</div>
<div>ERROR: The code that was being executed was:</div><div>ERROR: =A0 =A0 =
=A00319:<span class=3D"Apple-tab-span" style=3D"white-space:pre">				</span=
>bb.note(&quot;%s contains dangling symlink to %s&quot; % (pkg, l))</div><d=
iv>ERROR: =A0 =A0 =A00320:<span class=3D"Apple-tab-span" style=3D"white-spa=
ce:pre">		</span>d.setVar(&#39;RDEPENDS_&#39; + pkg, bb.utils.join_deps(rde=
pends, commasep=3DFalse))</div>
<div>ERROR: =A0 =A0 =A00321:</div><div>ERROR: =A0 =A0 =A00322:</div><div>ER=
ROR: =A0*** 0323:populate_packages(d)</div><div>ERROR: =A0 =A0 =A00324:</di=
v><div>ERROR: (file: &#39;populate_packages&#39;, lineno: 323, function: &l=
t;module&gt;)</div>
<div>ERROR: =A0 =A0 =A00111:<span class=3D"Apple-tab-span" style=3D"white-s=
pace:pre">		</span>for pkg_systemd in d.getVar(&#39;SYSTEMD_PACKAGES&#39;, =
1).split():</div><div>ERROR: =A0 =A0 =A00112:<span class=3D"Apple-tab-span"=
 style=3D"white-space:pre">			</span>if d.getVar(&#39;SYSTEMD_SERVICE&#39; =
+ &quot;_&quot; + pkg_systemd, 1) and d.getVar(&#39;SYSTEMD_SERVICE&#39; + =
&quot;_&quot; + pkg_systemd, 1).strip():</div>
<div>ERROR: =A0 =A0 =A00113:<span class=3D"Apple-tab-span" style=3D"white-s=
pace:pre">				</span>systemd_generate_package_scripts(pkg_systemd)</div><di=
v>ERROR: =A0 =A0 =A00114:<span class=3D"Apple-tab-span" style=3D"white-spac=
e:pre">				</span>systemd_add_rdepends(pkg_systemd)</div>
<div>ERROR: =A0*** 0115:<span class=3D"Apple-tab-span" style=3D"white-space=
:pre">		</span>systemd_check_services()</div><div>ERROR: =A0 =A0 =A00116: =
=A0 =A0 =A0 =A0lighttpd_libdir =3D d.expand(&#39;/usr/lib&#39;)</div><div>E=
RROR: =A0 =A0 =A00117: =A0 =A0 =A0 =A0do_split_packages(d, lighttpd_libdir,=
 &#39;^mod_(.*)\.so$&#39;, &#39;lighttpd-module-%s&#39;, &#39;Lighttpd modu=
le for %s&#39;, extra_depends=3D&#39;&#39;)</div>
<div>ERROR: =A0 =A0 =A00118:<span class=3D"Apple-tab-span" style=3D"white-s=
pace:pre">	</span>def update_rcd_package(pkg):</div><div>ERROR: =A0 =A0 =A0=
0119:<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>bb.d=
ebug(1, &#39;adding update-rc.d calls to postinst/postrm for %s&#39; % pkg)=
</div>
<div>ERROR: (file: &#39;populate_packages&#39;, lineno: 115, function: popu=
late_packages)</div><div>ERROR: Function failed: populate_packages</div><di=
v>ERROR: Logfile of failure stored in: /home/telsherbiny/work/fsl/build/tmp=
/work/armv7a-vfp-neon-poky-linux-gnueabi/lighttpd-1.4.30-r12/temp/log.do_pa=
ckage.32369</div>
<div>NOTE: package lighttpd-1.4.30-r12: task do_package: Failed</div><div>E=
RROR: Task 9 (/home/telsherbiny/work/fsl/sources/poky/meta/recipes-extended=
/lighttpd/<a href=3D"http://lighttpd_1.4.30.bb">lighttpd_1.4.30.bb</a>, do_=
package) failed with exit code &#39;1&#39;</div>
<div>NOTE: Tasks Summary: Attempted 882 tasks of which 880 didn&#39;t need =
to be rerun and 1 failed.</div><div><br></div><div>Summary: 1 task failed:<=
/div><div>=A0 /home/telsherbiny/work/fsl/sources/poky/meta/recipes-extended=
/lighttpd/<a href=3D"http://lighttpd_1.4.30.bb">lighttpd_1.4.30.bb</a>, do_=
package</div>
<div>Summary: There were 27 ERROR messages shown, returning a non-zero exit=
 code.</div><div><br></div></div><div><br></div><div>Can anyone help to sol=
ve this=A0problem?</div><div><br></div><div>Regards</div><div><br></div><di=
v>
<br></div><div><br></div>

--20cf300fb2db770c9504ca0cdc2a--
