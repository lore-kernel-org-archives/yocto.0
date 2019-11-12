Return-Path: <markhawthorne172@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A103E00DCE; Tue, 12 Nov 2019 13:06:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (markhawthorne172[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
	[209.85.208.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 576DBE00D46
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 13:06:37 -0800 (PST)
Received: by mail-ed1-f52.google.com with SMTP id a24so12515445edt.0
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 13:06:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=J9MVDHEFrUXtoFVlyYlhTb/5+spe5fVeq5Z/61rQsns=;
	b=ESA6oIzdiigzA6OItFvnjEKsuojQOxSwao4w+1ZGpleRrXeJskh7dkYpX8DFmgKMSW
	GO699VvYt10zHwpNhNEmGZjHf6brpt06eOkJFoffradXgazmV/FJC5896rsp1d59qrJ+
	Bo9gtzYZN6UyoLu10yy4jnRhNyaGNZm6FH7Od33XaptqpGlcnUrmgaY9i7BMuM7R+v81
	EHBO832C8RY/gG2PlOQIFqRNWGvQP7KFFq1ba+NMASv8xx7jXuiewynzVfXO91M+WhK+
	kkm63JA4mED2p9PwMlREJQxI4UDYRBcrnlDw3yP3dvb98EWEplCxJI7tTmmYcUcdIzDo
	u0HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=J9MVDHEFrUXtoFVlyYlhTb/5+spe5fVeq5Z/61rQsns=;
	b=SOAoZ62aRX1cnEkHwXsmJw3cGlbmCrJTW1VB/nl3nO0IzpEQ1xcnTwlXPZ5qs7zAQn
	ZekcWEpKIINjmbZg/5xkemfv9/7EUEdJvZWNALnIvssQJBb72BbZ/T3FjERh1XYd0ZPf
	vZZiRcQG6Yg6jf+XhBqvg+zTIDEIqBtd0CoFoTAh2Zh2xFWJhpJeZ/6xQChcrehHXm3H
	11MQRkRz3iy3vS3m0JWkpLWRIHehIYI6PXWOAgWxDUQNgPBEKtCe7Wa+oN+eXOKWo2BK
	9baqs0RZtu0G6DZXAWlbfIV5J1OyZ0FcU/icJ3wOeMfHCw3zuBkOsedPsUJIq8l1eT/9
	eHAw==
X-Gm-Message-State: APjAAAVC6XAH26bEBOstWkUBL5t2Soh9vEP7H7G8OmxkwBCKODFA7k4C
	20HUJ4g85EnHf5IB7JRmksQND9iW18w8nc/yvMy4Rym6
X-Google-Smtp-Source: APXvYqzPU5ISnRSiqWHTsP+c8v3A9p9G9zmbmCrtYA48AhVA0HxLl8gf0RM+b7cHLt1guz6+GbfNwmsV2OtKuqxI96s=
X-Received: by 2002:a05:6402:329:: with SMTP id
	q9mr20380893edw.76.1573592795865; 
	Tue, 12 Nov 2019 13:06:35 -0800 (PST)
MIME-Version: 1.0
From: Mark Hawthorne <markhawthorne172@gmail.com>
Date: Tue, 12 Nov 2019 15:06:25 -0600
Message-ID: <CAEEV9O3FJLe8kuGWXRYUTHSJL6WY7tLzxuHouCUFtG5e2pFhkg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: pkg-config not found
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
X-List-Received-Date: Tue, 12 Nov 2019 21:06:38 -0000
Content-Type: multipart/alternative; boundary="0000000000009e671305972c9f08"

--0000000000009e671305972c9f08
Content-Type: text/plain; charset="UTF-8"

I have an autotools build that uses the following autoconfig file:
--------------------
AC_INIT([my-program], [1])
AM_INIT_AUTOMAKE([-Wall -Werror foreign])
AC_LANG(C++)
AC_PROG_CXX
AX_PTHREAD()
PKG_CHECK_MODULES(LIBPNG, libpng >= 1.6.34)
PKG_CHECK_MODULES(FREETYPE2, freetype2 >= 21.0.15)
PKG_CHECK_MODULES(EGL, egl > 0)
PKG_CHECK_MODULES(GLES2, glesv2 > 0)
PKG_CHECK_MODULES(GLM, glm >= 0.9.9)
PKG_CHECK_MODULES(SPATIALITE, spatialite >= 4.3.0)
AC_CONFIG_FILES([Makefile])
AC_OUTPUT
--------------------

I have made the following bitbake recipe file

--------------------
SUMMARY = "my program"
HOMEPAGE = ""
DESCRIPTION = ""
LICENSE = "MIT"
LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "git://user@bitbucket.org/user/myrepo.git"

SRCREV = "dc1391dbc82702fd0126d4156d4ab59571427efe"

DEPENDS_${PN} = "libpng freetype glm libegl libgles2 libspatialite"

S = "${WORKDIR}/git"

inherit pkgconfig autotools
--------------------

The build fails with this error:
--------------------
configure: error: in
`/home/user/Documents/tisdk/build/arago-tmp-external-arm-toolchain/work/armv7at2hf-neon-linux-gnueabi/my-program/1.0-r0/build':
configure: error: The pkg-config script could not be found or is too old.
Make sure it is in your PATH or set the PKG_CONFIG environment variable to
the full path to pkg-config.

Alternatively, you may set the environment variables LIBPNG_CFLAGS and
LIBPNG_LIBS to avoid the need to call pkg-config.
--------------------

I have looked at several other autotools/pkgconfig recipes and it appears
that I am doing everything the same. What is missing?

--0000000000009e671305972c9f08
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have an autotools build that uses the following autoconf=
ig file:<div>--------------------=C2=A0=C2=A0<br></div><div>AC_INIT([my-pro=
gram], [1])<br>AM_INIT_AUTOMAKE([-Wall -Werror foreign])<br>AC_LANG(C++)<br=
>AC_PROG_CXX<br>AX_PTHREAD()<br>PKG_CHECK_MODULES(LIBPNG, libpng &gt;=3D 1.=
6.34)<br>PKG_CHECK_MODULES(FREETYPE2, freetype2 &gt;=3D 21.0.15)<br>PKG_CHE=
CK_MODULES(EGL, egl &gt; 0)<br>PKG_CHECK_MODULES(GLES2, glesv2 &gt; 0)<br>P=
KG_CHECK_MODULES(GLM, glm &gt;=3D 0.9.9)<br>PKG_CHECK_MODULES(SPATIALITE, s=
patialite &gt;=3D 4.3.0)<br>AC_CONFIG_FILES([Makefile])<br>AC_OUTPUT<br></d=
iv><div>--------------------=C2=A0=C2=A0<br></div><div><br></div><div>I hav=
e made the following bitbake recipe=C2=A0file</div><div><br></div><div>----=
----------------</div><div>SUMMARY =3D &quot;my program&quot;<br>HOMEPAGE =
=3D &quot;&quot;<br>DESCRIPTION =3D &quot;&quot;<br>LICENSE =3D &quot;MIT&q=
uot;<br>LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_DIR}/MIT;md5=3D0=
835ade698e0bcf8506ecda2f7b4f302&quot;<br><br>SRC_URI =3D &quot;git://<a hre=
f=3D"http://user@bitbucket.org/user/myrepo.git">user@bitbucket.org/user/myr=
epo.git</a>&quot;<br><br>SRCREV =3D &quot;dc1391dbc82702fd0126d4156d4ab5957=
1427efe&quot;<br><br>DEPENDS_${PN} =3D &quot;libpng freetype glm libegl lib=
gles2 libspatialite&quot;<br><br>S =3D &quot;${WORKDIR}/git&quot;<br><br>in=
herit pkgconfig autotools<br></div><div>--------------------<br></div><div>=
<br></div><div>The build fails with this error:</div><div>-----------------=
---=C2=A0=C2=A0<br></div><div>configure: error: in `/home/user/Documents/ti=
sdk/build/arago-tmp-external-arm-toolchain/work/armv7at2hf-neon-linux-gnuea=
bi/my-program/1.0-r0/build&#39;:<br>configure: error: The pkg-config script=
 could not be found or is too old.=C2=A0 Make sure it is in your PATH or se=
t the PKG_CONFIG environment variable to the full=C2=A0path to pkg-config.<=
br><br>Alternatively, you may set the environment variables LIBPNG_CFLAGS=
=C2=A0and LIBPNG_LIBS to avoid the need to call pkg-config.<br></div><div>-=
-------------------=C2=A0</div><div>=C2=A0<br></div><div>I have looked at s=
everal other autotools/pkgconfig recipes and it appears that I am doing eve=
rything the same. What is missing?</div><div><br></div><div><br></div></div=
>

--0000000000009e671305972c9f08--
