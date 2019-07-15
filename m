Return-Path: <madhukanthk@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13813E00D36; Sun, 14 Jul 2019 23:42:32 -0700 (PDT)
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
	*      [98.137.64.30 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic307-54.consmr.mail.gq1.yahoo.com
	(sonic307-54.consmr.mail.gq1.yahoo.com [98.137.64.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14CE2E008A4
	for <yocto@yoctoproject.org>; Sun, 14 Jul 2019 23:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1563172950; bh=ZXq8BhBjL3zydtBTaFUn9EjbflXGa+GpymE1LDAqF80=;
	h=Date:From:To:Subject:References:From:Subject;
	b=hY3MFPGNdr6HHq+U2Vzj8+oJWMsf1deAcDty19DBpaD5hjs2QhXgu4L9JblKpiS03F6hLV/STRV6ET60IEwyp8rTWTQ26NmdXCyBYbXMrwId9Ga9/egbYSZnib3UBtj38Wf+fYw05+7VSa3ZkLjh4SKs0XeoVEris7ixk5W3bThS+C03F6+fC6Mq8VaoHsjSG+FPjbjSmdhBKbi/tiZu0/7wkwD/xYakynQ6XYP5vVESA0HFBLTFeaePP0HdPv3wwPWxYdQIjmGMimvfgNpEQ8qWdQw3GDHyk8gfWqwPpk11heGCQ7GYmvh8yOin9Haaa5q3HAIc/p2beNLBPITFrQ==
X-YMail-OSG: PMZvuLkVM1k2shOvvgAd04OOuwl1OgZj8mmd.cxbjAY2S0H3PR1xIuC3OP9j88W
	vrfJW9DHFyvVtj3mcs6GAOQfL.nEtfZXplfisr1lo78vmzsnwI6Vy2I.JT5L9r_osdJzsoTTacUP
	YZicVVgpQDD6q99FWHpm2HqFSO_wtpotuxm5nq2cV8UOCr7YuHGKRM9AqLVh0oXsFrecY.ixpzJW
	cpH8ESOP4kM7feAV5L.U29JmMWCIQQFTLYWAbfRnXf0.iGV8EUJU6pHKXRYkjgdi4e_b45RoR_2Q
	aiOSsEOT6J_KgA6C_fA1cCEqmeY79h3aDrzg8PE0zvp9Y5T.0SY6iVkIwC.cl9ldaKFY5FS89hmc
	be8t9ek1imjEzGfVNt0WkPhtry1Aa4.5d9_bOheDPRjPW7vAGwOkEtWTcG8I0xErd1CvEJJdUWsb
	cRjNDkeOKnZibN.I3WWUrOPPcNzGSKDuTyKi_YNQhngsKBEE_Ywql6G9qftRlVQNbWLCZwtVd5uw
	Q16DlcFEMZ8Q.23ML1MvhUB1XfJuWiQEXonsQw4ed.L_wy92JPUxFx9Fv2LEcKUAU.UKbvMS.vFv
	cAk1gSCvp.hcpZJgo6MnWSMoUgf0AVj3bJTlicmUdCLYGJKSKaj07jWkaOliPdnkr9K3tXGQbeQx
	EjOa.JrUEK1LB4r3KYRUYa7x.pYFFdkleNMHsL9G5GCdaKfROdCYlzU6cM3BHHIskLLswkxFt9rS
	3Kl00_d1HS_VNfyFuZ1DNPUJcwooiQfpop3_zAckx6frrCm9v16hbVIeO.WvScodLmyhdBzRKBvf
	Xh6QHWWQaweVnnW.xHHJTHYF0Xc7MKFvA_hnj9PHXGapn6h_EZAfblewht4Eh.S2R0anpN1p_OtP
	XL0XiE965m.PdKYYemJqXmoXarBP27ilcfNNK8oxreswANz0Rh64VLVomkhGJIa2HOTUqCuF1t3G
	OOA7FXLmTEUqDFRDT5sUtDjQdGcp9EgGB7DDReVCUA4svG33gm9IEOW93lpmgQzbqz4H4vEzfoEd
	xfgbWw4MfX2v9JMhsLEcwjzl7DMstsjhULwLF68b5KSESlegu54aRv9NpGZKQHO7h9XmcdPHFEVa
	uZUsKvsC085gHQwh3UX5kAdct5gcejOoe3fJjAipRFzPpQgYhHK1_Fh.JiT4b.CFD11lUN2Yhp97
	vcHOXhBclrxv1AFA.eH1xIMJp_N4Y0MScmIWdGa2Zh4H_9_3Cow5GzheO
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic307.consmr.mail.gq1.yahoo.com with HTTP;
	Mon, 15 Jul 2019 06:42:30 +0000
Date: Mon, 15 Jul 2019 06:42:25 +0000 (UTC)
From: Madhu Krishnamurthy <madhukanthk@yahoo.com>
To: Yocto Discussion List <yocto@yoctoproject.org>
Message-ID: <1600236519.1269258.1563172945935@mail.yahoo.com>
MIME-Version: 1.0
References: <1600236519.1269258.1563172945935.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.13991 YMailNorrin Mozilla/5.0 (Windows NT 10.0;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100
	Safari/537.36
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
X-List-Received-Date: Mon, 15 Jul 2019 06:42:32 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1269257_1211866766.1563172945933"

------=_Part_1269257_1211866766.1563172945933
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
 failed with exit=C2=A0code '1'NOTE: Tasks Summary: Attempted 458 tasks of =
which 457 didn't need to be rerun and 1 failed.
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


------=_Part_1269257_1211866766.1563172945933
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir=
=3D"ltr" data-setdir=3D"false"><div><div dir=3D"ltr" style=3D"font-family: =
&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"=
>Hello,</div><div dir=3D"ltr" style=3D"font-family: &quot;Helvetica Neue&qu=
ot;, Helvetica, Arial, sans-serif; font-size: 16px;">I am trying to package=
 an already built binary executable called mlc (memory latency checker) to =
yocto and I get this error.&nbsp;</div><div style=3D"font-family: &quot;Hel=
vetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><br></di=
v><div style=3D"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, =
sans-serif; font-size: 16px;"><font color=3D"#cd232c">ERROR: mem-tst-0.1 do=
_package: QA Issue: File '/usr/local/flex_pkgs/diags/mlc' from mem was alre=
ady stripped, this will prevent future debugging! [already-stripped]</font>=
</div><div style=3D"font-family: &quot;Helvetica Neue&quot;, Helvetica, Ari=
al, sans-serif; font-size: 16px;"><font color=3D"#cd232c">ERROR: mem-tst-0.=
1 do_package: Fatal QA errors found, failing task.</font></div><div style=
=3D"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; =
font-size: 16px;"><font color=3D"#cd232c">ERROR: mem-tst-0.1 do_package: Fu=
nction failed: do_package</font></div><div style=3D"font-family: &quot;Helv=
etica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><font col=
or=3D"#cd232c">ERROR: Logfile of failure stored in: /home/cluser/ac/z_cpu/b=
uild/tmp/work/corei7-64-poky-linux/mem/tst-0.1/temp/log.do_package.27614</f=
ont></div><div style=3D"font-family: &quot;Helvetica Neue&quot;, Helvetica,=
 Arial, sans-serif; font-size: 16px;"><font color=3D"#cd232c">ERROR: Task (=
/home/cluser/ac/z_cpu/poky/../meta-flex/meta-z/recipes-utils/mem/mem_tst_0.=
1.bb:do_package) failed with exit</font>&nbsp;code '1'</div><div style=3D"f=
ont-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-=
size: 16px;">NOTE: Tasks Summary: Attempted 458 tasks of which 457 didn't n=
eed to be rerun and 1 failed.</div><div style=3D"font-family: &quot;Helveti=
ca Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><br></div><d=
iv style=3D"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans=
-serif; font-size: 16px;">I googled and found that I need to add this</div>=
<div style=3D"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sa=
ns-serif; font-size: 16px;"><br></div><div style=3D"font-family: &quot;Helv=
etica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><b>INSANE=
_SKIP_mlc =3D "ldflags"</b></div><div style=3D"font-family: &quot;Helvetica=
 Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><b>INSANE_SKIP=
_mlc-dev =3D "ldflags"</b></div><div style=3D"font-family: &quot;Helvetica =
Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><b>INHIBIT_PACK=
AGE_DEBUG_SPLIT =3D "1"</b></div><div style=3D"font-family: &quot;Helvetica=
 Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><b>INHIBIT_PAC=
KAGE_STRIP =3D "1"</b></div><div style=3D"font-family: &quot;Helvetica Neue=
&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><br></div><div styl=
e=3D"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;=
 font-size: 16px;">But after adding that I still get this error.&nbsp;</div=
><div dir=3D"ltr" style=3D"font-family: &quot;Helvetica Neue&quot;, Helveti=
ca, Arial, sans-serif; font-size: 16px;"><b style=3D"color: rgb(205, 35, 44=
); font-family: Helvetica, Arial, sans-serif;">ERROR: mem-tst-0.1 do_packag=
e_qa: QA Issue: No GNU_HASH in the elf binary: '/home/cluser/ac/z_cpu/build=
/tmp/work/corei7-64-poky-linux/mem/tst-0.1/packages-split/mem/usr/local/fle=
x_pkgs/diags/mlc' [ldflags]</b></div><div dir=3D"ltr" style=3D"font-family:=
 &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;=
">&nbsp;</div><div dir=3D"ltr" style=3D"font-family: &quot;Helvetica Neue&q=
uot;, Helvetica, Arial, sans-serif; font-size: 16px;">Appreciate any help.<=
/div><div dir=3D"ltr" style=3D"font-family: &quot;Helvetica Neue&quot;, Hel=
vetica, Arial, sans-serif; font-size: 16px;"><br></div><div style=3D"font-f=
amily: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size:=
 16px;">Thanks and regards</div><div style=3D"font-family: &quot;Helvetica =
Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">Madhu</div><div=
 style=3D"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-s=
erif; font-size: 16px;"><br></div><div dir=3D"ltr" style=3D"font-family: &q=
uot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">(=
more log details)</div><div style=3D"font-family: &quot;Helvetica Neue&quot=
;, Helvetica, Arial, sans-serif; font-size: 16px;">NOTE: Executing RunQueue=
 Tasks</div><div style=3D"font-family: &quot;Helvetica Neue&quot;, Helvetic=
a, Arial, sans-serif; font-size: 16px;">NOTE: mem-tst-0.1 do_package_qa: Di=
rect dependencies are ['virtual:native:/home/cluser/ac/z_cpu/poky/meta/reci=
pes-devtools/pseudo/pseudo_1.8.2.bb:do_populate_sysroot', '/home/cluser/ac/=
z_cpu/poky/meta/recipes-devtools/binutils/binutils-cross_2.29.bb:do_populat=
e_sysroot']</div><div style=3D"font-family: &quot;Helvetica Neue&quot;, Hel=
vetica, Arial, sans-serif; font-size: 16px;">NOTE: mem-tst-0.1 do_package_q=
a: Installed into sysroot: []</div><div style=3D"font-family: &quot;Helveti=
ca Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">NOTE: mem-ts=
t-0.1 do_package_qa: Skipping as already exists in sysroot: ['pseudo-native=
', 'binutils-cross-x86_64', 'gnu-config-native', 'bison-native', 'flex-nati=
ve', 'texinfo-dummy-native', 'autoconf-native', 'quilt-native', 'zlib-nativ=
e', 'gettext-minimal-native', 'automake-native', 'xz-native', 'libtool-nati=
ve', 'm4-native']</div><div style=3D"font-family: &quot;Helvetica Neue&quot=
;, Helvetica, Arial, sans-serif; font-size: 16px;">NOTE: mem-tst-0.1 do_pac=
kage_qa: DO PACKAGE QA</div><div style=3D"font-family: &quot;Helvetica Neue=
&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">NOTE: mem-tst-0.1 d=
o_package_qa: Checking Package: mem</div><div style=3D"font-family: &quot;H=
elvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">NOTE: =
mem-tst-0.1 do_package_qa: x86_64-poky-linux-objdump -p /home/cluser/ac/z_c=
pu/build/tmp/work/corei7-64-poky-linux/mem/tst-0.1/packages-split/mem/usr/l=
ocal/flex_pkgs/diags/mlc</div><div style=3D"font-family: &quot;Helvetica Ne=
ue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><font color=3D"#c=
d232c"><b>ERROR: mem-tst-0.1 do_package_qa: QA Issue: No GNU_HASH in the el=
f binary: '/home/cluser/ac/z_cpu/build/tmp/work/corei7-64-poky-linux/mem/ts=
t-0.1/packages-split/mem/usr/local/flex_pkgs/diags/mlc' [ldflags]</b></font=
></div><div style=3D"font-family: &quot;Helvetica Neue&quot;, Helvetica, Ar=
ial, sans-serif; font-size: 16px;">NOTE: mem-tst-0.1 do_package_qa: Checkin=
g Package: mem-staticdev</div><div style=3D"font-family: &quot;Helvetica Ne=
ue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">NOTE: mem-tst-0.1=
 do_package_qa: Checking Package: mem-locale</div><div style=3D"font-family=
: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px=
;">NOTE: mem-tst-0.1 do_package_qa: Checking Package: mem-doc</div><div sty=
le=3D"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif=
; font-size: 16px;">NOTE: mem-tst-0.1 do_package_qa: Checking Package: mem-=
dbg</div><div style=3D"font-family: &quot;Helvetica Neue&quot;, Helvetica, =
Arial, sans-serif; font-size: 16px;">NOTE: mem-tst-0.1 do_package_qa: Check=
ing Package: mem-dev</div><div style=3D"font-family: &quot;Helvetica Neue&q=
uot;, Helvetica, Arial, sans-serif; font-size: 16px;"><font color=3D"#cd232=
c"><b>ERROR: mem-tst-0.1 do_package_qa: QA run found fatal errors. Please c=
onsider fixing them.</b></font></div><div style=3D"font-family: &quot;Helve=
tica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><font colo=
r=3D"#cd232c"><b>ERROR: mem-tst-0.1 do_package_qa: Function failed: do_pack=
age_qa</b></font></div><div style=3D"font-family: &quot;Helvetica Neue&quot=
;, Helvetica, Arial, sans-serif; font-size: 16px;"><font color=3D"#cd232c">=
<b>ERROR: Logfile of failure stored in: /home/cluser/ac/z_cpu/build/tmp/wor=
k/corei7-64-poky-linux/mem/tst-0.1/temp/log.do_package_qa.25300</b></font><=
/div><div style=3D"font-family: &quot;Helvetica Neue&quot;, Helvetica, Aria=
l, sans-serif; font-size: 16px;"><font color=3D"#cd232c"><b>ERROR: Task (/h=
ome/cluser/ac/z_cpu/poky/../meta-flex/meta-z/recipes-utils/mem/mem_tst_0.1.=
bb:do_package_qa) failed with exit code '1'</b></font></div><div style=3D"f=
ont-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-=
size: 16px;">NOTE: Tasks Summary: Attempted 461 tasks of which 460 didn't n=
eed to be rerun and 1 failed.</div><div style=3D"font-family: &quot;Helveti=
ca Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><br></div><d=
iv style=3D"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans=
-serif; font-size: 16px;">Summary: 1 task failed:</div><div style=3D"font-f=
amily: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size:=
 16px;">&nbsp; /home/cluser/ac/z_cpu/poky/../meta-flex/meta-z/recipes-utils=
/mem/mem_tst_0.1.bb:do_package_qa</div><div style=3D"font-family: &quot;Hel=
vetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;"><br></di=
v></div><br></div></div></body></html>

------=_Part_1269257_1211866766.1563172945933--
