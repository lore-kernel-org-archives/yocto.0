Return-Path: <davidsmoot@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAF2BE00303
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 15:42:01 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wgbdt13 with SMTP id dt13so5877155wgb.11
	for <yocto@yoctoproject.org>; Fri, 09 Dec 2011 15:42:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=YbT86t559lr2SBkqHR57Ja0IjPrzyFZTUNAcdy1hhjc=;
	b=VhJoJUENoIVbYN0upCzZSlHCNBDEMaHgyIEZ3vIIPtdgP6Ng7ZZo1JhoUS8yiGts8z
	yYcAzx9D+d7D0lgFmcklOrBFHASKX5aez6CTMDrm5xTfYOeAIdxrfzNI931YC1XKUaS7
	XYpTZa/kQeQPosasnCQOi7D7hCCYwUzwv0Wnk=
MIME-Version: 1.0
Received: by 10.180.19.42 with SMTP id b10mr15027293wie.39.1323474120667; Fri,
	09 Dec 2011 15:42:00 -0800 (PST)
Received: by 10.216.28.211 with HTTP; Fri, 9 Dec 2011 15:42:00 -0800 (PST)
Date: Fri, 9 Dec 2011 17:42:00 -0600
Message-ID: <CA+5N1gx-t5BZeZxy7ooHLWoYK=B2Dr36AVWpca2LZ6M95_MbSw@mail.gmail.com>
From: David Smoot <davidsmoot@gmail.com>
To: yocto@yoctoproject.org
Subject: Routerstation Pro hardware is being discontinued
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
X-List-Received-Date: Fri, 09 Dec 2011 23:42:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

I noticed that the routerstation pro hardware no longer appears on
Ubiquiti Networks product page.  Their sales rep confirmed it is being
EOL February 1, 2012.  Since that is the Yocto reference MIPS
platform, I thought you would like to know.

It does make my problem with Mediatomb seg faulting on the RS Pro
obsolete.  For the record, I had made two minor patches to the
"meta-demo" branch and had been successful in compiling
demo-image-mediatomb for the routerstation and the beagleboard.
Mediatomb worked fine on beagleboard but segfaulted during
initialization on the routerstation.  That's one bug overcome by
events.

David

