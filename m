Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42CBFE00CAB; Thu,  7 Mar 2019 00:48:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
	[209.85.167.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78B77E00C71
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2019 00:48:09 -0800 (PST)
Received: by mail-lf1-f50.google.com with SMTP id u2so4091048lfd.4
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2019 00:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=O+aTRiR6bQqI/wUgW9NGxyyOOG08HR3J4upvh5mlIdM=;
	b=PB4xsbjJfeoVMYbt9zeKUxdj2xVBKg9aa4EafyAt42NG/opq96TfRcwWv7L2OFMHmU
	sO/RURrA00w+fIA1WOeRAH6pPpCjsxC1KrVbehfLGky0Dp0cdAVFmbNKkNs/K7lTncng
	2NEooRkncna1SJmBGPvFZesjWFK89gyHFGSPBj6koNy1qYZF0LaPvm6Gw8Xj8/nPJOkt
	MZ7yoWEOS/35Vma07U3l/+DmRSmSSLWw+6CCvb4jWApwGUqxDAvgJi0z7WM6SqAMWN6A
	nYd1rq1oNr1GQgnrpboT8DQp60fXMUmOUHb8ydNWAfbDdgBtxvRSj9hfFHjOnSiw/RYe
	j+vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=O+aTRiR6bQqI/wUgW9NGxyyOOG08HR3J4upvh5mlIdM=;
	b=J1L77x6Q3nK253+oeph2Cu+Ik6RjIg3bzlG24KepJSsEJIp9sCRb+PvofIIkP7fAxR
	ves50+B9/w2B4O20Klm2yimusBzqM0SDLtXP+MDJ+3QVCU0Je8H6j24qbVsXh25QxiQ9
	ku2XBVIJzWcMojbloLtILC/TbxOLdyisFnCKl+7SCq9r4FcKB5x17DhElYlBqMVUC2gb
	NSkj9DISNIKKnPYfvyNW1WeLWvUM/llM86olP+g0LUIq0TtYIfyWiM07ICRQbeN/dRjF
	3/yMrE/ER9jIkMSPg7Lf3Suk1rBLLN2LKso40TGmtG+WPCKAduMNvSo8RCKQ2QY7SjnW
	2pWg==
X-Gm-Message-State: APjAAAWO4F8lLLaV2cBNS2fEBL7lKkQwcrW/g92qgp28CY5ueskP8Xiq
	kEPlfz6hQ+fWIIGNaoaEwf7HiuQbKUz/j5aVhsYFxQa/
X-Google-Smtp-Source: APXvYqwn+H1krhOvpkLDc/OwK9QzTXGlWT6qjayHyacNgjYLeFrdPK7EWTHBpJz5ud+xhEDEpxwOnL6J8em3lR+5GwI=
X-Received: by 2002:a19:6609:: with SMTP id a9mr6419680lfc.47.1551948488006;
	Thu, 07 Mar 2019 00:48:08 -0800 (PST)
MIME-Version: 1.0
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Thu, 7 Mar 2019 09:47:57 +0100
Message-ID: <CAAx3WaBXE9Mh_DoZ86v1rvsZzafhjwGtcxApFct0RwFZPcj=Hg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Recipe require kernel headers
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
X-List-Received-Date: Thu, 07 Mar 2019 08:48:10 -0000
Content-Type: multipart/alternative; boundary="0000000000005661eb05837d2af8"

--0000000000005661eb05837d2af8
Content-Type: text/plain; charset="UTF-8"

Hi all,

I have a custom recipe that builds and installs a C program that include:

#include <bluetooth/bluetooth.h>
#include <bluetooth/hci.h>
#include <bluetooth/hci_lib.h>

I can compile it with TI prebuilt SDK, but when I try to build it with
yocto the compiler is unable to find those headers.

In the recipe do_compile I simply execute:
${CC} ${CFLAGS} ${S}/program.c -o program
(as I do with the prebuild SDK). But the compilation fails due to the
missing headers. I could a list of include paths to ${CC}, pointing to the
location in the kernel tree, but I don't really like it as solution. The
prebuild SDK install those file in
<SDK>/sysroots/<armv7ahf-neon-linux-gnueabi>/usr/include (and append that
path to CFLAGS through the env setup script). Moreover, if I build the
image without my recipe and I look for the headers I find them in rootfs,
but not in recipe-sysroot. The Yocto system I'm using is based on TI arago
customization.

How can I add the sanitized kernel heders to the recipe-sysroot or use them
to build my tool?

Thanks in advance,
Gabriele

--0000000000005661eb05837d2af8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi=
 all,</div><div><br></div><div>I have a custom recipe that builds and insta=
lls a C program that include:</div><div><br></div><div style=3D"margin-left=
:40px">#include &lt;bluetooth/bluetooth.h&gt;</div><div style=3D"margin-lef=
t:40px">#include &lt;bluetooth/hci.h&gt;</div><div style=3D"margin-left:40p=
x">#include &lt;bluetooth/hci_lib.h&gt;</div><br></div><div dir=3D"ltr">I c=
an compile it with TI prebuilt SDK, but when I try to build it with yocto t=
he compiler is unable to find those headers.</div><div dir=3D"ltr"><br></di=
v><div>In the recipe do_compile I simply execute: <br></div><div style=3D"m=
argin-left:40px">${CC} ${CFLAGS} ${S}/program.c -o program <br></div><div>(=
as I do with the prebuild SDK). But the compilation fails due to the missin=
g headers. I could a list of include paths to ${CC}, pointing to the locati=
on in the kernel tree, but I don&#39;t really like it as solution. The preb=
uild SDK install those file in &lt;SDK&gt;/sysroots/&lt;armv7ahf-neon-linux=
-gnueabi&gt;/usr/include (and append that path to CFLAGS through the env se=
tup script). Moreover, if I build the image without my recipe and I look fo=
r the headers I find them in rootfs, but not in recipe-sysroot. The Yocto s=
ystem I&#39;m using is based on TI arago customization.<br></div><div><br><=
/div><div>How can I add the sanitized kernel heders to the recipe-sysroot o=
r use them to build my tool?</div><div><br></div><div>Thanks in advance,<br=
></div><div>Gabriele<br></div></div></div></div>

--0000000000005661eb05837d2af8--
