Return-Path: <pknopf@medxchange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE975E00E6E; Tue, 10 May 2016 19:22:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7F62E00E59
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 19:22:37 -0700 (PDT)
Received: by mail-vk0-f52.google.com with SMTP id m188so40103808vka.1
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 19:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=medxchange-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=Z7e3w0MIhsPpppxbdrgD/s6xARxKPcGd5J2Teuit5+g=;
	b=EtaFt3Qmp3LSyPSJ1KFKbXKLTwlQTEa1BmcEx8JgDd+iIM3nFkJP4fc1SZ0QBosSbk
	BHweEuytUMmXCZIkcc3fd+OO7UoV5sQokmGknvXy0TEs7N8v60opshZYygGTyj2ibwZT
	L1Ugo74BH9SqPpkmULATq6S/ami2Au7KEdEwZOyZgu6/11c5Ppqbzx0HQlCOIPxbxWo1
	0kKkD0jaDyh8NxxDxo5jmPnk1+TO04nopCXcUctFlaGdxIyqvLNxkvtO5IHDyS4sB8Sg
	RlmSx3ORzgejExdor2jxMnUoIOLfW/14y7H/Xdafhy6Gxwf1sy9x7+ZsfltyJaNZu3K+
	5YWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Z7e3w0MIhsPpppxbdrgD/s6xARxKPcGd5J2Teuit5+g=;
	b=D83LzjvAnq7oM53BwSwQVZnxayZdNqKetpi8OK7BUeLtj81XOwxIECbVIPA18V8k7V
	llVg3wgvEt3eqW6kvfrJl9t65TusYQ2dO3BmAGK5Aaf3Gq7rIBvDpuyCccG/tZpGgcD0
	izKPaeQvYTb2j2GskgCDeWp13FzrbqhXiMzIHstexqg3XQNSP498KRLFt5DP/Xtg9lXR
	LpALbF8TQkLK2zsRFlOIVyFMEFg7buJjHkTBjoYnePxjq/xMmujhZrwES6NXZwuAAV0u
	isYfMcT15ait/WVv/tCHnyN6oTYAMhiFERQj8ZqMe/LJzJ0SFDiJU73g4AMtECHmccbI
	Ejag==
X-Gm-Message-State: AOPr4FWHYyfS+e/2duO5T197lxeubGajUjpfImrpQqrQH1Jj0zAJYxFZ5THReOewU4Mtd9duhlWSsgBdHgiPsg==
X-Received: by 10.176.2.14 with SMTP id 14mr426742uas.10.1462933356661; Tue,
	10 May 2016 19:22:36 -0700 (PDT)
MIME-Version: 1.0
From: Paul Knopf <pknopf@medxchange.com>
Date: Wed, 11 May 2016 02:22:27 +0000
Message-ID: <CABfz71ch7Uko6uLNX3eSmAOJWRRYwAL_GJ14vbi8GAL65oJyKw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Kernel 3.14.28 (imx duallite) will compile under 1.7, but not under 2.0-2.1
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
X-List-Received-Date: Wed, 11 May 2016 02:22:39 -0000
Content-Type: multipart/alternative; boundary=001a113ed1a20ded5e053287b743

--001a113ed1a20ded5e053287b743
Content-Type: text/plain; charset=UTF-8

I am trying to update my BSP to work with the latest releases of Yocto,
however, I can't even compile the kernel with the same
defconfig/commit/repo.

It works on 1.7, but not under 2.0. Here are the do_compile run and log for
each version of yocto.
https://gist.github.com/anonymous/3222e0a10ba1bca1f7a7316879d1704d

-------
make[3]: *** [arch/arm/mm/built-in.o] Error 1
make[2]: *** [arch/arm/mm] Error 2
  AS      arch/arm/kernel/sigreturn_codes.o
  CC      arch/arm/kernel/stacktrace.o
/home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source/arch/arm/kernel/return_address.c:63:2:
warning: #warning "TODO: return_address should use unwind tables" [-Wcpp]
 #warning "TODO: return_address should use unwind tables"
  ^
