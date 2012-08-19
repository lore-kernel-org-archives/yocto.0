Return-Path: <seth.boll@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCD96E0034B
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2012 06:53:18 -0700 (PDT)
Received: by obbtb18 with SMTP id tb18so10431042obb.35
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2012 06:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Xqu30NoTK1M4zuZvu1as7uvgIVkR9tSDZavmkNxTNUQ=;
	b=h5ux+rNC+oGqu7x2L2jGkT6EH46J/S89m8LdSpPyjMTFi2V7rnk8tO6s8msU6ItM0U
	V3NEHFzGKiWIPHm20SGQ8h+I1HSqVNGOsbe2uxa6tBATsNFt5CgqV7/zCTXHeXUY/+To
	qTc4VZS+vS1b3WgsLnKMFxa0ATKc6F8OMfS9lEgpPTYXD9zXPmx/epd3D3HR3fAaCwkh
	NJlwJIRUBuVaFStMli36h84fE8/nVx+FPkA5Ma+NNhQKTx8O/zsiGOOLlKyZn7UqIWW5
	lrC5Crd1vW9dyUjcTjiFMd5mmwBcDWoOgPA4KRK66AUBqXoukXgqOjs78NRKpAFqJsfm
	KnhA==
MIME-Version: 1.0
Received: by 10.182.116.73 with SMTP id ju9mr8148679obb.95.1345384396831; Sun,
	19 Aug 2012 06:53:16 -0700 (PDT)
Received: by 10.76.33.234 with HTTP; Sun, 19 Aug 2012 06:53:16 -0700 (PDT)
Date: Sun, 19 Aug 2012 08:53:16 -0500
Message-ID: <CA+JN8xOM0SVhCsrj+DdL7gjGAZAZ1SMrwVCA7mxWocK7+XQoyQ@mail.gmail.com>
From: Seth Bollinger <seth.boll@gmail.com>
To: yocto@yoctoproject.org
Subject: Installing Kernel Modules
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
X-List-Received-Date: Sun, 19 Aug 2012 13:53:19 -0000
Content-Type: multipart/alternative; boundary=14dae9399ae10f3a6804c79eb7b7

--14dae9399ae10f3a6804c79eb7b7
Content-Type: text/plain; charset=ISO-8859-1

Hello All,

I currently have a modules*.tgz in my tmp/images/deploy directory that
contains all of the kernel modules built.  What's the yocto way to pull
only the modules I care about into the rootfs image?

Thanks,

Seth

--14dae9399ae10f3a6804c79eb7b7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello All,<div><br></div><div>I currently have a modules*.tgz in my tmp/ima=
ges/deploy directory that contains all of the kernel modules built. =A0What=
&#39;s the yocto way to pull only the modules I care about into the rootfs =
image?</div>
<div><br></div><div>Thanks,</div><div><br></div><div>Seth</div>

--14dae9399ae10f3a6804c79eb7b7--
