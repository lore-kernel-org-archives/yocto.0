Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AC9DE00C02
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 08:54:12 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id ar20so10773458iec.30
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 08:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=uARfZJC9Z58Mst4ySp23a9kWNQ3QpyHuTn27UrmgjFY=;
	b=zQmw4cjLz40whoJL2TJM2i4UPakxinxrLGK4vezIPYNsrcjka2awqKJFwMS2zoZlhm
	GrG3KLoBhLhGtIHQc8FUWSilghx4xVbekfFzOXc1pCWMpUrS17HCdv27PI/VJNE25sKx
	d0NYI0iEccYZexEaMx06OaLSShnlZPpWqwW5tdrrjsWA8mTk8R2HwgFvILYyFQaubNYM
	smovjsYHC1AoUtwQ4YQkbd4A0DUNqYjjNM5RR9ptcbzz8KWcoX/SMYXJN1U/ZYA0CNq+
	nEKphFv7CMd6U9tNFG2GpP+v3/PvTacph3ZWalG6qnGAxzRzVINxkrr0GdTb16QyMw7f
	3EXQ==
MIME-Version: 1.0
X-Received: by 10.43.13.134 with SMTP id pm6mr2608453icb.79.1397663651818;
	Wed, 16 Apr 2014 08:54:11 -0700 (PDT)
Received: by 10.50.115.2 with HTTP; Wed, 16 Apr 2014 08:54:11 -0700 (PDT)
Date: Wed, 16 Apr 2014 16:54:11 +0100
Message-ID: <CAM1ZcoVDa-mgYRYuPJqJQ4uKHNeVz+btnfFA=FnkD1xxhiFJvw@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: non empty package group
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
X-List-Received-Date: Wed, 16 Apr 2014 15:54:13 -0000
Content-Type: multipart/alternative; boundary=bcaec51968e37b716304f72aed37

--bcaec51968e37b716304f72aed37
Content-Type: text/plain; charset=UTF-8

Hi,

I have some recipes that generate multiple packages.
I also have a package group that groups all the recipes.
I would like to use the package created with the packagegroup recipe to
install all the files coming from my recipes into the target system. The
aim is to have one package that will install/update all the binaries,
libraries and config of the recipes included in the packagegroup.
How can I include all the files in the recipes added to REDEPENDS of the
package group into the package to do this?
I've tried RPROVIDES but the .ipk package created from the
mypackagegroup.bbrecipe doesn't include any of the files.

Thanks

--bcaec51968e37b716304f72aed37
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi,<br><br></div>I have some reci=
pes that generate multiple packages.<br></div>I also have a package group t=
hat groups all the recipes.<br></div>I would like to use the package create=
d with the packagegroup recipe to install all the files coming from my reci=
pes into the target system. The aim is to have one package that will instal=
l/update all the binaries, libraries and config of the recipes included in =
the packagegroup.<br>
How can I include all the files in the recipes added to REDEPENDS of the pa=
ckage group into the package to do this?<br></div>I&#39;ve tried RPROVIDES =
but the .ipk package created from the <a href=3D"http://mypackagegroup.bb">=
mypackagegroup.bb</a> recipe doesn&#39;t include any of the files.<br>
<br></div>Thanks<br></div>

--bcaec51968e37b716304f72aed37--
