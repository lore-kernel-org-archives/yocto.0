Return-Path: <torres.soldado@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B06B2E00D89; Fri, 19 Jul 2019 06:17:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (torres.soldado[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
	[209.85.208.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1538DE00B8E
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 06:17:22 -0700 (PDT)
Received: by mail-lj1-f173.google.com with SMTP id h10so30788536ljg.0
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 06:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=qDY5jqpbjDyagtBl6DCr+Tld+R8IUoeyOVpO/RPrRYc=;
	b=iUgqdl9X0TRqbA9BPYx7MikJS2LFxMsMOZLIXqj14iZn7IDekiGcKyi59cm3iC6YKR
	eCiexBjCX27AUPFwPxnaWVdhFfKdJR3cv/ykKok+KgRUImad+Xm0Ehqkb/hNeDEJTRFF
	qynemHO0yJP96cc1gLh4vx1hlOHmv1PGOu3EU3G/FtBNZhPzVLCqg1yZmHXqBbK5a+2I
	2sY5U6fevToiJPe6yvSEQqMH7YdDULw0WmmoooELOeK2UKpkCULS3yJVBHcBIl+1pDoL
	TFa1KPaEZjFEgXnH0zcLJz/wldoCHttAB6pUuXx3x8mA1rJSmW1T0fxXAvJk7yT3nNQi
	3Q7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=qDY5jqpbjDyagtBl6DCr+Tld+R8IUoeyOVpO/RPrRYc=;
	b=e25ODsSc4PbPgh2gv09n/wAw4OeFCdVdOsX2zwZTVkGWRLQjTh/oawWRbuafmBZQg+
	GqW2K/RIRdrp2OQvKu1uxXZbU2TbtbVxaflaz6ASO38YlB8QSTUu/4sE+Jj3YzX4uBBZ
	PfGxBk3EdEzS7DyuyQQ7h6bMC9dKPqnoMpNl5ILnmEJZulXt/l020qExGe2H0573lxtP
	xH2yHYhsg38IFAyblwdnpDkpoXPtGs9wXpnR5K+zCR0wk3umUWx7ZU3q74FC4AxByBlI
	2z7t8TBQvNqFgF2s7FqGAP7qCchFYT2RmNidS/tHMC1y7yKeYgWmXtAJs+ZSYDqPh8dy
	Sk9A==
X-Gm-Message-State: APjAAAXKjAcyg3G8QmS2yYnp3dJorL0o0DRWMCLCVlMG/41uTmWfJbf8
	vk6O0HHjVkiy88PNrkpL+UkMFLW7jtgKaJyX+/mKO1/FUEWQAA==
X-Google-Smtp-Source: APXvYqx+JJo7mI8wHf1rLN09MzvN8R6EQX87iz17E+54xHCrKq+T7vgoDUGQ76dv9GJNasa8Zke8c9AWj26YS+4CwWI=
X-Received: by 2002:a2e:86cc:: with SMTP id n12mr3413906ljj.146.1563542242016; 
	Fri, 19 Jul 2019 06:17:22 -0700 (PDT)
MIME-Version: 1.0
From: Sergio Torres Soldado <torres.soldado@gmail.com>
Date: Fri, 19 Jul 2019 14:17:10 +0100
Message-ID: <CAFuHCCD22a3r41RmUsv3Grbt+2YY0uTXp+ZuiLo+Xh5ivBVghA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Setting home directory ownership
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
X-List-Received-Date: Fri, 19 Jul 2019 13:17:25 -0000
Content-Type: multipart/alternative; boundary="000000000000ed4171058e088bca"

--000000000000ed4171058e088bca
Content-Type: text/plain; charset="UTF-8"

I am unable to set the home directory ownership. I am using poky@warrior
and my last attempt was the following recipe:

"""
inherit useradd
USERADD_PACKAGES = "${PN}"

USERADD_PARAM_${PN} = "-P someusername -u 1000 -d /home/someusername -r -s
/bin/bash foosomeusername"

LICENSE = "CLOSED"

do_install () {
  install -d ${D}/home/someusername
  # If I don't use the UID I get an error message saying "invalid user:
hubshuffle", although it seems to work for some usernames e.g. "user1" like
in the skeleton recipe for useradd.
  chown -R 1000 ${D}/home/foosomeusername
}

pkg_postinst_${PN} () {
  chown -R 1000 $D/home/someusername
}

FILES_${PN} = " \
  /home/someusername \
"
"""

I don't know what I am doing wrong, any hint is very welcome thanks.

--000000000000ed4171058e088bca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am unable to set the home directory ownership. I am usin=
g poky@warrior and my last attempt was the following recipe:<div><br></div>=
<div>&quot;&quot;&quot;</div><div>inherit useradd<br>USERADD_PACKAGES =3D &=
quot;${PN}&quot;<br><br>USERADD_PARAM_${PN} =3D &quot;-P someusername -u 10=
00 -d /home/someusername=C2=A0-r -s /bin/bash foosomeusername&quot;<br><br>=
LICENSE =3D &quot;CLOSED&quot;<br><br>do_install () {<br>=C2=A0 install -d =
${D}/home/someusername</div><div>=C2=A0 # If I don&#39;t use the UID I get =
an error message saying &quot;invalid user: hubshuffle&quot;, although it s=
eems to work for some usernames e.g. &quot;user1&quot; like in the skeleton=
 recipe for useradd.<br>=C2=A0 chown -R 1000 ${D}/home/foosomeusername<br>}=
<br><br>pkg_postinst_${PN} () {<br>=C2=A0 chown -R 1000 $D/home/someusernam=
e<br>}<br><br>FILES_${PN} =3D &quot; \<br>=C2=A0 /home/someusername=C2=A0\<=
br>&quot;<br></div><div>&quot;&quot;&quot;</div><div><br></div><div>I don&#=
39;t know what I am doing wrong, any hint is very welcome thanks.</div></di=
v>

--000000000000ed4171058e088bca--
