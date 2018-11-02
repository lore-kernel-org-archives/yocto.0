Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B69EE00A0A; Fri,  2 Nov 2018 09:50:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1728EE00901
	for <yocto@yoctoproject.org>; Fri,  2 Nov 2018 09:50:44 -0700 (PDT)
Received: by mail-qk1-f178.google.com with SMTP id 189so4045461qkj.8
	for <yocto@yoctoproject.org>; Fri, 02 Nov 2018 09:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=pVLXM10uJqlZEBovu/Y88yO6aZgxWceMAnUlW5Xo8w8=;
	b=YsUxMdKvsFqNJRxyAOopwRN424nkTHAl7Mk+ByzwU8wO5JPTKE0vPQwFbvfACHD2bn
	3TBll72R6CdwlHDHAZS6Jo4/QieyQxyYx/qy9lOw9dDfdiGzlCpTlzHR19ti2/HT3vRT
	AC00kc93mCgHXjUD5canfJqKq9lPV7Ko8YTYJin/KJbouF6vTNFY+j0DEH06l4vxgMgH
	dxlAl9mK+CCtEM9gkSBVcuEXMekxQT6sk39vTNPhqrwM3KifZXbwAWv+g+VV4YwEsK1v
	IfNJy+lX2LkuGIN/6i1VTYwakVTVE08RyPGGVLfNA5HlaFai4G0/n58vXJs1/RsxXuST
	+pBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=pVLXM10uJqlZEBovu/Y88yO6aZgxWceMAnUlW5Xo8w8=;
	b=onTtRwHCQKfpdmD2JQ0PCrq//dt0Vl+OCOe1jkVEhUJSCKZf6fFDDE0IYiz6CIdZjT
	85FLiltm8NTjvm4u+XmyBipB1FsuanOGMGmvCGFnkxc2laci9aw4tNRwaY2Bq2S0czle
	D4+HA+n3ltH2MZIVUR5NDLD4Gi+G4Xm28c+ZkvZ8eyRNV0kpmYoR2lf2dOIhOWBrcdXo
	IC4kOhJzSriVZ9F6kDLRw6RtPQZqVyDXI/Z6/7qxvXykuETvYvHv/oZvP972TUL3Nj3j
	SwTmwfmakUMm59W5A5P9SkiVl4jnf+HHbnw7+aD+cfbUpOt0BqdeRnvJ45CXqIZ8GRZV
	ta4w==
X-Gm-Message-State: AGRZ1gI5FFUKRbX5MpF6mOf7ypb72Jh47Xw5ycZXXTgSiAQzV0mparU4
	F2SXFnwgIZ9lbWzechiUkKGdyXk8yqLGqx/vmZQ=
X-Google-Smtp-Source: AJdET5elELJRAgPPU86IKRiqrs+fQA+sIO1QLB0pf9GjJ7KmM5SOlBolaEjT6gQjKe6AmExOnlqtz4ePdVGLAIz1dEM=
X-Received: by 2002:ad4:41d0:: with SMTP id a16mr11609567qvq.55.1541177443998; 
	Fri, 02 Nov 2018 09:50:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAHXEV+nwa30psLMVwg-B+-KHouLG9LOEW_oYsaFhYjTWuBB+xw@mail.gmail.com>
In-Reply-To: <CAHXEV+nwa30psLMVwg-B+-KHouLG9LOEW_oYsaFhYjTWuBB+xw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 2 Nov 2018 09:50:18 -0700
Message-ID: <CAMKF1sq0ynsF_-=VsJnmJS3huRouDbQRPAJ_9Z0T4uofHikvFA@mail.gmail.com>
To: joao.jfgoncalves@gmail.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Install a pre-build ipkg package at build time
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
X-List-Received-Date: Fri, 02 Nov 2018 16:50:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 2, 2018 at 8:48 AM Jo=C3=A3o Gon=C3=A7alves
<joao.jfgoncalves@gmail.com> wrote:
>
> Hi all,
>
> I have some pre-build opkg packages and I need to install them on my targ=
et image, is this possible?
> I tried to use the bin_package class but I didn't found any example, I'm =
also not sure if it can be used this way or just to install the data files =
extracted from the ipkg file. Anyway I also tried to extract the binary fil=
es form the package and use the bin_package class to install them, but with=
 no success.
>
> Does anyone have any example of this?
>

once you point SRC_URI to your ipk
inherit bin_package should be then able to help in repackaging it
you have to post specific errors so we can see what might be going on

> Thanks,
> Jo=C3=A3o Gon=C3=A7alves
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

