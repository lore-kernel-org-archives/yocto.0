Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.2292.1590569950555321685
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 May 2020 01:59:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eHvvC8+D;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: mans.zigher@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC524E01BDB; Wed, 27 May 2020 01:59:09 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4271AE01BD8
	for <yocto@yoctoproject.org>; Wed, 27 May 2020 01:59:08 -0700 (PDT)
Received: by mail-lj1-f181.google.com with SMTP id z13so18282569ljn.7
        for <yocto@yoctoproject.org>; Wed, 27 May 2020 01:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=iyYCa7ZTuNNQzh+HybWAve1m8t0CH84bWjxDT5X89wY=;
        b=eHvvC8+DcZSsTO8zHnbOylQyCyxasghaMSFeiWZ00vDtMh7uy0qwgx2l5uymssR01u
         t/wrwZ9gANURLEB0z/CqD6Buzo5YlowBNhMs3mvT5w/mHf8ZpYcMEXRvklgBJVD9LxDE
         a3yFdiLKCbu7fEqRGpeXK156Y6xoPzg5r+rfI2wMooApQNEgpPYtjMZ9aym5svHKNtiP
         2J3nJyGaUGOe5XPLKWAKtUZLrq+AxxuZOPymkiiAhwelu02RPMTDJtY6XxI7He1VwPAV
         DLlJ6vb4IrLUJ9Xvw6gghmFZ+sVWr4RO5qGe4hiwf4LgyuHT2JlWnXfTQvGyzxic5NMY
         dFOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=iyYCa7ZTuNNQzh+HybWAve1m8t0CH84bWjxDT5X89wY=;
        b=MrSGak6AHapT9kSyZQxzE7anRDBi/zGTfLXDUBC6wsS0LH6w0ffQYaOWW2K+fgKVbN
         75wLGVsPQbJuWSC3eDMdOIqTwATJFkuNOjH84AXJfSkKUCaVO2LSoH5Xh9T4wGnX6hgD
         unCJcJcpnjnkqsph1xuEo/jG/8K853ClGsCRKOoM8eDqwNx9KXrOKOcjbkwgt35bjh3b
         24dXeiYnJU+VM7xb8NZblp2kUNUiuyMmWiRvbtj8FFsK4HN8Cv7htGZVOnbliMrUX54u
         N56jApQ3YmhRVv41JNtXLFHhXK0jmytuYricSXzePiL5xifCuDIry/uVNd2V6EKTERF0
         niaQ==
X-Gm-Message-State: AOAM532bcZ67w237zHbs/N4yJ555PtTiVLU2XG+y+0iRqMKv+8gndUSD
	/veMNt3TjYubtMRoUJ64PQxPDqVM3oKkkw9RdbEGBPVk
X-Google-Smtp-Source: ABdhPJzMlO+0gGevsclLPn3fAS2J8o1hbi2wrB1vsPLC19+hPrSc6jGpmSqW4ZhXGoOtDbLB6PxCikaCg8nUeXk0Azc=
X-Received: by 2002:a2e:854d:: with SMTP id u13mr2358768ljj.295.1590569946969;
 Wed, 27 May 2020 01:59:06 -0700 (PDT)
MIME-Version: 1.0
From: "Mans Zigher" <mans.zigher@gmail.com>
Date: Wed, 27 May 2020 10:58:55 +0200
Message-ID: <CAEhQi8mNzC8QV=xuRBH1=cxn40RL9923kpw2vwK-7Nh-=enNnA@mail.gmail.com>
Subject: [yocto] what to expect from distributed sstate cache?
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

This is maybe more related to bitbake but I start by posting it here.
I am for the first time trying to make use of a distributed sstate
cache but I am getting some unexpected results and wanted to hear if
my expectations are wrong. Everything works as expected when a build
node is using a sstate cache from it's self so I do a clean build and
upload the sstate cache from that build to our mirror. If then do a
complete build using the mirror I get a 99% hit rate which is what I
would expect. If I then start a build on a different node using the
same cache I am only getting a 16% hit rate. I am running the builds
inside docker so the environment should be identical. We have several
build nodes in our CI and they where actually cloned  and all of them
have the same HW. They are all running the builds in docker but it
looks like they can share the sstate cache and still get a 99% hit
rate. This to me suggests that the hit rate for the sstate cache is
node depending so a cache cannot actually be shared between different
nodes which is not what I expected. I have not been able find any
information about this limitation. Any clarification regarding what to
expect from the sstate cache would be appreciated.

Thanks
