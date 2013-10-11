Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f43.google.com (mail-qe0-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75B16E011C5
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 09:08:09 -0700 (PDT)
Received: by mail-qe0-f43.google.com with SMTP id nc12so3324308qeb.16
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 09:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=4res1DdDRsR+8Hy952BTxRzftIFF4iNjitIqLBalQMg=;
	b=RaQietGZQkk1w/Ngy5rFiQ3WOAzmLmHlCWxEJMmoBklobKIX4mmOEaX2+4eYyrAZq9
	hNyULXmLI8v+hUrHie7DuI2VBdongGbzQCwWuXdhOQGEU7f8+AYKlgmViaWPpCWf5uho
	Dn9KXxjjOpX/ipTncqlnRjI1n2pXEehSWBCegviE+tf9m1ECXHfeCnovbHNomP7+wDVb
	gTjr4TuD//GhnkLctURnQ73xJRxAEfrCZnh6P2K0oi50RV1xlXcsci0EFCYs1HEEdk8G
	7IMrI2umC2DbKiJK4ms3d+6V6WoAXM/8BlClXPE9Rr6gWSTObBhGv2BpX+TDXvF2y9mb
	12nQ==
MIME-Version: 1.0
X-Received: by 10.224.121.147 with SMTP id h19mr3257640qar.105.1381507689251; 
	Fri, 11 Oct 2013 09:08:09 -0700 (PDT)
Received: by 10.140.87.206 with HTTP; Fri, 11 Oct 2013 09:08:09 -0700 (PDT)
Date: Fri, 11 Oct 2013 10:08:09 -0600
Message-ID: <CANwz6nyqsyOjL-C7iKu01wBcCs0bgCtMn39dmbk1gk55Ft1iVg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: preempt-rt zedboard
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
X-List-Received-Date: Fri, 11 Oct 2013 16:08:12 -0000
X-Groupsio-MsgNum: 16484
Content-Type: multipart/related; boundary="Oe5542tibupfXH1TxQaY"

--Oe5542tibupfXH1TxQaY
Content-Type: multipart/alternative; boundary=089e0149c60e12a5bd04e87953a8

--089e0149c60e12a5bd04e87953a8
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I am working on a zedboard and trying to use preempt-rt patch.
The working kernel (Linux zedboard
3.6.0-digilent-13.01-00002-g06b3889-dirty #4 SMP PREEMPT Sun Oct 6 12:23:48
MDT 2013 armv7l GNU/Linux) that I have is from a repository maintain by
digilent
git remote show origin
* remote origin
  Fetch URL: https://github.com/Digilent/linux-digilent.git
I assuming the main changes are in the area of arch/arm/boot/dts
I did a "git clone git://
git.kernel.org/pub/scm/linux/kernel/git/rt/linux-stable-rt.git" and
downloaded the patch-3.6.11.1-2

I have tried the following
git checkout -b v3.6.11.1-2
which branch or tag actually goes to this new branch
git apply --stat ~/Downloads/patch-3.6.11.1-2 this seems to work
git apply --check ~/Downloads/patch-3.6.11.1-2 This shows lots of errors.

What would be the steps to take the changes in the linux-digilent
repository and the changes for linux-steps-rt to create my repository for
testing?

I am interested in testing performance with and without the patch.

For Real Time systems is this the best approach?
Any and all help will be welcomed.
Thanks

--089e0149c60e12a5bd04e87953a8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"ltr"><div><div><div><div><div><div><di=
v><div>Hello,<br/></div>I am working on a zedboard and trying to use preemp=
t-rt patch.<br/></div>The working kernel (Linux zedboard 3.6.0-digilent-13.=
01-00002-g06b3889-dirty #4 SMP PREEMPT Sun Oct 6 12:23:48 MDT 2013 armv7l G=
NU/Linux) that I have is from a repository maintain by digilent<br/>
git remote show origin<br/>* remote origin<br/>=C2=A0 Fetch URL: <a href=
=3D"https://github.com/Digilent/linux-digilent.git">https://github.com/Dig=
ilent/linux-digilent.git</a><br/></div><div>I assuming the main changes are=
 in the area of arch/arm/boot/dts<br/>
</div><div>I did a &#34;git clone <img src=3D"cid:attach_0_15D958A6083BA92=
7_14359@groups.io" alt=3D""/> git://<a href=3D"http://git.kernel.org/pub/sc=
m/linux/kernel/git/rt/linux-stable-rt.git">git.kernel.org/pub/scm/linux/ker=
nel/git/rt/linux-stable-rt.git</a>&#34; and downloaded the patch-3.6.11.1-2=
<br/>
</div><br/></div>I have tried the following<br/></div>git checkout -b v3.6=
.11.1-2<br/>which branch or tag actually goes to this new branch <br/>git a=
pply --stat ~/Downloads/patch-3.6.11.1-2 this seems to work<br/></div>git a=
pply --check ~/Downloads/patch-3.6.11.1-2 This shows lots of errors.<br/>
<br/></div>What would be the steps to take the changes in the linux-digile=
nt repository and the changes for linux-steps-rt to create my repository fo=
r testing? <br/><br/></div><div>I am interested in testing performance with=
 and without the patch.<br/>
<br/></div><div>For Real Time systems is this the best approach?<br/></div=
><div>Any and all help will be welcomed.<br/></div><div>Thanks<br/></div></=
div>
</body></html>

--089e0149c60e12a5bd04e87953a8--

--Oe5542tibupfXH1TxQaY
Content-Id: <attach_0_15D958A6083BA927_14359@groups.io>
X-Attachment-Id: attach_0_15D958A6083BA927_14359@groups.io
Content-Type: image/png; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64

PCFET0NUWVBFIEhUTUwgUFVCTElDICItLy9XM0MvL0RURCBIVE1MIDQuMCBUcmFuc2l0aW9uYWwv
L0VOIj4KPEhUTUw+CjxIRUFEPgoJPE1FVEEgSFRUUC1FUVVJVj0iQ09OVEVOVC1UWVBFIiBDT05U
RU5UPSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPgoJPFRJVExFPjwvVElUTEU+Cgk8TUVUQSBO
QU1FPSJHRU5FUkFUT1IiIENPTlRFTlQ9IkxpYnJlT2ZmaWNlIDMuNCAgKFVuaXgpIj4KCTxTVFlM
RSBUWVBFPSJ0ZXh0L2NzcyI+Cgk8IS0tCgkJQHBhZ2UgeyBtYXJnaW46IDAuNzlpbiB9CgkJUFJF
LmNqayB7IGZvbnQtZmFtaWx5OiAiRGVqYVZ1IFNhbnMiLCBtb25vc3BhY2UgfQoJCVAgeyBtYXJn
aW4tYm90dG9tOiAwLjA4aW4gfQoJLS0+Cgk8L1NUWUxFPgo8L0hFQUQ+CjxCT0RZIERJUj0iTFRS
Ij4KPFBSRSBDTEFTUz0id2VzdGVybiI+Z2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L3J0L2xpbnV4LXN0YWJsZS1ydC5naXQ8L1BSRT4KPC9CT0RZPgo8L0hUTUw+
AA==

--Oe5542tibupfXH1TxQaY--
