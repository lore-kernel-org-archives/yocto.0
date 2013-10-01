Return-Path: <008dilip@gmail.com>
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85743E01626
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2013 23:18:44 -0700 (PDT)
Received: by mail-qc0-f178.google.com with SMTP id r5so4368969qcx.37
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2013 23:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=fim4WfkI+bAXzGWgEpjrCUTrHKYJR186Q/bNKmdNcA8=;
	b=SHryrHmC4Y9W+QVbT48sbyQxOgBvRXTrEwJIsG/0GQ9x9Z2cqBaaoTLzKKsLPmD95r
	QkiPyR66RDmnBOr0L6Ed3HaJMi46gV4Ra/nE+s/NKljMJMv8uFzNyiqkSi7J7EZFfHJZ
	MzPI65P7jxNGr8YeMKl9+Xag/zHCICrfE+yUfhuplzI+32JNufuniVDXC8yXgplTqi9y
	hGwQ6j0pcW7dbEHv8jmhGxBGic5A5O/1AAGmXj9Ghg17lEP0jfJWSfYoQVl1Nim1IuFQ
	gNLJVFEw273hn9daytJC6V9tbjmr6HgmwYDR67Q85B3TT6x4/wKQqyiRULG2zQWHEroU
	wMyA==
MIME-Version: 1.0
X-Received: by 10.224.10.202 with SMTP id q10mr37899168qaq.8.1380608324371;
	Mon, 30 Sep 2013 23:18:44 -0700 (PDT)
Received: by 10.49.120.133 with HTTP; Mon, 30 Sep 2013 23:18:44 -0700 (PDT)
Received: by 10.49.120.133 with HTTP; Mon, 30 Sep 2013 23:18:44 -0700 (PDT)
In-Reply-To: <368D4D1DD61B4E4A97BC63E95AC9EB8727005DA769@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <368D4D1DD61B4E4A97BC63E95AC9EB8727005DA769@BLRINMSMBX01.bglrodc.lntinfotech.com>
Date: Tue, 1 Oct 2013 11:48:44 +0530
Message-ID: <CABmxB3MiTszCC4f0c9zKzy-obwtj2oNEueS1npsE8FXrwaRvww@mail.gmail.com>
From: Dilip Kumar <008dilip@gmail.com>
To: yocto@yoctoproject.org
Subject: FW: Creating BSP without using git
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
X-List-Received-Date: Tue, 01 Oct 2013 06:18:45 -0000
Content-Type: multipart/alternative; boundary=001a11c2cce6bf892504e7a7ec74

--001a11c2cce6bf892504e7a7ec74
Content-Type: text/plain; charset=ISO-8859-1

>
>
>
>
> Hi,
>
>             I need to create a local BSP layer using Yocto-bsp create
command without the use of Git.
>
>
>
>
>
> yocto-bsp create mylayers qemu -s
>
> Which qemu architecture would you like to use? [default: i386]
>
>             1) i386    (32-bit)
>
>             2) x86_64  (64-bit)
>
>             3) ARM     (32-bit)
>
>             4) PowerPC (32-bit)
>
>             5) MIPS    (32-bit)
>
> 3
>
> Would you like to use the default (3.8) kernel? (y/n) [default: y] y
>
> Do you need a new machine branch for this BSP (the alternative is to
re-use an existing branch)? [y/n] [default: y] n
>
> Getting branches from remote repo git://
git.yoctoproject.org/linux-yocto-3.8.git...
>
>
>
>
>
> Thanks with Regards
>
>
---------------------------------------------------------------------------------------------
> Dilip Kumar b
>
--------------------------------------------------------------------------------------------
>
>
>
>
> ________________________________
> The contents of this e-mail and any attachment(s) may contain
confidential or privileged information for the intended recipient(s).
Unintended recipients are prohibited from taking action on the basis of
information in this e-mail and using or disseminating the information, and
must notify the sender and delete it from their system. L&T Infotech will
not accept responsibility or liability for the accuracy or completeness of,
or the presence of any virus or disabling code in this e-mail"

--001a11c2cce6bf892504e7a7ec74
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
&gt; =A0<br>
&gt;<br>
&gt; <br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 I need to create a local BSP layer u=
sing Yocto-bsp create command without the use of Git.<br>
&gt;<br>
&gt; =A0<br>
&gt;<br>
&gt; =A0<br>
&gt;<br>
&gt; yocto-bsp create mylayers qemu -s<br>
&gt;<br>
&gt; Which qemu architecture would you like to use? [default: i386]<br>
&gt;<br>
&gt; =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1) i386=A0=A0=A0 (32-bit)<br>
&gt;<br>
&gt; =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 2) x86_64=A0 (64-bit)<br>
&gt;<br>
&gt; =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 3) ARM=A0=A0=A0=A0 (32-bit)<br>
&gt;<br>
&gt; =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 4) PowerPC (32-bit)<br>
&gt;<br>
&gt; =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 5) MIPS=A0=A0=A0 (32-bit)<br>
&gt;<br>
&gt; 3<br>
&gt;<br>
&gt; Would you like to use the default (3.8) kernel? (y/n) [default: y] y<b=
r>
&gt;<br>
&gt; Do you need a new machine branch for this BSP (the alternative is to r=
e-use an existing branch)? [y/n] [default: y] n<br>
&gt;<br>
&gt; Getting branches from remote repo git://<a href=3D"http://git.yoctopro=
ject.org/linux-yocto-3.8.git.">git.yoctoproject.org/linux-yocto-3.8.git.</a=
>..<br>
&gt;<br>
&gt; =A0<br>
&gt;<br>
&gt; =A0<br>
&gt;<br>
&gt; Thanks with Regards<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
-----------------------<br>
&gt; Dilip Kumar b<br>
&gt; ----------------------------------------------------------------------=
----------------------<br>
&gt;<br>
&gt; =A0<br>
&gt;<br>
&gt;<br>
&gt; ________________________________<br>
&gt; The contents of this e-mail and any attachment(s) may contain confiden=
tial or privileged information for the intended recipient(s). Unintended re=
cipients are prohibited from taking action on the basis of information in t=
his e-mail and using or disseminating the information, and must notify the =
sender and delete it from their system. L&amp;T Infotech will not accept re=
sponsibility or liability for the accuracy or completeness of, or the prese=
nce of any virus or disabling code in this e-mail&quot;<br>

</p>

--001a11c2cce6bf892504e7a7ec74--
