Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ABA5E0027E
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2012 15:13:16 -0700 (PDT)
Received: by mail-qa0-f41.google.com with SMTP id p27so14420qat.14
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2012 15:13:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=JZ4G2NaHHQ+bKepeIckpJmkmdVm/3/JAhGidFsVdDWU=;
	b=NMpCnLQKQIAE0lbloXuoYxJSANHl1NU2Xd6CcW2eT6gv4oeSl0BxZYQeWJMPHdxILI
	uW4t1DYDDcGdjgXWEWdnl3Zxz45xuEWcKui9z+N8PO7a5iUu1ENr+sDqQJsmvYhCuIOj
	QJhsgR8KsDnATvj/fcWvBJ2HTWUyAEuYE/1MGgO20GPUUBSGaS1OT0CO95EB3ZtDZPLB
	lj8Jju9JC09gXbdqJ/eoPk+8rkVfjt50B4s06VRCKrlemaRFmOU67H0YIWu2AO+TXL2e
	Eibm2L7nGMfM+VHYbj7xyhq9N6Gtjq8hCk0K4GlfW3LY6jBu3kDpIEnbmyHx1SZwj+gb
	cPYw==
MIME-Version: 1.0
Received: by 10.224.199.2 with SMTP id eq2mr9588310qab.55.1350079996550; Fri,
	12 Oct 2012 15:13:16 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.49.54.197 with HTTP; Fri, 12 Oct 2012 15:13:16 -0700 (PDT)
In-Reply-To: <DDDB9E6645DE24488B8485B41A051F471D95AFA5@Mercury.usurf.usu.edu>
References: <DDDB9E6645DE24488B8485B41A051F471D95AFA5@Mercury.usurf.usu.edu>
Date: Fri, 12 Oct 2012 15:13:16 -0700
X-Google-Sender-Auth: wkM40OxcAX88RV0rJqZgoUPVxOw
Message-ID: <CA+gsK-rsTji6KpUsHnHr_BqiN_YLVAJ4FSsKSBNgKt42rSnqyg@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
X-Gm-Message-State: ALoCoQnhWAzI1+mvYzVVWrAHjn3jFz7+gpdMAnNNp+D5Yr6QQQJAxhmsDkfTXKV34BNxqWGYdhH4
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Multiple partitions in drive image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 12 Oct 2012 22:13:17 -0000
Content-Type: multipart/alternative; boundary=20cf300fb1559cdeb004cbe3fe6f

--20cf300fb1559cdeb004cbe3fe6f
Content-Type: text/plain; charset=ISO-8859-1

Jonathan,

For what hardware are you building? It depends on the hardware how you need
to layout the file system on the boot device. YP provides you with a kernel
image and a root file system image and eventually, dependent on the
hardware, with bootloaders in ${TMPDIR}/deploy/images.

Rudi

--20cf300fb1559cdeb004cbe3fe6f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Jonathan,<div><br></div><div>For what hardware are you building? It depends=
 on the hardware how you need to layout the file system on the boot device.=
 YP provides you with a kernel image and a root file system image and event=
ually, dependent on the hardware, with bootloaders in ${TMPDIR}/deploy/imag=
es.</div>
<div><br></div><div>Rudi</div>

--20cf300fb1559cdeb004cbe3fe6f--
