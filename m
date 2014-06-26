Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6B87E0056E; Thu, 26 Jun 2014 14:52:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashcharles[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.182 listed in list.dnswl.org]
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 998AAE00509
	for <yocto@yoctoproject.org>; Thu, 26 Jun 2014 14:51:52 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id oy12so4437554veb.13
	for <yocto@yoctoproject.org>; Thu, 26 Jun 2014 14:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=6ARNFWtJNnqY8mH1R+0eauPUyVe8ZXPGOP6ipe9Kz0I=;
	b=Q+XapSG+ngcwVjJcNtbP103NenbjQf37iuzCtZsEiHFlerkdxDmhAYpIuprPbNTz5q
	4uC40eExF4RXLdPXjbdIG67IaXhSjJkmOLOMFLXuJUTTAViwu4gVKr0KBzG63ATJq9YA
	i9+yz1f5x/9OyNbOlUefzVo5ROC3eATIdVvavZGKafzYu53nnuJeYHzeoUchS57Hof16
	unRMePQf/Q5spMVts6t7hYqy3mB9Ln7YC7RDUyHO2UfG3KTv74mfTzPkAvY8cQoKZ/VK
	AdGbQ+H3f5UnTI5TFfTfaXMD1CmM5uDVYg5WLuFdFBCHUmdodj6hJ/t/wi2/r8QzVpvi
	n5xA==
X-Received: by 10.220.203.134 with SMTP id fi6mr6043108vcb.18.1403819511268;
	Thu, 26 Jun 2014 14:51:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.196.229 with HTTP; Thu, 26 Jun 2014 14:51:20 -0700 (PDT)
In-Reply-To: <539B63C4.1030309@dynamicdevices.co.uk>
References: <CAAPegz2DCZGTKfyJBGMytu_zofk2K9CSJMbVtiKHdS2eysZgrQ@mail.gmail.com>
	<CAMKF1sr_LaaVnd8U_7XP3QmAn6Q7OTuVmkb+G3zxz3edXEkRkw@mail.gmail.com>
	<539B54CF.90603@dynamicdevices.co.uk>
	<CAAPegz0HCvT9fNMfp0smuuLLTf0XU0zeD0G=picxNNbquEA5og@mail.gmail.com>
	<539B63C4.1030309@dynamicdevices.co.uk>
From: Ash Charles <ashcharles@gmail.com>
Date: Thu, 26 Jun 2014 14:51:20 -0700
Message-ID: <CAK8F28=CotBOqPE30quGM_k5aQG7sYnw8kPmNtn6i+6DtCNwfQ@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: virtual/mesa, virtual/libgl provided by multiple packages
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
X-List-Received-Date: Thu, 26 Jun 2014 21:52:04 -0000
Content-Type: text/plain; charset=UTF-8

Hi Alex,
On Fri, Jun 13, 2014 at 1:49 PM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
> I think these two lines in cogl-1.0.inc are causing mesa to be pulled in
> incorrectly, but I'm not sure what ERDEPENDS does...
>
> # Extra RDEPENDS for PACKAGECONFIG
> # This has to be explictly listed, because cogl dlopens the backends
> ERDEPENDS_GL    = "libgl"
> ERDEPENDS_GLES2 = "libgles2"
I'm seeing the same issue.  I'm guessing that 'virtual/*' is not a
valid target for an RDEPEND.  It looks like your libgles2 provider
should RPROVIDE libgles2.  The receipe for SGX (graphics core)
libraries, for example, contains lines like this:
RREPLACES_${PN} = "libegl libgles1 libgles2"
RPROVIDES_${PN} = "libegl libgles1 libgles2"
RCONFLICTS_${PN} = "libegl libgles1 libgles2"

Mesa does something similar (with some extra debian renaming that I
didn't understand) in an anonymous python function in mesa.inc.

--Ash

