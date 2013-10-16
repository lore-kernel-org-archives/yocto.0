Return-Path: <amittomer25@gmail.com>
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 080DBE01676;
	Wed, 16 Oct 2013 00:01:15 -0700 (PDT)
Received: by mail-wg0-f45.google.com with SMTP id z12so252305wgg.0
	for <multiple recipients>; Wed, 16 Oct 2013 00:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=8vPKpQ/lQzkiQB+fgG/iCmhjmEYJQ7mXAG0kbufqd8Q=;
	b=JOrGznlhVshOpnE/5/8Aem9sy8vu4IwIXwJewnnueYSNKUWCYbIhY/VBBAsnJcpgMd
	9hE28wN97sNLSd4tbHWQFBS6YO+ZQbUSUwhrE1egyOhwqIh+FNiXmLFpK7U+6kyfR+IV
	iIxbdhRma+94CNkYx6Bo48Za4ql/El5tB0cQcdBbYMMy9OI4C9MLrGZzGAU1oGAofJ1v
	/EFsLVEdpMG+X8sPlgFEvaHnm/mZaefTlDz6flqQT2DeS+QKCSV890vw/zHOPJoiA4hH
	f4q/ffmxsOhIG6yBj9JhSM6QbbMUs0PeC5H8DYA5BoAmAyADc38hKBjjct1xFRm35vjA
	gvWA==
MIME-Version: 1.0
X-Received: by 10.194.219.1 with SMTP id pk1mr979891wjc.36.1381906873620; Wed,
	16 Oct 2013 00:01:13 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Wed, 16 Oct 2013 00:01:13 -0700 (PDT)
Date: Wed, 16 Oct 2013 00:01:13 -0700
Message-ID: <CABHD4K9CTm3f-p66+aNgb-3ba168G4OveAkU8mPqtLruw1CEgQ@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"yocto-request@yoctoproject.org" <yocto-request@yoctoproject.org>
Subject: How /etc/passwd packed into my final image
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
X-List-Received-Date: Wed, 16 Oct 2013 07:01:17 -0000
Content-Type: text/plain; charset=ISO-8859-1

I wanted to modify the content of /etc/passwd but don't know how
/etc/passwd files is packed into final image

After the build process ,passwd file goes to

"tmp/work/k2-poky-linux-gnueabi/image-k2/1.0-r0/rootfs/etc/passwd"

this loaction

Now I see image-k2.bb file but could not find any rule that will pack
passwd file to
final image.

Can anybody how it is packed and way to modify it.

Thanks
Amit

