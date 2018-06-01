Return-Path: <anand.build1985@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3441AE00CC2; Thu, 31 May 2018 23:54:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (anand.build1985[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86402E00843
	for <yocto@yoctoproject.org>; Thu, 31 May 2018 23:54:11 -0700 (PDT)
Received: by mail-lf0-f45.google.com with SMTP id y72-v6so13255261lfd.2
	for <yocto@yoctoproject.org>; Thu, 31 May 2018 23:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=mFg+xRxPs2vA50/AQqOpV1ar4VNIKbgRpgGCojKiuJI=;
	b=P6p2GE3f8BcTZM/X5GtbdU7D71bdvjXD+BQcsZXA9hnBwF0fhakhcjUIuMNDLBARyv
	XMeM6T0DlyBzU4dUr6/d0KIjkxIR1FUexIpwgRnSYCbBCWhfWOsL0DxCY0yUs25HhH6i
	Cy5VCH3WUKELa5CwTJ0KpTv7TldBE1Sq7QT5yBFZlkAv/1vY4TGcZGeQUtKcON99qeOz
	GjcNKIubehnvWe3Pg3uEpS/SrTVCi6J5eXU5YiG3F7ImYOoDOQ+wjDZkDWddrfMsI9B4
	n5/0ENYK9P7Ym3Etopbtp3eNjrnpGLkC+FEyV4P6gibQ3zxE8qOdrOa/EOb+fJP80RbJ
	LOWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=mFg+xRxPs2vA50/AQqOpV1ar4VNIKbgRpgGCojKiuJI=;
	b=drXmAwDYhekH7I3obqCM6k/qHyi4nxOeKA7F2CvaxTG/2XTYr5zZQfIahzu5x0lOVk
	nu2O/f82ngtias/nNSaIGto9nbcH5SDw1AABCqQx1gR4gEjPsh160Y5/j9EoGpXOzxsP
	i3qRYGlehO9XCaUE2hl1xvjJZUjnJriIzJGQk39xqsLa/a6Lp6nr5bMX/2n5/xBQaMJC
	Uf2JfCQtSBFGitPNL+5hM4fHuSpeCAv9MBWMF/824jEIwDqAugdSkvHNSdJb/+ocaJEe
	JV/qGgY/Z3i6GrdQ+Y1kHtIWKxBrVSlyAxn7qRszMl2ZgI6SFnYUNZ87ecTZvRSeleZQ
	bnmQ==
X-Gm-Message-State: ALKqPweIE/gj8APZNDzeK5UBGm0pS/Tw1uIeDMRSaWukuqwJryK3P2/m
	0GFRGXDi/by7IwnEWoSmLNU+R4CYJ6P5O5JSMsCABg==
X-Google-Smtp-Source: ADUXVKI6SKEaIWU6slQsAWxCgdPqHswrUwXVXCI73JUmyfZ/77copT6/METc5Xr8pACChRT0SE/4fJilFO3YBx3mLBY=
X-Received: by 2002:a2e:5c89:: with SMTP id
	q131-v6mr6819182ljb.77.1527836050017; 
	Thu, 31 May 2018 23:54:10 -0700 (PDT)
MIME-Version: 1.0
From: Anand Ingale <anand.build1985@gmail.com>
Date: Fri, 1 Jun 2018 12:23:58 +0530
Message-ID: <CA+=TBV5jUOgnDpNTst0z0Qdp=mv8LLdRXySV6xnGUDLa0pYXMA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: testimage feature ( automated tests for qemu images ) not working for qemuarm virt machine
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
X-List-Received-Date: Fri, 01 Jun 2018 06:54:13 -0000
Content-Type: multipart/alternative; boundary="000000000000095143056d8f0d25"

--000000000000095143056d8f0d25
Content-Type: text/plain; charset="UTF-8"

 Hi All,
 I have booted qemuarm  image for virt machine ( not for  versatilepb which
is available by default in poky) .

in my kernel recipe , source i have taken from below repository
{{{

SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
"

}}}

i have created a defconfig file using multi_v7_defconfig
     # cloned git://
git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
     # make multi_v7_defconfig
     # copied .config generated as defconfig to recipes-kernel directory


 i have used  core-image-minimal  to build rootfs

 i am able to boot qemu image when i run , # runqemu qemuarm nographic
 {{{
Poky (Yocto Project Reference Distro) 2.4.2 qemuarm /dev/ttyAMA0

qemuarm login: root
root@qemuarm:~#
root@qemuarm:~# uname -a
Linux qemuarm 4.17.0-rc5-myker #1 SMP Sat May 19 17:25:41 UTC 2018 armv7l
GNU/Linux
root@qemuarm:~#
}}}

followed this link to run testimage
https://wiki.yoctoproject.org/wiki/Image_tests

 when i run below commnad , it  fails to run tests
  # bitbake core-image-minimal -c testimage
{{{
 WARNING: Qemu ended unexpectedly, dump data from host is in
/tmp/oe-saved-tests/201805310707_qemu
| DEBUG: Stopping logging thread
| DEBUG: Stop event received
| DEBUG: Tearing down logging thread
| DEBUG: Sending SIGTERM to runqemu
| ERROR: testimage received SIGTERM, shutting down...
| ERROR: core-image-minimal - FAILED - tests were interrupted during
execution
| DEBUG: Python function do_testimage finished
| ERROR: Function failed: do_testimage
ERROR: Task
(/home/AIngale/Poky-1/poky-virt/meta/recipes-core/images/core-image-minimal.bb:do_testimage)
failed with exit code '1'

}}}

  do i need enable any kernel config for testimage feature to work ??.
please suggest  what changes i need to do . I have tried this on poky's
rocko branch .

Best Regards

--000000000000095143056d8f0d25
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:1=
2.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline">Hi All,</span><div style=3D"color:rgb(34,34,34);=
font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial">=C2=A0I have booted qemuarm=C2=A0 =
image for virt machine ( not for=C2=A0 versatilepb which is available by de=
fault in poky) .</div><div style=3D"color:rgb(34,34,34);font-family:arial,s=
ans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial">=C2=A0</div><div style=3D"color:rgb(34,34,34);font-fa=
mily:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligat=
ures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;white-space:normal;wor=
d-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial">in my kernel recipe , source i have taken=
 from below repository=C2=A0 =C2=A0</div><div style=3D"color:rgb(34,34,34);=
font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial">{{{</div><div style=3D"color:rgb(3=
4,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial"><br></div><div style=3D"c=
olor:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial">SRC_URI =3D &qu=
ot;git://<a href=3D"http://git.kernel.org/pub/scm/linux/kernel/git/torvalds=
/linux.git" target=3D"_blank" style=3D"color:rgb(17,85,204)">git.kernel.org=
/pub/scm/linux/kernel/git/torvalds/linux.git</a>&quot;=C2=A0</div><div styl=
e=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,=
255);text-decoration-style:initial;text-decoration-color:initial"><br></div=
><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:1=
2.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial"=
>}}}</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;fo=
nt-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-variant=
-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px;background=
-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color=
:initial"><br></div><div style=3D"color:rgb(34,34,34);font-family:arial,san=
s-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial">i have created a defconfig file using multi_v7_defconfi=
g=C2=A0</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif=
;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-vari=
ant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial">=C2=A0 =C2=A0 =C2=A0# cloned git://<a href=3D"http://git.kerne=
l.org/pub/scm/linux/kernel/git/torvalds/linux.git" target=3D"_blank" style=
=3D"color:rgb(17,85,204)">git.kernel.org/pub/scm/linux/kernel/git/torvalds/=
linux.git</a>=C2=A0</div><div style=3D"color:rgb(34,34,34);font-family:aria=
l,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:norm=
al;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-d=
ecoration-color:initial">=C2=A0 =C2=A0 =C2=A0# make multi_v7_defconfig=C2=
=A0</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;fon=
t-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-=
caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;white-space:normal;word-spacing:0px;background-=
color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:=
initial">=C2=A0 =C2=A0 =C2=A0# copied .config generated as defconfig to rec=
ipes-kernel directory=C2=A0</div><div style=3D"color:rgb(34,34,34);font-fam=
ily:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatu=
res:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;t=
ext-align:start;text-indent:0px;text-transform:none;white-space:normal;word=
-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initia=
l;text-decoration-color:initial">=C2=A0</div><div style=3D"color:rgb(34,34,=
34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-va=
riant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spac=
ing:normal;text-align:start;text-indent:0px;text-transform:none;white-space=
:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-=
style:initial;text-decoration-color:initial"><br></div><div style=3D"color:=
rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:norm=
al;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;l=
etter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
hite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-d=
ecoration-style:initial;text-decoration-color:initial">=C2=A0i have used=C2=
=A0 core-image-minimal=C2=A0 to build rootfs=C2=A0</div><div style=3D"color=
:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:nor=
mal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;=
white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-=
decoration-style:initial;text-decoration-color:initial"><br></div><div styl=
e=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,=
255);text-decoration-style:initial;text-decoration-color:initial">=C2=A0i a=
m able to boot qemu image when i run , # runqemu qemuarm nographic=C2=A0</d=
iv><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;background-color:=
rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l">=C2=A0{{{</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial">Poky (Yocto Project Reference Distro) 2.4.2 qemuarm /dev/=
ttyAMA0</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif=
;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-vari=
ant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial"><br></div><div style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial">qemuarm login: root</div><div style=3D"color:rgb(34,=
34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font=
-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-s=
pacing:normal;text-align:start;text-indent:0px;text-transform:none;white-sp=
ace:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial">root@qemuarm:~#</div><div s=
tyle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;f=
ont-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,2=
55,255);text-decoration-style:initial;text-decoration-color:initial">root@q=
emuarm:~# uname -a</div><div style=3D"color:rgb(34,34,34);font-family:arial=
,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:=
0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial">Linux qemuarm 4.17.0-rc5-myker #1 SMP Sat May 19 17=
:25:41 UTC 2018 armv7l GNU/Linux</div><div style=3D"color:rgb(34,34,34);fon=
t-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:i=
nitial;text-decoration-color:initial">root@qemuarm:~#</div><div style=3D"co=
lor:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:=
normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:4=
00;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);te=
xt-decoration-style:initial;text-decoration-color:initial">}}}</div><div st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,25=
5,255);text-decoration-style:initial;text-decoration-color:initial"><br></d=
iv><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;background-color:=
rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l">followed this link to run testimage</div><div style=3D"color:rgb(34,34,3=
4);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-var=
iant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-space:=
normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-s=
tyle:initial;text-decoration-color:initial"><a href=3D"https://wiki.yoctopr=
oject.org/wiki/Image_tests" target=3D"_blank" style=3D"color:rgb(17,85,204)=
">https://wiki.yoctoproject.org/wiki/Image_tests</a>=C2=A0</div><div style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial">=C2=A0</di=
v><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:=
12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
">=C2=A0when i run below commnad , it=C2=A0 fails to run tests</div><div st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,25=
5,255);text-decoration-style:initial;text-decoration-color:initial">=C2=A0 =
# bitbake core-image-minimal -c testimage</div><div style=3D"color:rgb(34,3=
4,34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial">{{{</div><div style=3D"color=
:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:nor=
mal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;=
white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-=
decoration-style:initial;text-decoration-color:initial">=C2=A0WARNING: Qemu=
 ended unexpectedly, dump data from host is in /tmp/oe-saved-tests/20180531=
