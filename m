Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.20286.1594734930492391989
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jul 2020 06:55:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aWxb3AY1;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: mans.zigher@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1231E01DEE; Tue, 14 Jul 2020 06:55:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (mans.zigher[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.180 listed in list.dnswl.org]
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FE9AE01D33
	for <yocto@yoctoproject.org>; Tue, 14 Jul 2020 06:55:28 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id q7so22843823ljm.1
        for <yocto@yoctoproject.org>; Tue, 14 Jul 2020 06:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JAFKKDzN+0izLAeAzCoIiFQlXD0H48x5pKJHksfd7No=;
        b=aWxb3AY1QQnLXdK8il8m0aOABWu5Tgrpwi46pSYsbh9z8YziaLE84UAvNr500gyNCa
         m9k4P1Lzi1YJH8OZCI1uqaYZeIYcfntWYzHC5gUcqF6f20CC6y5cnWn5HSjzX+NIbOaN
         lBIm1ecabL4KoCVk9yGnRB0XrhtN/DCzhb15puIHCY1+508lAV59JD5BQzMfh5xNv5bs
         OS62rxV6RevZYpPXabwR7ZZ32i6F5GNj9HzADh9T8I71hAm9PGPajVKivRK5NbuYvvOv
         eCxon920S5VBKLHnGbjYKOHOsVP4UJqVGHnVXB4qtXQDzgdxCWFXbo05E/SIIT49yW/S
         M3uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JAFKKDzN+0izLAeAzCoIiFQlXD0H48x5pKJHksfd7No=;
        b=bzmE/PAVtRQtXzmhxmenuFouQL9m4+3tYUXgtU7QyLnrh1QUWuTwMyMwZ7GhxNCS/Y
         0d9htM8slGT5f2/sxg32ogfhfJGK94PzrblJr/ihcUHANLYm0VlMl5AaxeT4a46xBxfB
         FgLFIPkKPE/C14rhikMDMp4MbdCzAQj33s7H6K1XW0TvNzyrhE9PCVoNTedEqGjh+3/a
         jnrx5+VXIjDp0CxIDUe1WC6pQEDwqV7xzvrH+NhVP2ncdrjZRGwcPPBKxTBIPqgQKMBo
         mMx7wljbxgityC2DpSmf1vUg56vXuDjQlCpijsjpNhC4P2KERQPsbe+tpSlkp3dW/a1j
         92ig==
X-Gm-Message-State: AOAM531SZ1TVkqoMvLNPHOXnEDtQnTRig70gkvT998JpqfO7rDG39HBy
	2yOVNy8uMWkTR+hS7zXKLN6b5tivcepk2Hdi/vc=
X-Google-Smtp-Source: ABdhPJwYY23WYc0mqE6Iu8D+dJm1dPbH49xNuXkHG8qXVGYZL26T5xxWKrrgG1u2hKMjKRHHrW5aEjcAqexc+ozq9aE=
X-Received: by 2002:a2e:b0da:: with SMTP id g26mr2399885ljl.299.1594734926568;
 Tue, 14 Jul 2020 06:55:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8kgE933ACogqL48Ncdofcu-DW85sJ275ccZH0WFTKEOJA@mail.gmail.com>
 <CAEhQi8nxjCkWr6YZ_6BTOg4RddY7ff8fU5sj33XCnTp_W7LACQ@mail.gmail.com>
 <CAEhQi8kJuZNpx5=-oaFowLkR_2bWkAanBfPYgrk1uFMuTrdTAQ@mail.gmail.com> <20200714121209.GD108868@korppu>
In-Reply-To: <20200714121209.GD108868@korppu>
From: "Mans Zigher" <mans.zigher@gmail.com>
Date: Tue, 14 Jul 2020 15:55:15 +0200
Message-ID: <CAEhQi8nn=uZyy6s3HQLxhZxPQEangnwBqvd+Lx_hxmDVdxR=Lg@mail.gmail.com>
Subject: Re: [yocto] meta layers priority using BBFILE_PRIORITY in layer.conf is not working for me?
To: Mikko.Rapeli@bmw.de
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Thanks why I did not think of that. Anyway it works so thanks again.

BR

Den tis 14 juli 2020 kl 14:12 skrev <Mikko.Rapeli@bmw.de>:
>
> Hi,
>
> On Tue, Jul 14, 2020 at 02:08:37PM +0200, Mans Zigher wrote:
> > I figured it out the problem was that in meta-layer1 we had
> > SRC_URI_append_machine1 += "file://0001-patch-one.patch" this
> > apparently will always be added to the end of  SRC_URI list and
> > thereby the meta-layer2 patches will be applied first. Is it possible
> > to get machine specific patches applied first?
>
> You can try with SRC_URI_prepend_machine1.
>
> Cheers,
>
> -Mikko
