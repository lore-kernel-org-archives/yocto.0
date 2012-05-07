Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53B4DE0137A
	for <yocto@yoctoproject.org>; Mon,  7 May 2012 07:41:08 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so8847693pbb.35
	for <yocto@yoctoproject.org>; Mon, 07 May 2012 07:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=mJBe2QJMC/7yLbU0ipSDopvjpHUNFr+PAaOwIV4szqI=;
	b=fs8ZAi5uXEr7NhzYqiCNcKtqZYyyhqAYWtEgigY122bXeXs7V+o6LnugFCTxuYFhP4
	+r7EvBGjPZ6R3Hal/H1QOsE8iCfJ6p02ZEh/LzW2e1HyFthNbfNAa5cXVEhlOFQariU2
	oISVKv6hP2tIAeRh5nUaZRyJGkhNxscmeVgW0OqobWbuFgVr4nVZX6ceF7EBaCovP0fl
	/Wreq+3szzUnS9qmass6hyGJ+7THcMLgxnOAqqmO5S8coG+Ri390geKopOcF7kqzWYip
	nWqZOREufq7CQrMBxi7UF1vIDaVGdqaiDeEg9DBl0AloQhDybQvtE6BGSgSl4puDMkCd
	Hg9g==
MIME-Version: 1.0
Received: by 10.68.213.162 with SMTP id nt2mr8525940pbc.31.1336401668156; Mon,
	07 May 2012 07:41:08 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Mon, 7 May 2012 07:41:08 -0700 (PDT)
Date: Mon, 7 May 2012 16:41:08 +0200
Message-ID: <CACW_hTacgFqj2NQZ4aNuN5WBm2R9Ge3NS25XVJTKjmKm6spHKw@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org
Subject: modify a kernel patch
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
X-List-Received-Date: Mon, 07 May 2012 14:41:08 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

Not sure what the best place is to mail this (the YP list or oe-core
or oe-devel or ...)
Apologies if this is the wrong place.

The problem I'm facing is the following:
I have a kernel with some additional drivers that are not upstreamed
because they are very specifc.
I'm moving from oe-classic to denzil and from 2.6.38 to 3.2.
Now some of the patches do not apply any more.
In oe-classic I would have gone to the kernel work dir, fix the issue,
do a quilt refresh and copy the patch back (there is a patch that
contains our driver)
However, denzil uses guilt instead of quilt

If I do a devshell of virtual/kernel and want to do with guilt what I
used to do with quilt I run into a problem.
guilt status says: Patches directory does not exist, try guilt-init
and indeed there is no patches dir like there was in oe-classic

Hence my question:
What is a good workflow to modify a kernel patch.
Or, what magic incantation do I need to give to guilt to make it working.

Any suggestion is greatly appreciated.

Have fun!
Frans.

