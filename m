Return-Path: <matteo.facchinetti@sirius-es.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7907E00DF8; Wed,  4 Sep 2019 02:56:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BCCFE00BF8
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 02:56:36 -0700 (PDT)
Received: by mail-qt1-f175.google.com with SMTP id t12so23623634qtp.9
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2019 02:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sirius-es-it.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=zw6vIRRdybPx8/lxPYBikQQESEHbcvUfgN9NEWxOF9k=;
	b=HD6FER5X0Ia2rID2ZFp/UNYCg9Hcir/eCQzQCEkyzbGsh/fsDGletIGxKzTeClr3ra
	Uglm++GGEgQQHEMuFAgf5vmRIdsixTUwrjVaG4z2ODpF9rde/D7Y27MWyh2SRHkdYbT7
	oxUnVajYHx81es7uYGu+RREkPgORb/8ZRo0tYwWs6nQ2GcnNs746yx0w96H0RS2inYTv
	bNV0KZlf9r8hVuvw8Fo1XA1jMUBqgthy87p7d+WhK1lgl1GLPGV9dfJdbrABe/mD7uyr
	IPTNL/qUYiMdwaZmQalkkDuLMmh45qOioQNVQEnet2V5iy1x9IwuGcUwhLxCRXDSt+mx
	Xz+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=zw6vIRRdybPx8/lxPYBikQQESEHbcvUfgN9NEWxOF9k=;
	b=Salg5vCAlzwst80sjMeSzCZ7aRLtuYS9I/l2zFNCdK4+HmxVd2e0MMiPqJ0xLfGgGP
	Om5PwSWNAXzLtJXtxnpeXh7VJcD8AdqTaaQLNRH9ruT6e4FAUJWbFikIXtrfAaljLYd0
	VBjQ4THsJMeKItFkqi9U7LbeGvAOgWQ+10/H5Z4cf4InWp2L/izhBG06I4jmhNWVejDq
	dE5A5Dm/nOPT0yrN5eNkLByXAwRZ3Iya+UL/8ReqYGJuI+3CZjMax/cddQzNHaezbqTx
	IveIN01OWI7krGO9nXcf1XVEu1pKsU80/1blZsZm9K/7mMxTBbTp8jgCKtWRC4x5qRaQ
	F0jw==
X-Gm-Message-State: APjAAAXPq5QOqED1I/HSk6eIvu6T1gkrxdxFXVjcpnap9DbS3K7pA+rS
	7WcoU/ppHotH3YZacJbH9/YaziWRg1SPcwZIdsjhJecr70poL2q+
X-Google-Smtp-Source: APXvYqwYQO4CZhRd0PqDcCVx+V0v6OS/Tkt9AAGZ6n/KK3MgAALzfQ6eqBIBV22tpR3SmBJpLfcMDYcvbrN7dMrR/+Q=
X-Received: by 2002:ac8:4988:: with SMTP id f8mr10787427qtq.2.1567590995420;
	Wed, 04 Sep 2019 02:56:35 -0700 (PDT)
MIME-Version: 1.0
From: Matteo Facchinetti <matteo.facchinetti@sirius-es.it>
Date: Wed, 4 Sep 2019 11:56:24 +0200
Message-ID: <CAAjAsiw9Az8N1W=kY_PA92uPU==E+Bob0W_E8icqcGYxnnVhsg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: in-tree module dependency
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
X-List-Received-Date: Wed, 04 Sep 2019 09:56:37 -0000
Content-Type: multipart/alternative; boundary="0000000000006f7d760591b73865"

--0000000000006f7d760591b73865
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a problem with a custom kernel module's recipe that depends to an
other module (in-tree).
My kernel module recipes built seems OK, but I have a problem when doing
the rootfs image stage.

Error:
 Problem: package packagegroup-console-sirlinux-1.0-r0.0.noarch requires
canopen-sync, but none of the providers can be installed
  - package canopen-sync-git-r0.2.neo_sirius requires
kernel-module-canopen-sync-4.9.51-yocto-standard, but none of the providers
can be installed
  - conflicting requests
  - nothing provides kernel-module-xeno-can-4.9.51-yocto-standard needed by
kernel-module-canopen-sync-4.9.51-yocto-standard-git-r0.2.neo_sirius

ERROR: sirlinux4-image-qt4e-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/workspace/neo-sirius_sirlinux4/build/tmp/work/neo_sirius-poky-linux-gnueabi/sirlinux4-image-qt4e/1.0-r0/temp/log.do_rootfs.9126
ERROR: Task
(/workspace/neo-sirius_sirlinux4/meta-sirlinux/recipes-qt4/images/sirlinux4-image-qt4e.bb:do_rootfs)
failed with exit code '1'


I don't understand how exactly the modules dependencies works...
Initially, I suppose that PROVIDES variable was updated automatically with
the correct modules names when compiled like module from kernel but now, I
don't know if I have to specify it manually or is there any other way?

Regards,
Matteo

--0000000000006f7d760591b73865
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I have a problem with a custom kernel module&#3=
9;s recipe that depends to an other module (in-tree).<br>My kernel module r=
ecipes built seems OK, but I have a problem when doing the rootfs image sta=
ge.<br><br>Error: <br>=C2=A0Problem: package packagegroup-console-sirlinux-=
1.0-r0.0.noarch requires canopen-sync, but none of the providers can be ins=
talled<br>=C2=A0 - package canopen-sync-git-r0.2.neo_sirius requires kernel=
-module-canopen-sync-4.9.51-yocto-standard, but none of the providers can b=
e installed<br>=C2=A0 - conflicting requests<br>=C2=A0 - nothing provides k=
ernel-module-xeno-can-4.9.51-yocto-standard needed by kernel-module-canopen=
-sync-4.9.51-yocto-standard-git-r0.2.neo_sirius<br><br>ERROR: sirlinux4-ima=
ge-qt4e-1.0-r0 do_rootfs: Function failed: do_rootfs<br>ERROR: Logfile of f=
ailure stored in: /workspace/neo-sirius_sirlinux4/build/tmp/work/neo_sirius=
-poky-linux-gnueabi/sirlinux4-image-qt4e/1.0-r0/temp/log.do_rootfs.9126<br>=
ERROR: Task (/workspace/neo-sirius_sirlinux4/meta-sirlinux/recipes-qt4/imag=
es/sirlinux4-image-qt4e.bb:do_rootfs) failed with exit code &#39;1&#39;<br>=
<br><br>I don&#39;t understand how exactly the modules dependencies works..=
.<br>Initially, I suppose that PROVIDES variable was updated automatically =
with the correct modules names when compiled like module from kernel but no=
w, I don&#39;t know if I have to specify it manually or is there any other =
way?<br><br>Regards,<br>Matteo<br></div>

--0000000000006f7d760591b73865--
