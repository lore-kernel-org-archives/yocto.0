Return-Path: <graycells@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3238BE01457
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 04:48:18 -0700 (PDT)
Received: by lboj14 with SMTP id j14so5175519lbo.35
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 04:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=fn0qgg72yBhrD9ijHJXPptJ7kLu3slu4FMtRvSbHBnU=;
	b=s5JQv9XM+dTpOgfdvGDQUFkvJChtnD0zXh+hzBMsarPfIDZJ2TMTMuimIbmImJSCpX
	apBzZUXsplD9iuSy/Pm1VmAM37eLMeO6dGW4k2Qd17Rr91LJAd/gIf+C1EZxhEpFdzeN
	G5ZUEEvhEJtblGHPd9iHwwKLWTrBFvobK3n2cHNYpYyKXEQ3GHg1clalUmSDt0zFOUhz
	PsoGfX8PI6B7qcyYHjmbB4ujhysGlkJPNgXIR+D2nHKLEjB5BIOa5+07Pp9HjBHb/yaV
	BAgCx6V6QSqzs1O1oBszxQYmLF6fvRsflgvgU5Y4ShvVNc8OtZw6NeKv6KA/ntaJ60Vc
	pxuA==
MIME-Version: 1.0
Received: by 10.152.112.138 with SMTP id iq10mr14274301lab.13.1340020096617;
	Mon, 18 Jun 2012 04:48:16 -0700 (PDT)
Received: by 10.112.111.200 with HTTP; Mon, 18 Jun 2012 04:48:16 -0700 (PDT)
Date: Mon, 18 Jun 2012 20:48:16 +0900
Message-ID: <CAKPsnf130xcvUrYE66p0BMjEFpVo48W58rtTWU_7zuLuZshP2g@mail.gmail.com>
From: Bongseo Jang <graycells@gmail.com>
To: yocto@yoctoproject.org
Subject: question about devtools-native tasks
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
X-List-Received-Date: Mon, 18 Jun 2012 11:48:18 -0000
Content-Type: multipart/alternative; boundary=f46d0408da07d9cd1e04c2bdbde4

--f46d0408da07d9cd1e04c2bdbde4
Content-Type: text/plain; charset=UTF-8

Hi All,

I'm watching console output of 'bitbake minimal-core-image'
It starts with getting native devtools like,

NOTE: Running task 1 of 63 (ID: 11,
/home/bsjang/poky/meta/recipes-devtools/quilt/quilt-native_0.60.bb,
do_fetch)
NOTE: Running task 2 of 63 (ID: 53,
virtual:native:/home/bsjang/poky/meta/recipes-devtools/gnu-config/
gnu-config_20111111.bb, do_fetch)
NOTE: Running task 3 of 63 (ID: 60,
/home/bsjang/poky/meta/recipes-devtools/m4/m4-native_1.4.16.bb, do_fetch)
NOTE: Running task 4 of 63 (ID: 32,
virtual:native:/home/bsjang/poky/meta/recipes-devtools/autoconf/
autoconf_2.68.bb, do_fetch)
and then reads bblayers.conf, local.conf and so on which are actually asked
to be done by me, right?

I'm wondering
     1) where the dependency on native devtools things are from (source
level explanation or overall yocto/poky concept are all welcom) and
     2) can I use native tools which are already installed in my host linux
distribution.(i don't want to fetch and compile the same tools again)

thank you.


-- 
Regards,
Jang.

 a sound mind in a sound body

--f46d0408da07d9cd1e04c2bdbde4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div>Hi All,</div><div>=C2=A0</div><div>I&#39;m watching console output of =
&#39;bitbake minimal-core-image&#39;</div><div>It starts with getting nativ=
e devtools like,</div><div>=C2=A0</div><div>NOTE: Running task 1 of 63 (ID:=
 11, /home/bsjang/poky/meta/recipes-devtools/quilt/<a href=3D"http://quilt-=
native_0.60.bb">quilt-native_0.60.bb</a>, do_fetch)<br>
NOTE: Running task 2 of 63 (ID: 53, virtual:native:/home/bsjang/poky/meta/r=
ecipes-devtools/gnu-config/<a href=3D"http://gnu-config_20111111.bb">gnu-co=
nfig_20111111.bb</a>, do_fetch)<br>NOTE: Running task 3 of 63 (ID: 60, /hom=
e/bsjang/poky/meta/recipes-devtools/m4/<a href=3D"http://m4-native_1.4.16.b=
b">m4-native_1.4.16.bb</a>, do_fetch)<br>
NOTE: Running task 4 of 63 (ID: 32, virtual:native:/home/bsjang/poky/meta/r=
ecipes-devtools/autoconf/<a href=3D"http://autoconf_2.68.bb">autoconf_2.68.=
bb</a>, do_fetch)<br></div><div>and then reads bblayers.conf, local.conf an=
d so on which are actually=C2=A0asked to=C2=A0be done=C2=A0by me, right?</d=
iv>
<div>=C2=A0</div><div>I&#39;m wondering </div><div>=C2=A0=C2=A0=C2=A0=C2=A0=
 1) where the dependency on native devtools things are from (source level e=
xplanation or overall yocto/poky concept are all welcom)=C2=A0and </div><di=
v>=C2=A0=C2=A0=C2=A0=C2=A0 2) can I use native tools=C2=A0which are already=
 installed in my host linux distribution.(i don&#39;t want to fetch and com=
pile the same tools again)</div>
<div>=C2=A0</div><div>thank you.</div><div>=C2=A0</div><div><br>-- <br>Rega=
rds, <br>Jang.<br><br>=C2=A0a sound mind in a sound body<br>
</div>

--f46d0408da07d9cd1e04c2bdbde4--
