Return-Path: <reeve.yang@gmail.com>
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BD62E00747
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 15:03:53 -0700 (PDT)
Received: by mail-lb0-f175.google.com with SMTP id 13so1078705lba.6
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 15:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=BCDygGoG+DovHpk6lr7lBSd8mRfMdZtVEpjySbJPQ1Q=;
	b=AJDOSzLhBhEMHA7RVV1mwQi9LAWezsRKS6hP0AfjZrrznYO2IYkYxeUsopl6axrXe5
	vUwAGuitNWMbg4KZCACuVxmg43+kK9MU/BtB1zrOEBRQZzBa/8qJQ1UWZ4RW9TxuIm9v
	MAS0ayJuWr38I22bagMXaI766bhFpZ3VI8Tv/2lwxUq+s0MDCpzfSJf8Sq6/bMJd2uMh
	MsaMuoSMjog/ENWIsU4Rn6EiHsnoQ/AWI4DSk78QyMwtQAZyhhiqFUpKw5hv6fcSbgpa
	WvsaZB9fGf0RzDoVXlIi/J3Rxb0QOW4gLiobec2cK4ZUB0feGegh4Nu86pTIg+q3Mnh0
	QcAQ==
MIME-Version: 1.0
X-Received: by 10.152.37.103 with SMTP id x7mr7669306laj.28.1377122632710;
	Wed, 21 Aug 2013 15:03:52 -0700 (PDT)
Received: by 10.152.120.35 with HTTP; Wed, 21 Aug 2013 15:03:52 -0700 (PDT)
Date: Wed, 21 Aug 2013 15:03:52 -0700
Message-ID: <CAGNTBAWeb_JRGvJ4B1awDeHhE+KOSPk1Ea-G_R7JqqOX=CpafQ@mail.gmail.com>
From: Reeve Yang <reeve.yang@gmail.com>
To: yocto@yoctoproject.org
Subject: an error when adding "snappy" package
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
X-List-Received-Date: Wed, 21 Aug 2013 22:03:55 -0000
Content-Type: multipart/alternative; boundary=089e0160b5e455c0bd04e47c59e6

--089e0160b5e455c0bd04e47c59e6
Content-Type: text/plain; charset=ISO-8859-1

Hi Grus,

