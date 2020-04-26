Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web11.8434.1587894274058837407
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Apr 2020 02:44:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WJlAUBpo;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id f13so16825421wrm.13
        for <yocto@lists.yoctoproject.org>; Sun, 26 Apr 2020 02:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=GDUFcaCikeIgdUxHznbx8/x85SURYZWU6bv/B/PTTK0=;
        b=WJlAUBpoP82WbJiFs9gv/O7UZ0IJ3rj6XhTCLkCPMHpoxAcwIshn0OXar33+Eqmhq4
         bA5L21IseTyDIZ+lAFeD/5YeeRSZcv+1/SfLvA0eTbZWseWebuEshnLY65uBd47zUURr
         /QwPdZCZ87Wa4WgGstFrY3DcDNASaE/nexwfs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=GDUFcaCikeIgdUxHznbx8/x85SURYZWU6bv/B/PTTK0=;
        b=Jhvh5Z2xXC0lkdCbSDVrrWOgYaib8QhNKiEHqD2Fkub7G9HVTK/Mpe846YBnz7O7oH
         pbUBEQVc4QArlI1dcrr5rPVDDDJGKNDR5CRYgjV4oc7hg6WM/p5rHNAFu4awi3AON7SP
         /ZUJERIfTIEZCuFMpEP/ZUVm0K9y+M+IyS5UHV3LqoDNCoC3cdmfK1+wUCyRFHM8KoXA
         bv8WrkLh1nJQCWnfLcNIQWrpvM5zC87v6MK3xCn4aCY8uMS0DUfExVieLFwVU755tPsv
         romIu0+5/uWaUYdT8qCFoq4/x09GfZ3McM8qLs0ELY5h1cERJh5tYdHfAMVR/CYcws8R
         BFNw==
X-Gm-Message-State: AGi0Puba1d9zP/b2e5NeBd6Ct5iEbEKUaiVCorYRCqmAnf36H2cD9ad8
	kjGYQgiJOL1OGQYukg3egbyEAA==
X-Google-Smtp-Source: APiQypIb34Kcp+FKnwI2kXCa8+bNoINAm0dtp+zBSY6buT/tRCHzxqUcJ5j5xIOTwrOH1tWDuWXjlA==
X-Received: by 2002:adf:f784:: with SMTP id q4mr21384283wrp.102.1587894272492;
        Sun, 26 Apr 2020 02:44:32 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id k9sm16851842wrd.17.2020.04.26.02.44.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Apr 2020 02:44:31 -0700 (PDT)
Message-ID: <c4c1e128a628acca820e0e3f37604da75c9c9b00.camel@linuxfoundation.org>
Subject: Re: [yocto] Can not use wildcard in SRC_URI to apply patches #yocto
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Hao Qian <qian.hao.developer@gmail.com>
Cc: yocto@lists.yoctoproject.org
Date: Sun, 26 Apr 2020 10:44:30 +0100
In-Reply-To: <CACxpVWfrQZ90u9gigoMMXBR_VfrDbD0=q2Lnb7fMYmgYSbRFRg@mail.gmail.com>
References: 
	<CACxpVWfYGoGiivXCeMOtoPvBYuJBqC9zu+KS3OdnB5bZoyuYyQ@mail.gmail.com>
	 <60d25691239036fd72ca41c8369962b7eee4e7ed.camel@linuxfoundation.org>
	 <CACxpVWfrQZ90u9gigoMMXBR_VfrDbD0=q2Lnb7fMYmgYSbRFRg@mail.gmail.com>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2020-04-26 at 08:24 +0900, Hao Qian wrote:
> Hi, Richard
> 
> Thanks for replying.
> 
> Yes, it makes sense why patches not be applied by using wildcard.
> 
> Just for confirmation, it looks like more than one person made it to
> use wildcard for patching as below:
> https://stackoverflow.com/questions/41266742/adding-multiple-patches-to-src-uri-in-a-recipe-yocto
> 
> As you said, wildcard is not supported for patches in SRC_URI.
> So, do you mean the answers and replies in above issue of
> stackoverflow are wrong?
> Or did I miss something?

The patch linked to from there:

https://patchwork.openembedded.org/patch/8443/

gives some clues about when it might happen to work:

"Wildcards in SRC_URI are not supported by oe-core and work only
when last (or first?) FILESPATH element points to the containing
directory"

So it sounds like it can work in some cases but isn't something we
really support or encourage. I'd also note that information is 9 years
old.

Cheers,

Richard

