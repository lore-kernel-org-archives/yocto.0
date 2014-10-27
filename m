Return-Path: <scadlye@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0897AE008F6; Sun, 26 Oct 2014 17:05:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (scadlye[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
Received: from mail-qc0-f194.google.com (mail-qc0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92160E0084A
	for <yocto@yoctoproject.org>; Sun, 26 Oct 2014 17:04:51 -0700 (PDT)
Received: by mail-qc0-f194.google.com with SMTP id b13so378445qcw.1
	for <yocto@yoctoproject.org>; Sun, 26 Oct 2014 17:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=zTRwLwyUBKs9NwtQeJ0uJXpwYFNkFzMoz6/9ZFY+qP8=;
	b=I/xfYU9ry0Hdr03jeHqbHwS7p/3fWk5Th+agn/YPo0sQdLbxiBwsS4DGm3Awp7TeQA
	CSkjyDac2le85WlcngpCL1m+ZNECO5UgK0Nyq4Zf5i+RjAvii5bwpVmbNyis+8HfgVKd
	szx4jIm3UdKSXzZ2kOqtDkkKGGjBbX4A98e+qq282kRhyyPevvbLNxOwfPI8UOb+ApwE
	2CzaTn/7pm/gGDF4kakao6x5MN7Yvwr8Xu8L4eMbzsIq8jWN9vhfGQ+oIsBFA2c9jm/a
	ks7zT1A8cdA6Cro+sAW2z6r9HM/gsI1YARmglsZxXHJaWBk1pWrt0tZ4AGAnCzBAsGbW
	3f5Q==
MIME-Version: 1.0
X-Received: by 10.224.80.193 with SMTP id u1mr27023891qak.86.1414368291457;
	Sun, 26 Oct 2014 17:04:51 -0700 (PDT)
Received: by 10.229.11.197 with HTTP; Sun, 26 Oct 2014 17:04:51 -0700 (PDT)
Date: Mon, 27 Oct 2014 01:04:51 +0100
Message-ID: <CAOHzp89c11bx+GSOUg+ggtPiRffyERPd9-U86uqPhxappgSQuQ@mail.gmail.com>
From: =?UTF-8?Q?Sylvain_D=C3=A9castel?= <scadlye@gmail.com>
To: yocto@yoctoproject.org
Subject: Package not found in base feeds with custom BSP but default settings
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
X-List-Received-Date: Mon, 27 Oct 2014 00:05:02 -0000
Content-Type: text/plain; charset=UTF-8

Hi All,

I have not so much experience with oe, and I am facing an error that I
cannot understand yet. I tried to search on the web about his issue,
but I did not find any useful result.

Here is what I did with my oe :

- Install yocto project and checkout daisy branch
- Set up a build directory : myBeagle
- Configure for beaglebone
- bitbake core-image-minimal
=> Everything is OK

Now I wan to create my own BSP
- Setup a BSP layer with the yocto-bsp create tool => meta-myBeagleBSP
- Config is let by default for beaglebone
- Update my local.conf to select myBeagleBSP target
- bitbake core-image-minimal

=> Everything seems to build fine
=> But when running the do_rootfs, I get this error message :
ERROR: packagegroup-core-boot not found in the base feeds (myBeagleBSP
armv7a-vfp-neon armv7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e
armv5-vfp armv5 armv4 arm noarch any all)

This is followed by tons of package names in red.

I found in the document that the base feeds is the content of the
folders under tmp/deploy/rpm and in the tmp/deploy/rpm/myBeagleBSP
folder I can find these packages :
packagegroup-core-boot-1.0-r17.mybeaglebsp.rpm
packagegroup-core-boot-dbg-1.0-r17.mybeaglebsp.rpm
packagegroup-core-boot-dev-1.0-r17.mybeaglebsp.rpm

So I think that I am missing something, but I don't know what . I let
nearly every settings to default values. And I cannot figure out why
the beaglebone machine can build fine but my own machine with same
settings is failing...

Thanks, best regards

~Slyde~

