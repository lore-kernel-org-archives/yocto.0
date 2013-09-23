Return-Path: <billmartin544@gmail.com>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B167E014DB
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 14:18:48 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id tp5so7104382ieb.26
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 14:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=wAHeX9GihkQQrXw1Pm6PRnBgKWk0qqUWl8IqRgZ0suU=;
	b=USCee7F8n8TUEtnsaIRJ02uSPLHUQKheBGg8ySW21xzXwnrMo8z5UoGLXLrB7oSHD4
	ykPkKeto0agi07Dj+IVJATO9LNY1SW0xomOcjgmDvmdgzL2FWNzbAsBlR66REpn+A1Nw
	1h9JpF1EQWTlcMACsnpEItKIwPniC05SY1aw3EXvGZXfHwPJJsOFllBkhfDsuYyKNfte
	2dmLTr5Q0GOsglkRUnW8y9PQtAxH/FYuaqW2lWy+9ZWAI+PBOUELPa0tOiAnMQpk/Tpu
	QvC6QC2JWauW0Nw7FXXHEPobCtZuOhUx8drGUdABVVlftPlFP/ee/H5nRr0Ix762d7b/
	7hhg==
MIME-Version: 1.0
X-Received: by 10.42.36.196 with SMTP id v4mr1911935icd.114.1379971127862;
	Mon, 23 Sep 2013 14:18:47 -0700 (PDT)
Received: by 10.64.129.225 with HTTP; Mon, 23 Sep 2013 14:18:47 -0700 (PDT)
Date: Mon, 23 Sep 2013 14:18:47 -0700
Message-ID: <CAJGS5=H8cdMPyzYiZkf=mucPs82yFBuOZ4PQj6GzpbYgd+kn2w@mail.gmail.com>
From: Bill Martin <billmartin544@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta] (crownbay) rpmbuild and install-sh not being shipped in recipes-devtools/rpm
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
X-List-Received-Date: Mon, 23 Sep 2013 21:18:49 -0000
Content-Type: multipart/alternative; boundary=001a11c3a7e4e06be004e71390f3

--001a11c3a7e4e06be004e71390f3
Content-Type: text/plain; charset=ISO-8859-1

I notice rpm_5.4.9.bb in my Yocto 9.0.2 (poky-dylan-9.02) does explicitly
have rpmbuild and install-sh in FILES_${PN}-build section but somehow those
don't get shipped into my deployed image. I see them in sysroots. in the
recipe I moved these to the section under FILES_${PN}. After that those two
files have been put into my image:

/usr/bin/rpmbuild
/usr/lib/rpm/bin/install-sh

I do not know what the real fix is. The original recipe looks right but my
changes caused these two files to be shipped.

thanks

Bill Martin
Valicore Technologies

--001a11c3a7e4e06be004e71390f3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I notice <a href=3D"http://rpm_5.4.9.bb">rpm_5.4.9.bb</a> =
in my Yocto 9.0.2 (poky-dylan-9.02) does explicitly have rpmbuild and insta=
ll-sh in FILES_${PN}-build section but somehow those don&#39;t get shipped =
into my deployed image. I see them in sysroots. in the recipe I moved these=
 to the section under FILES_${PN}. After that those two files have been put=
 into my image:<div>
<br></div><div style>/usr/bin/rpmbuild</div><div style>/usr/lib/rpm/bin/ins=
tall-sh</div><div style><br></div><div style>I do not know what the real fi=
x is. The original recipe looks right but my changes caused these two files=
 to be shipped.</div>
<div style><br></div><div style>thanks</div><div style><br></div><div style=
>Bill Martin</div><div style>Valicore Technologies</div></div>

--001a11c3a7e4e06be004e71390f3--
