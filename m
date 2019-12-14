Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.9634.1576348315476464489
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Dec 2019 10:31:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sbcglobal.net header.s=s2048 header.b=HxPTsgzQ;
 spf=none, err=permanent DNS error (domain: sbcglobal.net, ip: 140.211.169.56, mailfrom: develone@sbcglobal.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 137DBE01234; Sat, 14 Dec 2019 10:31:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [74.6.130.124 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic316-14.consmr.mail.bf2.yahoo.com (sonic316-14.consmr.mail.bf2.yahoo.com [74.6.130.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8A15E011C0
	for <yocto@yoctoproject.org>; Sat, 14 Dec 2019 10:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048; t=1576348312; bh=XuLw9agi9QiuOFJmGMdObJTqXWYDF7RGyj3Z2ek79Sc=; h=Date:From:To:Subject:References:From:Subject; b=HxPTsgzQlnlDsYZN7EAf4RsRPbmigJZhy+grekHF+ZFblhNbYjlkDi0pLCgIOcSQhrRLWpcBs3MvD0BcXOs5WJeCy4P49Yw2EIDfgS0DMFWDIIn3t/EEJrPfbVJQaNgtvtTCRxHPbRebKUTV5VOO1mTQDbHKAHVdASxRT/2+0UxkuVayqmAuKh4OZjtKyGv/XNRnnCIFe/ejvKFnbOTzWK3VTcNdm+UmXAxDT03f1Cqrvri/lq7c0SYa1QGKQHHwwU3PC2Dqfv0Kxpuwe7QDNMSJh1Oxc7QjFQa66Qzj/i0W8p1iQc4ieQ4ocC2ZqPQRDEMNCPlGMbTDt7S05dVWaw==
X-YMail-OSG: PU1k0FkVM1lN4EaMGXdbtc2m7nBAplOuwGbv1GU8E5Gc6jQlDidGgYuWuLKfIKR
 5AsRaYhTWw_uPGXRrzL.kPGhVqgR_SIVVgaWGaeVF1ztrdzKMmgAnlxecxq8IZYRE8m9wm7BcS.l
 PgJh59JBwRN5JOp.aQ61wADgonL6pG_fRCj4JKvAeAlQ.kjpqVgkJm3kozKv8A0Ch5T0pDx791Mf
 Jf64ratNfcconDMUkRkEy9DKU4t1YMj.bMg3KFhbzEpceXimvzHowSVS_tAaCVh2R3_mb6.PaQZ8
 qztRnpzajzV4bNOd0gpmeXTaNt8B6g03sSCyXQkh9Nkjl_UwxpbSVVtaEUeTtKAXDG8aKzfysQzw
 2InL6Dx8cRiVS7o5g7E2nPH4gRt4zzowFnBAN.Nq2YkKyuf_8SnFch7bS4y5BlZ8sWDNaoQwcjP4
 KT2FQuy2QWfyRNuB_3AQOQfTyO133oVneG4VE3nXZIshEl8fuIJCNkSXRNz_B3aKrnccfNUHNfBP
 iIIfPWqzSik5t9hmgOJPNpL2FwCNrWWUgr6ABG0vKm9hxsMcOFFaDInnQDJl8geKUxJax0sHwckR
 ES6fUJRVIg6Lgzlo4gZg9bQu6RtlNqTfXGpEtVyFLGuNLTotNaMt_8ZqbqyTtBkUsLPlj2XI.oYs
 g9lS4Atslw1WiG0dudIP4TJeIgOSbFwyyhIrlpodDkkdfF6Q90FnXa.K1TT_OVQRYn2tR2l4SJZW
 F1WlUQ3z5KJCd.0XjY.wDMKPRokYgR1ZRB3ulnt3sTTA16t6Ieq7YFL8tjkYh0DcHVCZVDp26YPA
 YDurvC5h5FbGXNuC8S.b74Zhee3kdzfH7u1_VD1tLu7_65BO4hnC93DwZu802qKwJkPTW_zLQ58q
 AJbLa8X5P3Rqs2VmKkqCdJZ8dPlPMML4Lg6yjNu2DBdSuTTXEMdReiQXPSBNg1H7PY5FEjMJemTq
 yTxrG0qj4BBTA.sJ7G8qheODocf4r6THsoqNaQgJmzP2txZ8irErlaln1zd4Gxr4_CyZPU4gkhuL
 GAvbmU7u1NgwxxNKBlvwnPkwQwcTm8uW.m9R_11I4hQWaNIX6dDIXYhubg27DvmZ8CYHISkAhz_5
 DaLFDwxtT7IHEx.RaoSVWmlvqNKcL.kSgqhB644zUmLrJiAZeHe56JK2BSeTTMEpLixEc2oJTkcU
 Cc42as7nRb7DfspFm_podF2RyEdfx_9RpXwTN5.InQ64FYB8N327DVihl2eDJSt4Bi2.0bdnFbjB
 OXlWidl.wD1kfFKq2ORBuAy5218hCDWTuiqBmMCCdv3SuRip44VKh3dv7kNJdzyvaT5plPYcaAsN
 1_bLFymg0L3FLCAdjVEqLllyn80Qh32yj
Received: from sonic.gate.mail.ne1.yahoo.com by sonic316.consmr.mail.bf2.yahoo.com with HTTP; Sat, 14 Dec 2019 18:31:52 +0000
Date: Sat, 14 Dec 2019 18:31:50 +0000 (UTC)
From: "Ed Vidal" <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1018986719.8882701.1576348310835@mail.yahoo.com>
Subject: Re: Raspberry pi 4 recipe and layer issues.
MIME-Version: 1.0
References: <1018986719.8882701.1576348310835.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14728 YMailNorrin Mozilla/5.0 (X11; Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko) Raspbian Chromium/74.0.3729.157 Chrome/74.0.3729.157 Safari/537.36
Content-Type: multipart/alternative; 
	boundary="----=_Part_8882700_778487773.1576348310834"

------=_Part_8882700_778487773.1576348310834
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi=C2=A0Any help is appreciated. Thanks in advance.
Progress in 2 of the 4 recipes.=C2=A0=C2=A0
The recipe yosys_0.1.bb creates 3 executeable programs, bash script, and Py=
thon script.The do_install is reporting the following error.ERROR: Task (/h=
ome/vidal/wkg/yocto-zeus-3.0/rpi4-64/poky/meta-yosys-tools/recipes-yosys/yo=
sys/yosys_0.1.bb:do_install) failed with exit code '1'NOTE: Tasks Summary: =
Attempted 1614 tasks of which 1606 didn't need to be rerun and 1 failed.
Summary: 1 task failed:=C2=A0 /home/vidal/wkg/yocto-zeus-3.0/rpi4-64/poky/m=
eta-yosys-tools/recipes-yosys/yosys/yosys_0.1.bb:do_installSummary: There w=
as 1 WARNING message shown.Summary: There were 2 ERROR messages shown, retu=
rning a non-zero exit code.
I checked the files, using the file command, these are the results.file tmp=
/work/aarch64-poky-linux/yosys/0.1+gitAUTOINC+e275692e84-r0/image/usr/local=
/bin/yosys*tmp/work/aarch64-poky-linux/yosys/0.1+gitAUTOINC+e275692e84-r0/i=
mage/usr/local/bin/yosys:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ELF 64-bi=
t LSB executable, x86-64, version 1 (GNU/Linux), dynamically linked, interp=
reter /lib64/l, for GNU/Linux 2.6.32, BuildID[sha1]=3D59eddedb17cdb807f9122=
ccd6339376c152f3d26, not strippedtmp/work/aarch64-poky-linux/yosys/0.1+gitA=
UTOINC+e275692e84-r0/image/usr/local/bin/yosys-abc:=C2=A0 =C2=A0 =C2=A0 =C2=
=A0ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), dynamically li=
nked, interpreter /lib64/l, for GNU/Linux 2.6.32, BuildID[sha1]=3D8330a22bb=
a177391314a2ab237a7c5486077dc66, not strippedtmp/work/aarch64-poky-linux/yo=
sys/0.1+gitAUTOINC+e275692e84-r0/image/usr/local/bin/yosys-config:=C2=A0 =
=C2=A0 Bourne-Again shell script, ASCII text executable, with very long lin=
estmp/work/aarch64-poky-linux/yosys/0.1+gitAUTOINC+e275692e84-r0/image/usr/=
local/bin/yosys-filterlib: ELF 64-bit LSB executable, x86-64, version 1 (SY=
SV), dynamically linked, interpreter /lib64/l, for GNU/Linux 2.6.32, BuildI=
D[sha1]=3Df1c039944fa7a78fda555629b062466214eb7c7c, not strippedtmp/work/aa=
rch64-poky-linux/yosys/0.1+gitAUTOINC+e275692e84-r0/image/usr/local/bin/yos=
ys-smtbmc:=C2=A0 =C2=A0 Python script, ASCII text executablerpi4-64
The recipe icestorm_0.1.bb Now compiles and installs.=C2=A0 It is fails do_=
package QA.icestorm: 32 installed and not shipped files. [installed-vs-ship=
ped] in /usr/local/bin & /usr/local/shareI have tried FILES_${PN} +=3D "DES=
TDIR${D}/*"
PACKAGE_BEFORE_PN =3D "info"FILES_${PN}-info =3D "Info.plist"None help.


Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_8882700_778487773.1576348310834
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp57681d4byahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div><div dir=3D"ltr" data-setdir=3D"false"><div><div>Hi&nbsp;</div><div=
>Any help is appreciated. Thanks in advance.</div><div><br></div><div>Progr=
ess in 2 of the 4 recipes.&nbsp;&nbsp;</div><div><br></div><div>The recipe =
yosys_0.1.bb creates 3 executeable programs, bash script, and Python script=
.</div><div>The do_install is reporting the following error.</div><div>ERRO=
R: Task (/home/vidal/wkg/yocto-zeus-3.0/rpi4-64/poky/meta-yosys-tools/recip=
es-yosys/yosys/yosys_0.1.bb:do_install) failed with exit code '1'</div><div=
>NOTE: Tasks Summary: Attempted 1614 tasks of which 1606 didn't need to be =
rerun and 1 failed.</div><div><br></div><div>Summary: 1 task failed:</div><=
div>&nbsp; /home/vidal/wkg/yocto-zeus-3.0/rpi4-64/poky/meta-yosys-tools/rec=
ipes-yosys/yosys/yosys_0.1.bb:do_install</div><div>Summary: There was 1 WAR=
NING message shown.</div><div>Summary: There were 2 ERROR messages shown, r=
eturning a non-zero exit code.</div><div><br></div><div>I checked the files=
, using the file command, these are the results.</div><div>file tmp/work/aa=
rch64-poky-linux/yosys/0.1+gitAUTOINC+e275692e84-r0/image/usr/local/bin/yos=
ys*</div><div>tmp/work/aarch64-poky-linux/yosys/0.1+gitAUTOINC+e275692e84-r=
0/image/usr/local/bin/yosys:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ELF 64=
-bit LSB executable, x86-64, version 1 (GNU/Linux), dynamically linked, int=
erpreter /lib64/l, for GNU/Linux 2.6.32, BuildID[sha1]=3D59eddedb17cdb807f9=
122ccd6339376c152f3d26, not stripped</div><div>tmp/work/aarch64-poky-linux/=
yosys/0.1+gitAUTOINC+e275692e84-r0/image/usr/local/bin/yosys-abc:&nbsp; &nb=
sp; &nbsp; &nbsp;ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), =
dynamically linked, interpreter /lib64/l, for GNU/Linux 2.6.32, BuildID[sha=
1]=3D8330a22bba177391314a2ab237a7c5486077dc66, not stripped</div><div>tmp/w=
ork/aarch64-poky-linux/yosys/0.1+gitAUTOINC+e275692e84-r0/image/usr/local/b=
in/yosys-config:&nbsp; &nbsp; Bourne-Again shell script, ASCII text executa=
ble, with very long lines</div><div>tmp/work/aarch64-poky-linux/yosys/0.1+g=
itAUTOINC+e275692e84-r0/image/usr/local/bin/yosys-filterlib: ELF 64-bit LSB=
 executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib=
64/l, for GNU/Linux 2.6.32, BuildID[sha1]=3Df1c039944fa7a78fda555629b062466=
214eb7c7c, not stripped</div><div>tmp/work/aarch64-poky-linux/yosys/0.1+git=
AUTOINC+e275692e84-r0/image/usr/local/bin/yosys-smtbmc:&nbsp; &nbsp; Python=
 script, ASCII text executable</div><div>rpi4-64</div><div><br></div><div>T=
he recipe icestorm_0.1.bb Now compiles and installs.&nbsp; It is fails do_p=
ackage QA.</div><div>icestorm: 32 installed and not shipped files. [install=
ed-vs-shipped] in /usr/local/bin &amp; /usr/local/share</div><div>I have tr=
ied FILES_${PN} +=3D "DESTDIR${D}/*"</div><div><br></div><div>PACKAGE_BEFOR=
E_PN =3D "info"</div><div>FILES_${PN}-info =3D "Info.plist"</div><div>None =
help.</div><div><br></div></div><br></div><div><br></div><div class=3D"ydp5=
7681d4bsignature">Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-16=
13</div></div></div></body></html>

------=_Part_8882700_778487773.1576348310834--
