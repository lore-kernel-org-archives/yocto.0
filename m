Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 515F7E0071E; Sat, 16 Aug 2014 17:51:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28EE7E0034C
	for <yocto@yoctoproject.org>; Sat, 16 Aug 2014 17:51:09 -0700 (PDT)
Received: by mail-ig0-f172.google.com with SMTP id h15so5096192igd.11
	for <yocto@yoctoproject.org>; Sat, 16 Aug 2014 17:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=qBuQHu8gq4942jdLuQMEEeHJGwPs8SYqhtuolOjBHDE=;
	b=Pp9/dQ6aUfbg9ShUiR+sBNkJxe5M1MeDjTHj6hryvFz0QmHY0mIANKVQ2gt/+irLuz
	rzp/m1/rNpG42fgIyc0E0wp3qSdWnXDjLKkmuc2VY4tGkCCQnbTqqEkHBQQtsrHmlBL8
	EtrMY6Ae8Hk9oP/LfCpo8VK8MEyx4q9ZrXC9DrTZ2BGtTlC8tVEO4vUxUZWLxy70b+T+
	9JdJLQYHcIvTOcgYre/enBFyECsm8H/36h8M+X+XGLNSZDwKqt2KOaGURXERiQ3++zDm
	B/D975NScXwDXIe0isvYGXE+oJMxWvs16eVTTTMCnViGdVWZXoN+fqRgHpsNFp6K9P33
	mcpw==
X-Received: by 10.50.176.202 with SMTP id ck10mr76461473igc.2.1408236668839;
	Sat, 16 Aug 2014 17:51:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.126.103 with HTTP; Sat, 16 Aug 2014 17:50:38 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 16 Aug 2014 17:50:38 -0700
Message-ID: <CAMKF1sp9Z6vj1Dz96_WYiHOtYFqa-zECrNHOFgb=dBUDJN2Z_g@mail.gmail.com>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	openembeded-devel <Openembedded-devel@lists.openembedded.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, musl@lists.openwall.com
Subject: Announcing meta-musl OE/Yocto layer supporting musl C library
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
X-List-Received-Date: Sun, 17 Aug 2014 00:51:13 -0000
Content-Type: text/plain; charset=UTF-8

Hello All

musl <http://www.musl-libc.org/> is a newer implementation licensed
under MIT licence
A layer to support musl to supply your system C library as an
alternative to uclibc and eglibc/glibc  is now available at

https://github.com/kraj/meta-musl

README describes way to get going with it.

Few things to note

* Supports gcc 4.9 in OE not 4.8
* Current musl recipe is 1.1.4 based
* You need latest master of OE-Core
(106305227003761c3fc562c21bb859a5256f2b36) or          newer and
bitbake
* Its only able to build core-image-minimal
* core-image-minimal boots on qemuarm, qemuppc, qemumips, qemux86, qemux86-64

I will send a request to add it to layerindex soon and then you should
be able to find it using
layerindex.opernembedded.org as well

If you try it out on your hardware and/or have feedback I am
interested. Fork it from github, file bugs
send patches ....

Happy hacking

-Khem

