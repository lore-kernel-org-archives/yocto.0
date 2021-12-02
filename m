Return-Path: <maureen.lalu@eolane.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FD9DC433EF
	for <webhook@archiver.kernel.org>; Thu,  2 Dec 2021 15:42:54 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.10032.1638459772522101005
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Dec 2021 07:42:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@eolane-com.20210112.gappssmtp.com header.s=20210112
 header.b=eG2AkrnL;
 spf=pass (domain: eolane.com, ip: 209.85.208.181,
 mailfrom: maureen.lalu@eolane.com)
Received: by mail-lj1-f181.google.com with SMTP id m12so476344ljj.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 02 Dec 2021 07:42:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=eolane-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=MuRA2CIOc4xUvvqyOroOJy5Z6iBtEKc79fHc9Qzy1w4=;
        b=eG2AkrnLUrCBJrybtQXFpUgW8eY5lDrU5vDF2R9HcfsKltKFQxcme7G/EUfo/6m0ko
         mzyvvQXOAKElBIgwPtdYBfnibX2v37jKZGTJGsLkwO+CPKQEiN2K8IXEq5u+No1HfoSK
         8Ek1Jgz28ji51Y1nefIv3Cb6LXN6Top7T6H5qJQpw5pn/jloIjZ9/XlaWpjzpHNpGobu
         L9l1jFvC82BJEI/qa7ucj6ez8BUHZD3nUuLUsmioYiWNu1kLVfGxiO/cjbz2se68SsYS
         aGl6Db9WWG6yz1jvwik+IRrHKrVXb8FIrtWto7n9f6xGydbs5hLX71oN4JKg2Sg/Zo5i
         3FmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MuRA2CIOc4xUvvqyOroOJy5Z6iBtEKc79fHc9Qzy1w4=;
        b=BoggueOTJPCHSI9J/oSorLmoKJKESLIW6p27agu7zK21002ptOrWSUCMgCgGrhHKYg
         d5qcCFaXAmkOVYRGGadyJNEvH1QeDPYktjUwBIwwamd1afEm81BlqJOT6y2LSQD9wUsl
         s/UfX7iZnFyUlvfCQFRZMpM5H5SEqm4wz3BuyQpmWwV/FwcHQHyV5U4V4rwWewKDHJdQ
         XphGOQD/WD6XI0Y+6ibbsWK2/DDxxirUORUBgdMTg9L+X8pgg3NzDpZgVxmPoh4kNCgf
         JGlIVx4L2snmq5763nmexBfFd/PhMHEmPMYcympDYcvCQckYZLGg+ucD8FRn5CprmT6M
         8apQ==
X-Gm-Message-State: AOAM5332GjmuLcZmxjhe3TcaGvE9SxDhiw8BLXiqKnCwGf7eLJ51RZiU
	9XqpUdeizoZKoj18A7hwyRoylhA3y0ueKJCSB5Fwa3exqbnMKBYBJnB8w03ylL1QvuOpCpD7TFb
	V05cmWS8YWLQe+SCt4Q73vu/ZesyQZ4uWvX/6vYGSgjROxg==
X-Google-Smtp-Source: 
 ABdhPJxTpj3+ZKu1Wo20vZPr1ShM2bBUecdRjEIdspkLiAC3F5mv53FyoarggAUpkt5PN4ZIdd3mTIkOd58wXb1hVlM=
X-Received: by 2002:a2e:b0e4:: with SMTP id h4mr12774972ljl.117.1638459770208;
 Thu, 02 Dec 2021 07:42:50 -0800 (PST)
MIME-Version: 1.0
From: Maureen LALU <maureen.lalu@eolane.com>
Date: Thu, 2 Dec 2021 16:42:43 +0000
Message-ID: 
 <CADD54eOEr7iPgtMTw_tCr+93XrGW0ZW0DnEiMsxf52b8z-PE1g@mail.gmail.com>
Subject: [yocto][nativesdk] compilation problem with nativesdk
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000951cf505d22ba4b5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Dec 2021 15:42:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55466

--000000000000951cf505d22ba4b5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I'm trying to write a recipe to build openjdk-9 with the Yocto project
dunfell.
I want to install the jre (the runtime environment of Java) on my target
and install the jdk (the development toolkit of java) on my build machine
and only on my build machine.

I succeeded to build openjdk and to install the jre on my target (I can run
Java applications on my target).
The fetch/patch/configure/compile tasks are made on a .inc file included on
my openjre-9.bb recipe which included only the install task.

Now, I want to install the jdk as part of the Yocto SDK to make it
accessible on my build machine. So I created a opendjdk-9.bb recipe wich
include my .inc file and added
BBCLASSEXTEND =3D "nativesdk" in the recipe with the install task.

I added " RDEPENDS_${PN} +=3D "nativesdk-openjdk-9" on a
nativesdk-packagegroup-sdk-host.bbappend