I have been trying to add google snappy package into yocto (
https://code.google.com/p/snappy/), here is my receipt file, nothing
special:

SUMMARY = "Snappy is a compression/decompression library."
DESCRIPTION = "...."
HOMEPAGE="https://code.google.com/p/snappy"
SECTION = "console/utils"
LICENSE = "BSD"
LIC_FILES_CHKSUM = "file://COPYING;md5=b2c8cef4261c6377dcae51b2903d704b"
PR = "r0"
require ../uri.inc
SRC_URI = "${URIPREFIX}/snappy-${PV}.tar.gz"
SRC_URI[md5sum] = "c8f3ef29b5281e78f4946b2d739cea4f"
SRC_URI[sha256sum] =
"1fa82bc588bb93fa74dfc0e2e9b7d63b6e2a20ede323ef42bf0af0f947676160"
inherit autotools
BBCLASSEXTEND = "native"
do_compile() {
    oe_runmake all
}
do_install() {
    oe_runmake DESTDIR=${D} install
}
BBCLASSEXTEND = "native"

The package was built successfully, but when I try to build core-image-lsb
(my own image but similar), I got following error:

|  528:Installing libsnappy1      ########################################
[ 44%]
| Traceback (most recent call last):
|   File
"/home2/reeve-ws/yocto-dylan-merge/build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/site-packages/smart/backends/rpm/pm.py",
line 312, in __call__
|     self._process_rpmout()
|   File
"/home2/reeve-ws/yocto-dylan-merge/build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/site-packages/smart/backends/rpm/pm.py",
line 297, in _process_rpmout
|     output = self.rpmout.read()
|   File
"/home2/reeve-ws/yocto-dylan-merge/build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/codecs.py",
line 477, in read
|     newchars, decodedbytes = self.decode(data, self.errors)
| UnicodeDecodeError: 'ascii' codec can't decode byte 0xa1 in position 740:
ordinal not in range(128)
|
| Traceback (most recent call last):
|   File
"/home2/reeve-ws/yocto-dylan-merge/build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/site-packages/smart/backends/rpm/pm.py",
line 312, in __call__
|     self._process_rpmout()
|   File
"/home2/reeve-ws/yocto-dylan-merge/build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/site-packages/smart/backends/rpm/pm.py",
line 297, in _process_rpmout
|     output = self.rpmout.read()
|   File
"/home2/reeve-ws/yocto-dylan-merge/build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/codecs.py",
line 477, in read
|     newchars, decodedbytes = self.decode(data, self.errors)
| UnicodeDecodeError: 'ascii' codec can't decode byte 0xa1 in position 740:
ordinal not in range(128)
|
| ERROR: Function failed: do_rootfs (see
/home2/reeve-ws/yocto-dylan-merge/build/tmp/work/rp-poky-linux/core-image-ssr/1.0-r0/temp/log.do_rootfs.2751
for further information)
ERROR: Task 7
(/home2/reeve-ws/yocto-dylan-merge/meta-ericsson-ssr-rp/recipes-core-image/
core-image-ssr.bb, do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 4128 tasks of which 4114 didn't need to be
rerun and 1 failed.
No currently running tasks (4128 of 4129)

Can anyone help me out?

--089e0160b5e455c0bd04e47c59e6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Grus,<div><br></div><div style>I have been trying to ad=
d google snappy package into yocto (<a href=3D"https://code.google.com/p/sn=
appy/">https://code.google.com/p/snappy/</a>), here is my receipt file, not=
hing special:</div>
<div style><br></div><div style><div>SUMMARY =3D &quot;Snappy is a compress=
ion/decompression library.&quot;</div><div>DESCRIPTION =3D &quot;....&quot;=
</div><div>HOMEPAGE=3D&quot;<a href=3D"https://code.google.com/p/snappy">ht=
tps://code.google.com/p/snappy</a>&quot;</div>
<div>SECTION =3D &quot;console/utils&quot;</div><div>LICENSE =3D &quot;BSD&=
quot;</div><div>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Db2c8cef4261=
c6377dcae51b2903d704b&quot;</div><div>PR =3D &quot;r0&quot;<br></div><div>r=
equire ../uri.inc<br>
</div><div>SRC_URI =3D &quot;${URIPREFIX}/snappy-${PV}.tar.gz&quot;</div><d=
iv>SRC_URI[md5sum] =3D &quot;c8f3ef29b5281e78f4946b2d739cea4f&quot;<br></di=
v><div>SRC_URI[sha256sum] =3D &quot;1fa82bc588bb93fa74dfc0e2e9b7d63b6e2a20e=
de323ef42bf0af0f947676160&quot;</div>
<div>inherit autotools<br></div><div>BBCLASSEXTEND =3D &quot;native&quot;</=
div><div>do_compile() {<br></div><div>=A0 =A0 oe_runmake all</div><div>}</d=
iv><div>do_install() {<br></div><div>=A0 =A0 oe_runmake DESTDIR=3D${D} inst=
all=A0</div>
<div>}</div><div>BBCLASSEXTEND =3D &quot;native&quot;<br></div><div><br></d=
iv><div style>The package was built successfully, but when I try to build c=
ore-image-lsb (my own image but similar), I got following error:</div><div =
style>
<br></div><div style><div>| =A0528:Installing libsnappy1 =A0 =A0 =A0#######=
################################# [ 44%]</div><div>| Traceback (most recent=
 call last):</div><div>| =A0 File &quot;/home2/reeve-ws/yocto-dylan-merge/b=
uild/tmp/sysroots/x86_64-linux/usr/lib/python2.7/site-packages/smart/backen=
ds/rpm/pm.py&quot;, line 312, in __call__</div>
<div>| =A0 =A0 self._process_rpmout()</div><div>| =A0 File &quot;/home2/ree=
ve-ws/yocto-dylan-merge/build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/s=
ite-packages/smart/backends/rpm/pm.py&quot;, line 297, in _process_rpmout</=
div>
<div>| =A0 =A0 output =3D self.rpmout.read()</div><div>| =A0 File &quot;/ho=
me2/reeve-ws/yocto-dylan-merge/build/tmp/sysroots/x86_64-linux/usr/lib/pyth=
on2.7/codecs.py&quot;, line 477, in read</div><div>| =A0 =A0 newchars, deco=
dedbytes =3D self.decode(data, self.errors)</div>
<div>| UnicodeDecodeError: &#39;ascii&#39; codec can&#39;t decode byte 0xa1=
 in position 740: ordinal not in range(128)</div><div>|=A0</div><div>| Trac=
eback (most recent call last):</div><div>| =A0 File &quot;/home2/reeve-ws/y=
octo-dylan-merge/build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/site-pac=
kages/smart/backends/rpm/pm.py&quot;, line 312, in __call__</div>
<div>| =A0 =A0 self._process_rpmout()</div><div>| =A0 File &quot;/home2/ree=
ve-ws/yocto-dylan-merge/build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/s=
ite-packages/smart/backends/rpm/pm.py&quot;, line 297, in _process_rpmout</=
div>
<div>| =A0 =A0 output =3D self.rpmout.read()</div><div>| =A0 File &quot;/ho=
me2/reeve-ws/yocto-dylan-merge/build/tmp/sysroots/x86_64-linux/usr/lib/pyth=
on2.7/codecs.py&quot;, line 477, in read</div><div>| =A0 =A0 newchars, deco=
dedbytes =3D self.decode(data, self.errors)</div>
<div>| UnicodeDecodeError: &#39;ascii&#39; codec can&#39;t decode byte 0xa1=
 in position 740: ordinal not in range(128)</div><div>|=A0</div><div>| ERRO=
R: Function failed: do_rootfs (see /home2/reeve-ws/yocto-dylan-merge/build/=
tmp/work/rp-poky-linux/core-image-ssr/1.0-r0/temp/log.do_rootfs.2751 for fu=
rther information)</div>
<div>ERROR: Task 7 (/home2/reeve-ws/yocto-dylan-merge/meta-ericsson-ssr-rp/=
recipes-core-image/<a href=3D"http://core-image-ssr.bb">core-image-ssr.bb</=
a>, do_rootfs) failed with exit code &#39;1&#39;</div><div>NOTE: Tasks Summ=
ary: Attempted 4128 tasks of which 4114 didn&#39;t need to be rerun and 1 f=
ailed.</div>
<div>No currently running tasks (4128 of 4129)</div><div><br></div><div sty=
le>Can anyone help me out?</div></div></div></div>

--089e0160b5e455c0bd04e47c59e6--
