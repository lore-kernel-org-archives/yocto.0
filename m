Return-Path: <jonas.l.jonsson@ericsson.com>
Received: from mailgw7.ericsson.se (mailgw7.ericsson.se [193.180.251.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05635E00717
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 05:27:05 -0700 (PDT)
X-AuditID: c1b4fb30-b7f7d6d0000042ea-68-506d8097f40e
Received: from esessmw0256.eemea.ericsson.se (Unknown_Domain [153.88.253.125])
	by mailgw7.ericsson.se (Symantec Mail Security) with SMTP id
	66.F7.17130.7908D605; Thu,  4 Oct 2012 14:27:04 +0200 (CEST)
Received: from ESESSCMS0355.eemea.ericsson.se ([169.254.1.103]) by
	esessmw0256.eemea.ericsson.se ([153.88.115.96]) with mapi;
	Thu, 4 Oct 2012 14:27:04 +0200
From: Jonas Jonsson L <jonas.l.jonsson@ericsson.com>
To: "Yocto Mailinglist (yocto@yoctoproject.org)" <yocto@yoctoproject.org>
Date: Thu, 4 Oct 2012 14:27:03 +0200
Thread-Topic: Python-installation on target (qemuppc) image ....
Thread-Index: Ac2iK48Dxe0oHC0FRYOvZxmMa5mZOw==
Message-ID: <C1024C359E9D4C4EBC664A0111A52A3F7CFB32FC78@ESESSCMS0355.eemea.ericsson.se>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: sv-SE, en-US
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrILMWRmVeSWpSXmKPExsUyM+Jvre6MhtwAg46pLBaTXq5hc2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CVsal9OnvBfdmKx9/Pszcw7pfsYuTkkBAwkTj37TM7hC0mceHe
	erYuRi4OIYFTjBLvn7xjgXAWMErMn3CDCaSKDahjwsqbjF2MHBwiAp4SVx7ogoRZBFQklnxf
	zAxiCwtYS6x494URxBYRcJCYtfIQlK0nsXDHUTaQVl6BcIll281AwowCshL3v99jAbGZBcQl
	bj2ZzwRxj4DEkj3nmSFsUYmXj/+xQtTLSJxa9J8Voj5f4tjuD2A2r4CgxMmZT1gmMArNQjJq
	FpKyWUjKIOI6Egt2f2KDsLUlli18zQxjnznwmAlZfAEj+ypG4dzEzJz0cnO91KLM5OLi/Dy9
	4tRNjMBoOLjlt8EOxk33xQ4xSnOwKInz6qnu9xcSSE8sSc1OTS1ILYovKs1JLT7EyMTBKdXA
	OPnZFZ6XsVrvZmp0dFzgDJx6qkj9i5es3SWzOM8YppilFbP5F2RpnObSl2o/88lfMNXBMmpT
	wcc1Hd+4XvOz+8zTFmcPMlK/WLj9nP26YKXHU9ft+FFutMRlikNftNcc+/+Rh7Z/eyjkm3Lm
	+IM7bs1d0eW5WxW4lmRpNz7RtPD5fWLeR7t1SizFGYmGWsxFxYkATkkxjFQCAAA=
Subject: Python-installation on target (qemuppc) image ....
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
X-List-Received-Date: Thu, 04 Oct 2012 12:27:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C1024C359E9D4C4EBC664A0111A52A3F7CFB32FC78ESESSCMS0355e_"

--_000_C1024C359E9D4C4EBC664A0111A52A3F7CFB32FC78ESESSCMS0355e_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to get a working python on a 'core-image-minimal' type of image =
but with no luck.  Loads of stuff from the standard python library aren't i=
nstalled on the target (qemuppc), as an example I can't run 'python-config'=
 since the 'distutils'-module isn't available.  I need the 'shutil' module =
on my image but I can't figure out how to achive that.  Python seems to wor=
k on the target but it seems to lack lots of standard functionality.

The shutil.py & shutil.pyo exists in .../build/tmp/work/ppc603e-poky-linux/=
python-2.7.3-r0.2/package/usr/lib/python2.7 folder but it doesn't exist on =
the target image...

Also, in ..../deploy-rpms/ppc603e/python-shell-2.7.3-r0.2.ppc603e.rpm, the =
shutil-files exist ...

Somehow, it seems as if this rpm isn't installed on my target-image, what c=
ontrols that?

Examining the log.do_package-file shows ~5700 lines of "error: Couldn't exe=
c ..../sysroot/x86_64-linux/usr/lib/rpm/pythoneggs.py: No such file or dire=
ctory" (shouldn't it be qemupcc??) from function package_do_filedeps.

Examining the log.do_populate_sysroot-file shows "WARNING: The recipe is tr=
ying to install files into a shared area when those files already exist. Th=
ose files are: pyconfig.h, libpython2.7.so, libpython2.7.so.1.0 and Makefil=
e" ....

Best regards,

Jonas Jonsson


--_000_C1024C359E9D4C4EBC664A0111A52A3F7CFB32FC78ESESSCMS0355e_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Arial, sans-serif" size=3D"2">
<div>Hi,</div>
<div>&nbsp;</div>
<div>I'm trying to get a working python on a 'core-image-minimal' type of i=
mage but with no luck.&nbsp; Loads of stuff from the standard python librar=
y aren't installed on the target (qemuppc), as an example I can't run 'pyth=
on-config' since the 'distutils'-module
isn't available.&nbsp; I need the 'shutil' module on my image but I can't f=
igure out how to achive that.&nbsp; Python seems to work on the target but =
it seems to lack lots of standard functionality.</div>
<div>&nbsp;</div>
<div>The shutil.py &amp; shutil.pyo exists in .../build/tmp/work/ppc603e-po=
ky-linux/python-2.7.3-r0.2/package/usr/lib/python2.7 folder but it doesn't =
exist on the target image... </div>
<div>&nbsp;</div>
<div>Also, in ..../deploy-rpms/ppc603e/python-shell-2.7.3-r0.2.ppc603e.rpm,=
 the shutil-files exist ...&nbsp; </div>
<div>&nbsp;</div>
<div>Somehow, it seems as if this rpm isn't installed on my target-image, w=
hat controls that?</div>
<div>&nbsp;</div>
<div>Examining the log.do_package-file shows ~5700 lines of &quot;error: Co=
uldn't exec ..../sysroot/<i><b>x86_64-linux</b></i>/usr/lib/rpm/pythoneggs.=
py: No such file or directory&quot; (shouldn't it be qemupcc??) from functi=
on package_do_filedeps.</div>
<div>&nbsp;</div>
<div>Examining the log.do_populate_sysroot-file shows &quot;WARNING: The re=
cipe is trying to install files into a shared area when those files already=
 exist. Those files are: pyconfig.h, libpython2.7.so, libpython2.7.so.1.0 a=
nd Makefile&quot; ....</div>
<div>&nbsp;</div>
<div>Best regards,</div>
<div>&nbsp;</div>
<div>Jonas Jonsson</div>
<div>&nbsp;</div>
</font>
</body>
</html>

--_000_C1024C359E9D4C4EBC664A0111A52A3F7CFB32FC78ESESSCMS0355e_--
