Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4610.1582200268028049904
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 04:04:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=QJZEgzaT;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBEE7E015FF; Thu, 20 Feb 2020 04:04:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.52 listed in list.dnswl.org]
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CC2FE0144C
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 04:04:27 -0800 (PST)
Received: by mail-wm1-f52.google.com with SMTP id p9so1714366wmc.2
        for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 04:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=HDiXelct/rzZeLkW5xasw/HpuLpvQ5KtW8iRt641KF8=;
        b=QJZEgzaT5GAvl8GfVNgzYznsIQXmhUA6XAVjYUTACRz6d7BHanTJzFT1ij8ljCnRkF
         9VbiD/WBB1oJskCu3lUtRbD+DePSYWZqea3vSDdula/sGhH9oDsDGLzA2OyQqT06sAeB
         SGdhQbac8Sp6TwmoW5cwCtDLhIXmEYfEVQvXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=HDiXelct/rzZeLkW5xasw/HpuLpvQ5KtW8iRt641KF8=;
        b=pXJqUTkETR1gOaV04THafscvY1ilTuDn3W691o5Bkd21zduN4jzaq8I+vbdi8NwjLC
         fgQHT1mwtJCavz0v4qE5AoKsZNzVeH4SAmBN2SVHOoEanx9ODkfQfqJMGN7WY3Q1qzHR
         bx6LTGkXowV1u7zCPA1YScEyRNyFmmqsfG516sOLu4K8HgzkgF9GXqsbUQ1SqPRa8TAX
         a7VS/MLIxeszfNXPOQ5Zg4H9NjE9U9rei+s6rAs5z6nCTugzTGICT0x51khL+v6WGsl1
         U0XiMrhjwW1Rv7BCQZthNQBH9rzLijLqiyQq71TWyagajCrGZgPauLXPl//ModIj/FEd
         rUxg==
X-Gm-Message-State: APjAAAUhSDUNMeTaFnmbQuXjznlcnSNPXUIP+/39IaPMu8Vv0GhLLFYc
	+j8wYOz1lQn7Pceq4oEn+THrYRSaNrM=
X-Google-Smtp-Source: APXvYqxE1EZXXlETJosXarLzsDjEnxpZMO3UWSUsCnuFkDLSL7a76FG4lyMAwACml54QQsXlhaSfRw==
X-Received: by 2002:a1c:638a:: with SMTP id x132mr4071605wmb.43.1582200266459;
        Thu, 20 Feb 2020 04:04:26 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id i4sm4046675wmd.23.2020.02.20.04.04.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2020 04:04:25 -0800 (PST)
Message-ID: <b5158d1f6ef3cebc4bff046b28c8851ba7db29ac.camel@linuxfoundation.org>
Subject: Re: [yocto] Bitbake returning non-zero due to sstate errors
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Paul Barker <pbarker@konsulko.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Date: Thu, 20 Feb 2020 12:04:24 +0000
In-Reply-To: <CAM9ZRVv2Xoq=GBjQOXT+VBunhYG3n_dCw7Bv6XECTdRhdvzg9w@mail.gmail.com>
References: 
	<CAM9ZRVvDHTvvKr1Tdc+C1ZdTv2DSX8JJ9bYhHc0c-wre4qg5LA@mail.gmail.com>
	 <bfe6eb79ff352439c3ed5d53757421dce5e0b17d.camel@linuxfoundation.org>
	 <CAM9ZRVv2Xoq=GBjQOXT+VBunhYG3n_dCw7Bv6XECTdRhdvzg9w@mail.gmail.com>
User-Agent: Evolution 3.34.1-4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-02-20 at 11:59 +0000, Paul Barker wrote:
> I'm now looking into this...
> 
> In sstate_checkhashes() we mark sstate as available if
> fetcher.checkstatus() succeeds. Then at a later point
> sstate_setscene() calls sstate_installpkg() calls pstaging_fetch()
> calls fetcher.download() to actually get the sstate artifact. If the
> artifact is removed from the mirror between these two accesses (due
> to an sstate mirror clean up running in parallel to a build), or if
> there is an intermittent download failure we could see checkstatus()
> succeed then download() fail.
> 
> I don't think we should ignore all setscene errors but in the
> specific case where it's the download step that fails I think that
> should be a warning. Or it could be an error by default with a
> variable we can set to turn it into a warning. Does that sound
> reasonable? If so I'll work up a patch.

Thinking about the code, I'm not sure how you're generically going to
tell the difference between a setscene task that fails as the file
disappeared compared to a setscene failure with another real error? :/

We could make all failed setscene tasks warnings but I think that
buries actual real errors.

This is probably why I've not changed the code before now.

Special exit code values? :/

I'm open to proposals.

I know we could put in some configuration option but in general I hate
these as it just means more test matrix combinations and more ways for
people to see different behaviours. They have a time/place but I'm not
sure its here.

Cheers,

Richard



