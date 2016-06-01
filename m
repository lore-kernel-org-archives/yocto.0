Return-Path: <oleksandr.poznyak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB776E00EFC; Wed,  1 Jun 2016 05:54:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oleksandr.poznyak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5F95E00E32
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2016 05:54:02 -0700 (PDT)
Received: by mail-qk0-f178.google.com with SMTP id y126so13294376qke.1
	for <yocto@yoctoproject.org>; Wed, 01 Jun 2016 05:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to; 
	bh=qLbJw+gN6w53bkAwDvINCDwrWLnciZ2DjoupGJW1kR8=;
	b=AIRzHFr++MCeaneS32YXwgEjCXdM5WW+obMcrl08bdmwTlHM/gpT5vvxBXy73EIo3Z
	bZKiofbghsp5wvW3gDyPYm1lknxOk2Tk4sIU46vhaCtOSr+/rR6mHgTu6PYQu6UR/Cve
	Y5W9XxIxmNH3C/norH87X3E3JaEk4rv4DiNT8vhvJQe6tPxFT835heTxWHu+2uhECNue
	3LW4oSx76G9WxZKI4scZF/h6LTKLzHEg8SnBH5DS4K21TMWTzRYf1RMUonIdaHeYhoiy
	9c+Z0FLPxMgkN8ow0xBn/4WoxPgbqV/Ii03rh80WyFHMOgSiPGH+RtAuFykYuCGzmGhj
	43jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to;
	bh=qLbJw+gN6w53bkAwDvINCDwrWLnciZ2DjoupGJW1kR8=;
	b=OMGsQcy8ht+A/4ygx24Qw+VdWui+4sjDK8vHVfpBdXLyjNDJDdx4OeUq4gQdqkrJRj
	1gY3jHS9qMf9AjfoikyQkjDK8KSxBzIavRpBG8zEzSqpMBCk2m3yhsNi8C0WA6zEodaW
	F0pIlO5LDCjI6XFfHOvGxU0ZhLsmP9y3KwoWdVo5VMjbv+wZOHXUBz/1cvYKiXhZ/ExE
	rcCdQx+2sXNmRwHHA+qlj9UDPBI8ZxZuMoLIHlcU/hhLLfJTb9YDEIorJzC6AvcINCEo
	HD6VZ5C4a7Aq5hbYe9bwOeqt/ybwM77d8USSFXze3Gb/RfXhilOxEB/+YZk7ENOCyIE1
	uoRQ==
X-Gm-Message-State: ALyK8tL2Grzb9/F5OLXQEvHxjdIiLWqpqzJicGiMROHJf2rvpmTTU2RoHg0Na7Ivnj2Law7i7iMgMO2hnOG/uQ==
MIME-Version: 1.0
X-Received: by 10.200.50.220 with SMTP id a28mr3367626qtb.13.1464785642257;
	Wed, 01 Jun 2016 05:54:02 -0700 (PDT)
Received: by 10.237.49.35 with HTTP; Wed, 1 Jun 2016 05:54:02 -0700 (PDT)
In-Reply-To: <CAEeWub+cVQYTwub5Gk6BLhMR0+6+VpALkpHLyAMg4oArX2iBTQ@mail.gmail.com>
References: <CAEeWub+cVQYTwub5Gk6BLhMR0+6+VpALkpHLyAMg4oArX2iBTQ@mail.gmail.com>
Date: Wed, 1 Jun 2016 15:54:02 +0300
Message-ID: <CAEeWubLs_Gzh9p8WcjDOU=TmKU1vVMY3x_+GCG8c9a4c0Ce9CA@mail.gmail.com>
From: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
To: yocto@yoctoproject.org
Subject: Changelog creation for a list of recipes
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
X-List-Received-Date: Wed, 01 Jun 2016 12:54:06 -0000
Content-Type: multipart/alternative; boundary=001a11404eace105e9053436fb2d

--001a11404eace105e9053436fb2d
Content-Type: text/plain; charset=UTF-8

Hi,

I believe that it would be great to have a special variable that triggers
changelog creation for the specific recipe.

For example:

PN = "my_recipe"

SRC_URI = "git://${SOME_GIT_REPO};protocol=ssh"
SRCREV = "${AUTOREV}"
PV = "1+git${SRCPV}"

CHANGELOG = "1"

This should produce ${DEPLOY_DIR}/changelog file and add there changes in
repos of specific recipes in a simple form:

For example:

my_recipe:
    #5410 Add some features to my_recipe
    Signed-off-by: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
    Oleksandr Poznyak

This will make inergration of Yocto into any CI tool (Jenkins for ex.) much
easier.

Thanks,
Oleksandr Poznyak!

--001a11404eace105e9053436fb2d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div><div>Hi,<=
br><br>I believe that it would be great to have a special variable that tri=
ggers changelog creation for the specific recipe.<br><br>For example:<br><b=
r>PN =3D &quot;my_recipe&quot;<br><br>SRC_URI =3D &quot;git://${SOME_GIT_RE=
PO};protocol=3Dssh&quot;<br>SRCREV =3D &quot;${AUTOREV}&quot;<br>PV =3D &qu=
ot;1+git${SRCPV}&quot;<br><br>CHANGELOG =3D &quot;1&quot;<br><br>This shoul=
d produce ${DEPLOY_DIR}/changelog file and add there changes in repos of sp=
ecific recipes in a simple form:<br><br>For example:<br><br>my_recipe:<br>=
=C2=A0=C2=A0=C2=A0 #5410 Add some features to my_recipe<br>=C2=A0=C2=A0=C2=
=A0 Signed-off-by: Oleksandr Poznyak &lt;<a href=3D"mailto:oleksandr.poznya=
k@gmail.com" target=3D"_blank">oleksandr.poznyak@gmail.com</a>&gt;<br>=C2=
=A0=C2=A0=C2=A0 Oleksandr Poznyak<br><br>This will make inergration of Yoct=
o into any CI tool (Jenkins for ex.) much easier.<br><br></div>Thanks,<br><=
/div>Oleksandr Poznyak!<br></div>
</div><br></div>

--001a11404eace105e9053436fb2d--
