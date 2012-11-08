Return-Path: <nzf1989@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07BADE01300
	for <yocto@yoctoproject.org>; Thu,  8 Nov 2012 00:07:53 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id i8so2137918lbo.35
	for <yocto@yoctoproject.org>; Thu, 08 Nov 2012 00:07:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=p3iT1vp9PZxG822cG4m9Gzj39jvrV5C7x94wsptv+4s=;
	b=hWTh3I4cF3D351qZUOE65040sSPSv77fOeRDVFrtaijs4JLzcELcaTrkYE0RfKO1xb
	Kt/N9ylSNpysM12QeVpEqN72oHJ1VAFHYpGSkmT8A/o47wmsIcCFzAWDgX7HcP451Ob9
	0E5i2kkPuPQaKRDCvSMjS9XvWyzDqoyRCbDqv+MTBK/aJFnsWCOntSmW0/qjQ/W96vre
	Dt8eZg2y1veLFGGHY/z5lDAAl1RzZIdCEckL0Jamgm6NGoTzpvWTbc4j3VDGTkpJFPNp
	C+Whpqa5bWi/Yfb9cTc04ffZX+4zofLdj2Zg5qGPs135nGEwqCpye+LI5i8hEsy8N4Vh
	mFjA==
MIME-Version: 1.0
Received: by 10.112.100.164 with SMTP id ez4mr2764245lbb.106.1352362072610;
	Thu, 08 Nov 2012 00:07:52 -0800 (PST)
Received: by 10.114.29.74 with HTTP; Thu, 8 Nov 2012 00:07:52 -0800 (PST)
Date: Thu, 8 Nov 2012 09:07:52 +0100
Message-ID: <CAC+6ctOu6rXA5wiYTabzrGFpt8wv4XBtfc=8u=OuNPpeVN=ZQg@mail.gmail.com>
From: Zhifan Nie <nzf1989@gmail.com>
To: yocto@yoctoproject.org
Subject: please patch runqemu
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
X-List-Received-Date: Thu, 08 Nov 2012 08:07:54 -0000
X-Groupsio-MsgNum: 10474
Content-Type: multipart/mixed; boundary=f46d04016a5bf217c304cdf754d0

--f46d04016a5bf217c304cdf754d0
Content-Type: multipart/alternative; boundary=f46d04016a5bf217b804cdf754ce

--f46d04016a5bf217b804cdf754ce
Content-Type: text/plain; charset=ISO-8859-1

Dear all,
Here is a bug in yocto I find today. The source is pulled directly from
github.

runqemu in scripts folder can not work well on machines with AMD
processor supporting secure virtual machine(svm) feature. When I want to
enable KVM to accelerate the qemu, It reminds that VT is not supported by
the machine. This bug is due to an error spelling of svm into smx in line
158.

please find the attached patch file to revise the runqemu script.


-- 
Nie Zhifan
+393778309427
S173731@studenti.polito.it
nzf1989@gmail.com
A joyful heart does good like a medicine, but a broken heart dries up the
bones

--f46d04016a5bf217b804cdf754ce
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Dear all,<div>Here is a bug in yocto I find today. The source is pulled=A0d=
irectly=A0from github.</div><div><br></div><div>runqemu in scripts folder c=
an not work well on machines with=A0AMD processor=A0supporting secure virtu=
al machine(svm) feature.=A0When I want to enable KVM to accelerate the qemu=
, It=A0reminds=A0that VT is not supported by the machine. This bug is due t=
o an error spelling of svm into smx in line 158.</div>
<div><br></div><div>please find the attached patch file to revise the runqe=
mu script.</div><div><br></div><div><div><br></div>-- <br><div><font face=
=3D"&#39;comic sans ms&#39;, sans-serif">Nie Zhifan</font></div><div><font =
face=3D"&#39;comic sans ms&#39;, sans-serif">+393778309427</font></div>
<div><font face=3D"&#39;comic sans ms&#39;, sans-serif"><a href=3D"mailto:S=
173731@studenti.polito.it" target=3D"_blank">S173731@studenti.polito.it</a>=
</font></div><div><font face=3D"&#39;comic sans ms&#39;, sans-serif"><a hre=
f=3D"mailto:nzf1989@gmail.com" target=3D"_blank">nzf1989@gmail.com</a></fon=
t></div>
<div><font face=3D"&#39;comic sans ms&#39;, sans-serif">A joyful heart does=
 good like a medicine, but a broken heart dries up the bones</font></div><b=
r>
</div>

--f46d04016a5bf217b804cdf754ce--

--f46d04016a5bf217c304cdf754d0
Content-Type: application/octet-stream; name="runqemu_amd_svm.patch"
Content-Disposition: attachment; filename="runqemu_amd_svm.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_h99lg15s0

LS0tIHJ1bnFlbXUuYmFja3VwCTIwMTItMTEtMDggMDg6MDQ6MTguMDAwMDAwMDAwICswMTAwCisr
KyBydW5xZW11CTIwMTItMTEtMDggMDg6MDQ6MzIuMDAwMDAwMDAwICswMTAwCkBAIC0xNTUsNyAr
MTU1LDcgQEAKICAgICAgICAgICAgIDs7CiAgICAgICAgICJrdm0iKQogICAgICAgICAgICAgS1ZN
X0VOQUJMRUQ9InllcyIKLSAgICAgICAgICAgIEtWTV9DQVBBQkxFPWBncmVwIC1xICd2bXhcfHNt
eCcgL3Byb2MvY3B1aW5mbyAmJiBlY2hvIDFgCisgICAgICAgICAgICBLVk1fQ0FQQUJMRT1gZ3Jl
cCAtcSAndm14XHxzdm0nIC9wcm9jL2NwdWluZm8gJiYgZWNobyAxYAogICAgICAgICAgICAgOzsK
ICAgICAgICAgIiIpIGJyZWFrIDs7CiAgICAgICAgICopCg==

--f46d04016a5bf217c304cdf754d0--
