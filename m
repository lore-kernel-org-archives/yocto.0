Return-Path: <seth.boll@gmail.com>
Received: from mail-oa0-f44.google.com (mail-oa0-f44.google.com
	[209.85.219.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8941E0153D
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 04:49:07 -0700 (PDT)
Received: by mail-oa0-f44.google.com with SMTP id n12so967664oag.17
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 04:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=jjd5Xm6ZLTAcP53wTf6q/PSl74hcrCrUOEMRJqzZaPY=;
	b=g3IZcM20O4Q/ps6NE91v8llEEe1Buab8cMyCT80eOGAoOF+RgCakqqR/QrEA7yUNHx
	oafzm711jVfjyn2qJaOvGIq8LsZTmxmjdHQNbAfU+Qj7bv92sb6K3nYi/AFHEJsw9aWK
	+F2q586IpndYb9ekUNiOHquC0jKgNx2Q9sLUJ7AANtXZL99MgR05hAPV0HhrJQGx7p80
	xFePmGJJKgw4fRFDM6CAiwobdbd9GXI7LMBM8EyryDlxqQjHqWxIfdQhD+PDsbz/w9mY
	Mczk31xnOJ8f0Xwf2lpWOsvBy+4If1doJINUwZaAPAo+zEgE6KGYg9PafaQjF2NMp/t2
	1h5Q==
MIME-Version: 1.0
X-Received: by 10.60.83.146 with SMTP id q18mr1350713oey.24.1370260147106;
	Mon, 03 Jun 2013 04:49:07 -0700 (PDT)
Received: by 10.60.123.38 with HTTP; Mon, 3 Jun 2013 04:49:06 -0700 (PDT)
Date: Mon, 3 Jun 2013 06:49:06 -0500
Message-ID: <CA+JN8xP3hNL6qmi=pDJRHAnp-3d_e2Z-=2sKncUxMq2jrRAS9Q@mail.gmail.com>
From: Seth Bollinger <seth.boll@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: opkg list-installed is empty
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
X-List-Received-Date: Mon, 03 Jun 2013 11:49:07 -0000
Content-Type: multipart/alternative; boundary=089e0118381e517ada04de3e8d95

--089e0118381e517ada04de3e8d95
Content-Type: text/plain; charset=ISO-8859-1

Hello All,

I'm having a problem with opkg.  When I run the image I've built with the
package-management feature and PACKAGE_CLASS equal to package_ipk, the
image has no installed packages.  They're obviously installed, because it's
running but "opkg list-installed" is empty.  I was expecting a large list
of installed packages.  I don't see anything I would expect to see in
/var/lib/opkg.  I must be missing something fundamental, but after
reviewing the documentation and code, I'm coming up empty.  Please
enlighten me!

Thanks,

Seth

--089e0118381e517ada04de3e8d95
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div style>I&#39;m having a probl=
em with opkg. =A0When I run the image I&#39;ve built with the package-manag=
ement feature and PACKAGE_CLASS equal to package_ipk, the image has no inst=
alled packages. =A0They&#39;re obviously installed, because it&#39;s runnin=
g but &quot;opkg list-installed&quot; is empty. =A0I was expecting a large =
list of installed packages. =A0I don&#39;t see anything I would expect to s=
ee in /var/lib/opkg. =A0I must be missing something fundamental, but after =
reviewing the documentation and code, I&#39;m coming up empty. =A0Please en=
lighten me!</div>
<div style><br></div><div style>Thanks,</div><div style><br>Seth</div></div=
>

--089e0118381e517ada04de3e8d95--
