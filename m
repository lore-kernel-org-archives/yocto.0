Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E322E01575
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 08:39:05 -0700 (PDT)
Received: by mail-ob0-f170.google.com with SMTP id va2so6921206obc.15
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 08:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=k3Ekka8RS389vNH/7mcYa+/Nz/8X31EIXuElkhHTR/Q=;
	b=m5Ilr6Fo1Vuu4Qp38cb1ups+JjtjrLPVhguEoIoebiWgk5Ys1BhQswpEx27/ep1nM1
	zWGsnaX7P0MlBgQfT5bDV6tnx/Leb3kBwfVHItAfnmYcUiYXs4Rh/P4Vtvrh7DQg1HfP
	+8BbUfRz0pq9YMID8NOtJLfFwWP20qoGn1yCS67zUBo48XZj385lO0CLXSQ8Sz1H1ASN
	lkbsNHU0ne8tVyebvhd58CIcdCtorUW8MgnMCMDdZDQtCiVC7LeXbPSTd5aC0iX8MAgu
	pz3uYXwl19mvfAriB2llKoolT4BaKxj1wBPMnJLGO4+l/b/tIEi4HHCEvnqpePsCv03V
	Y/rg==
MIME-Version: 1.0
X-Received: by 10.182.101.198 with SMTP id fi6mr1079864obb.79.1380123544407;
	Wed, 25 Sep 2013 08:39:04 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Wed, 25 Sep 2013 08:39:04 -0700 (PDT)
Date: Wed, 25 Sep 2013 17:39:04 +0200
Message-ID: <CAFyqS9pb0aXUVgKH7vANiNxhrXMtfVxGRd9FDVj8Y1Rk=0XgFw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to combine BBCLASSEXTEND and variable export
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
X-List-Received-Date: Wed, 25 Sep 2013 15:39:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. I have a recipe that use BBCLASSEXTEND to extend native. For the
normal/base version I wish to set/export an environment variable to be
picked up by configure.
But I do not wish this variable to be set by the native package. How
would I accomplish that? It was ok before when I had a package-native
recipe but since that is obsolete in favor for BBCLASSEXTEND I wish to
remove it. I think I covered all the other caveats like DEPEND and
PACKAGE/FILES. But this one is not as straight forward, or is it?

Thanks.
Hans

