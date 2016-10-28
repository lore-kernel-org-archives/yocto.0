Return-Path: <skorpyon1992@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2A2DE00E0B; Fri, 28 Oct 2016 05:36:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (skorpyon1992[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [72.30.239.202 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (valentina skorpion <skorpyon1992[at]yahoo.com>
	) * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm33-vm2.bullet.mail.bf1.yahoo.com
	(nm33-vm2.bullet.mail.bf1.yahoo.com [72.30.239.202])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85CE3E00B9E
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 05:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1477658208; bh=r2SfYkYpy8lMit3+YnjlKKK3VcX4UiI96uTNdUZ35wk=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=k/+raUbeg/sbs1H1qnEQ4KgbOnbkpwz9ol60tk+ueFCTI+8GFkUatqyJdca37pDaEotrvnPp93Q9XKlb1Eo8DjK/uZoqoYf262cyc0/AvO6q7E5RjrQO0zImIKJXlrMULiLQpLOnFWkpnvQcFwafAU0g2VN0a2Rl+hj9SfmBjBDSdCqD7K1ePzZPAMpbz86NhxcrywU/2YjsORJ7jyo5G/xjqC08syYwzcg389AFq4uIQCVeI3d0iVddyA7VjTDPvvfnnH5hKtUG+dEoVKIch3M4S6DMjE1Bz1wZD3jknPcHANCdkbpMnZhbeeTTXC57JYxFlSawp6P6Kkh3GT3UoA==
Received: from [98.139.215.141] by nm33.bullet.mail.bf1.yahoo.com with NNFMP;
	28 Oct 2016 12:36:48 -0000
Received: from [98.139.212.196] by tm12.bullet.mail.bf1.yahoo.com with NNFMP;
	28 Oct 2016 12:36:48 -0000
Received: from [127.0.0.1] by omp1005.mail.bf1.yahoo.com with NNFMP;
	28 Oct 2016 12:36:48 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 525535.36085.bm@omp1005.mail.bf1.yahoo.com
X-YMail-OSG: qcKlofYVM1kN.4MwFL5HHupirRhiA0wQCE0LZWGxmkhBDDUB9oxLGWFb3MdF3_t
	oUFkivD..YfNN0hfXKhLdd7189MaNo91ir8UYsmU6N4_2ma8I.ggTC6VljkFALYCE0uTPamWN6aX
	H4XFlTAX5qF64GzCCLqBxUJTX9tDSlf1jgFhEbCtTdav11M9HeFm_Dqtkfyh6lhWKv_KBuMz85GD
	BLSwI1zNDRQteBHdYU0MjcbY8_b.JQ550JaqzO3Yp_Az0jiQcnB5RPtBQEPcvCbKmUfOBmBBNicb
	CaSLveCKxgkMZ.sT625vZvnA_pPHT7QuCpnom6QcTCEv1b_qm3KmBVTnXYX8Q3zHcSo7rVEMs..R
	TKLc3EdBnc1cXcrJGH5NiSEfUaD4tUd8yFkedApc30tU7rlU3Tgcopqo_w6eLRcFHIEt9_lJvQKw
	__uuuazRL9qY1G1Y9Y5ADfznsgl5Aiwjx9nmJw7ygeXuvYAjk_yzETP3KnonYHr5kFQf9L8K7mWQ
	NMObNO.4rcb67ne.dAH8dPg6r0uFYhhsnOO8r9BNLBG_m5Q--
Received: from jws400032.mail.bf2.yahoo.com by
	sendmailws139.mail.bf1.yahoo.com;
	Fri, 28 Oct 2016 12:36:48 +0000; 1477658208.106
Date: Fri, 28 Oct 2016 12:36:47 +0000 (UTC)
From: Valentina Skorpion <skorpyon1992@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1199472296.497716.1477658207727@mail.yahoo.com>
MIME-Version: 1.0
References: <1199472296.497716.1477658207727.ref@mail.yahoo.com>
Subject: Tcl SIGCHLD lost process error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Valentina Skorpion <skorpyon1992@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Oct 2016 12:36:52 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_497715_972369432.1477658207726"

------=_Part_497715_972369432.1477658207726
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Hello everyone,

=C2=A0 =C2=A0=C2=A0 I have been using yocto jethro in order to build my cus=
tom Linux distribution for several devices ( qemuarm , sama5d4, etc) . I ha=
ve used the linux-yocto 4.1.5 kernel version and latest version packages. A=
fter upgrading to yocto krogoth I have used a newer version of linux kernel=
 ( version 4.7.2 ) and newer version packages. I had some tcl scripts which=
 worked fine before but now=C2=A0 the following error has been triggered:=
=20
=C2=A0=C2=A0=C2=A0 error waiting for process to exit : child process lost i=
s sigchld ignored or trapped? )

=C2=A0=C2=A0=C2=A0=C2=A0 This error is being triggered when tcl exec functi=
on is executed. Even simpler commands such as "exec ls" triggers the same e=
rror (the command is not executed).

=C2=A0 =C2=A0=C2=A0 I have tried to reproduce the error on yocto krogoth wi=
th older versions of linux kernel. On linux-yocto 4.4 the same error appear=
ed.=C2=A0 On linux-yocto 4.1.5 with some outdated packages (with older vers=
ion, only Tcl had the same version in all test cases) the exec function run=
ned fine (as I have mentioned before). To reproduce the error in this case,=
 SIGCHLD had to be trapped outside tclsh (with trap command : trap "" CHLD)=
, but even then, the command inside exec was executed and only after that t=
he mentioned error was triggered (similar to this issue: http://www.rkeene.=
org/projects/tcl/tcl.fossil/info/2982713fffffffff ).=20

=C2=A0=C2=A0=C2=A0=C2=A0 It seemed at a package (on which depends Tcl) trap=
s or ignores the SIGCHLD.=C2=A0 After some research, a similar issue has be=
en reported ( https://sourceware.org/bugzilla/show_bug.cgi?id=3D19861 ). In=
 a newer glibc version, fork functionality could not use IFUNC resolver so =
it would trigger in tcl the SIGCHLD error. A patch has been applied to glib=
 pt-fork.c ( https://sourceware.org/git/gitweb.cgi?p=3Dglibc.git;a=3Dblobdi=
ff;f=3Dnptl/pt-fork.c;h=3Ddb9b61d9aa172c7886b6ed3decb355a3aa4c9036;hp=3Db65=
d6b4eddc0c17a39825a9cd30d0dc3fb5b141f;hb=3Df06f3f05b48c72e2c9b0fa78671f94fd=
22d67da8;hpb=3D7838d298d895f65247fb6b498db03a4336fc0506 ) in order to fix t=
he issue and now works fine.


=C2=A0=C2=A0=C2=A0=C2=A0 Has somebody encountered this issue too? Has anyon=
e used this patch to fix the problem or used another fix? Thanks!

=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=20

=C2=A0 =C2=A0=C2=A0

------=_Part_497715_972369432.1477658207726
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div style="color:#000; background-color:#fff; font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:16px"><div id="yui_3_16_0_ym19_1_1477658121094_4342" dir="ltr">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Hello everyone,<br id="yui_3_16_0_ym19_1_1477658121094_4453">
<br id="yui_3_16_0_ym19_1_1477658121094_4454">
&nbsp; &nbsp;&nbsp; I have been using yocto jethro in order to build my custom Linux 
distribution for several devices ( qemuarm , sama5d4, etc) . I have used
 the linux-yocto 4.1.5 kernel version and latest version packages. After
 upgrading to yocto krogoth I have used a newer version of linux kernel (
 version 4.7.2 ) and newer version packages. I had some tcl scripts 
which worked fine before but now&nbsp; the following error has been 
triggered: <br id="yui_3_16_0_ym19_1_1477658121094_4455">
&nbsp;&nbsp;&nbsp; error waiting for process to exit : child process lost is sigchld ignored or trapped? )<br id="yui_3_16_0_ym19_1_1477658121094_4456">
<br id="yui_3_16_0_ym19_1_1477658121094_4457">
&nbsp;&nbsp;&nbsp;&nbsp; This error is being triggered when tcl <b id="yui_3_16_0_ym19_1_1477658121094_4458"><big id="yui_3_16_0_ym19_1_1477658121094_4459">exec </big></b><big id="yui_3_16_0_ym19_1_1477658121094_4460"><small id="yui_3_16_0_ym19_1_1477658121094_4461">funct</small></big>ion is executed. Even simpler commands such as "exec ls" triggers the same error (the command is not executed).<br id="yui_3_16_0_ym19_1_1477658121094_4462">
<br id="yui_3_16_0_ym19_1_1477658121094_4463">
&nbsp; &nbsp;&nbsp; I have tried to reproduce the error on yocto krogoth with older 
versions of linux kernel. On linux-yocto 4.4 the same error appeared.&nbsp; 
On linux-yocto 4.1.5 with some outdated packages (with older version, 
only Tcl had the same version in all test cases) the exec function 
runned fine (as I have mentioned before). To reproduce the error in this
 case, SIGCHLD had to be trapped outside tclsh (with trap command : trap
 "" CHLD), but even then, the command inside exec was executed and only 
after that the mentioned error was triggered (similar to this issue: 
http://www.rkeene.org/projects/tcl/tcl.fossil/info/2982713fffffffff ). <br id="yui_3_16_0_ym19_1_1477658121094_4464">
<br id="yui_3_16_0_ym19_1_1477658121094_4465">
&nbsp;&nbsp;&nbsp;&nbsp; It seemed at a package (on which depends Tcl) traps or ignores the 
SIGCHLD.&nbsp; After some research, a similar issue has been reported ( 
https://sourceware.org/bugzilla/show_bug.cgi?id=19861 ). In a newer 
glibc version, fork functionality could not use IFUNC resolver so it 
would trigger in tcl the SIGCHLD error. A patch has been applied to glib
 pt-fork.c ( 
https://sourceware.org/git/gitweb.cgi?p=glibc.git;a=blobdiff;f=nptl/pt-fork.c;h=db9b61d9aa172c7886b6ed3decb355a3aa4c9036;hp=b65d6b4eddc0c17a39825a9cd30d0dc3fb5b141f;hb=f06f3f05b48c72e2c9b0fa78671f94fd22d67da8;hpb=7838d298d895f65247fb6b498db03a4336fc0506
 ) in order to fix the issue and now works fine.<br id="yui_3_16_0_ym19_1_1477658121094_4466">
<br id="yui_3_16_0_ym19_1_1477658121094_4467">
<br id="yui_3_16_0_ym19_1_1477658121094_4468">
&nbsp;&nbsp;&nbsp;&nbsp; Has somebody encountered this issue too? Has anyone used this patch to fix the problem or used another fix? Thanks!<br id="yui_3_16_0_ym19_1_1477658121094_4469">
<span style="color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; line-height: 20px;" id="yui_3_16_0_ym19_1_1477658121094_4470"></span><br id="yui_3_16_0_ym19_1_1477658121094_4471">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br id="yui_3_16_0_ym19_1_1477658121094_4472">
<br id="yui_3_16_0_ym19_1_1477658121094_4473">&nbsp; &nbsp;&nbsp;<br id="yui_3_16_0_ym19_1_1477658121094_4474"></div></div></body></html>

------=_Part_497715_972369432.1477658207726--
