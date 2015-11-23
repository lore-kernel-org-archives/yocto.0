Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73869E00985; Mon, 23 Nov 2015 11:08:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.90.152 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm4-vm2.bullet.mail.ne1.yahoo.com
	(nm4-vm2.bullet.mail.ne1.yahoo.com [98.138.90.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 631FFE0076A
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 11:08:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1448305708; bh=HeHW0gj3vfEt/J3i/hAQ2nC6Vae46yU0IJNMIGopkYM=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=I8k0HITEs/3nGToyFRlwtSztwiDDViuTPj7wpynx25hCIoQPKfTzoGaUdWmphRiqTWjWC6c1Rh7D5hRqEcGLt9enHZbnIWGFQweWPxzyqZflyRzNpdD0l++Gaew/cUCJjXpAvi+YA1DYFyiVmRqX83E3AAMpSzwzK4mebd5z7ARRlstTwJBHQEyv1BWjMjlN3tTOAU9OQvt0s6nzIbVhK80I4DaYfsHQFIEZrqzz4BJgeNPeLt51OO1rHz8XMxowX9EbPRkltOu7PShJQtVrCrZC1hPu3ZPawLNzBcB34vdchQ8W68gvRXsIufsE53AiLZRWo2mtGX+xlykGB6kwAw==
Received: from [98.138.101.128] by nm4.bullet.mail.ne1.yahoo.com with NNFMP;
	23 Nov 2015 19:08:28 -0000
Received: from [98.138.89.249] by tm16.bullet.mail.ne1.yahoo.com with NNFMP;
	23 Nov 2015 19:08:28 -0000
Received: from [127.0.0.1] by omp1041.mail.ne1.yahoo.com with NNFMP;
	23 Nov 2015 19:08:28 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 702293.65767.bm@omp1041.mail.ne1.yahoo.com
X-YMail-OSG: uKB35zMVM1n.7IZlq__jLoHvCFcySUZjdVFx9J6ac1hothVE7kQ2bFknuJqphVp
	0cG1Iz5NI6eO.JFzmdR4Bg0xCJfBdxX_SViCP0vaWBkyhd9TAimFtpjZjJ7mQ4FlL.E6g_8gwq_q
	z5a0sfaiCkhjN07HfkmSl7ycdWODXDNQ7_rSNhwfkvRh53isB.dEei3yB.6WMx2He2jV6Sccd323
	nQFM_M0Hj26qVkXoq.JKqX636h_mBH8D5FqSGz0fkZmvrTgxqL8X5R8nT9NFnL3R0aQ4ZsND2Fj6
	JiZp4nWBqArw2hmPauYWp0N5AyPWsv7TmuKcFu1HeFNbySMW9aYFjd_S5WoiNitrOcjd6_vF71G9
	iWGajkn83ZkKx3GsN7oFRKJHcZb0slAeWnjXxZKTU4itsFvHXmZZoUleAMztwRlv9rYw4Rh.Mg8k
	qstSoQAltw6CC1u7Rhn1HDlX2sR1L06qnsx8j_5xQ4dtP4N.zKDqUFOSbXeotSXUun5ucUFgJ2CP
	Ls4wXoEZdWIisSjqaX74VX20fstvSEbVTs8v_IDZpG8A_8EcRJNAejPasRLgP9S0-
Received: by 98.138.101.169; Mon, 23 Nov 2015 19:08:28 +0000 
Date: Mon, 23 Nov 2015 19:08:27 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <1402232487.1829166.1448305707751.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <2709775.kpuI3dqQ0L@peggleto-mobl.ger.corp.intel.com>
References: <2709775.kpuI3dqQ0L@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem using unix source in do_compile
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
X-List-Received-Date: Mon, 23 Nov 2015 19:08:32 -0000
X-Groupsio-MsgNum: 27388
Content-Type: multipart/mixed; 
	boundary="----=_Part_1829165_681011182.1448305707751"

------=_Part_1829165_681011182.1448305707751
Content-Type: multipart/alternative; 
	boundary="----=_Part_1829164_1433148585.1448305707746"

------=_Part_1829164_1433148585.1448305707746
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Paul,
Thanks for your quick rely.

Yes, I am running "ubuntu 12.04 x86_64".

In a shell before=C2=A0 or after=C2=A0 running=C2=A0 ". oe-init-build-env" =
either of these 2 commands below work okay."source /opt/Xilinx/14.6/ISE_DS/=
settings64.sh" or ". /opt/Xilinx/14.6/ISE_DS/settings64.sh"

I am able to run (Xilinx Platform Studio) "xps"=C2=A0 okay.=20

I replaced 4 of source cmds with '.'

Now I get the following error when I execute "bitbake fpga-image-adi"
=C2=A0
ERROR: Function failed: do_compile (log file is located at /home/vidal/POKY=
/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnueabi/fpga-image-adi/=
1.AUTOINC-3e6cfd4858-r0/temp/log.do_compile.12830)
ERROR: Logfile of failure stored in: /home/vidal/POKY/dora_build/poky/build=
/tmp/work/zedboard-poky-linux-gnueabi/fpga-image-adi/1.AUTOINC-3e6cfd4858-r=
0/temp/log.do_compile.12830
Log data follows:
| DEBUG: Executing shell function do_compile
| /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnuea=
bi/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.12830: 12: [:=
 /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnueab=
i/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.12830: unexpec=
ted operator
| . /opt/Xilinx/14.6/ISE_DS/common/.settings64.sh /opt/Xilinx/14.6/ISE_DS/c=
ommon
| . /opt/Xilinx/14.6/ISE_DS/EDK/.settings64.sh /opt/Xilinx/14.6/ISE_DS/EDK
| . /opt/Xilinx/14.6/ISE_DS/PlanAhead/.settings64.sh /opt/Xilinx/14.6/ISE_D=
S/PlanAhead
| . /opt/Xilinx/14.6/ISE_DS/ISE/.settings64.sh /opt/Xilinx/14.6/ISE_DS/ISE
| /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnuea=
bi/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.12830: 113: /=
home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnueabi/=
fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.12830: xps: not =
found
| WARNING: exit code 127 from a shell command.
| ERROR: Function failed: do_compile (log file is located at /home/vidal/PO=
KY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnueabi/fpga-image-ad=
i/1.AUTOINC-3e6cfd4858-r0/temp/log.do_compile.12830)
ERROR: Task 6 (/home/vidal/POKY/dora_build/poky/meta-topic/recipes-bsp/fpga=
/fpga-image-adi.bb, do_compile) failed with exit code '1'=C2=A0What is the =
unexpected operator?I am attaching the log file.=C2=A0=20
Thanks in advance for any and all help.Regards,


Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613=20


    On Sunday, November 22, 2015 3:35 PM, Paul Eggleton <paul.eggleton@linu=
x.intel.com> wrote:
=20

 Hi Edward,

On Sunday 22 November 2015 13:25:21 Edward Vidal wrote:
> Hi all,I am trying to use run the bitbake on=C2=A0 a recipe that in the
> do_compile uses the unix command source.This is the error that I am
> getting. Log data follows:| DEBUG: Executing shell function do_compile
>=20
> | /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnu=
eab
> | i/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.25492: 112=
:
> | /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnu=
ea
> | bi/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.25492:
> | source: not found WARNING: exit code 127 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> | /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnu=
ea
> | bi/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/log.do_compile.25492)At
> | github I have the original inc file that is used by the recipe
> | fpga-image-adi.bb
> 87a75850b6f36bf1f09ac0f071587629ba630c1ehttps://github.com/develone/zedbo=
ard
> _yocto/commits/master/fpga-image.inc I made some changes which allows me =
to=20
> manually run the Xilinx commands and then re-run the bitbake
> fpga-image-adithe version=C2=A0 e199e9ce0806dc257fcafdda26de29f4cd443e24

If I had to guess I'd say you're on Ubuntu or another system where /bin/sh =
is=20
dash and not bash, is that correct? If so, "source" is a bash-specific comm=
and=20
- the POSIX standard equivalent is '.' (without quotes), so you'll need to =
use=20
that instead.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre


  

------=_Part_1829164_1433148585.1448305707746
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_144830445995=
1_2690"><span class=3D"" id=3D"yui_3_16_0_1_1448304459951_3035">Hello Paul,=
<br class=3D"" id=3D"yui_3_16_0_1_1448304459951_2984">Thanks for your quick=
 rely.<br class=3D"" id=3D"yui_3_16_0_1_1448304459951_2986"><br class=3D"" =
id=3D"yui_3_16_0_1_1448304459951_2988">Yes, I am running "ubuntu 12.04 x86_=
64".<br class=3D"" id=3D"yui_3_16_0_1_1448304459951_2990"><br class=3D"" id=
=3D"yui_3_16_0_1_1448304459951_2992">In a shell before&nbsp; or after&nbsp;=
 </span><span class=3D"" id=3D"yui_3_16_0_1_1448304459951_3035">running&nbs=
p;</span><span class=3D"" id=3D"yui_3_16_0_1_1448304459951_3035"><span clas=
s=3D"" id=3D"yui_3_16_0_1_1448304459951_3035"> ". oe-init-build-env" </span=
>either of these 2 commands below </span><span id=3D"yui_3_16_0_1_144830445=
9951_3035"><span class=3D"" id=3D"yui_3_16_0_1_1448304459951_3035">work oka=
y.</span></span></div><div id=3D"yui_3_16_0_1_1448304459951_3277" dir=3D"lt=
r"><span id=3D"yui_3_16_0_1_1448304459951_3035"><span class=3D"" id=3D"yui_=
3_16_0_1_1448304459951_3035"></span>"source /opt/Xilinx/14.6/ISE_DS/setting=
s64.sh" or ". /opt/Xilinx/14.6/ISE_DS/settings64.sh"<br class=3D"" id=3D"yu=
i_3_16_0_1_1448304459951_2996"></span></div><div id=3D"yui_3_16_0_1_1448304=
459951_3341" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1448304459951_3035"><br><=
/span></div><div id=3D"yui_3_16_0_1_1448304459951_3459" dir=3D"ltr"><span i=
d=3D"yui_3_16_0_1_1448304459951_3035">I am able to run (Xilinx Platform Stu=
dio) "xps"&nbsp; okay. <br class=3D"" id=3D"yui_3_16_0_1_1448304459951_3000=
"><br class=3D"" id=3D"yui_3_16_0_1_1448304459951_3002">I replaced 4 of sou=
rce cmds with '.'<br class=3D"" id=3D"yui_3_16_0_1_1448304459951_3004"><br =
class=3D"" id=3D"yui_3_16_0_1_1448304459951_3006">Now I get the following e=
rror when I execute "bitbake fpga-image-adi"<br class=3D"" id=3D"yui_3_16_0=
_1_1448304459951_3008">&nbsp;<br class=3D"" id=3D"yui_3_16_0_1_144830445995=
1_3010">ERROR: Function failed: do_compile (log file is located at /home/vi=
dal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnueabi/fpga-im=
age-adi/1.AUTOINC-3e6cfd4858-r0/temp/log.do_compile.12830)<br class=3D"" id=
=3D"yui_3_16_0_1_1448304459951_3012">ERROR: Logfile of failure stored in: /=
home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnueabi/=
fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/log.do_compile.12830<br class=
=3D"" id=3D"yui_3_16_0_1_1448304459951_3014">Log data follows:<br class=3D"=
" id=3D"yui_3_16_0_1_1448304459951_3016">| DEBUG: Executing shell function =
do_compile<br class=3D"" id=3D"yui_3_16_0_1_1448304459951_3018">| /home/vid=
al/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnueabi/fpga-ima=
ge-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.12830: 12: [: /home/vida=
l/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnueabi/fpga-imag=
e-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.12830: unexpected operato=
r<br class=3D"" id=3D"yui_3_16_0_1_1448304459951_3020">| . /opt/Xilinx/14.6=
/ISE_DS/common/.settings64.sh /opt/Xilinx/14.6/ISE_DS/common<br class=3D"" =
id=3D"yui_3_16_0_1_1448304459951_3022">| . /opt/Xilinx/14.6/ISE_DS/EDK/.set=
tings64.sh /opt/Xilinx/14.6/ISE_DS/EDK<br class=3D"" id=3D"yui_3_16_0_1_144=
8304459951_3024">| . /opt/Xilinx/14.6/ISE_DS/PlanAhead/.settings64.sh /opt/=
Xilinx/14.6/ISE_DS/PlanAhead<br class=3D"" id=3D"yui_3_16_0_1_1448304459951=
_3026">| . /opt/Xilinx/14.6/ISE_DS/ISE/.settings64.sh /opt/Xilinx/14.6/ISE_=
DS/ISE<br class=3D"" id=3D"yui_3_16_0_1_1448304459951_3028">| /home/vidal/P=
OKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnueabi/fpga-image-a=
di/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.12830: 113: /home/vidal/POKY=
/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnueabi/fpga-image-adi/=
1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.12830: xps: not found<br class=
=3D"" id=3D"yui_3_16_0_1_1448304459951_3030">| WARNING: exit code 127 from =
a shell command.<br class=3D"" id=3D"yui_3_16_0_1_1448304459951_3032">| ERR=
OR: Function failed: do_compile (log file is located at /home/vidal/POKY/do=
ra_build/poky/build/tmp/work/zedboard-poky-linux-gnueabi/fpga-image-adi/1.A=
UTOINC-3e6cfd4858-r0/temp/log.do_compile.12830)<br class=3D"" id=3D"yui_3_1=
6_0_1_1448304459951_3034">ERROR: Task 6 (/home/vidal/POKY/dora_build/poky/m=
eta-topic/recipes-bsp/fpga/fpga-image-adi.bb, do_compile) failed with exit =
code '1'</span></div><div id=3D"yui_3_16_0_1_1448304459951_2882"><div id=3D=
"yui_3_16_0_1_1448304459951_3520">&nbsp;</div><div id=3D"yui_3_16_0_1_14483=
04459951_3521">What is the unexpected operator?</div><div dir=3D"ltr" id=3D=
"yui_3_16_0_1_1448304459951_3543">I am attaching the log file.&nbsp; <br></=
div><div id=3D"yui_3_16_0_1_1448304459951_3742" dir=3D"ltr">Thanks in advan=
ce for any and all help.</div><div id=3D"yui_3_16_0_1_1448304459951_3743" d=
ir=3D"ltr">Regards,<br></div><div id=3D"yui_3_16_0_1_1448304459951_3698"><b=
r></div><div id=3D"yui_3_16_0_1_1448304459951_3697"><br></div></div><div id=
=3D"yui_3_16_0_1_1448304459951_2881" class=3D"signature">Edward Vidal Jr. e=
-mail develone@sbcglobal.net 915-595-1613</div> <br><div id=3D"yui_3_16_0_1=
_1448304459951_2880" class=3D"qtdSeparateBR"><br><br></div><div style=3D"di=
splay: block;" id=3D"yui_3_16_0_1_1448304459951_2721" class=3D"yahoo_quoted=
"> <div id=3D"yui_3_16_0_1_1448304459951_2720" style=3D"font-family: Helvet=
icaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-=
size: 16px;"> <div id=3D"yui_3_16_0_1_1448304459951_2719" style=3D"font-fam=
ily: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-s=
erif; font-size: 16px;"> <div id=3D"yui_3_16_0_1_1448304459951_2718" dir=3D=
"ltr"><font id=3D"yui_3_16_0_1_1448304459951_2717" face=3D"Arial" size=3D"2=
"> On Sunday, November 22, 2015 3:35 PM, Paul Eggleton &lt;paul.eggleton@li=
nux.intel.com&gt; wrote:<br></font></div>  <br><br> <div id=3D"yui_3_16_0_1=
_1448304459951_2722" class=3D"y_msg_container">Hi Edward,<br clear=3D"none"=
><div class=3D"yqt7385491398" id=3D"yqtfd29738"><br clear=3D"none">On Sunda=
y 22 November 2015 13:25:21 Edward Vidal wrote:<br clear=3D"none">&gt; Hi a=
ll,I am trying to use run the bitbake on&nbsp; a recipe that in the<br clea=
r=3D"none">&gt; do_compile uses the unix command source.This is the error t=
hat I am<br clear=3D"none">&gt; getting. Log data follows:| DEBUG: Executin=
g shell function do_compile<br clear=3D"none">&gt; <br clear=3D"none">&gt; =
| /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnuea=
b<br clear=3D"none">&gt; | i/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/ru=
n.do_compile.25492: 112:<br clear=3D"none">&gt; | /home/vidal/POKY/dora_bui=
ld/poky/build/tmp/work/zedboard-poky-linux-gnuea<br clear=3D"none">&gt; | b=
i/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.25492:<br clea=
r=3D"none">&gt; | source: not found WARNING: exit code 127 from a shell com=
mand.<br clear=3D"none">&gt; | ERROR: Function failed: do_compile (log file=
 is located at<br clear=3D"none">&gt; | /home/vidal/POKY/dora_build/poky/bu=
ild/tmp/work/zedboard-poky-linux-gnuea<br clear=3D"none">&gt; | bi/fpga-ima=
ge-adi/1.AUTOINC-3e6cfd4858-r0/temp/log.do_compile.25492)At<br clear=3D"non=
e">&gt; | github I have the original inc file that is used by the recipe<br=
 clear=3D"none">&gt; | fpga-image-adi.bb<br clear=3D"none">&gt; 87a75850b6f=
36bf1f09ac0f071587629ba630c1ehttps://github.com/develone/zedboard<br clear=
=3D"none">&gt; _yocto/commits/master/fpga-image.inc I made some changes whi=
ch allows me to <br clear=3D"none">&gt; manually run the Xilinx commands an=
d then re-run the bitbake<br clear=3D"none">&gt; fpga-image-adithe version&=
nbsp; e199e9ce0806dc257fcafdda26de29f4cd443e24</div><br clear=3D"none"><br =
clear=3D"none">If I had to guess I'd say you're on Ubuntu or another system=
 where /bin/sh is <br clear=3D"none">dash and not bash, is that correct? If=
 so, "source" is a bash-specific command <br clear=3D"none">- the POSIX sta=
ndard equivalent is '.' (without quotes), so you'll need to use <br clear=
=3D"none">that instead.<br clear=3D"none"><br clear=3D"none">Cheers,<br cle=
ar=3D"none">Paul<br clear=3D"none"><br clear=3D"none">-- <br clear=3D"none"=
><br clear=3D"none">Paul Eggleton<br clear=3D"none">Intel Open Source Techn=
ology Centre<div class=3D"yqt7385491398" id=3D"yqtfd74998"><br clear=3D"non=
e"></div><br><br></div>  </div> </div>  </div></div></body></html>

------=_Part_1829164_1433148585.1448305707746--

------=_Part_1829165_681011182.1448305707751
Content-Type: application/octet-stream
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=log.do_compile.12830
Content-ID: <8a6e219f-070f-a1d7-0ba9-d6f7c64300f3@yahoo.com>

REVCVUc6IEV4ZWN1dGluZyBzaGVsbCBmdW5jdGlvbiBkb19jb21waWxlCi9ob21lL3ZpZGFsL1BP
S1kvZG9yYV9idWlsZC9wb2t5L2J1aWxkL3RtcC93b3JrL3plZGJvYXJkLXBva3ktbGludXgtZ251
ZWFiaS9mcGdhLWltYWdlLWFkaS8xLkFVVE9JTkMtM2U2Y2ZkNDg1OC1yMC90ZW1wL3J1bi5kb19j
b21waWxlLjEyODMwOiAxMjogWzogL2hvbWUvdmlkYWwvUE9LWS9kb3JhX2J1aWxkL3Bva3kvYnVp
bGQvdG1wL3dvcmsvemVkYm9hcmQtcG9reS1saW51eC1nbnVlYWJpL2ZwZ2EtaW1hZ2UtYWRpLzEu
QVVUT0lOQy0zZTZjZmQ0ODU4LXIwL3RlbXAvcnVuLmRvX2NvbXBpbGUuMTI4MzA6IHVuZXhwZWN0
ZWQgb3BlcmF0b3IKLiAvb3B0L1hpbGlueC8xNC42L0lTRV9EUy9jb21tb24vLnNldHRpbmdzNjQu
c2ggL29wdC9YaWxpbngvMTQuNi9JU0VfRFMvY29tbW9uCi4gL29wdC9YaWxpbngvMTQuNi9JU0Vf
RFMvRURLLy5zZXR0aW5nczY0LnNoIC9vcHQvWGlsaW54LzE0LjYvSVNFX0RTL0VESwouIC9vcHQv
WGlsaW54LzE0LjYvSVNFX0RTL1BsYW5BaGVhZC8uc2V0dGluZ3M2NC5zaCAvb3B0L1hpbGlueC8x
NC42L0lTRV9EUy9QbGFuQWhlYWQKLiAvb3B0L1hpbGlueC8xNC42L0lTRV9EUy9JU0UvLnNldHRp
bmdzNjQuc2ggL29wdC9YaWxpbngvMTQuNi9JU0VfRFMvSVNFCi9ob21lL3ZpZGFsL1BPS1kvZG9y
YV9idWlsZC9wb2t5L2J1aWxkL3RtcC93b3JrL3plZGJvYXJkLXBva3ktbGludXgtZ251ZWFiaS9m
cGdhLWltYWdlLWFkaS8xLkFVVE9JTkMtM2U2Y2ZkNDg1OC1yMC90ZW1wL3J1bi5kb19jb21waWxl
LjEyODMwOiAxMTM6IC9ob21lL3ZpZGFsL1BPS1kvZG9yYV9idWlsZC9wb2t5L2J1aWxkL3RtcC93
b3JrL3plZGJvYXJkLXBva3ktbGludXgtZ251ZWFiaS9mcGdhLWltYWdlLWFkaS8xLkFVVE9JTkMt
M2U2Y2ZkNDg1OC1yMC90ZW1wL3J1bi5kb19jb21waWxlLjEyODMwOiB4cHM6IG5vdCBmb3VuZApX
QVJOSU5HOiBleGl0IGNvZGUgMTI3IGZyb20gYSBzaGVsbCBjb21tYW5kLgpFUlJPUjogRnVuY3Rp
b24gZmFpbGVkOiBkb19jb21waWxlIChsb2cgZmlsZSBpcyBsb2NhdGVkIGF0IC9ob21lL3ZpZGFs
L1BPS1kvZG9yYV9idWlsZC9wb2t5L2J1aWxkL3RtcC93b3JrL3plZGJvYXJkLXBva3ktbGludXgt
Z251ZWFiaS9mcGdhLWltYWdlLWFkaS8xLkFVVE9JTkMtM2U2Y2ZkNDg1OC1yMC90ZW1wL2xvZy5k
b19jb21waWxlLjEyODMwKQo=

------=_Part_1829165_681011182.1448305707751--
