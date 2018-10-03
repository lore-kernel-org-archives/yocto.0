Return-Path: <brianz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7BB2E00AE0; Wed,  3 Oct 2018 15:51:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (brianz[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com
	[209.85.217.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7725FE00A9B
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2018 15:51:52 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id v18-v6so4256319vsl.11
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2018 15:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=zgoAKoFCAKf2nqzXPsTx6mEptopAgcAcD4kFEeEXxQk=;
	b=pQyGxES0yPOiOslX6hzGM5eFhC68UkOcag5Hj7UThkttZqgEuJuOGn4LVwkkwd39Ng
	vU4lluvRCeSYvBbL1VonMtkbN4o2rDxfFWErU1sZQhj7+8SxwH0rJUxwA2AC+b2Jv0Ss
	PiiE90Dxr1L0f30CyeIJSfo9QgdVar7v2DxGgrpIlBeqViDsG0WPZlxtEW7FlyVCVgoH
	cdl9GBE0GJmc8uaOp202IEiQgtiTfmeKpUhVZP2rIdaFu55A6QzAS3ynFT4WXCbPRL05
	l9jIusTqdjp30qeGzHaSFYcVTUtjD+/eKzPPYKOlxyX3burCPch87MJESgjBfLLhq34I
	NoCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=zgoAKoFCAKf2nqzXPsTx6mEptopAgcAcD4kFEeEXxQk=;
	b=g5ja9829QJy6mPH1elAIcq+qJc1J1h83cVhSBEuFrtTcc/EduUZLwoqqhe99vPTp3Q
	bs7vgqBd9XJtB12q8fjweEqbvL79WyDTEwjDAJxsCYwyhUPSfZsG78YmhlOK2QfPHDZS
	5KT3bEPDTJzJWMey7zqjUeHNXysuL8VWsMqj+jYWtPJeOEPnxzvF+J1zu5XAPvMF3cOr
	xUSY5o9w42GSpLtA4w7bdx+c2QBkv7BsZ50iFUjKh/ytyYSyd/R73HiJPnORdLXWjQsb
	4QnhtxLAmi1+ShevavvET7k3P0riXHExAskfXf+Be5xywYFYPUyuyMVtuXLjoTtInMsh
	b5pg==
X-Gm-Message-State: ABuFfohr+hnKRHQxKI2W7d7Qu3AjqNnZkNURItXTq4vM6qqynKWq7PRU
	a0LehU/9mJPjLPykX8dt2kjIaCfVy3yiA2FCeXwMO8zV
X-Google-Smtp-Source: ACcGV63QFP4qx4KQnGdmDi4UI3uF3NHfgbRhUzv5LFA+0+ORLjJSPJTYQ6fnaJK3kvZDyM7/STdnfN7KKQmN0qGFcf8=
X-Received: by 2002:a67:2285:: with SMTP id
	i127-v6mr1483219vsi.186.1538607111410; 
	Wed, 03 Oct 2018 15:51:51 -0700 (PDT)
MIME-Version: 1.0
From: Brian Zambrano <brianz@gmail.com>
Date: Wed, 3 Oct 2018 16:51:40 -0600
Message-ID: <CAE18oz8o-AKA5OBtV63odQx=gfMPa3MD=EU52BeU8Z2Zb26Ttw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Installing Python app from source
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
X-List-Received-Date: Wed, 03 Oct 2018 22:51:53 -0000
Content-Type: multipart/alternative; boundary="000000000000531beb05775ae244"

--000000000000531beb05775ae244
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to install my own Python application from source, and having a
hard time finding resources on how to accomplish it. I'm new to this
ecosystem and am probably missing something fundamental.

My recipe is structured like this...and my build is configure such that it
does actually find it.

=E2=94=9C=E2=94=80=E2=94=80 firmware-1.0
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 saunders_backend
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 saunders_frontend
=E2=94=94=E2=94=80=E2=94=80 firmware_1.0.bb

My application code which is for now just a "hello world" flask
application, is in saunders_backend. The setup.py file in there works as
expected when I use it in on my host machine.

=E2=94=9C=E2=94=80=E2=94=80 firmware-1.0
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 saunders_backend/
=E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 bin/
=E2=94=82   =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 server
=E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 MANIFEST.in
=E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 requirements.txt
=E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 saunders_apollo/
=E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 config.py
=E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 __init__.py
=E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 models.py
=E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 static/
=E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 templates/
=E2=94=82   =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 views.py
=E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 setup.py
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 saunders_frontend/
=E2=94=94=E2=94=80=E2=94=80 firmware_1.0.bb

I've been hacking on the .bb files to get it to install this into the
resulting image. I do have IMAGE_INSTALL_append =3D " firmware" in the
top-level local.conf.

My primary confusion is that I don't know what I should be using for the
python application. do_install, do_install_append? What should SRC_UIR be?
In effect is that I want the exact same behavior of "cd saunders_backend &&
pip install ." My setup.py file has install_requires with a list of all
dependencies, which now is merely Flask.

Pointers would be appreciated.
BZ

--000000000000531beb05775ae244
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">I&#39;m trying to install my ow=
n Python application from source, and having a hard time finding resources =
on how to accomplish it. I&#39;m new to this ecosystem and am probably miss=
ing something fundamental.<br><br>My recipe is structured like this...and m=
y build is configure such that it does actually find it.<br><br><font face=
=3D"monospace, monospace">=E2=94=9C=E2=94=80=E2=94=80 firmware-1.0<br>=E2=
=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 saunders_backend<br>=E2=94=82 =C2=
=A0 =E2=94=94=E2=94=80=E2=94=80 saunders_frontend</font><div><font face=3D"=
monospace, monospace">=E2=94=94=E2=94=80=E2=94=80 <a href=3D"http://firmwar=
e_1.0.bb">firmware_1.0.bb</a></font><br><br>My application code which is fo=
r now just a &quot;hello world&quot; flask application, is in saunders_back=
end. The setup.py file in there works as expected when I use it in on my ho=
st machine.<br><br><font face=3D"monospace, monospace">=E2=94=9C=E2=94=80=
=E2=94=80 firmware-1.0<br>=E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 saun=
ders_backend/<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=
=80 bin/<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=94=E2=
=94=80=E2=94=80 server<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=94=
=80=E2=94=80 MANIFEST.in<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=
=94=80=E2=94=80 requirements.txt<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=
=94=9C=E2=94=80=E2=94=80 saunders_apollo/<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=
=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 config.py<br>=E2=94=82 =C2=
=A0 =E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 __init__.=
py<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=
=E2=94=80 models.py<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =
=E2=94=9C=E2=94=80=E2=94=80 static/<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =
=E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 templates/<br>=E2=94=82 =C2=A0=
 =E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 views.py<br>=
=E2=94=82 =C2=A0 =E2=94=82 =C2=A0=C2=A0</font><span style=3D"font-family:mo=
nospace,monospace">=E2=94=94=E2=94=80</span><span style=3D"font-family:mono=
space,monospace">=E2=94=80 setup.py</span></div><div><font face=3D"monospac=
e, monospace">=E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 saunders_fronten=
d/<br>=E2=94=94=E2=94=80=E2=94=80 <a href=3D"http://firmware_1.0.bb">firmwa=
re_1.0.bb</a></font></div><div><font face=3D"monospace, monospace"><br></fo=
nt>I&#39;ve been hacking on the .bb files to get it to install this into th=
e resulting image. I do have=C2=A0<font face=3D"monospace, monospace">IMAGE=
_INSTALL_append =3D &quot; firmware&quot; </font>in the top-level local.con=
f.</div><div><br></div><div>My primary confusion is that I don&#39;t know w=
hat I should be using for the python application. do_install, do_install_ap=
pend? What should SRC_UIR be? In effect is that I want the exact same behav=
ior of &quot;cd=C2=A0<span style=3D"font-family:monospace,monospace">saunde=
rs_backend &amp;&amp; pip install .&quot;=C2=A0</span>My setup.py file has =
<font face=3D"monospace, monospace">install_requires</font> with a list of =
all dependencies, which now is merely Flask.</div><div><br></div><div>Point=
ers would be appreciated.</div><div>BZ</div></div></div></div></div></div><=
/div></div>

--000000000000531beb05775ae244--
