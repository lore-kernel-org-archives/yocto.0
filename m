Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web11.17241.1590686736055417755
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 May 2020 10:25:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Wh0wCVYm;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id s8so28887380wrt.9
        for <yocto@lists.yoctoproject.org>; Thu, 28 May 2020 10:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=uGb5zrbaZJKZ92A4ftsKAd4HNshKzwBv5s7XEvan+h4=;
        b=Wh0wCVYmz3TeENI3rc+3SeNa05I7d4Jq3iN/s1m2DBbuyOTqEkuBvtjPT66k2z6PC7
         2ECV/EsRa6oi5bplju/VhfRHiPDLLJWciLTvSe+mDgSXLxoyNhMVPoWA9mrrW6Cnr3Dh
         OAI5udNfpAid9os2eN4W4NZAfAtN9V+kxdJWo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=uGb5zrbaZJKZ92A4ftsKAd4HNshKzwBv5s7XEvan+h4=;
        b=oG6vSn9D9VaNQJYbg95DWu3iEckOm6jBFU4E6qTa/IBxh8PaYKo3dappCko31zkyNn
         34tReKtDgkKqiF2lgC29WuD9dEMPodnwXL54E4f3YL8p2tmFd/ngEgnhbG0J/g3xs78H
         BhNqm6wjIE4O11X0Xo481h6C4lGdEUESGAzCalk2cGqk01EHyoNVe+QZzTbVN5zb/0du
         V15rqV7o9mbsD6PsWUqsyig0AaAnBxOyA2yCMWhhVd8HHsA0tYtQV3vAwgnWDJir0HU3
         Dd4A6IKeJm0XFGWNwJsExDXxyqsA6FbEM1Xcjy/2aq/IuuZ3ARCYLiGiuXg4xpBJRff/
         oCMg==
X-Gm-Message-State: AOAM530G1wIkoDH0s/c+97shv7m1A3QbElX7S+o5RIxhdUISLZBUCUmM
	ahjd1Cz9j4SX0HM+z8krkhsjjw==
X-Google-Smtp-Source: ABdhPJzOp3fhKZ4DYVhiB+o79NIcF2pqDzcfnPLNJ9pspx3IfbdcsgIxGnAFIr0VRU1Q/loxHAIXNw==
X-Received: by 2002:adf:a449:: with SMTP id e9mr4467054wra.294.1590686734478;
        Thu, 28 May 2020 10:25:34 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id u23sm7921929wmu.20.2020.05.28.10.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2020 10:25:33 -0700 (PDT)
Message-ID: <d8db666c9e3bae586c07c2d23754041fb1f778f9.camel@linuxfoundation.org>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-2.7.4.rc2)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: wmills@ti.com, Michael Halstead <mhalstead@linuxfoundation.org>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Thu, 28 May 2020 18:25:32 +0100
In-Reply-To: <36c5f98d-a1db-a99e-48d5-57b24f15129a@ti.com>
References: <20200527120917.D994DE01C24@yocto-www.yoctoproject.org>
	 <615783cf129245af8973e3376b06f3bc@ti.com>
	 <952758c461a1846f5069d1dfe6ccb6ee89c3f057.camel@linuxfoundation.org>
	 <e3383496-e197-44a1-cb0e-28b043b0298a@ti.com>
	 <CADfgfob_1jRuoUSdU20ZfpkZKQKzDaH2x2aetHyStRET1ESrug@mail.gmail.com>
	 <36c5f98d-a1db-a99e-48d5-57b24f15129a@ti.com>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-05-28 at 00:28 -0400, William Mills via lists.yoctoproject.org wrote:
> 
> On 5/27/20 6:42 PM, Michael Halstead wrote:
> > I've rebuilt the fancyindex module and enabled it. The full filenames
> > are displayed now. The module is disabled automatically when new
> > versions of EPEL are released. Hopefully the change in html output
> > doesn't break any script you've started writing.
> > 
> 
> Thanks Michael.  Its funny because I had switched machines in the
> meantime and I was scratching my head.  "how does Firefox know how to do
> that when Chrome did not"?  But I figured out you had made a change :)
> 
> I also remembered "wget -r -np <url>".  I have not used that is so long
> I forgot about it.  It downloads too much but it is a quick start.  (It
> downloads each symlink as a unique file.)
> 
> So for the real solution I think I am only going to download the files
> that have a <file>.md5sum.  I suppose I could recreate the symlinks
> based on heuristics of the filename but I probably won't bother.
> 
> It would still be nice to have an intentionally machine readable
> directory of the full release content in one file in the root.
> md5sum and crew won't show symlink vs real files.  I'll keep thinking
> about any existing format that might work.

We do have a place we can hook in such a thing:

http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/tree/scripts/send-qa-email

Ignore the name, its purpose has changed since it was written, its now
about summarising things at the end the build and the qa email is one
possible outcome.

So if someone wants to have a go at summarising the release output into
a file we can plug it in there.

Cheers,

Richard

