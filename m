Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B283CE00A94; Mon, 10 Aug 2015 13:37:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58A9EE00A80
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 13:36:58 -0700 (PDT)
Received: by ioeg141 with SMTP id g141so181903419ioe.3
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 13:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ipXTitbtOnqGyq2yATbYJPYJv1Wy7syIPnMGVMYQ8h0=;
	b=TNDwONaDUyzLUHDfAueoz8mo0sNG0yAct4T0AYFaZsHnw37GRYujORW9tKCa03SVnY
	vm6aCP8GG4pV0a/swH+bMtfr4H3mU8MB3tN4BMNAdwiJdepD3qfluaQ2vVFnL+hBMbAE
	WnHc9VBAQbM5geQr87ATKYoXAjbLiId0+MJH6nQvkoJEU4TeJo0eNbohN9XWNujMD8r1
	6iYzH4YTut15p7HCw5imaMnA6I8pULgV5bulhkQwj9BYpwwzjH2EQZYXtpz90WK3ObS6
	LjZovO+jwIedtq60hNHkrDrO04yoW3VqPhPhrnVYopSUCvW0XawMn8FDjEKs4R7oLkM+
	xIMA==
X-Received: by 10.107.34.194 with SMTP id i185mr21901067ioi.49.1439239017894; 
	Mon, 10 Aug 2015 13:36:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Mon, 10 Aug 2015 13:36:28 -0700 (PDT)
In-Reply-To: <CACTu1Lj+9WOZXh2-P5pWeaGwn_CPxBt5bcQSB3dTAJnK5Yc=Og@mail.gmail.com>
References: <CACTu1LjN5JStnAA8Gyu=xJED4feXTpj7JA-GNiE_f7JbKUhy_w@mail.gmail.com>
	<CAJTo0LYOJ_T3rTg9o2=Qo1twUfHFi1OTKBBnLqed1u+rxHKWTw@mail.gmail.com>
	<CACTu1Ljn2ven-b51Q+X9gGcWYxxe1-nv1T9+N=y4LSy6juLnoQ@mail.gmail.com>
	<F8159D01-CD91-48A9-AA7B-EFE99FFDDCEB@gmail.com>
	<CACTu1Lj+9WOZXh2-P5pWeaGwn_CPxBt5bcQSB3dTAJnK5Yc=Og@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 10 Aug 2015 13:36:28 -0700
Message-ID: <CAMKF1soKzVgxH4HjJOPVVkEwaAm95=YWw0ncZ+0DW25oz5VnAA@mail.gmail.com>
To: yocto yocto <yoctomailinglist@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Header-Files of DEPEND recipe not found
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
X-List-Received-Date: Mon, 10 Aug 2015 20:37:05 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 10, 2015 at 12:08 PM, yocto yocto
<yoctomailinglist@gmail.com> wrote:
> SET(SOCI_INCLUDEDIR
> /home/my-PC/development/2015-08-04_edison-src/edison-src/build/tmp/sysroots/edison/usr/include/soci)
>
> everything worked fine. Is there any way to get the path
> "/home/my-PC/development/2015-08-04_edison-src/edison-src/build/tmp/sysroots/edison/"
> within CMakeLists.txt automatically?

you can use =/usr/include/soci which will prepend sysroot automatically.

