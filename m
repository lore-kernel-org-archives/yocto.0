Return-Path: <tmichalski23@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62B25E00D0B; Fri, 14 Dec 2018 01:26:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (tmichalski23[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.46 listed in list.dnswl.org]
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18555E00CEA
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2018 01:26:32 -0800 (PST)
Received: by mail-io1-f46.google.com with SMTP id s22so3937298ioc.8
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2018 01:26:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=dwDZdxF2qZJQ+dhudBLHTd/FSISm5dFHsU3pzx4jFAk=;
	b=VgfWezXdUJ+WtBji7gDUfFHOcXZ2GMgUilGAGi9CP+y9g0U/Wa8oqj/oCV5IpTrdLC
	C7rXfEqJWu3b76Vpz957BKYVHP4rSRlXdtksavfQq7iDwGj+gfhO+Y5uc7yeNhP5U2QS
	t+Mrn0/rXIhyyQea3SIBUJHBC7R5M9Upq4Yh1tpE2FQY6d0IzpxBsHZ9dMDmlcZOhqqG
	EqMD7XiQ+uCfXXxMZzrjYGb61CN1xhPYeYcQiQpod+OIw6bnucHtme56FOHSBGpWg3WJ
	mBNxbrpM2k+wmoPOPa0MC3q/SSnv7c5uFt6JGWTl5v6z3fTb9cIiauO6jx24mIL1tQoW
	umyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=dwDZdxF2qZJQ+dhudBLHTd/FSISm5dFHsU3pzx4jFAk=;
	b=ujNSAMxXgDi50cIDXn5tGfP5kSKqEiQxMmI17Fn3JTDrwwFB6bQdUKe/dMbcOd1UsB
	Fw12nt0CQDjySumZHjPS8YmEkmcU3zDn+Ac1qf3O0GjMgsyXQ2S2mC2F3366NlgYf+cs
	lb7AtiZJXbk2+ufQ6bqIjIupL5V+Z4jLAVB7c7ZB9J+tMwQlnC1DqkS/JuCh9LlVoMkw
	WiTAGGEeV7ElnvIU+nW+ifbXi6Y7KryffUSiYyQVww9Yb7YLUr8i/dnyDjwdy557VgUS
	uzvNuj0YJ3GJyocU7aZJvLgW1XzR4H8+hhDEDnJ/dpIo/YcVifmr6cSGhKMfZ/keHdOZ
	ybLg==
X-Gm-Message-State: AA+aEWaNfiwMP3ZA4QMk70vI5wiSopioijukVN8Xk8L6aVfPwUPN109q
	UJZK7TQeyJlAqXsqwS3t4vRBbZM/eGGXB2sPn4EM34sn2E4=
X-Google-Smtp-Source: AFSGD/UsFzM+1E5pb5CEG8K2AkbfW0Oxj1qRENSZzBx23EIq2NgXWT7VWuS0s7lAmPJlyNtnP+dmJioqGUmLUsO5uuU=
X-Received: by 2002:a5d:8b0b:: with SMTP id k11mr1669492ion.213.1544779592384; 
	Fri, 14 Dec 2018 01:26:32 -0800 (PST)
MIME-Version: 1.0
From: Tomasz Michalski <tmichalski23@gmail.com>
Date: Fri, 14 Dec 2018 10:26:21 +0100
Message-ID: <CAE5v_rLRcNZAGHA29xrcf_BYf7Y_4ihHJseXACEr8nMDQcfqRw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 14 Dec 2018 08:21:49 -0800
Subject: THISDIR variable in another meta-layer
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
X-List-Received-Date: Fri, 14 Dec 2018 09:26:34 -0000
Content-Type: multipart/alternative; boundary="000000000000dc4c67057cf806fd"

--000000000000dc4c67057cf806fd
Content-Type: text/plain; charset="UTF-8"

Hi
I have structure of files:

meta-layer-A
    recipes-X
        componentB
             default
                 script.sh
             componentB.bb
meta-layer-B
    recipes-X
        componentB
             files
                 script.sh
             componentB.bbappend

In componentB.bb I have function do_install:
do_install () {
    install -m 0755 -d ${D}/usr/share
    cmake_do_install
    install -m 0755 ${THISDIR}/default/script.sh  ${D}/usr/share
}

In componentB.bbapend I overwrite function in order to install other script
instead:
do_install () {
    install -m 0755 -d ${D}/usr/share
    cmake_do_install
    install -m 0755 ${THISDIR}/files/script.sh  ${D}/usr/share
}


The problem is that ${THISDIR} indicates IN BOTH CASES to path
meta-layer-A/recipes-X/componentB.
So how to tell bitbake in componentB.bbappend to install my script from
path meta-layer-B/recipes-X/componentB/files? It is really frustrating that
variable THISDIR doesn't indicates to path
meta-layer-B/recipes-X/componentB when I used it in componentB.bbapend.

--000000000000dc4c67057cf806fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi</div><div dir=3D"ltr">I have structure=
 of files:</div><div dir=3D"ltr"><br></div><div>meta-layer-A</div><div>=C2=
=A0 =C2=A0 recipes-X</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 componentB</div>=
<div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0default</div><div=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0script.sh</d=
iv></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0componentB.bb=
</div><div>meta-layer-B</div><div dir=3D"ltr"><div>=C2=A0 =C2=A0 recipes-X<=
/div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 componentB</div><div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0files</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0script.sh</div></div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0componentB.bbappend</div><div><br>=
</div><div>In componentB.bb I have function do_install:</div><div><div>do_i=
nstall () {</div><div>=C2=A0 =C2=A0 install -m 0755 -d ${D}/usr/share</div>=
<div>=C2=A0 =C2=A0 cmake_do_install</div><div>=C2=A0 =C2=A0 install -m 0755=
 ${THISDIR}/default/script.sh=C2=A0=C2=A0${D}/usr/share</div><div>}</div></=
div><div><br></div><div>In componentB.bbapend I overwrite function in order=
 to install other script instead:</div><div><div>do_install () {</div><div>=
=C2=A0 =C2=A0 install -m 0755 -d ${D}/usr/share</div><div>=C2=A0 =C2=A0 cma=
ke_do_install</div><div>=C2=A0 =C2=A0 install -m 0755 ${THISDIR}/files/scri=
pt.sh=C2=A0=C2=A0${D}/usr/share</div><div>}</div></div><div><br></div><div>=
<br></div><div>The problem is that ${THISDIR} indicates IN BOTH CASES to pa=
th meta-layer-A/recipes-X/componentB.</div><div>So how to tell bitbake in c=
omponentB.bbappend to install my script from path meta-layer-B/recipes-X/co=
mponentB/files? It is really frustrating that variable THISDIR doesn&#39;t =
indicates to path meta-layer-B/recipes-X/componentB when I used it in compo=
nentB.bbapend.</div></div></div>

--000000000000dc4c67057cf806fd--
