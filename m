Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD02AE00BEC; Mon, 26 Mar 2018 08:47:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E733DE00AD8
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 08:47:30 -0700 (PDT)
Received: by mail-lf0-f54.google.com with SMTP id p142-v6so28863877lfd.6
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 08:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=GyTlbDuseLZfcKL0W3PsWfhwxNObnwkYxQPzF+A/k+I=;
	b=pOJDkyhXUDIg7N02iuE2oYyhaOb6ZI7ie78lsfDILXmZDJzyfznDcw8g3ZtYTD/QEe
	4ZlZr1nkWnVq+Vnbb+UCYqRTYCz9g9922hBRot7OI2AZK4h9SnpKSJXPmWM+SP5Y1Vbf
	/6qOIkbHGD7qYqH9KfPblsEdYeZ70tooqckEWrVMaGzP5A8ba4nkPxNjIN+VHdm0/iiO
	Qq7H8SJN2I0vj0T9l5kT1Cr4zOU7tl5l130oVp0MAz1Ct9tz0uNknio8rE3z3nylgpPo
	WTcT/u6tJ4MqRqB/Xs2eGcZaO5DlyxYFil+/v/DQ+6a22mx7CkiW8zhQNOgaZeNA102D
	Jjyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=GyTlbDuseLZfcKL0W3PsWfhwxNObnwkYxQPzF+A/k+I=;
	b=VHISso9qnUk5sS1alZCShzw7H8Jd26N2spUgDTXNyYMwgDdpRr7wQ8CkGyIsqPvS/0
	JYbrgWpff9WrvqmNNoW2nigbgEavMBjxKTu72UzPlaAKHe/NQfMjH5av97eYVAyi4paG
	RNO1RPTeaqvxGhHxkY4T4ayAM7QisHwxH/oIn1Xk9KJ9BPZdU64i6IyfsPEJHBTTfkon
	NjlcKBTRzcdNwsLJTsCU05l2RNTI8qyIHUd6PU1MMlAPkChS+nY6AkfMdyA8gQHFmZ60
	4EsNkXEaJ70nQcwru5F4OFcPqEXD8evU/DfejHEjbW3GQ0CPE93Et10vedTt7ry08LG7
	tKAg==
X-Gm-Message-State: AElRT7FzKj047zWYZOHGmv32tCtwpyfBnrWr1Gf4rqL+4k8CkSQtIjlW
	otS1xKEh+1q7kVJsXna8xm11tF+vu4jKLdhNWGAe1KLw
X-Google-Smtp-Source: AG47ELsSBsHQcFFcQinfsHO1rekIrYlYeUfC6CifLcZQqbjKS/Ob5MYRSxSRugBFnqenvPts2kI2kEAISnkg/CTDmgg=
X-Received: by 2002:a19:c7c5:: with SMTP id
	x188-v6mr28025719lff.33.1522079249564; 
	Mon, 26 Mar 2018 08:47:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:deda:0:0:0:0:0 with HTTP; Mon, 26 Mar 2018 08:47:29
	-0700 (PDT)
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Mon, 26 Mar 2018 16:47:29 +0100
Message-ID: <CABatt_zYz0R7ruRWnLXr=Wp0z5A0m3qfZxmjGOeidqbJuxvXLQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: U-Boot networking broken in Rocko
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
X-List-Received-Date: Mon, 26 Mar 2018 15:47:31 -0000
Content-Type: multipart/alternative; boundary="000000000000fd88f2056852b00e"

--000000000000fd88f2056852b00e
Content-Type: text/plain; charset="UTF-8"

Hi,

I've discovered that U-Boot in Rocko for several builds that I maintain is
broken when performing various network related operations like tftp, dhcp
and ping. You get a data abort and it resets.  I found that this has
already been fixed in U-Boot with the commit below.  I think it has
something to do with the way GCC 7.1 onwards is now handling memory
alignment.  Anyway the problems have gone away when I apply this patch and
was wondering if it should be included in the U-Boot recipes in Rocko, or
is no-one else seeing this problem?

Many Thanks,
Martin.

commit 704f3acfcf55343043bbed01c5fb0a0094a68e8a
Author: Denis Pynkin <denis.pynkin@collabora.com>
Date:   Fri Jul 21 19:28:42 2017 +0300

    net: Use packed structures for networking

    PXE boot is broken with GCC 7.1 due option '-fstore-merging' enabled
    by default for '-O2':

    BOOTP broadcast 1
    data abort
    pc : [<8ff8bb30>]          lr : [<00004f1f>]
    reloc pc : [<17832b30>]    lr : [<878abf1f>]
    sp : 8f558bc0  ip : 00000000     fp : 8ffef5a4
    r10: 8ffed248  r9 : 8f558ee0     r8 : 8ffef594
    r7 : 0000000e  r6 : 8ffed700     r5 : 00000000  r4 : 8ffed74e
    r3 : 00060101  r2 : 8ffed230     r1 : 8ffed706  r0 : 00000ddd
    Flags: nzcv  IRQs off  FIQs off  Mode SVC_32
    Resetting CPU ...

    Core reason is usage of structures for network headers without packed
    attribute.

    Reviewed-by: Yauheni Kaliuta <yauheni.kaliuta@redhat.com>
    Signed-off-by: Denis Pynkin <denis.pynkin@collabora.com>
    Acked-by: Joe Hershberger <joe.hershberger@ni.com>

