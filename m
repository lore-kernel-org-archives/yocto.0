Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65A39E00C09; Mon, 21 Dec 2015 01:43:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 214CFE0078A
	for <yocto@yoctoproject.org>; Mon, 21 Dec 2015 01:43:45 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id p187so60621792wmp.1
	for <yocto@yoctoproject.org>; Mon, 21 Dec 2015 01:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=emPNJMBIc1ALzTfl1SvTOx/8FDBasiFlyFOQPl5RJZ0=;
	b=vf0LhPhnYdZQwywhqW8NEKlj7el//sqBU9vxCRULVi3SYyc+7Fx5+Eo9SRJcrZw7ni
	XEtBHI59RdgxwJKPB+wgQLtyogaFNgWNBirSKgNzQqlB/3iogBZCwBkkzZnoJKs2vy7g
	pJtDhOGT9IXcLmRS5RCeQ+CeIA48if9NJZ3VkdSh1XsuAant04alVjOgZQTFKyPs0Zja
	NxMx1wlmORcnWwwGcomLBcAFiPTG7CQL4btD/3jJJRIZqD7x2iscxGtaqhpzYvYfuSiu
	2zyco26IlL8u0H7/0DHPkzfMddhansyulvww5AbJt7PrirxSxauPTEwOcex0AXjjB6i9
	CdQA==
MIME-Version: 1.0
X-Received: by 10.195.13.137 with SMTP id ey9mr22522684wjd.81.1450691024863;
	Mon, 21 Dec 2015 01:43:44 -0800 (PST)
Received: by 10.28.109.210 with HTTP; Mon, 21 Dec 2015 01:43:44 -0800 (PST)
Date: Mon, 21 Dec 2015 10:43:44 +0100
Message-ID: <CAAfyv378CR0-RFgLUp7V7HjuzdgEAjXVT2_nFTUvGCbRa2i76A@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: building on os x
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
X-List-Received-Date: Mon, 21 Dec 2015 09:43:49 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I did check internet before asking but there is not much reference. So
sorry for stupid question but it is possible to build e.g.
core-image-minimal on os x natively? I read something about
meta-darwin but I'm not sure if it's what I'm looking for ( IIRC it's
for creating SDK for osx). Anybody tried that? Many thanks.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

