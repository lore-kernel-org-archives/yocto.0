Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E77C3ABCC
	for <webhook@archiver.kernel.org>; Wed, 14 May 2025 12:53:30 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web10.101155.1747227209007609768
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 May 2025 05:53:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kyzGJ5/2;
 spf=pass (domain: gmail.com, ip: 209.85.222.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7c5675dec99so752143285a.0
        for <yocto@lists.yoctoproject.org>; Wed, 14 May 2025 05:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747227208; x=1747832008; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KGt8Ct5UDRJjx3jhRiF30kWQBwU9nDwmWEOq0/M7ik0=;
        b=kyzGJ5/2ViFG2X3avX+sg1AYxmtNuwJpvPB1WmM4efPU0FvG01/iYY+RX78BralQPd
         2cNsumVkF6lDiIt7TSs5/MbZzAVavRKJ4RV7DTOJ3pNZ14DRbSkNtlM6xm687Y9cLyik
         0GDY1tahQ3Et5P2Z8ja8/HI97dw/oH8og3nWB/yI61+KQvzAzvZ/cpPTpO5i4XvjGnaI
         QCptFYo63ydgjLq6YMwSrFAA5CrSPpMI5uOx65gVyldR7Zn/eQqJMUj7tmgkIY7UE72f
         yHBV3tx7Ttteu48Ky0sQh8QMOHU+FSH70wOnXjpTBflyXobUNVbo+XScGJUGAFxGrrkI
         f8qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747227208; x=1747832008;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KGt8Ct5UDRJjx3jhRiF30kWQBwU9nDwmWEOq0/M7ik0=;
        b=XAGQnGQnLj96UFgV3pHIENj94XaTINsxaffn45kSaZa3rFW7kWNP6sKSrrhOaLG2x0
         G0amnLzgIo3zp8ILLVSp2Dq81XpqgY49WkZWlag+7H6fetQQ7DvSJFsoZVY7arFwPS7X
         DQzcZsitCsIe81RcRU4YTAr8dGsJ/GR8OhP/OSiaOuM4Exd92O8rMNVBJ71sEQzmxVS0
         DI+toG6j9AvZQ88E+5stXJWlzQMO51yYUz3tMhAfmkhuxvlQevBCrIobwYkcvraGvJN5
         PIRgPw7LWe94D6A5PPUsF7ymia8aRGZArIk0zkBRqdUC2UQ9NPy4cHRPJ3O0LsqHbigL
         NNag==
X-Gm-Message-State: AOJu0YyYwQ6xIaS9R/28I2b/u1jLIIM41UoRE3F6p0M9sCSzBdZMueoI
	keO5dFbcmogAynxOD5nXuE0kApywv1s7Nlih9+zF+TFiGlHgAzrdvLMcZTZuRNRdtmLcQoRUtlb
	RlOVbYhiQD1ZvMl9bQ1pesShWDDGEP5SlZKU=
X-Gm-Gg: ASbGncuMe1G6rRnp1C2IAYwCODE86tgGTh9BoaUbuh1sXHLlxS7KsPefwN23llFw7ME
	7avIyFFTf40ys4s/5acJ9nz00wWWSz90iDHYz0Jkd3RpnMcBlO6SOHrNEOEawj2JuFjYGRDQTeh
	Rme4yqWEDwKqHMLmagckzWW2l+tjJDl9Ch
X-Google-Smtp-Source: AGHT+IFzEZkkXpFS8WTurGht7mppTbtw6805Vtn+UIc4NDa9YekprB0daI40Der19f/dfvM/v/dTWjb7KQawssfrh+Y=
X-Received: by 2002:a05:6214:4105:b0:6f5:426c:1d1 with SMTP id
 6a1803df08f44-6f896ea6a31mr58413536d6.34.1747227208042; Wed, 14 May 2025
 05:53:28 -0700 (PDT)
MIME-Version: 1.0
References: <gg4i.1747142705749543284.68r8@lists.yoctoproject.org>
In-Reply-To: <gg4i.1747142705749543284.68r8@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 14 May 2025 14:53:20 +0200
X-Gm-Features: AX0GCFtV10IYhBeLq2L3KLuj0NnaFhjbDft2T-VGPs-7okdWKzDpoPEtZS7FpvE
Message-ID: <CANNYZj-3JQ95MfUY0O4DKMnLYfM=7JYCBiCc+SGa-tzSan60rQ@mail.gmail.com>
Subject: Re: [yocto] Whats the correct way to remove python-modules from RFS
To: yocto@lists.yoctoproject.org, emailaddress.ashish@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 May 2025 12:53:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65339

If some packages get installed into an image, this means some other
package has a dependency on them and is not going to function
properly. The correct approach is to find out why they are pulled into
the image, rather than try to hack the recipe that creates them.

Alex

On Tue, 13 May 2025 at 15:25, Ashish Mishra via lists.yoctoproject.org
<emailaddress.ashish=gmail.com@lists.yoctoproject.org> wrote:
>
> Hi All ,
>
> We are trying to remove below modules from PYTHON
>             "db",
>             "debugger",
>             "difflib",
>             "doctest",
>             "email",
>             "ensurepip",
>             "fcntl",
>             "html",
>             "idle",
>             "image"
>
> 1) The first approach was to remove the packages by IMAGE_INSTAL:remove which didn't helped
>
> 2 ) Accordingly modified the python3-manifest.json  & place the same manually in "poky/meta/recipes-devtools/python/python3"
>      we get the RFS with python modules removed as expected.
>      Attached along is the manifest file & list of packages as installed-packages-with-change-using-manully-replacing.txt
>
> 3) We created a minimal recipe to update the same via Yocto.
>     And can see the python3-manifest.json in build being updated to python3-manifest.json we provided by our patch
>     But the compilation doesn't remove the modules we expected.
>     Attached along is the patch & list of packages as installed-packages-with-change-using-recipe.txt
>
> Summary of problem (w.r.t  python3-manifest.json with md5sum d96fa72e6756aa052c55e246a000d8d1):
>      a) If we place this file manually under poky/meta/recipes-devtools/python/python3 we get RFS with changes being reflected.
>      b) If we place this file via recipe the changes are not reflected in RFS
>
> Also please feel free to revert for any clarification suggest any pointers for the same.
>
> Thanks ,
> Ashish
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65326): https://lists.yoctoproject.org/g/yocto/message/65326
> Mute This Topic: https://lists.yoctoproject.org/mt/113089484/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

