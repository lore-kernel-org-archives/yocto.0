Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.10858.1581431175777788656
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 06:26:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=V1rVofje;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BAF2E01673; Tue, 11 Feb 2020 06:26:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F4E5E01626
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 06:26:12 -0800 (PST)
Received: by mail-wr1-f49.google.com with SMTP id g3so11530999wrs.12
        for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 06:26:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=2jr2rGxMX//6r41NSLdSe5KeR3hYvKAP8iY/ZkcaOv8=;
        b=V1rVofjeK1sg+YiAsDuHnCihnnH+gZK5wYSwMszHF1l7TRn38nWED27lZhySzhkQMg
         HgkY+hs2GvYX4EjPIgAQXXgNrMYjZdz3tcZJHbbNLZZyqt4EWbitruOePSRuHx0K8Xhb
         0025Cok3fpY/h8csM8xCBF+rRfiWCL0GW0iPI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=2jr2rGxMX//6r41NSLdSe5KeR3hYvKAP8iY/ZkcaOv8=;
        b=PMLIeJpm/eKzOEh7+ZbzlOaLTd0Nz9rbCNwhuRFdcxzv+tQ19pY9pq1mfk0qNUGGkx
         f+uQRkOCgtRIcWtha7dmwPvJeKUVioTJgvd2k0oEQ5tGdXOQLTHvSh0czFSVyYW6mRSP
         t3Mc3M58dYyObW/r67nf96zvFbp0QooE8Yjg2cCbZiXyJbDh0UToUj+dRSnYoiCWki7/
         IO53fUgtf4aKVcn2I7WjjewPXZ+eJfMsQR9kJHp0QBhv93AZlgicqIe0hz/1hE8Kmxrv
         59TOD7qSUXZ3mnehnSG9qPKqxb+GT8NiMrdhf9O26rvB3rLUOKfi0SWMaEi9WX5ZzHys
         9GqA==
X-Gm-Message-State: APjAAAXzt8u3gm1x7L4O8T6+BAAZoRcEF+7SlDfi0e4otLInFw1+iz8M
	8gac8Q8RB8FmYuaQs2nfvYFuaQ==
X-Google-Smtp-Source: APXvYqxbhXi6QLAE0aUyOQLLRBlqw9xNaa4q36si6Cm5zxJH2fZU2hYQKZYOrkhpn9kg/i17CxqgTg==
X-Received: by 2002:adf:80cb:: with SMTP id 69mr8403836wrl.320.1581431171248;
        Tue, 11 Feb 2020 06:26:11 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id h13sm6236092wrw.54.2020.02.11.06.26.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2020 06:26:10 -0800 (PST)
Message-ID: <ceaa8ee91198acbcf0c64390c45d32ada8936373.camel@linuxfoundation.org>
Subject: Re: [yocto] clarifying "PROVIDES =" versus "PROVIDES +=" (pedantic stuff)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>, Jonatan Palsson
	 <jonatan.p@gmail.com>
Cc: Leon Woestenberg <leon@sidebranch.com>, Yocto discussion list
	 <yocto@yoctoproject.org>
Date: Tue, 11 Feb 2020 14:26:08 +0000
In-Reply-To: <alpine.LFD.2.21.2002110525540.30584@localhost.localdomain>
References: <alpine.LFD.2.21.2002080611100.2136874@localhost.localdomain>
	 <CAMjhiJh7Q7NNhw_LnTOr86mOEtBz2K7rGBHvCPYxCV7vm=YYBQ@mail.gmail.com>
	 <CAKm+giNpqiOwQfjtAwnmqF_6kXOgb4Re11UT90A9cKmdo6w=TQ@mail.gmail.com>
	 <alpine.LFD.2.21.2002110525540.30584@localhost.localdomain>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-02-11 at 05:32 -0500, rpjday@crashcourse.ca wrote:
>   second, i think we all agree that it is rarely necessary to use
> "PROVIDES +=", although i did run across one case in
> recipes-core/glibc/glibc.inc:
> 
>   PROVIDES = "virtual/libc"
>   PROVIDES += "virtual/libintl virtual/libiconv"
> 
> where, sure, if you break it over more than one line, yes, then you
> need it.

I think the original intent was that bitbake.conf defines the basic
PROVIDES/DEPENDS and then the recipes adjust as needed.

As such, PROVIDES and DEPENDS would then always use +=.

Unfortunately over the years this has gotten lost and bitbake.conf and
base.bbclass had to become more inventive about how they set the
defaults for the variables.

As such, I think += actually makes sense but I realise that isn't the
way most recipes work now. We could try and fix that but it does seem
like a marginal gain when there are bigger issues.

Cheers,

Richard