0707_qemu</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-ser=
if;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-va=
riant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;te=
xt-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backg=
round-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-=
color:initial">| DEBUG: Stopping logging thread</div><div style=3D"color:rg=
b(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal=
;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-dec=
oration-style:initial;text-decoration-color:initial">| DEBUG: Stop event re=
ceived</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;=
font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgrou=
nd-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-col=
or:initial">| DEBUG: Tearing down logging thread</div><div style=3D"color:r=
gb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:norma=
l;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial">| DEBUG: Sending SIGT=
ERM to runqemu</div><div style=3D"color:rgb(34,34,34);font-family:arial,san=
s-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial">| ERROR: testimage received SIGTERM, shutting down...</=
div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-siz=
e:12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;white-space:normal;word-spacing:0px;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initi=
al">| ERROR: core-image-minimal - FAILED - tests were interrupted during ex=
ecution</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif=
;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-vari=
ant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial">| DEBUG: Python function do_testimage finished</div><div style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial">| ERROR: F=
unction failed: do_testimage</div><div style=3D"color:rgb(34,34,34);font-fa=
mily:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligat=
ures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;white-space:normal;wor=
d-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial">ERROR: Task (/home/AIngale/Poky-1/poky-vi=
rt/meta/recipes-core/images/core-image-minimal.bb:do_testimage) failed with=
 exit code &#39;1&#39;</div><div style=3D"color:rgb(34,34,34);font-family:a=
rial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial"><br></div><div style=3D"color:rgb(34,34,34);fon=
t-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:i=
nitial;text-decoration-color:initial">}}}=C2=A0=C2=A0</div><div style=3D"co=
lor:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:=
normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:4=
00;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);te=
xt-decoration-style:initial;text-decoration-color:initial">=C2=A0=C2=A0</di=
v><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:=
12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
">=C2=A0 do i need enable any kernel config for testimage feature to work ?=
?. please suggest=C2=A0 what changes i need to do . I have tried this on po=
ky&#39;s rocko branch .</div><div style=3D"color:rgb(34,34,34);font-family:=
arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial"><br></div><div style=3D"color:rgb(34,34,34);fo=
nt-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:=
initial;text-decoration-color:initial">Best Regards</div>

<br></div>

--000000000000095143056d8f0d25--
