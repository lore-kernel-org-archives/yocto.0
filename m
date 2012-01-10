Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FD0EE006E9
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2012 16:51:51 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qabg40 with SMTP id g40so1492821qab.14
	for <yocto@yoctoproject.org>; Mon, 09 Jan 2012 16:51:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=FeBba4dKJGXvT5Mo1orH+mjJu6CvESJ5rMgz6qyIjkM=;
	b=inE7xJGG3uGY/4cnqBTF97qEvR6uHulJ66ezvvBY9Vt1nkZYGinBKHirPTWpuFHLhZ
	Sd3uqTamcOaEg4A1Gg/R2YqIUuGglCYYv5SYyo4gsQdHX5NDos9QKwENehmn0MOPZR3w
	ADYSpTE3WNfyhmX+wEKIwTZ41xZP6sOr7MS6E=
Received: by 10.224.221.148 with SMTP id ic20mr11039388qab.23.1326156710623;
	Mon, 09 Jan 2012 16:51:50 -0800 (PST)
Received: from [10.0.1.26] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	ev2sm97862211qab.15.2012.01.09.16.51.49
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 09 Jan 2012 16:51:50 -0800 (PST)
From: James Abernathy <jfabernathy@gmail.com>
Date: Mon, 9 Jan 2012 19:51:51 -0500
Message-Id: <8B3C6E23-C3B9-4CEF-A1E0-2B91F8D17EFE@gmail.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1251.1)
X-Mailer: Apple Mail (2.1251.1)
Subject: understanding what's in an image
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
X-List-Received-Date: Tue, 10 Jan 2012 00:51:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm trying to understand how bitbake parses the poky directory tree a =
little better. =20

The best I can figure all .bb files are NOT included. Just some of them =
are.  I'm guessing that the .bb in the meta/recipe-sato named =
core-image-sato.bb is the one that is used to start the parsing if =
bitbake core-image-sato is executed.
I originally thought all subdirectories of a path included in BBLAYER =
were parsed looking for .bb files, but now I know that is not true, but =
not sure why.

For example, it does not appear that webkit is included in the =
core-image-sato even though the recipe-sato directory includes the =
webkit subdirectory with it's recipe.  What would be the proper way of =
adding the webkit to core-image-sato??

Jim A


