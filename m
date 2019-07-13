Return-Path: <madhukanthk@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C33AEE00C02; Sat, 13 Jul 2019 12:33:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (madhukanthk[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [98.137.68.206 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic304-25.consmr.mail.gq1.yahoo.com
	(sonic304-25.consmr.mail.gq1.yahoo.com [98.137.68.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF33BE00736
	for <yocto@yoctoproject.org>; Sat, 13 Jul 2019 12:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1563046394; bh=ZrfEjKi1tm7if+79EEOUe6hnUCihuHND1TqBM5na6ZI=;
	h=Date:From:To:Subject:References:From:Subject;
	b=fY3z7+Wc9hrfDoy+8HBPH64i+E/1pkx5X9wma8ytmwdfsfrd3oKCAHsCSihYXaU8HFLjmjjzvs+79ql4EiF8al0j1ee893vz1M5AUwe7Ds6g6hHvXz7LK/VzvWlNR0oX0TtX8UzMeUlv50SoEqR9OdeYjAdr+6E0b80wsZBj1z8dPnv4ymG7uNkikSf2ZEG76seqvhF8Y3Gsyz76136mB6ORL5DxDUnp/3wzaeDG0jurqxnbTYtV4hzHXM9d/51F32P/QMFGV3z1gHzObvJ53BgU6ZJdqHHtgSOKBKIXzTyc9shmIj/LCTFp9VjydJULRxwNJTDhoIZYOYQgXvgkoQ==
X-YMail-OSG: 1VqVS8gVM1nqfeQXHT.o.A27QFCV1oN4N1GyhOMbnwcHEx3RxG3qVsLbWHOdJ0A
	WHSA1AV_XVvU0CPjT0yDEzJgKyM8njBcjbmD7gkH_98egdPTBA8RLUaZ1YcFwo_kdyikx7DVklqD
	9Gew2OG8iZPmw3Om7ORAex9M1omsFBHg_dMea1f6d8nhGv_9OlQyfpm3rvB65Yp8Jgc4OMhkWCrY
	Fzc26kyXoMF85fq.YwncU1itOH8q6FNbOoVlYUer1hiu8a27.kyvaITY3MHfGIgZqkDPOm7jLBfF
	AL4yGVXafVPln_vVDDPnOS8RoTdme_JQjnzxdY4a1gdVFq3GZoeId1.Ui6K.Y_lJA.hoQMhfxKij
	ECtYHBaxz2GPyApEqoF5AGU39cGVaYFhEhsUExycD753LCbElZxaCa_6b488sVLEcPH.cYQYSsx6
	0EYFQ1bRn5PsdKNgDCX3qhu_lEK4v7BKBVAD9pDQ3UJe6mfjA8Y7jMzpDsADbEyPr3iz5WpHGXFI
	8ktuHCnV0y.0qTLjpek4i8AUMwwJybRRL1k4nwsJ62fEW0tPovztoDw1bIlizXVmWMDccsb_PYUh
	_wZ9sK3h69F8NHqpusoBZqHpNLFShmNL8hgWDMD_2E0Idseu03V25N4zDSMv6XpR9FX.Rd2noY_9
	43NrSoFOHtEblnoQcdBasnIDrDhnHS7vCICg4r3_K_7ZcfxnPYJb1lx1vdcksAxwsrEGGKLEtmoL
	faCWQCDMtsW432rSrkrxQN.S8DI4FuAMvnUbMIS_f7GKKlYVifk9_rPesISmyggmb67W1_CQKvdA
	7V_EWDfboqdSeUZCoS2Mf1he2sAURDBK8Rr52kURhCUWHf5MGWtcogPtCaMLqJ4INBNpKO0bNNuc
	R3Mn4vzU8NGTdsF7R6XR25ZMumJZGLmwlf5Ox3aHaMvYty0zKeoEX81kGPJKMQGXJ97Vh1y7GtsU
	BX5VcWXrq5K1vPiK3T9.xlpaU1ceE_CYex_hlB4KzQfWCBb45bfnyrRbemFiobCo0f297Oiae06D
	Tqv7Fyl_2WAUVzoKA1PGUSyYxHdgg6GN2hFuSWAIrrej16ztgdienkjzWWY_E7v_mFEuug7oO37D
	N2eigYsiuVPOMpT3G0Ld7o3HXybXgDUujFEJhBgjl5pQ6TEUSlM2htqEHMriF7hjxGzZEiWO_593
	4d0Ac4._RGjb4SoSOZ2p0bUhgl_cWrWGgRnXA7cN8EYVlcn21Nw--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic304.consmr.mail.gq1.yahoo.com with HTTP;
	Sat, 13 Jul 2019 19:33:14 +0000
Date: Sat, 13 Jul 2019 19:33:07 +0000 (UTC)
From: Madhu Krishnamurthy <madhukanthk@yahoo.com>
To: Yocto Discussion List <yocto@yoctoproject.org>
Message-ID: <1200227794.879484.1563046387364@mail.yahoo.com>
MIME-Version: 1.0
References: <1200227794.879484.1563046387364.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.13991 YMailNorrin Mozilla/5.0 (Windows NT 10.0;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100
	Safari/537.36
X-Mailman-Approved-At: Mon, 22 Jul 2019 13:12:26 -0700
Subject: No GNU_HASH in the elf binary
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
X-List-Received-Date: Sat, 13 Jul 2019 19:33:15 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_879483_1938242192.1563046387362"

------=_Part_879483_1938242192.1563046387362
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,I am trying to package an already built binary executable called mlc =
(memory latency checker) to yocto and I get this error.=C2=A0
ERROR: mem-tst-0.1 do_package: QA Issue: File '/usr/local/flex_pkgs/diags/m=
lc' from mem was already stripped, this will prevent future debugging! [alr=
eady-stripped]ERROR: mem-tst-0.1 do_package: Fatal QA errors found, failing=
 task.ERROR: mem-tst-0.1 do_package: Function failed: do_packageERROR: Logf=
ile of failure stored in: /home/cluser/ac/z_cpu/build/tmp/work/corei7-64-po=
ky-linux/mem/tst-0.1/temp/log.do_package.27614ERROR: Task (/home/cluser/ac/=
z_cpu/poky/../meta-flex/meta-z/recipes-utils/mem/mem_tst_0.1.bb:do_package)=
 failed with exit code '1'NOTE: Tasks Summary: Attempted 458 tasks of which=
 457 didn't need to be rerun and 1 failed.
I googled and found that I need to add this
INSANE_SKIP_mlc =3D "ldflags"INSANE_SKIP_mlc-dev =3D "ldflags"INHIBIT_PACKA=
GE_DEBUG_SPLIT =3D "1"INHIBIT_PACKAGE_STRIP =3D "1"
But after adding that I still get this error.=C2=A0ERROR: mem-tst-0.1 do_pa=
ckage_qa: QA Issue: No GNU_HASH in the elf binary: '/home/cluser/ac/z_cpu/b=
uild/tmp/work/corei7-64-poky-linux/mem/tst-0.1/packages-split/mem/usr/local=
/flex_pkgs/diags/mlc' [ldflags]=C2=A0Appreciate any help.
Thanks and regardsMadhu
(more log details)NOTE: Executing RunQueue TasksNOTE: mem-tst-0.1 do_packag=
e_qa: Direct dependencies are ['virtual:native:/home/cluser/ac/z_cpu/poky/m=
eta/recipes-devtools/pseudo/pseudo_1.8.2.bb:do_populate_sysroot', '/home/cl=
user/ac/z_cpu/poky/meta/recipes-devtools/binutils/binutils-cross_2.29.bb:do=
_populate_sysroot']NOTE: mem-tst-0.1 do_package_qa: Installed into sysroot:=
 []NOTE: mem-tst-0.1 do_package_qa: Skipping as already exists in sysroot: =
['pseudo-native', 'binutils-cross-x86_64', 'gnu-config-native', 'bison-nati=
ve', 'flex-native', 'texinfo-dummy-native', 'autoconf-native', 'quilt-nativ=
e', 'zlib-native', 'gettext-minimal-native', 'automake-native', 'xz-native'=
, 'libtool-native', 'm4-native']NOTE: mem-tst-0.1 do_package_qa: DO PACKAGE=
 QANOTE: mem-tst-0.1 do_package_qa: Checking Package: memNOTE: mem-tst-0.1 =
do_package_qa: x86_64-poky-linux-objdump -p /home/cluser/ac/z_cpu/build/tmp=
/work/corei7-64-poky-linux/mem/tst-0.1/packages-split/mem/usr/local/flex_pk=
gs/diags/mlcERROR: mem-tst-0.1 do_package_qa: QA Issue: No GNU_HASH in the =
elf binary: '/home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/=
tst-0.1/packages-split/mem/usr/local/flex_pkgs/diags/mlc' [ldflags]NOTE: me=
m-tst-0.1 do_package_qa: Checking Package: mem-staticdevNOTE: mem-tst-0.1 d=
o_package_qa: Checking Package: mem-localeNOTE: mem-tst-0.1 do_package_qa: =
Checking Package: mem-docNOTE: mem-tst-0.1 do_package_qa: Checking Package:=
 mem-dbgNOTE: mem-tst-0.1 do_package_qa: Checking Package: mem-devERROR: me=
m-tst-0.1 do_package_qa: QA run found fatal errors. Please consider fixing =
them.ERROR: mem-tst-0.1 do_package_qa: Function failed: do_package_qaERROR:=
 Logfile of failure stored in: /home/cluser/ac/z_cpu/build/tmp/work/corei7-=
64-poky-linux/mem/tst-0.1/temp/log.do_package_qa.25300ERROR: Task (/home/cl=
user/ac/z_cpu/poky/../meta-flex/meta-z/recipes-utils/mem/mem_tst_0.1.bb:do_=
package_qa) failed with exit code '1'NOTE: Tasks Summary: Attempted 461 tas=
ks of which 460 didn't need to be rerun and 1 failed.
Summary: 1 task failed:=C2=A0 /home/cluser/ac/z_cpu/poky/../meta-flex/meta-=
z/recipes-utils/mem/mem_tst_0.1.bb:do_package_qa


------=_Part_879483_1938242192.1563046387362
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir=
=3D"ltr" data-setdir=3D"false"><div dir=3D"ltr" data-setdir=3D"false"><div>=
<div dir=3D"ltr" data-setdir=3D"false">Hello,</div><div dir=3D"ltr" data-se=
tdir=3D"false">I am trying to package an already built binary executable ca=
lled mlc (memory latency checker) to yocto and I get this error.&nbsp;</div=
><div><br></div><div><font color=3D"#cd232c">ERROR: mem-tst-0.1 do_package:=
 QA Issue: File '/usr/local/flex_pkgs/diags/mlc' from mem was already strip=
ped, this will prevent future debugging! [already-stripped]</font></div><di=
v><font color=3D"#cd232c">ERROR: mem-tst-0.1 do_package: Fatal QA errors fo=
und, failing task.</font></div><div><font color=3D"#cd232c">ERROR: mem-tst-=
0.1 do_package: Function failed: do_package</font></div><div><font color=3D=
"#cd232c">ERROR: Logfile of failure stored in: /home/cluser/ac/z_cpu/build/=
tmp/work/corei7-64-poky-linux/mem/tst-0.1/temp/log.do_package.27614</font><=
/div><div><font color=3D"#cd232c">ERROR: Task (/home/cluser/ac/z_cpu/poky/.=
./meta-flex/meta-z/recipes-utils/mem/mem_tst_0.1.bb:do_package) failed with=
 exit</font> code '1'</div><div>NOTE: Tasks Summary: Attempted 458 tasks of=
 which 457 didn't need to be rerun and 1 failed.</div><div><br></div><div>I=
 googled and found that I need to add this</div><div><br></div><div><b>INSA=
NE_SKIP_mlc =3D "ldflags"</b></div><div><b>INSANE_SKIP_mlc-dev =3D "ldflags=
"</b></div><div><b>INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"</b></div><div><b>INH=
IBIT_PACKAGE_STRIP =3D "1"</b></div><div><br></div><div>But after adding th=
at I still get this error.&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false=
"><span><b style=3D"color: rgb(205, 35, 44); font-family: &quot;Helvetica N=
eue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">ERROR: mem-tst-0=
.1 do_package_qa: QA Issue: No GNU_HASH in the elf binary: '/home/cluser/ac=
/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/packages-split/mem/u=
sr/local/flex_pkgs/diags/mlc' [ldflags]</b></span></div><div dir=3D"ltr" da=
ta-setdir=3D"false">&nbsp;</div><div dir=3D"ltr" data-setdir=3D"false">Appr=
eciate any help.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div=
>Thanks and regards</div><div>Madhu</div><div><br></div><div dir=3D"ltr" da=
ta-setdir=3D"false">(more log details)</div><div>NOTE: Executing RunQueue T=
asks</div><div>NOTE: mem-tst-0.1 do_package_qa: Direct dependencies are ['v=
irtual:native:/home/cluser/ac/z_cpu/poky/meta/recipes-devtools/pseudo/pseud=
o_1.8.2.bb:do_populate_sysroot', '/home/cluser/ac/z_cpu/poky/meta/recipes-d=
evtools/binutils/binutils-cross_2.29.bb:do_populate_sysroot']</div><div>NOT=
E: mem-tst-0.1 do_package_qa: Installed into sysroot: []</div><div>NOTE: me=
m-tst-0.1 do_package_qa: Skipping as already exists in sysroot: ['pseudo-na=
tive', 'binutils-cross-x86_64', 'gnu-config-native', 'bison-native', 'flex-=
native', 'texinfo-dummy-native', 'autoconf-native', 'quilt-native', 'zlib-n=
ative', 'gettext-minimal-native', 'automake-native', 'xz-native', 'libtool-=
native', 'm4-native']</div><div>NOTE: mem-tst-0.1 do_package_qa: DO PACKAGE=
 QA</div><div>NOTE: mem-tst-0.1 do_package_qa: Checking Package: mem</div><=
div>NOTE: mem-tst-0.1 do_package_qa: x86_64-poky-linux-objdump -p /home/clu=
ser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/packages-split=
/mem/usr/local/flex_pkgs/diags/mlc</div><div><font color=3D"#cd232c"><b>ERR=
OR: mem-tst-0.1 do_package_qa: QA Issue: No GNU_HASH in the elf binary: '/h=
ome/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/package=
s-split/mem/usr/local/flex_pkgs/diags/mlc' [ldflags]</b></font></div><div>N=
OTE: mem-tst-0.1 do_package_qa: Checking Package: mem-staticdev</div><div>N=
OTE: mem-tst-0.1 do_package_qa: Checking Package: mem-locale</div><div>NOTE=
: mem-tst-0.1 do_package_qa: Checking Package: mem-doc</div><div>NOTE: mem-=
tst-0.1 do_package_qa: Checking Package: mem-dbg</div><div>NOTE: mem-tst-0.=
1 do_package_qa: Checking Package: mem-dev</div><div><font color=3D"#cd232c=
"><b>ERROR: mem-tst-0.1 do_package_qa: QA run found fatal errors. Please co=
nsider fixing them.</b></font></div><div><font color=3D"#cd232c"><b>ERROR: =
mem-tst-0.1 do_package_qa: Function failed: do_package_qa</b></font></div><=
div><font color=3D"#cd232c"><b>ERROR: Logfile of failure stored in: /home/c=
luser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/temp/log.do_=
package_qa.25300</b></font></div><div><font color=3D"#cd232c"><b>ERROR: Tas=
k (/home/cluser/ac/z_cpu/poky/../meta-flex/meta-z/recipes-utils/mem/mem_tst=
_0.1.bb:do_package_qa) failed with exit code '1'</b></font></div><div>NOTE:=
 Tasks Summary: Attempted 461 tasks of which 460 didn't need to be rerun an=
d 1 failed.</div><div><br></div><div>Summary: 1 task failed:</div><div>&nbs=
p; /home/cluser/ac/z_cpu/poky/../meta-flex/meta-z/recipes-utils/mem/mem_tst=
_0.1.bb:do_package_qa</div><div><br></div></div><br></div></div></div></bod=
y></html>

------=_Part_879483_1938242192.1563046387362--
