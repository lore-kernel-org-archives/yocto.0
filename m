Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92A7FE002AC
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 06:59:48 -0700 (PDT)
Received: by vbme21 with SMTP id e21so4268040vbm.35
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 06:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=rg8HwPmaQz3ME1nyj8MM1m6wpO/72WKjKySB8m/0qf8=;
	b=jUP1+bnDoObkdZhHwkLljB1IL5kE6en1bCmxA3Uw7BFnDrPTS0tMKF4RhOFE3MqPMc
	UBle5mLFW/8eYk6r3a02nda2dKc/9SlsxLurjeL/g7djeGynvaqKPwcPXpV8PVN4fP+K
	dygvhw7BzUfxh2CjQHiyv8CGxnCkebNGrPtSSwwh2+LH6XnxtdCkWSVq7PbG5ivm4t58
	ie+3XVsrNZFBkHnAbVLChIOOFMkqqzIPul4tdni1rBQJC8Z3UNLJfZAS9iyVz5zXCYm5
	XkoO10GdvzVjZoaLGR1HMmwTPh7OwNuuP2zMpz7F45mNH9YkHvFLeTijWL550aCDw8eh
	CYsQ==
MIME-Version: 1.0
Received: by 10.52.64.242 with SMTP id r18mr4885872vds.90.1344866387604; Mon,
	13 Aug 2012 06:59:47 -0700 (PDT)
Received: by 10.58.64.114 with HTTP; Mon, 13 Aug 2012 06:59:47 -0700 (PDT)
Date: Mon, 13 Aug 2012 09:59:47 -0400
Message-ID: <CAE8H0+U_iEesW05u26pMgZX7Tjk=xSuSjcKTefw6e2trOGWZhQ@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: yocto@yoctoproject.org
Subject: core-image-minimal: no valid shadow password
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
X-List-Received-Date: Mon, 13 Aug 2012 13:59:48 -0000
Content-Type: text/plain; charset=ISO-8859-1

I've found that if I take core-image-minimal and add a single package
(iproute2), I can no longer log in as root, getting the message
"login: no valid shadow password".  Adding the shadow packages didn't
seem to help.  Sounds like someone else encountered this back in May,
but there was no published resolution that I could find.

First tried under a Yocto Git master that is getting pretty old at
this point, then re-tried with a new download of 7.0.1 with the same
result.  Building for crownbay-noemgd.  Initially built
core-image-minimal using bitbake command line, and then added the
package(s) using hob, build package, build image.  Booting off an SDHC
card, if that matters.

Any suggestions?

John

