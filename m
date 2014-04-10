Return-Path: <peter.ducai@gmail.com>
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7096E00BBF
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 00:14:49 -0700 (PDT)
Received: by mail-vc0-f169.google.com with SMTP id ik5so3075308vcb.14
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 00:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=XXuWoCsZfM7T14pohC4c4XzsrgC9p27eUW6Xsn6J+W8=;
	b=upj/b4bK+mahOMKk/NfatuZdDjqb0Wj9sT3BmE3zzxTgT6/fhu6ZpbQzAA8NOC3PS0
	xETtoo/LaZz7Ua7u5Vok9KX/8+OeBtKV8IUT/vpXZ1wZaruttkSYTz2JFJpnhoQOuOZa
	uUMPc58/eh0p1ob3BZSEUAAlsKJ/x/0a9Do2wBo7T9svAmN6ca7c+K4Z65vmLZmDzYOn
	PkKEdZTbzoDzwf/40qY6/ABF+dqvEmZpEPf1Fef05D/JTQ3DevVdgC4vsjtwM6NbxCEl
	NC4daL5cX2hh9L4z3eqkOZjsIK/WH5h9+r+tpSFGZj4oe3waf9qsE5aLNfVgVSX9iSQ8
	bhuA==
MIME-Version: 1.0
X-Received: by 10.58.105.105 with SMTP id gl9mr12822534veb.3.1397114088836;
	Thu, 10 Apr 2014 00:14:48 -0700 (PDT)
Received: by 10.220.224.81 with HTTP; Thu, 10 Apr 2014 00:14:48 -0700 (PDT)
Date: Thu, 10 Apr 2014 09:14:48 +0200
Message-ID: <CAGtsjUBxqC+v439Z6cev+MDjO83Fp2PTh9HoLxycRxbaee_0MQ@mail.gmail.com>
From: peter ducai <peter.ducai@gmail.com>
To: yocto@yoctoproject.org
Subject: ADT installer support
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
X-List-Received-Date: Thu, 10 Apr 2014 07:14:50 -0000
Content-Type: multipart/alternative; boundary=047d7b5d2c30f9d5df04f6aaf8f1

--047d7b5d2c30f9d5df04f6aaf8f1
Content-Type: text/plain; charset=UTF-8

hi all,
i currently work for company that is using ADT installer and they like to
automate it. After digging in code I found out this is very badly written
(5 scripts calling each other) and almost impossible to run it without any
user intervention. My main question is:

is there any maintainer for ADT? is there actually anyone that use it on
daily basis ? was anyone able to automate it?

Reading thru documentation I really start doubting purpose of ADT, as there
are other ways how to recompile project, and being pushed to work with ADT,
I already start creating something that really gonna work and can be fully
automated... so actually I'm trying to get a rid of ADT (and no maintainer
is another reason to do so). Currently at
https://github.com/daemonna/YoctoTools are only 2 functional scripts to
replace docs/wiki and to speed up things for developer:

yocto_dependency_installer.sh - Will detect distro and install all
dependencies... user doesn't have to find out what distro he has and what
commands to run

yocto_15_installer.sh - Yocto 1.5.1 installer. Will download, unpack and
build Yocto 1.5.1.. after looking at differences between 1.5 and 1.6, I
found best way is to make version specific script.

Other scripts (like toolchain installer) are already in progress, but still
not stable. Still, I'd like to ask, what is proper way to push these
changes into Yocto. Is it this mailing list only? or should I contact
someone else?

thanks and have a nice day

--047d7b5d2c30f9d5df04f6aaf8f1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hi all,<div>i currently work for company that is using ADT=
 installer and they like to automate it. After digging in code I found out =
this is very badly written (5 scripts calling each other) and almost imposs=
ible to run it without any user intervention. My main question is:</div>
<div><br></div><div>is there any maintainer for ADT? is there actually anyo=
ne that use it on daily basis ? was anyone able to automate it?</div><div><=
br></div><div>Reading thru documentation I really start doubting purpose of=
 ADT, as there are other ways how to recompile project, and being pushed to=
 work with ADT, I already start creating something that really gonna work a=
nd can be fully automated... so actually I&#39;m trying to get a rid of ADT=
 (and no maintainer is another reason to do so). Currently at=C2=A0<a href=
=3D"https://github.com/daemonna/YoctoTools">https://github.com/daemonna/Yoc=
toTools</a> are only 2 functional scripts to replace docs/wiki and to speed=
 up things for developer:</div>
<div><br></div><div><div>yocto_dependency_installer.sh - Will detect distro=
 and install all dependencies... user doesn&#39;t have to find out what dis=
tro he has and what commands to run</div><div><br></div><div>yocto_15_insta=
ller.sh - Yocto 1.5.1 installer. Will download, unpack and build Yocto 1.5.=
1.. after looking at differences between 1.5 and 1.6, I found best way is t=
o make version specific script.</div>
</div><div><br></div><div>Other scripts (like toolchain installer) are alre=
ady in progress, but still not stable. Still, I&#39;d like to ask, what is =
proper way to push these changes into Yocto. Is it this mailing list only? =
or should I contact someone else?</div>
<div><br></div><div>thanks and have a nice day</div><div><br></div><div><br=
></div></div>

--047d7b5d2c30f9d5df04f6aaf8f1--
