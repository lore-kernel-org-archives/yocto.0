Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 737B8E00B18; Thu, 30 Jul 2015 12:08:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm21-vm4.bullet.mail.ne1.yahoo.com
	(nm21-vm4.bullet.mail.ne1.yahoo.com [98.138.91.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF157E00A6C
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 12:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1438283316; bh=AlUUja53N6mVaRKT3k2cN8BvhhfqQGG6pfB5HAMLutI=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=n/W0zu0d2fay+KF0K3kpvHEhgnWC3GHrnNfcVqJi+zALKK+8LnMH44j7aqcLULZdsJNXsQrNH82X68pb/pb2e7tQ4d2+pqOEMTQj7Y+BU7ZCE+7m5brIK67WPD3IQim42IyrRwJlw3fa9MIDc2HQk90XruvQR/D0puMkVDXD3dk2kxaf3EJf6lVusbBUTQIzJyIcZIYw9QoD2XxzrAvyscxpYj6zdk47dyhRf9gYAD3flYaxdDuvT1GYZZjufzk4kbl7q3YWPrwi85E0u7OknhoknhZa1euqjwiS9/OFAwp7zIZfgmS36GmOnd5m5GI51ouH221U3JP8b6r+EJ3jVA==
Received: from [98.138.226.177] by nm21.bullet.mail.ne1.yahoo.com with NNFMP;
	30 Jul 2015 19:08:36 -0000
Received: from [98.138.89.246] by tm12.bullet.mail.ne1.yahoo.com with NNFMP;
	30 Jul 2015 19:08:36 -0000
Received: from [127.0.0.1] by omp1060.mail.ne1.yahoo.com with NNFMP;
	30 Jul 2015 19:08:36 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 157701.26766.bm@omp1060.mail.ne1.yahoo.com
X-YMail-OSG: ZOqvaLgVM1l7tZAiiOc6TRSP2wpuCykGgmjpEWVaXiEn_yDhihx1_CaSZNb85FU
	LIuDuMivNYrAUKRzigJbb1RwtbtTuX.fi9CluL8ZVggi9uncheWCcYbpHzy2Nln266Ufv1hgkNcX
	UOoB7griSD76uiphvufVRT0FS4yzqCSTSfDD1ieWCp2TpOCvvsigIfYiV2Len46PuwNTUlQDBmqn
	jEwwgWoCEzjgTExNKDBIFJ5UkbKaoOtTS7YDFcdflFW_q36jfVJQ9kutBYXntm4D_DscKkjFUd_G
	wFLYmpUHusZWYp7jmZUdJ2p_9BOYUvyvE05P4b5Cgl5t4Vj2h0UIJtOkSEemdIAnptIER8JnKkGV
	gScokeTmwTEI7f.UyzJfGEKlAYP5UlfP4QXBwPUdW3EQTKPPeCctgiqIJr3pxteuDhOpDTXf_Zzn
	E_CTqoD5WsRkWv9rd_E0LFW_eeecF9syP5JDe6dVSA5wzDT3iSpc7G27avAHTz1ulB408YjiiGuO
	3nO8AZWnkK2zvHv.E6.wcejPdr1TgJ1Ng3M_iVcIo70WBcfz2fgPWUcFmLXCRvSc-
Received: by 98.138.105.224; Thu, 30 Jul 2015 19:08:35 +0000 
Date: Thu, 30 Jul 2015 19:08:20 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <2129998261.5367168.1438283300331.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: recipe md5sum and sha256sum changing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 30 Jul 2015 19:08:40 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_5367167_931485845.1438283300328"

------=_Part_5367167_931485845.1438283300328
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,
I used the following to create a recipe.

=C2=A0recipetool create=C2=A0 -o /home/vidal/wkg/yocto/myhdl_recipe/poky/me=
ta/recipes-devtools/python/python-myhdl_1.0.0.bb=C2=A0 https://github.com/j=
andecaluwe/myhdl.git

This provided the following:
LICENSE =3D "CLOSED"
LIC_FILES_CHKSUM =3D ""

SRC_URI =3D "https://github.com/jandecaluwe/myhdl.git"
SRC_URI[md5sum] =3D "6f56a9bcbd03a9c8036f87f32f9adc47"
SRC_URI[sha256sum] =3D "7766c49947c6574c8fb35d0dfcd795ada1e4e457ab5b15499d7=
000909b8e46e9"

When I run bitbake python-mydhl
the md5sum and sha256sum change everytime I run the command.

WARNING: Renaming /home/vidal/wkg/yocto/myhdl_recipe/poky/build/downloads/m=
yhdl.git to /home/vidal/wkg/yocto/myhdl_recipe/poky/build/downloads/myhdl.g=
it_bad-checksum_a4b1db68cde5b996661caa6abce2cb45
ERROR: Fetcher failure for URL: 'https://github.com/jandecaluwe/myhdl.git'.=
 Checksum mismatch!
File: '/home/vidal/wkg/yocto/myhdl_recipe/poky/build/downloads/myhdl.git' h=
as md5 checksum a4b1db68cde5b996661caa6abce2cb45 when 6f56a9bcbd03a9c8036f8=
7f32f9adc47 was expected
File: '/home/vidal/wkg/yocto/myhdl_recipe/poky/build/downloads/myhdl.git' h=
as sha256 checksum dc35dc44e0a480097eb1c4dd3df739396e96c8d7648bd9b9d347d02d=
34bbcd01 when 7766c49947c6574c8fb35d0dfcd795ada1e4e457ab5b15499d7000909b8e4=
6e9 was expected
If this change is expected (e.g. you have upgraded to a new version without=
 updating the checksums) then you can use these lines within the recipe:
SRC_URI[md5sum] =3D "a4b1db68cde5b996661caa6abce2cb45"
SRC_URI[sha256sum] =3D "dc35dc44e0a480097eb1c4dd3df739396e96c8d7648bd9b9d34=
7d02d34bbcd01"
Otherwise you should retry the download and/or check with upstream to deter=
mine if the file has become corrupted or otherwise unexpectedly modified.

ERROR: Function failed: Fetcher failure for URL: 'https://github.com/jandec=
aluwe/myhdl.git'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/vidal/wkg/yocto/myhdl_recipe/pok=
y/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/python-myhdl/=
1.0.0-r0/temp/log.do_fetch.6277
ERROR: Task 4 (/home/vidal/wkg/yocto/myhdl_recipe/poky/meta/recipes-devtool=
s/python/python-myhdl_1.0.0.bb, do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 421 tasks of which 413 didn't need to be rer=
un and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
=C2=A0 /home/vidal/wkg/yocto/myhdl_recipe/poky/meta/recipes-devtools/python=
/python-myhdl_1.0.0.bb, do_fetch
Summary: There were 3 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

Thanks in advance=C2=A0Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613

------=_Part_5367167_931485845.1438283300328
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_1438267597908_21288"><spa=
n>Hello All,<br class=3D"">I used the following to create a recipe.<br clas=
s=3D""><br class=3D"">&nbsp;recipetool create&nbsp; -o /home/vidal/wkg/yoct=
o/myhdl_recipe/poky/meta/recipes-devtools/python/python-myhdl_1.0.0.bb&nbsp=
; https://github.com/jandecaluwe/myhdl.git<br class=3D""><br class=3D"">Thi=
s provided the following:<br class=3D"">LICENSE =3D "CLOSED"<br class=3D"">=
LIC_FILES_CHKSUM =3D ""<br class=3D""><br class=3D"">SRC_URI =3D "https://g=
ithub.com/jandecaluwe/myhdl.git"<br class=3D"">SRC_URI[md5sum] =3D "6f56a9b=
cbd03a9c8036f87f32f9adc47"<br class=3D"">SRC_URI[sha256sum] =3D "7766c49947=
c6574c8fb35d0dfcd795ada1e4e457ab5b15499d7000909b8e46e9"<br class=3D""><br c=
lass=3D"">When I run bitbake python-mydhl<br class=3D"">the md5sum and sha2=
56sum change everytime I run the command.<br class=3D""><br class=3D"">WARN=
ING: Renaming /home/vidal/wkg/yocto/myhdl_recipe/poky/build/downloads/myhdl=
.git to /home/vidal/wkg/yocto/myhdl_recipe/poky/build/downloads/myhdl.git_b=
ad-checksum_a4b1db68cde5b996661caa6abce2cb45<br class=3D"">ERROR: Fetcher f=
ailure for URL: 'https://github.com/jandecaluwe/myhdl.git'. Checksum mismat=
ch!<br class=3D"">File: '/home/vidal/wkg/yocto/myhdl_recipe/poky/build/down=
loads/myhdl.git' has md5 checksum a4b1db68cde5b996661caa6abce2cb45 when 6f5=
6a9bcbd03a9c8036f87f32f9adc47 was expected<br class=3D"">File: '/home/vidal=
/wkg/yocto/myhdl_recipe/poky/build/downloads/myhdl.git' has sha256 checksum=
 dc35dc44e0a480097eb1c4dd3df739396e96c8d7648bd9b9d347d02d34bbcd01 when 7766=
c49947c6574c8fb35d0dfcd795ada1e4e457ab5b15499d7000909b8e46e9 was expected<b=
r class=3D"">If this change is expected (e.g. you have upgraded to a new ve=
rsion without updating the checksums) then you can use these lines within t=
he recipe:<br class=3D"">SRC_URI[md5sum] =3D "a4b1db68cde5b996661caa6abce2c=
b45"<br class=3D"">SRC_URI[sha256sum] =3D "dc35dc44e0a480097eb1c4dd3df73939=
6e96c8d7648bd9b9d347d02d34bbcd01"<br class=3D"">Otherwise you should retry =
the download and/or check with upstream to determine if the file has become=
 corrupted or otherwise unexpectedly modified.<br class=3D""><br class=3D""=
>ERROR: Function failed: Fetcher failure for URL: 'https://github.com/jande=
caluwe/myhdl.git'. Unable to fetch URL from any source.<br class=3D"">ERROR=
: Logfile of failure stored in: /home/vidal/wkg/yocto/myhdl_recipe/poky/bui=
ld/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/python-myhdl/1.0.0=
-r0/temp/log.do_fetch.6277<br class=3D"">ERROR: Task 4 (/home/vidal/wkg/yoc=
to/myhdl_recipe/poky/meta/recipes-devtools/python/python-myhdl_1.0.0.bb, do=
_fetch) failed with exit code '1'<br class=3D"">NOTE: Tasks Summary: Attemp=
ted 421 tasks of which 413 didn't need to be rerun and 1 failed.<br class=
=3D"">Waiting for 0 running tasks to finish:<br class=3D""><br class=3D"">S=
ummary: 1 task failed:<br class=3D"">&nbsp; /home/vidal/wkg/yocto/myhdl_rec=
ipe/poky/meta/recipes-devtools/python/python-myhdl_1.0.0.bb, do_fetch<br cl=
ass=3D"">Summary: There were 3 WARNING messages shown.<br class=3D"">Summar=
y: There were 2 ERROR messages shown, returning a non-zero exit code.<br cl=
ass=3D""><br class=3D"">Thanks in advance</span></div><div>&nbsp;</div><div=
><div>Edward Vidal Jr.<br>e-mail develone@sbcglobal.net<br>915-595-1613</di=
v></div></div></body></html>

------=_Part_5367167_931485845.1438283300328--
