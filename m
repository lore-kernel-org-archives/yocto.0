Return-Path: <bbergquist@epc-instore.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA90C3DA70
	for <webhook@archiver.kernel.org>; Tue, 30 Jul 2024 19:35:02 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web11.26293.1722368092427861910
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jul 2024 12:34:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@epc-instore.com header.s=google header.b=FLAXcbQ/;
 spf=permerror, err=too many SPF records (domain: epc-instore.com, ip: 209.85.219.51, mailfrom: bbergquist@epc-instore.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6b7a3e4686eso28021216d6.1
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 12:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=epc-instore.com; s=google; t=1722368091; x=1722972891; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8khV8y4hJdPZpZy3GMLg3shfnh4wIzrw/jhMrCLokAg=;
        b=FLAXcbQ/f3MHaA7xSVQBVLB3Mj/S3lGGvk81hPq4bystdA9A30uQJiDSb7m2YZvL7R
         l+1dNqrjWF4mW6RVLjATnlKjacHEkUpq7UT6hEAW4r8LsP8GXUS0ZrPNAe/C3FuGoqEa
         0kI+wOX1fwWKKZYYc8RyEvoWBSFprALI5+3EeO3x18gxC4KrBK7JmTKOBjulPE/Qluri
         vnWl6fEC7VnyxYvIHN6M22t3srmQ5bdBAHMqOmyg7ppGjH6PPQfBXTma4E62vO9Pc15c
         ep99a2QAvGhqJ8xUdTC6OayNV+HlXwuTuZpe8ZZgHAA2Ojx21tIUHGbrWGEckNuey8GE
         orlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722368091; x=1722972891;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8khV8y4hJdPZpZy3GMLg3shfnh4wIzrw/jhMrCLokAg=;
        b=DFo5XS0tJAcasiqkeTbiltU/x5yt+lxHV+IGLpX76BAlzcwzq0eU6qcUl5HSbkqOzx
         QhiYQS5GOBjZUxQluNfREKLLbJHoQrhm+bb9ECLJBkhmpYgajl0PmSSES0DpKde2yqVw
         COA8Eudq5ZqQrxwP9sD0rmaGkzqpxzeE4U813T83nPjxIuc/+DWzi/YeGdHs/mTNkSul
         cBp7UKvZi2wpsDJ7d8nPk/eC/wvVy8wFfl6SJtn+NlYuD5Piq+O7+7/70M42Emhr5LbP
         oNTdnuC5sHPezko12CwGPPmIY2Xjsod+msqr9wrZrT7W21BxERejfyW1ZaFCgUNtjnyx
         0HEg==
X-Gm-Message-State: AOJu0YwvWcItUfYXiR+c/KAWiAMY/Cvqnj9w8Kn0Jvpr56ROcuOFjz64
	AN3URDZmfhy5E7U5yMjo/noQd7nOW6fgmnVMgw5KDkWIVX0tBakHufUi0RPOH0aGqd86f5MEIsa
	fE8hOvZvPpmBbI/cgA41D9BMqPdFLCx3P+uSPUro+fMt9lTsqaEM=
X-Google-Smtp-Source: AGHT+IG6m5MydxM5CN0WWlcat1UKeMdvIi6q2jGx6DjxcGzo2h5dhQ4rTh5veQOwUnIE2jnAPzhGfBBX88ZzIHgJb50=
X-Received: by 2002:a05:6214:194a:b0:6b5:eba0:d0ab with SMTP id
 6a1803df08f44-6bb559cf810mr133179966d6.15.1722368091124; Tue, 30 Jul 2024
 12:34:51 -0700 (PDT)
MIME-Version: 1.0
From: Brett Bergquist <bbergquist@epc-instore.com>
Date: Tue, 30 Jul 2024 15:34:40 -0400
Message-ID: <CAH+ZgJvGrC6fudef752LBNufu59e3z=_QJ_RtLPEiM_U5_1XKQ@mail.gmail.com>
Subject: Question on how to enforce a task dependency
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003e8ed5061e7c1295"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 19:35:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63612

--0000000000003e8ed5061e7c1295
Content-Type: text/plain; charset="UTF-8"

I have a recipe that basically is repackaging an Debian package.  We don't
have the source so we cannot build the package directly.

I have to patch the "postinst" file that is within the "control.tar.xz"
file.   I wrote a task "do_prepare" that will expand the "control.tar.xz"
file and I want to ensure the task is run before the "do_patch" task but
after the "do_fetch" task.

I added this

addtask do_prepare after do_unpack before do_patch

Sometimes this fails and the "do_patch" task does not see the extracted
content to patch.   Adding in a "-D" to the bitbake command will sometimes
cause a difference in what I perceive to be timing and the recipe builds
fine.  I have not been able to figure out what the issue is.

If I look at the dependencies of the recipe's
"zebra-scanner-corescanner:do_patch" task, I see for my recipe which is
"zebra-scanner-corescanner"

   - patch-native:do_populate_sysroot
   - quilt-native:do_populate_sysroot
   - zebra-scanner-corescanner:do_prepare
   - zebra-scanner-corescanner:do_unpack

and for for the "zebra-scanner-corescanner:do_prepare" task I see:

   - zebra-scanner-corescanner:do_unpack

Being a bit new to this, I think the "zebra-scanner-corescanner:do_patch"
should wait for all of its tasks to complete before it runs and those tasks
might be run in parallel, one of which will be the
"zebra-scanner-corescanner:do_unpack" but the
"zebra-scanner-corescanner:do_prepare" also has a dependency on the
"zebra-scanner-corescanner:do_unpack" so ultimately the
"zebra-scanner-corescanner:do_patch" should be waiting until the
"zebra-scanner-corescanner:do_prepare" completes.

However it appears that sometimes it does not.  Anyone have any ideas on
this?

-- 
Brett M. Bergquist
*Distinguished Member Technical Staff*
*EntryPoint Communications LLC*
*30 Waterside Drive, Suite 100*
*Farmington, CT 06032*

Phone: (203) 206 3542
Email: bbergquist@epc-instore.com

CONFIDENTIALITY NOTICE
This message (including any attachments) contains information that may be
confidential.  If you are the intended recipient, and the message is marked
confidential, by opening the message, you accept responsibility for
treating the message and information contained in the message as
confidential, including not distributing or disclosing its contents to any
third party without the express written consent of the sender.  If you are
not the intended recipient, you may not read, print, retain, use, copy,
distribute or disclose to anyone the message or any information contained
in the message, and such conduct is prohibited.  If you have received this
message in error, please advise the sender by reply e-mail, and destroy all
copies of the original message (including any attachments).  Sender
reserves all rights of confidentiality and privilege, and nothing regarding
this e-mail or its transmission is intended to be a waiver thereof.

--0000000000003e8ed5061e7c1295
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have a recipe that basically is repackaging an Debian pa=
ckage.=C2=A0 We don&#39;t have the source so we cannot build the package di=
rectly.=C2=A0<div><br></div><div>I have to patch the &quot;postinst&quot; f=
ile that is within the &quot;control.tar.xz&quot; file.=C2=A0 =C2=A0I wrote=
 a task &quot;do_prepare&quot; that will expand=C2=A0the &quot;control.tar.=
xz&quot; file and I want to ensure the task is run before the &quot;do_patc=
h&quot; task but after the &quot;do_fetch&quot; task.=C2=A0=C2=A0<br clear=
=3D"all"><div><br></div><div>I added this=C2=A0</div><div><br></div></div><=
blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><div><div>ad=
dtask do_prepare after do_unpack before do_patch</div></div><div><br></div>=
</blockquote>Sometimes this fails and the &quot;do_patch&quot; task does no=
t see the extracted content to patch.=C2=A0 =C2=A0Adding in a &quot;-D&quot=
; to the bitbake command will sometimes cause a difference in what I percei=
ve to be timing and the recipe builds fine.=C2=A0 I have not been able to f=
igure=C2=A0out what the issue is.<div><br></div><div>If I look at the depen=
dencies of the recipe&#39;s &quot;zebra-scanner-corescanner:do_patch&quot; =
task, I see for my recipe which is &quot;zebra-scanner-corescanner&quot;</d=
iv><div><ul><li>patch-native:do_populate_sysroot</li><li>quilt-native:do_po=
pulate_sysroot</li><li>zebra-scanner-corescanner:do_prepare</li><li>zebra-s=
canner-corescanner:do_unpack</li></ul><div>and for for the &quot;zebra-scan=
ner-corescanner:do_prepare&quot; task I see:</div><div><ul><li>zebra-scanne=
r-corescanner:do_unpack</li></ul><div>Being a bit new to this, I think the =
&quot;zebra-scanner-corescanner:do_patch&quot; should wait for all of its t=
asks to complete before it runs and those tasks might be run in parallel, o=
ne of which will be the &quot;zebra-scanner-corescanner:do_unpack&quot; but=
 the &quot;zebra-scanner-corescanner:do_prepare&quot; also has a dependency=
 on the &quot;zebra-scanner-corescanner:do_unpack&quot; so ultimately the &=
quot;zebra-scanner-corescanner:do_patch&quot; should be waiting until the &=
quot;zebra-scanner-corescanner:do_prepare&quot; completes.=C2=A0 =C2=A0</di=
v><div><br></div><div>However it appears that sometimes it does not.=C2=A0 =
Anyone have any ideas on this?</div><div><br></div><div><span class=3D"gmai=
l_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature=
" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Brett M. Bergquist<di=
v><b>Distinguished Member Technical Staff</b></div><div><b>EntryPoint Commu=
nications LLC</b></div><div><b>30 Waterside Drive, Suite 100</b></div><div>=
<b>Farmington, CT 06032</b></div><div><b><br></b></div><div>Phone: (203) 20=
6 3542</div><div>Email: <a href=3D"mailto:bbergquist@epc-instore.com" targe=
t=3D"_blank">bbergquist@epc-instore.com</a></div><div><br></div><div><span =
style=3D"color:rgb(34,34,34);font-family:&quot;Times New Roman&quot;,serif;=
font-size:13.3333px">CONFIDENTIALITY NOTICE</span><br style=3D"color:rgb(34=
,34,34);font-family:&quot;Times New Roman&quot;,serif;font-size:13.3333px">=
<span style=3D"color:rgb(34,34,34);font-family:&quot;Times New Roman&quot;,=
serif;font-size:13.3333px">This message (including any attachments) contain=
s information that may be confidential.=C2=A0 If you are the intended recip=
ient, and the message is marked confidential, by opening the message, you a=
ccept responsibility for treating the message and information contained in =
the message as confidential, including not distributing or disclosing its c=
ontents to any third party without the express written consent of the sende=
r.=C2=A0 If you are not the intended recipient, you may not read, print, re=
tain, use, copy, distribute or disclose to anyone the message or any inform=
ation contained in the message, and such conduct is prohibited.=C2=A0 If yo=
u have received this message in error, please advise the sender by reply e-=
mail, and destroy all copies of the original message (including any attachm=
ents).=C2=A0 Sender reserves all rights of confidentiality and privilege, a=
nd nothing regarding this e-mail or its transmission is intended to be a wa=
iver thereof.</span><br></div></div></div></div></div></div></div>

--0000000000003e8ed5061e7c1295--

