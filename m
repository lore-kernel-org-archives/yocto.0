Return-Path: <arunkr.linux@gmail.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF76FE0154E
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 02:35:20 -0700 (PDT)
Received: by mail-vc0-f178.google.com with SMTP id ha12so729880vcb.37
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 02:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=SFJ0Y4mBb5lJl0BK6w873SybzAFwxs7+ykEpLR5jHZ0=;
	b=b9EKOFXdIN/kfD2wI/63O/YrmsjktQyZFT8VbeNiCcV+cXZvKNu6ZgqcgFqMn7CRXz
	Us+aQY+f2N6yBdociTX5f8Crxh9Q30/mSY703j8X+DFDOsUHyKHOeebDKyd8lwWUeh2g
	kQQpVfUiupPXSi9qzgMbj9NMzXnT0WHW9wtuf9D4poGZYBqkmYFt8K/YhxMZre8wUEmF
	ZlvQJtGYoNsddD9s/QcuVhiv/zujPcdNiWjwsE7CdrN7hXXAD6WTRk3+mnMylkX5wE3L
	ZV3KzBEPJciYPuY5D65JNEZZWrhmGI93dBUzP0y+TwuXcwZaqkh9pk64ffu+xp2VZFtY
	smvA==
MIME-Version: 1.0
X-Received: by 10.52.114.231 with SMTP id jj7mr9466811vdb.2.1379064918866;
	Fri, 13 Sep 2013 02:35:18 -0700 (PDT)
Received: by 10.58.198.167 with HTTP; Fri, 13 Sep 2013 02:35:18 -0700 (PDT)
Date: Fri, 13 Sep 2013 15:05:18 +0530
Message-ID: <CABG0-3xHSyGoctj8tt4oHRXbVxwdubUsEFX2m2gkN6p9Fk6E6w@mail.gmail.com>
From: arun kumar <arunkr.linux@gmail.com>
To: yocto@yoctoproject.org
Subject: meta-raspberrypi layer
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
X-List-Received-Date: Fri, 13 Sep 2013 09:35:21 -0000
Content-Type: multipart/alternative; boundary=bcaec547ccc79d31e704e64092a1

--bcaec547ccc79d31e704e64092a1
Content-Type: text/plain; charset=ISO-8859-1

I am new to Yocto Project and have built the basic minimal and the sato
images as of now,

I am trying to build an Image for the Raspberry Pi, supporting ssh.

what layers would be required apart from the  "meta-raspberrypi" layer.

I tried the blog post in pimpmypi.com but that doesnt seem to work with the
current version of poky.

anybody has any links for the updated layer for the raspberry Pi.

--bcaec547ccc79d31e704e64092a1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am new to Yocto Project and have built the basic mi=
nimal and the sato images as of now,</div><div>=A0</div><div>I am trying to=
 build an Image for the Raspberry Pi, supporting ssh.</div><div>=A0</div><d=
iv>
what layers would be required apart from the=A0 &quot;meta-raspberrypi&quot=
; layer.</div><div>=A0</div><div>I tried the blog post in <a href=3D"http:/=
/pimpmypi.com">pimpmypi.com</a> but that doesnt seem to work with the curre=
nt version of poky.</div>
<div>=A0</div><div>anybody has any links for the updated layer for the rasp=
berry Pi.</div></div>

--bcaec547ccc79d31e704e64092a1--
