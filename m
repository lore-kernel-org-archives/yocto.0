Return-Path: <radioconfusion@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71260E0108E; Thu,  8 Mar 2018 23:18:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (radioconfusion[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A843E00DA4
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 23:18:15 -0800 (PST)
Received: by mail-lf0-f54.google.com with SMTP id t204-v6so11857600lff.9
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2018 23:18:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:from:date:to:subject:user-agent:mime-version
	:content-transfer-encoding;
	bh=ukMLUvhc85ndfAUx5YRJrltksx52ycuitc2gPBRkZL8=;
	b=mgmLb8iY6/c5cxAnTcLi6hVrCwsruVl7qrdGac5nsWg2FXDGrW7wiROjRn/vBhN91x
	lUIn0e6xz2g/5p9w/CSox/kXCwF6obB9A/jBdiYh8b8edgitbbVjC1Z81eLgRTnWjMLN
	MaGwV9HOZmzJdsryh5rQBEYdSYIhwOr9IKfwzuDpuxpnh7Q5qWKLYeIdIqoKaY7s38yX
	M55aqwOyrpjB2u1e3JCOKQcdowbxkETcmH29p0ryH7/eWDxaYjYrkNlUfjBqy227HX4B
	iC16wKqqK1Q2ywikbFOKqyOirsWGwxOMnHLcEsVESTgVn6VGxp/V/Jroa5XfIHT5WA5I
	/91g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:date:to:subject:user-agent
	:mime-version:content-transfer-encoding;
	bh=ukMLUvhc85ndfAUx5YRJrltksx52ycuitc2gPBRkZL8=;
	b=mFMj7eIjW/IK34ZRcbBKCQwNufuIzeqKjmievn3zM12sr4R8afHMAwulcTHID427Uk
	cjK5Uzi3jFYXOMXShroupqz7+h34KpdYznQtwkmc0PpvfnFotWXG7B4prdfXKWmSfiek
	W7UjGynXaAtpxwY7yN5EgEBlMZUGX4GeYvyOntChTPfY2LNpl+QBWCSUHbm5JIRJ5EgR
	Tc0pxeIGTFUHG1GGaSIvRrzq7KO3MlK5Q2peKUEJiLOYhN62tg1G4+/n2fAVaxIwtJpf
	57iMagsJh20MHmkoW30ACbLYEXOJCMJaSHIut60LEt+HSHbjATz+1xHlduJKNkVCd6X5
	rnxQ==
X-Gm-Message-State: AElRT7Gf/o+21Zx/NnGzXnRh8wLTKNR5nqnYKig+/uUbVUH+NaR5Hnwo
	Ba8sFpUwDRy4VrWNjraPPyRitQ==
X-Google-Smtp-Source: AG47ELuYUK40FniFs+Behyfm3d4jjKif5cleVVCo9+BYvjJ6rdexw3pahuCgKJatTzn0zXZN/tjWjw==
X-Received: by 10.46.93.69 with SMTP id r66mr20022781ljb.88.1520579894200;
	Thu, 08 Mar 2018 23:18:14 -0800 (PST)
Received: from localhost (88-114-240-69.elisa-laajakaista.fi. [88.114.240.69])
	by smtp.gmail.com with ESMTPSA id
	w23-v6sm98201lfd.10.2018.03.08.23.18.13 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Thu, 08 Mar 2018 23:18:13 -0800 (PST)
Message-ID: <5aa23535.1c69fb81.8c6e2.0804@mx.google.com>
From: radioconfusion@gmail.com
Date: Fri, 09 Mar 2018 09:18:12 +0200
To: yocto@yoctoproject.org
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: Version numbering of dependencies
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
X-List-Received-Date: Fri, 09 Mar 2018 07:18:16 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello all

I'm confused with version numbering of shared libs dependencies on yocto
environment. I’m using Morty but the thing looks like same with newer releases.

Let me explain the problem.

I'll take Curl package for example. We all know that the Curl recipe makes
libcurl-package also. Ok, now I want to add some important compiling options
to Curl and I make curl_%.bbappend file to my custom layer with the wanted
customizations. I don't want to raise the original version number of Curl
and I use PR_append = "-myver1" instead. Now I get packages
curl_x.y.z-r0-myver1_blabla.ipk and
libcurl_x.y.z-r0-myver1_blabla.ipk. That’s very good for me.

The problem is that: Now the Curl ipk package dependencies are

Depends: libc6 (>= a.b), libcurl4 (>= x.y.z), libz1 (>= c.d.e)

And I think there should be:

Depends: libc6 (>= a.b), libcurl4 (>= x.y.z-r0-myver1), libz1 (>= c.d.e)

or something like that.

Now I can upgrade Curl from x.y.z to x.y.z-r0-myver1 on my device without
upgrading the libcurl and that breaks a lot of things. Ok, normally
'opkg upgrade' installs both of them but in case of network failure or an other
failure this problem can be happened.

I found that package.bbclass uses PKGV, PKGV_+pkg and PV_+pkg environment
variables to get version number for dependencies.
If I change it to use EXTENDPKGV, I get expected results.

Is this a bug or am I doing something wrong?

The patch I tried:

--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -1620,7 +1620,9 @@ python package_do_shlibs() {
         needs_ldconfig = False
         bb.debug(2, "calculating shlib provides for %s" % pkg)

-        pkgver = d.getVar('PKGV_' + pkg, True)
+        pkgver = d.getVar('EXTENDPKGV', True)
+        if not pkgver:
+            pkgver = d.getVar('PKGV_' + pkg, True)
         if not pkgver:
             pkgver = d.getVar('PV_' + pkg, True)
         if not pkgver:

Best Regards,
Jussi

