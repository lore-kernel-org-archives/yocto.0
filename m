Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1030.1588971580676348304
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 May 2020 13:59:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=PLWf8pZ6;
 spf=softfail (domain: burtonini.com, ip: 140.211.169.56, mailfrom: ross@burtonini.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFF28E01B17; Fri,  8 May 2020 13:59:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DF00E01B15
	for <yocto@yoctoproject.org>; Fri,  8 May 2020 13:59:37 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id f11so3139367ljp.1
        for <yocto@yoctoproject.org>; Fri, 08 May 2020 13:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sz4E3BqYe4w0kWtuXYXYMPcCb6jeHBLuaDC77P/bbfQ=;
        b=PLWf8pZ6dvqv+VMzUqG1GqMTBo0brgrXPq4euVAaeSkLiPjnr5sSu9M1vsXgOtQhFV
         jHjehfmy4KN1GvYOq0R0ni8db9a/SS1oNtEsoa3G0Yg1/Yzr+eC2iRo0wRmDcQh4Y0XG
         xc0ocmuZK3FkWJC9PuNdQc/gr51g/jbA3LGnBT+wvKQdnH1BzA/rw2Hb3enka7swMRR9
         /4R+m1tmmTCDgYML6aOYHE9wQwjPk0pMJOkzk1869CkV3gG8H/ijxLzElt0FvPBbR1gs
         WduAa7k11K1lzpAYV4kC1uZPvAL8L3V2Pp5aaKfj2/lavWi5kn8YD4+FUj5PAeousaeq
         vfUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sz4E3BqYe4w0kWtuXYXYMPcCb6jeHBLuaDC77P/bbfQ=;
        b=aeSpJMlr4LhGAA2rgUCsf3Dhrr6kErd7FNQ93i8T/ASXR+3M4eGuFST7E3C+c3Imq+
         3AiFasTGtrCei88XZdoLCXttJHkgO20qla+XeVEsE2sODudjYuYqY64wOOuhfidvbwe/
         TrNDh+qhmBeOmvdDNFSojtjLrWsHhZJW+p7cAvG6atCNnf9YDXAiKaE0GcYWMXmRPEs1
         ZrRanwOZ23rohXtBz0kV3TPT+/r6CL/P1WTWe7DYnMzrEhulDu+y92fBANQUChAr6Wfu
         Q8+SX6ADFRXELaa8KE1aNCBgnfb0TcBpG2m/o4Z4AGk1sHt32jzZYwpHcurVXYmPgSuJ
         4OGg==
X-Gm-Message-State: AOAM532I44CdU+WydxefmfaPCfq0YTMqwMsras7uau+eIuUJ/iLy3Swp
	OkA9qRFYY/GKprK7w7Kmko7xmBDGmMUdrAtijh4Rp8iDvI0=
X-Google-Smtp-Source: ABdhPJx7tZcuJiwLUbwDeKD5LnmpOiCzlA5fjbwSU6g+DVc98Sd8WG9LA7abnmWxbhzXOYncAEKyvLJjYb1yS6ujT0I=
X-Received: by 2002:a2e:2414:: with SMTP id k20mr2843174ljk.162.1588971576600;
 Fri, 08 May 2020 13:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2005071224280.2004419@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.2005071224280.2004419@localhost.localdomain>
From: "Ross Burton" <ross@burtonini.com>
Date: Fri, 8 May 2020 21:59:25 +0100
Message-ID: <CAAnfSTtUHbn8ZatFWkYA9521jZBQmoj-idJbYHnYTBs-g-MdyA@mail.gmail.com>
Subject: Re: [yocto] how to list python3 built-in and core modules supplied by python3?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 7 May 2020 at 19:01, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>   colleague recently asked how to list the built-in/core modules that
> come with just installing python3

Installing the python3 package pulls in the entire Python standard
library.  So if it's in the standard library, that installs it.

Ross