--000000000000fd88f2056852b00e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;ve discovered that U-Boot in =
Rocko for several builds that I maintain is broken when performing various =
network related operations like tftp, dhcp and ping. You get a=C2=A0<span s=
tyle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,25=
5,255);text-decoration-style:initial;text-decoration-color:initial;float:no=
ne;display:inline">data abort and it resets.=C2=A0 I found that this has al=
ready been fixed in U-Boot with the commit below.=C2=A0 I think it has some=
thing to do with the way GCC 7.1 onwards is now handling memory alignment.=
=C2=A0 Anyway the problems have gone away when I apply this patch and was w=
ondering if it should be included in the U-Boot recipes in Rocko, or is no-=
one else seeing this problem?</span></div><div><span style=3D"color:rgb(34,=
34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial;float:none;display:inline"><b=
r></span></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sa=
ns-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial;float:none;display:inline">Many Thanks,</span></div><div=
><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:=
small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline">Martin.</span></div><div><br></div><div><div>com=
mit 704f3acfcf55343043bbed01c5fb0a0094a68e8a</div><div>Author: Denis Pynkin=
 &lt;<a href=3D"mailto:denis.pynkin@collabora.com">denis.pynkin@collabora.c=
om</a>&gt;</div><div>Date:=C2=A0 =C2=A0Fri Jul 21 19:28:42 2017 +0300</div>=
<div><br></div><div>=C2=A0 =C2=A0 net: Use packed structures for networking=
</div><div>=C2=A0 =C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 PXE boot is broken w=
ith GCC 7.1 due option &#39;-fstore-merging&#39; enabled</div><div>=C2=A0 =
=C2=A0 by default for &#39;-O2&#39;:</div><div>=C2=A0 =C2=A0=C2=A0</div><di=
v>=C2=A0 =C2=A0 BOOTP broadcast 1</div><div>=C2=A0 =C2=A0 data abort</div><=
div>=C2=A0 =C2=A0 pc : [&lt;8ff8bb30&gt;]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 lr : [&lt;00004f1f&gt;]</div><div>=C2=A0 =C2=A0 reloc pc : [&lt;17832b30&g=
t;]=C2=A0 =C2=A0 lr : [&lt;878abf1f&gt;]</div><div>=C2=A0 =C2=A0 sp : 8f558=
bc0=C2=A0 ip : 00000000=C2=A0 =C2=A0 =C2=A0fp : 8ffef5a4</div><div>=C2=A0 =
=C2=A0 r10: 8ffed248=C2=A0 r9 : 8f558ee0=C2=A0 =C2=A0 =C2=A0r8 : 8ffef594</=
div><div>=C2=A0 =C2=A0 r7 : 0000000e=C2=A0 r6 : 8ffed700=C2=A0 =C2=A0 =C2=
=A0r5 : 00000000=C2=A0 r4 : 8ffed74e</div><div>=C2=A0 =C2=A0 r3 : 00060101=
=C2=A0 r2 : 8ffed230=C2=A0 =C2=A0 =C2=A0r1 : 8ffed706=C2=A0 r0 : 00000ddd</=
div><div>=C2=A0 =C2=A0 Flags: nzcv=C2=A0 IRQs off=C2=A0 FIQs off=C2=A0 Mode=
 SVC_32</div><div>=C2=A0 =C2=A0 Resetting CPU ...</div><div>=C2=A0 =C2=A0=
=C2=A0</div><div>=C2=A0 =C2=A0 Core reason is usage of structures for netwo=
rk headers without packed</div><div>=C2=A0 =C2=A0 attribute.</div><div>=C2=
=A0 =C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 Reviewed-by: Yauheni Kaliuta &lt;<=
a href=3D"mailto:yauheni.kaliuta@redhat.com">yauheni.kaliuta@redhat.com</a>=
&gt;</div><div>=C2=A0 =C2=A0 Signed-off-by: Denis Pynkin &lt;<a href=3D"mai=
lto:denis.pynkin@collabora.com">denis.pynkin@collabora.com</a>&gt;</div><di=
v>=C2=A0 =C2=A0 Acked-by: Joe Hershberger &lt;<a href=3D"mailto:joe.hershbe=
rger@ni.com">joe.hershberger@ni.com</a>&gt;</div></div><div><br></div></div=
>

--000000000000fd88f2056852b00e--
