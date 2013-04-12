Return-Path: <andrew.james77777@gmail.com>
Received: from mail-qe0-f49.google.com (mail-qe0-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83F78E01410
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2013 01:34:45 -0700 (PDT)
Received: by mail-qe0-f49.google.com with SMTP id 6so1389844qeb.22
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2013 01:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=kLW1yp4dF5XmrE5ktL7aezNxq6/bJsS90/5bMyM8KQs=;
	b=pJR66DEn7KZ/EsQ3CC8TUPUDDtuo9sVhWxbdBhaM7PE5tLeN9sAsVL9kpUJXh7FawE
	JQXPcovYrOli7Nh9OXMaM5/brD+5/IXonjT4FS2gY8Eui8GKmxhxTK60X5i51I9sBVfy
	FPSZEErntCHtr+D6q1RJPC5Pl1zVQGhfSvORZhYv7dgQK8XZmrswbMe7/Zj/PZzfDnmg
	T0EENR9u58DhezOEoM6Ir3MAt1HXFOs4Y0piF1f2zoef8FYNp3GJUGTiBm0eH977vHx1
	4ELrlbyG0uHrc67P3MaNXCZU7b9Nar/2KwmUjhAzrXxKBKFvzC26SNcc8Kwe3907uTJY
	JXvw==
MIME-Version: 1.0
X-Received: by 10.224.8.202 with SMTP id i10mr10890317qai.56.1365755684751;
	Fri, 12 Apr 2013 01:34:44 -0700 (PDT)
Received: by 10.49.25.11 with HTTP; Fri, 12 Apr 2013 01:34:44 -0700 (PDT)
Date: Fri, 12 Apr 2013 09:34:44 +0100
Message-ID: <CAACeMc+wMTTRjKNPe5udZ5MKL=EFLL-comumqQbTt2zHtacTcg@mail.gmail.com>
From: Andrew James <andrew.james77777@gmail.com>
To: yocto@yoctoproject.org
Subject: Build problems with ML507 and meta-xilinx
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
X-List-Received-Date: Fri, 12 Apr 2013 08:34:45 -0000
Content-Type: multipart/alternative; boundary=bcaec517ae0470915804da25c691

--bcaec517ae0470915804da25c691
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I wonder if someone can help me. I'm attempting to do a yocto build for the
ML507 xilinx development board and am running into build error when
building eglibc
I'm using VMWARE Player running an Ubuntu 12.10 64-bit virtual machine. I
can succesfully build core-image-minimal using the default settings, but
when trying
to build for the ML507 (MACHINE = virtex-5-*ml507*-powerpc-440 I get a
build error when compiling eglibc, '440fp not supported'

I have used git to get the 'danny' version of the yocto directories.

Any help would be appreciated, I can provide futher details if neccessary

Thanks

Andrew

--bcaec517ae0470915804da25c691
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>=A0</div>
<div>I wonder if someone can help me. I&#39;m attempting to do a yocto buil=
d for the ML507 xilinx development board and am running into build error wh=
en building eglibc</div>
<div>I&#39;m using VMWARE Player running an Ubuntu 12.10 64-bit virtual mac=
hine. I can succesfully build core-image-minimal using the default settings=
, but when trying</div>
<div>to build for the ML507 (MACHINE =3D <font color=3D"#009933">virtex-5-<=
b>ml507</b>-powerpc-440 </font>I get a build error when compiling eglibc, &=
#39;440fp not supported&#39;</div>
<div>=A0</div>
<div>I have used git to get the &#39;danny&#39; version of the yocto direct=
ories.</div>
<div>=A0</div>
<div>Any help would be appreciated, I can provide futher details if neccess=
ary</div>
<div>=A0</div>
<div>Thanks</div>
<div>=A0</div>
<div>Andrew</div>

--bcaec517ae0470915804da25c691--
