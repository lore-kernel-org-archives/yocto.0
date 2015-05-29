Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9861E009A3; Fri, 29 May 2015 13:59:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CF7AE0086D
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 13:59:17 -0700 (PDT)
Received: by igbyr2 with SMTP id yr2so23799458igb.0
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 13:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=huws6Qq6v0+IuH4rr4Yjreto2j0KP9urp1bcFgcFpqk=;
	b=PsLuWGSPN2rodehqDHnEcHIcM3Gr2s6LJs0aKVMoXlGwjAGDVngNUYqciF4/m1wOAW
	UmpDBPX3gWyKR+avOmC1F/WJaGQ7TxrpKsRHJj85PUB8uz0hlLlb59aioOBzBAtSLWll
	xNM+goFeEEGUzrfavut0GI+uy1Xz33OVeCM9OxHf3KEL8a1U+DxHa6mRB40vqYPnENJl
	dhXto8KlZSvFxYK6fuB04bP+3q2q6tf3xIJD3qTld3kGqsJcDlRqsygB9FRtyY5526S1
	QnQfyCEGzGQHCaoLL8Rt0/82r1Vyvwgug9s1uyW6jtnFmFdYKhow3ec+1MMJ5AztQSlh
	zFgw==
MIME-Version: 1.0
X-Received: by 10.50.138.70 with SMTP id qo6mr6375078igb.15.1432933156565;
	Fri, 29 May 2015 13:59:16 -0700 (PDT)
Received: by 10.50.141.228 with HTTP; Fri, 29 May 2015 13:59:16 -0700 (PDT)
Date: Fri, 29 May 2015 15:59:16 -0500
Message-ID: <CAK5mteyg4FSKmzrDoMmvx+-fwJEhybHCa+MA9bokQuJt5m-H_Q@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: build hello_world.c in yocto
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
X-List-Received-Date: Fri, 29 May 2015 20:59:19 -0000
Content-Type: text/plain; charset=UTF-8

HI team

Question what are the necessary IMAGE_INSTALL_append to build a c
hello world in an core-image-minimal ?

If I just add gcc .. then I need "as" when I try to gcc -0 hello hello.c


I will add gcc and gcc-dev .. anyone else that I might be missing ?

Thanks a lot and regards

Victor Rodriguez

