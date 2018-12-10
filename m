Return-Path: <niko.tsirakis@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FFADE00C4D; Mon, 10 Dec 2018 12:37:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (niko.tsirakis[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
	[209.85.208.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 384CDE00C10
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2018 12:37:32 -0800 (PST)
Received: by mail-ed1-f47.google.com with SMTP id b3so10678108ede.1
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2018 12:37:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=N0ctZ1Prq9764WEPSY7cyoIvEs+xhW4s5QicC7rOxF0=;
	b=sIliM2E7S5JW3EpL/FqEKzRMEBtIo2NlrWTdQaZhKQLegvVpHhitp8Nlp0Sz7nDDnV
	mB99Q3PSoOM4APksWIxVKvMsavd+0gKZb6T5qs/qN1eZJ5zqkvM3ybOwCdIJ+lvLB7VH
	DlR5loTOlHagrm4mKXocwhiQDrRpX29E89STTbdmNcG5R/KUSmnlj9jYRga3ji6arTRh
	CfAcS2Ov0nsf0MupjVkwDcaSz95VFY20LvwYgiUcT/3kdY7eG6kXyoBapwEU2BBLUOqH
	OfOAWhW0usO+8o6I1jAjq/WoSkCqx+WmUiJSb8E1VzLXg/mqnIs1AgV4J8O73AO2LeAS
	tyeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=N0ctZ1Prq9764WEPSY7cyoIvEs+xhW4s5QicC7rOxF0=;
	b=CEbLNt6WHJuj4gujA9ulQEQ95jp9ZQ8Eaj75TlmpmHezJIvhnnxR3REfKKHuGnpBKv
	kEaoWM7J5VqqOWRP34iL5yh0Wo6vCjTh9KWozMmQ/xXkFIsBal4wH23FNLJOUbNKR5Co
	emJWXn8i6wUs10wxUQxo9GVIcgcWcAkoDD3kdtASOzSyFzxc2Xv7ODvIOeXs8GRyV5Gh
	9Dc24pCnVTjZF4tYw5kjbmKA7Co/Xx8LPjFUH6dIfmUtxPUe7ujUYkiOfl8GTVBDKUoV
	vkalue+lOHfkXUUxsjv88h6iiY27KnyA0dbdOm6W4cgQ5hTwlxQRV1JI/WbIgmL1GZ2A
	8KKQ==
X-Gm-Message-State: AA+aEWZfRkX5Kh3jcLwNrwnxGiQCbS07Gtmg860ckfDsW69W7Z/hAyfR
	9DI6oJ5O8bI0LntaUSUUsBDVSuB30xLlA7W3/7JTCPgP
X-Google-Smtp-Source: AFSGD/X5q9Uxx54ylGjtr/dePGIeGbGDRlkyB9uSGgei4EDo7PpCt6t+iWprEFPNKlGVr9EtveEjbPyGnauK4bKwpwg=
X-Received: by 2002:a50:880d:: with SMTP id b13mr12374994edb.68.1544474250959; 
	Mon, 10 Dec 2018 12:37:30 -0800 (PST)
MIME-Version: 1.0
From: Nicholas Tsirakis <niko.tsirakis@gmail.com>
Date: Mon, 10 Dec 2018 15:37:19 -0500
Message-ID: <CAFqpmVLj_54Ou1N=+YdjAqtcGGDLsWoH-85+89nQ=NJLUhPDpA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Using multilib to build 32-bit glibc on 64-bit target platform
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
X-List-Received-Date: Mon, 10 Dec 2018 20:37:33 -0000
Content-Type: multipart/alternative; boundary="00000000000017df61057cb0ef83"

--00000000000017df61057cb0ef83
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm having trouble understanding the proper usage of multilib within the
Yocto project. I've read through Yocto's documentation, but I think I am
missing something crucial. Here are the steps I've taken:

1. Added the following to my local.conf:
require conf/multilib.conf
MULTILIBS = "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 = "x86"

2. Attempted to build lib32-glibc with bitbake. Received the following
errors for lib32-glib-initial (shortened for brevity):

| <stdin>:10:36: error: 'REG_RBP' undeclared (first use in this function)
| <stdin>:9:26: note: in expansion of macro 'ucontext'
| <stdin>:10:20: note: in expansion of macro 'mcontext'
| <stdin>:11:61: note: in expansion of macro 'mreg'
| <stdin>:10:36: note: each undeclared identifier is reported only once for
each function it appears in
| <stdin>:9:26: note: in expansion of macro 'ucontext'
| <stdin>:10:20: note: in expansion of macro 'mcontext'
| <stdin>:11:61: note: in expansion of macro 'mreg'
| <stdin>:10:36: error: 'REG_RSP' undeclared (first use in this function)
| <stdin>:9:26: note: in expansion of macro 'ucontext'
| <stdin>:10:20: note: in expansion of macro 'mcontext'
| <stdin>:12:61: note: in expansion of macro 'mreg'
...
| <stdin>:5:73: error: 'La_x86_64_xmm' undeclared (first use in this
function)
...
| <stdin>:10:87: error: invalid use of undefined type 'struct
La_x86_64_regs'
...

3. At this point it appeared to me like it was attempting to build a 64-bit
version of glibc in a 32-bit environment, so I tried building the
lib32-linux-libc-headers by adding the following to its recipe:

do_install_prepend() {
    if [ "${MLPREFIX}" == "lib32-" ]; then
        ARCH="x86"
    fi
}

This was more a shot in the dark than anything else and still yielded the
same result. Can someone clear up the proper usage of multilib and tell me
if I'm doing something wrong? Please note that my project currently uses
OE's pyro branches.

Thank you for your time.

--00000000000017df61057cb0ef83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;m hav=
ing trouble understanding the proper usage of multilib within the Yocto pro=
ject. I&#39;ve read through Yocto&#39;s documentation, but I think I am mis=
sing something crucial. Here are the steps I&#39;ve taken:</div><div><br></=
div><div>1. Added the following to my local.conf:</div><div>require conf/mu=
ltilib.conf<br>MULTILIBS =3D &quot;multilib:lib32&quot;<br>DEFAULTTUNE_virt=
class-multilib-lib32 =3D &quot;x86&quot;</div><div><br></div><div>2. Attemp=
ted to build lib32-glibc with bitbake. Received the following errors for li=
b32-glib-initial (shortened for brevity):</div><div><br></div><div>| &lt;st=
din&gt;:10:36: error: &#39;REG_RBP&#39; undeclared (first use in this funct=
ion)<br>| &lt;stdin&gt;:9:26: note: in expansion of macro &#39;ucontext&#39=
;<br>| &lt;stdin&gt;:10:20: note: in expansion of macro &#39;mcontext&#39;<=
br>| &lt;stdin&gt;:11:61: note: in expansion of macro &#39;mreg&#39;<br>| &=
lt;stdin&gt;:10:36: note: each undeclared identifier is reported only once =
for each function it appears in<br>| &lt;stdin&gt;:9:26: note: in expansion=
 of macro &#39;ucontext&#39;<br>| &lt;stdin&gt;:10:20: note: in expansion o=
f macro &#39;mcontext&#39;<br>| &lt;stdin&gt;:11:61: note: in expansion of =
macro &#39;mreg&#39;<br>| &lt;stdin&gt;:10:36: error: &#39;REG_RSP&#39; und=
eclared (first use in this function)<br>| &lt;stdin&gt;:9:26: note: in expa=
nsion of macro &#39;ucontext&#39;<br>| &lt;stdin&gt;:10:20: note: in expans=
ion of macro &#39;mcontext&#39;<br>| &lt;stdin&gt;:12:61: note: in expansio=
n of macro &#39;mreg&#39;<br>...</div><div>| &lt;stdin&gt;:5:73: error: &#3=
9;La_x86_64_xmm&#39; undeclared (first use in this function)<br>...<br>| &l=
t;stdin&gt;:10:87: error: invalid use of undefined type &#39;struct La_x86_=
64_regs&#39;</div><div>...</div><div><br></div><div>3. At this point it app=
eared to me like it was attempting to build a 64-bit version of glibc in a =
32-bit environment, so I tried building the lib32-linux-libc-headers by add=
ing the following to its recipe:<br><br>do_install_prepend() {<br>=C2=A0=C2=
=A0=C2=A0 if [ &quot;${MLPREFIX}&quot; =3D=3D &quot;lib32-&quot; ]; then<br=
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ARCH=3D&quot;x86&quot;<br>=C2=
=A0=C2=A0=C2=A0 fi<br>}</div><div><br></div><div>This was more a shot in th=
e dark than anything else and still yielded the same result. Can someone cl=
ear up the proper usage of multilib and tell me if I&#39;m doing something =
wrong? Please note that my project currently uses OE&#39;s pyro branches.<b=
r></div><div><br></div><div>Thank you for your time.<br></div></div></div><=
/div></div></div></div>

--00000000000017df61057cb0ef83--
