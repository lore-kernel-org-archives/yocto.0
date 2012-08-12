Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09010E0049A
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2012 04:45:41 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so5681280pbb.35
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2012 04:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=u9qOLKqzQtkrnalasKsqg5Yt+Sqpe2YzHQLAdPleMBI=;
	b=rgGIQmNtEL16OxJKfIlcI1nIAScO+aPlUh7myhRFEVK587dr/l1sBAmNQnpcJk6hRL
	fCM/Fsm/kaaft1DjJtMDaXpZ905o3cjQXh6FNBYV7D4e63p9ssN3og2R+4gaVpHvWD6L
	DwXNUzZtfoT86/z/Qn8xTRLtDJ9YLebARbRUz2O6gzzCBxN+nzphM4AGcHYMorot4Ph2
	3INQLTudrmebM2FzKI5e5m71dBVG65WPztvdxQVCqqtPJg2j0PNy2qIG1CKofbQbf5pS
	YQmkWoTl+YIfLIYOKL0FeT87OizrVlokuB+BpjLeOGANz9VbenA2T+rS+D/whPjsh9+g
	+CAA==
Received: by 10.68.201.195 with SMTP id kc3mr11853828pbc.33.1344771941782;
	Sun, 12 Aug 2012 04:45:41 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id pe8sm3191183pbc.76.2012.08.12.04.45.39
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 12 Aug 2012 04:45:41 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sun, 12 Aug 2012 15:45:36 +0400
Message-Id: <194A260C-67A5-4EE5-8F9F-D5DBFB38C2F1@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Over-riding insane LDFLAGS check
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
X-List-Received-Date: Sun, 12 Aug 2012 11:45:42 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_BD4F13EF-6089-46E8-AE72-8FC460E3CBCE"

--Apple-Mail=_BD4F13EF-6089-46E8-AE72-8FC460E3CBCE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
       Is there anyway I can over-ride the insane LDFLAGS check for =
GNU_HASH?=20

gcc-4.5.1 doesn't generate the hashes, and at the moment, I've had to =
temporarily hack by getting the check to return, as follows:

 meta/classes/insane.bbclass |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
index 556a176..0ec3292 100644
--- a/meta/classes/insane.bbclass
+++ b/meta/classes/insane.bbclass
@@ -392,6 +392,8 @@ def package_qa_hash_style(path, name, d, elf, =
messages):
     Check if the binary has the right hash style...
     """
=20
+    return
+
     if not elf:
         return
=20
--=20
1.7.9.5

The meta-sourcery/conf/distro/include/tcmode-external-sourcery.inc got =
around this issue by the following piece of code, but I don't know where =
or which recipe to hook this into.

ERROR_QA[type] ?=3D "list"
python toolchain_metadata_setup () {
    if not isinstance(e, bb.event.ConfigParsed):
        return

    import subprocess
    d =3D e.data

    l =3D d.createCopy()
    l.finalize()
    oe_import(l)

    sysroot_cmd =3D "${TARGET_PREFIX}gcc ${TARGET_CC_ARCH} =
-print-sysroot"
    try:
        toolchain_sysroot =3D bb.process.run(bb.data.expand(sysroot_cmd, =
l),
                                           stderr=3Dsubprocess.PIPE,
                                           env=3D{"PATH": =
l.getVar('PATH', True)})[0].rstrip()
    except bb.process.CmdError as exc:
        bb.fatal(str(exc))

    d.setVar('EXTERNAL_TOOLCHAIN_SYSROOT', toolchain_sysroot)

    if os.path.exists(bb.data.expand('${EXTERNAL_TOOLCHAIN}/bin/gcc', =
l)):
        d.setVar('TOOLCHAIN_PATH_ADD', '')

    # The external toolchain may not have been built with the yocto =
preferred
    # gnu hash setting, so ensure that the corresponding sanity check is =
a
    # warning, not an error.
    error_qa =3D oe.data.typed_value('ERROR_QA', l)
    if 'ldflags' in error_qa:
        error_qa.remove('ldflags')
        d.setVar('ERROR_QA', ' '.join(error_qa))
        d.appendVar('WARN_QA', ' ldflags')
}
addhandler toolchain_metadata_setup


I was wondering if there was a more elegant way of doing this.

Best regards,

Elvis Dowson=

--Apple-Mail=_BD4F13EF-6089-46E8-AE72-8FC460E3CBCE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; &nbsp;Is there anyway I can over-ride the =
insane LDFLAGS check for =
GNU_HASH?&nbsp;</div><div><br></div><div>gcc-4.5.1 doesn't generate the =
hashes, and at the moment, I've had to temporarily hack by getting the =
check to return, as follows:</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;meta/classes/insane.bbclass | &nbsp; &nbsp;2 =
++</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;1 file changed, 2 insertions(+)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">diff --git a/meta/classes/insane.bbclass =
b/meta/classes/insane.bbclass</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
556a176..0ec3292 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/meta/classes/insane.bbclass</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/meta/classes/insane.bbclass</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -392,6 +392,8 =
@@ def package_qa_hash_style(path, name, d, elf, =
messages):</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp;Check if the binary has =
the right hash style...</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp;"""</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ &nbsp; =
&nbsp;return</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp;if not elf:</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;return</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">--&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" =
size=3D"2">1.7.9.5</font></div></div><div><br></div><div>The =
meta-sourcery/conf/distro/include/tcmode-external-sourcery.inc got =
around this issue by the following piece of code, but I don't know where =
or which recipe to hook this into.</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR_QA[type] ?=3D =
"list"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">python toolchain_metadata_setup () {</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; if =
not isinstance(e, bb.event.ConfigParsed):</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; return</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
import subprocess</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; d =3D =
e.data</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; l =3D =
d.createCopy()</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
l.finalize()</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
oe_import(l)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
sysroot_cmd =3D "${TARGET_PREFIX}gcc ${TARGET_CC_ARCH} =
-print-sysroot"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; try:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; toolchain_sysroot =3D =
bb.process.run(bb.data.expand(sysroot_cmd, l),</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;stderr=3Dsubprocess.PIPE,</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;env=3D{"PATH": l.getVar('PATH', =
True)})[0].rstrip()</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; except bb.process.CmdError as =
exc:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; =
bb.fatal(str(exc))</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
d.setVar('EXTERNAL_TOOLCHAIN_SYSROOT', =
toolchain_sysroot)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; if =
os.path.exists(bb.data.expand('${EXTERNAL_TOOLCHAIN}/bin/gcc', =
l)):</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; d.setVar('TOOLCHAIN_PATH_ADD', =
'')</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; # The external toolchain may =
not have been built with the yocto preferred</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; # =
gnu hash setting, so ensure that the corresponding sanity check is =
a</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; # warning, not an error.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
error_qa =3D oe.data.typed_value('ERROR_QA', l)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; if =
'ldflags' in error_qa:</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; =
error_qa.remove('ldflags')</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; d.setVar('ERROR_QA', ' =
'.join(error_qa))</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; =
d.appendVar('WARN_QA', ' ldflags')</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">}</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">addhandler =
toolchain_metadata_setup</font></div></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><br></div><div>I was wondering if there =
was a more elegant way of doing this.</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_BD4F13EF-6089-46E8-AE72-8FC460E3CBCE--