/home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source/arch/arm/kernel/return_address.c:66:7:
error: redefinition of 'return_address'
 void *return_address(unsigned int level)
       ^
In file included from
/home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source/include/linux/ftrace.h:20:0,
                 from
/home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source/arch/arm/kernel/return_address.c:12:
/home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source/arch/arm/include/asm/ftrace.h:48:21:
note: previous definition of 'return_address' was here
 extern inline void *return_address(unsigned int level)
                     ^
make[3]: *** [arch/arm/kernel/return_address.o] Error 1
make[3]: *** Waiting for unfinished jobs....
make[2]: *** [arch/arm/kernel] Error 2
make[1]: *** [sub-make] Error 2
-------

Any idea why update Yocto would cause this build error?
-- 

Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com

--001a113ed1a20ded5e053287b743
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am trying to update my BSP to work with the latest relea=
ses of Yocto, however, I can&#39;t even compile the kernel with the same de=
fconfig/commit/repo.<div><br></div><div>It works on 1.7, but not under 2.0.=
 Here are the do_compile run and log for each version of yocto.</div><div><=
a href=3D"https://gist.github.com/anonymous/3222e0a10ba1bca1f7a7316879d1704=
d">https://gist.github.com/anonymous/3222e0a10ba1bca1f7a7316879d1704d</a><b=
r></div><div><br></div><div>-------</div><div><div>make[3]: *** [arch/arm/m=
m/built-in.o] Error 1</div><div>make[2]: *** [arch/arm/mm] Error 2</div><di=
v>=C2=A0 AS =C2=A0 =C2=A0 =C2=A0arch/arm/kernel/sigreturn_codes.o</div><div=
>=C2=A0 CC =C2=A0 =C2=A0 =C2=A0arch/arm/kernel/stacktrace.o</div><div>/home=
/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source=
/arch/arm/kernel/return_address.c:63:2: warning: #warning &quot;TODO: retur=
n_address should use unwind tables&quot; [-Wcpp]</div><div>=C2=A0#warning &=
quot;TODO: return_address should use unwind tables&quot;</div><div>=C2=A0 ^=
</div><div>/home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mb=
x4/kernel-source/arch/arm/kernel/return_address.c:66:7: error: redefinition=
 of &#39;return_address&#39;</div><div>=C2=A0void *return_address(unsigned =
int level)</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0^</div><div>In file include=
d from /home/pknopf/Git/recipes/build/tmp/work-shared/seco-uq7-dl-256mbx4/k=
ernel-source/include/linux/ftrace.h:20:0,</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/pknopf/Git/recipes/buil=
d/tmp/work-shared/seco-uq7-dl-256mbx4/kernel-source/arch/arm/kernel/return_=
address.c:12:</div><div>/home/pknopf/Git/recipes/build/tmp/work-shared/seco=
-uq7-dl-256mbx4/kernel-source/arch/arm/include/asm/ftrace.h:48:21: note: pr=
evious definition of &#39;return_address&#39; was here</div><div>=C2=A0exte=
rn inline void *return_address(unsigned int level)</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^</div><div>m=
ake[3]: *** [arch/arm/kernel/return_address.o] Error 1</div><div>make[3]: *=
** Waiting for unfinished jobs....</div><div>make[2]: *** [arch/arm/kernel]=
 Error 2</div><div>make[1]: *** [sub-make] Error 2</div></div><div>-------<=
/div><div><br></div><div>Any idea why update Yocto would cause this build e=
rror?</div></div><div dir=3D"ltr">-- <br></div><div dir=3D"ltr"><p dir=3D"l=
tr">Thanks,<br>
Paul Knopf<br>
Software Engineer<br>
Med X Change, Inc<br>
<a href=3D"mailto:pknopf@medxchange.com">pknopf@medxchange.com</a></p>
</div>

--001a113ed1a20ded5e053287b743--