and I added TOOLCHAIN_HOST_TASK_append =3D " nativesdk-openjdk-9" on my ima=
ge
recipe.
Now my problem is that my recipe openjdk-9.bb doesn't compile, I have
"Cannot find autoconf" error while compiling.
I don't understand why because the compilation task is described on the
.inc file which is the same for the openjre-9.bb recipe (which works) and
the openjdk-9.bb recipe (which doesn't work).
I hope you can help me to understand the "nativesdk" extension.

--=20
Maureen

--=20

_This e-mail including any attachments may contain information which is=20
privileged or confidential or constitute non-public information.It is to be=
=20
conveyed only to the intended recipient(s). If you received this e-mail in=
=20
error, please notify the sender immediately by e-mail or telephone and=20
delete the e-mail=C2=A0 from your system without reading, copying or disclo=
sing=20
its contents to any other person.=C2=A0_

--000000000000951cf505d22ba4b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi everyone,</div><div><br></div><div>I&#39;m trying =
to write a recipe to build openjdk-9 with the Yocto project dunfell.<br></d=
iv><div>I
 want to install the jre (the runtime environment of Java) on my target=20
and install the jdk (the development toolkit of java) on my build=20
machine and only on my build machine.</div><div><br></div><div>I succeeded =
to build openjdk and to install the jre on my target (I can run Java applic=
ations on my target). <br></div><div>The fetch/patch/configure/compile task=
s are made on a .inc file included
 on my <a href=3D"http://openjre-9.bb" target=3D"_blank">openjre-9.bb</a> r=
ecipe which included only the install task. <br></div><div><br></div><div>N=
ow, I want to install the jdk as part of the Yocto SDK to make it accessibl=
e on my build machine. So I created a <a href=3D"http://opendjdk-9.bb" targ=
et=3D"_blank">opendjdk-9.bb</a> recipe wich include my .inc file and added =
<br></div><div>BBCLASSEXTEND =3D &quot;nativesdk&quot; in the recipe with t=
he install task.<br></div><div><br></div><div>I added &quot; RDEPENDS_${PN}=
 +=3D &quot;nativesdk-openjdk-9&quot; on a nativesdk-packagegroup-sdk-host.=
bbappend</div><div><br></div><div>and I added TOOLCHAIN_HOST_TASK_append =
=3D &quot; nativesdk-openjdk-9&quot; on my image recipe.<br></div><div>Now =
my problem is that my recipe <a href=3D"http://openjdk-9.bb" target=3D"_bla=
nk">openjdk-9.bb</a> doesn&#39;t compile, I have &quot;Cannot find autoconf=
&quot; error while compiling.<br></div><div>I don&#39;t understand why beca=
use the compilation task is described on the .inc file which is the same fo=
r the <a href=3D"http://openjre-9.bb" target=3D"_blank">openjre-9.bb</a> re=
cipe (which works) and the <a href=3D"http://openjdk-9.bb" target=3D"_blank=
">openjdk-9.bb</a> recipe (which doesn&#39;t work).<br></div><div>I hope yo=
u can help me to understand the &quot;nativesdk&quot; extension.</div><br>-=
- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_si=
gnature">
<table style=3D"border-collapse:collapse" width=3D"0" cellspacing=3D"0" cel=
lpadding=3D"0" border=3D"0">
   <tbody>
      <tr>
         <td rowspan=3D"5" style=3D"width:180pt;padding:0cm 3.5pt" width=3D=
"220" valign=3D"top">Maureen <br></td>
         <td colspan=3D"10" style=3D"width:600pt;padding:0cm 3.5pt" width=
=3D"447" valign=3D"top"><br></td>
      </tr>
    =20
      <tr>
         <td colspan=3D"10" style=3D"width:600pt;padding:0cm 3.5pt" width=
=3D"447" valign=3D"top"><br></td>
         <td style=3D"border:none;padding:0cm" width=3D"44">
          =20
         <br></td>
      </tr>
      <tr>
         <td colspan=3D"10" style=3D"width:600pt;padding:0cm 3.5pt" width=
=3D"447" valign=3D"top"><br></td>
      </tr>
   </tbody>
</table></div></div>

<br>
<div><hr></div><i style=3D"color:rgb(34,34,34);font-size:small;background-c=
olor:rgb(255,255,255)"><span lang=3D"EN-US" style=3D"font-size:9pt;font-fam=
ily:Calibri,sans-serif;color:rgb(0,0,153)">This e-mail including any attach=
ments may contain information which is privileged or confidential or consti=
tute non-public information.It is to be conveyed only to the intended recip=
ient(s). If you received this e-mail in error, please notify the sender imm=
ediately by e-mail or telephone and delete the e-mail=C2=A0 from your syste=
m without reading, copying or disclosing its contents to any other person.<=
/span></i><span style=3D"color:rgb(34,34,34);font-family:tahoma,sans-serif;=
font-size:small;background-color:rgb(255,255,255)">=C2=A0</span>
--000000000000951cf505d22ba4b5--

