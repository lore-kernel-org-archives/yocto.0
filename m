Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.17769.1594726158821404770
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jul 2020 04:29:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VRZJg2vU;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: mans.zigher@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 398A6E01E7C; Tue, 14 Jul 2020 04:29:18 -0700 (PDT)
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
	*      [209.85.208.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com [209.85.208.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C22EE01E32
	for <yocto@yoctoproject.org>; Tue, 14 Jul 2020 04:29:17 -0700 (PDT)
Received: by mail-lj1-f193.google.com with SMTP id s9so22054764ljm.11
        for <yocto@yoctoproject.org>; Tue, 14 Jul 2020 04:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=g4AwZWMJM9ldwPz7CDc0/QhMj/z4/gOUTGm5WtF5y88=;
        b=VRZJg2vU6NOpMPAqQqLqytE5ni7bEP3shRNW4BO3RqaMb7glvSqW68kVkTuZ5HViWA
         dyjyWiTVeYUDZ0jWIDdPmY7CauluCOW8vXu7ZqpQRWrwNEbuTz2E9LmQITuaoDZsywXk
         loCrKFFnCuac1TR4QE/uX0OdfS+UwP79ZLNnwneqtDmK+af2lhxdLB4fFJAfCuADxXqE
         KXU6U5NtmhFol8Z4YdI3th0jVhrWQrLBAg7L+shuug/Q7ukO7OLDkOVpgYTBu/G924ah
         s7MLvcDQ6Y9tFRQxZ+4algtinixVluuoIstFDiIinOEZvnP08INHZaB88b28AzdOjHtG
         YglQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=g4AwZWMJM9ldwPz7CDc0/QhMj/z4/gOUTGm5WtF5y88=;
        b=jJwcyZU6wCYB8f1/YK06+70ufR+F4uGvxBYtWIqNVMy0KlyThPV0cJDcDLDUWJpGEO
         dR6VYjDnrzN6FfUBN85NGs73NgR9h16FlbTu0NSkCEBHQpfWVVg1USg28Gu4UW5FQA8z
         bSCzo55E9pLfCROzEYNvUhIWN6qI7E8tbJ+UjzOUXLVdkrhjNhSq2pUG8MqYUDYpIrOI
         85bQZQSPvXdhpPqeXJA46WFgGIHsjRF5T0mban1HaTDT2A6NhzS92K+LTXplQkUyNz5/
         QX5RUDJUTRZ9sv9IhxokaE9nx8V0cbOmAGMoik6seMgsUHjv+iXzNJTXXd8Kh76D+fsV
         xURA==
X-Gm-Message-State: AOAM531yHTXxibwevUiqr9zqW2LoJjHiCym33Ajo5tfiwwFsIPiq+knu
	uVz7XBj04hnLjv4ZUXVqQBWLyxadRttToyj77k+ATvcRHvM=
X-Google-Smtp-Source: ABdhPJzS+aYJzGxrHpJULEtpuaCnaGj4CIMIQryXr9Nefxp0aTWe3EUKGzbuw7ZbaZKVND6n12i+Hg16AwIVgK/P/Jk=
X-Received: by 2002:a2e:9450:: with SMTP id o16mr672809ljh.295.1594726156201;
 Tue, 14 Jul 2020 04:29:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8kgE933ACogqL48Ncdofcu-DW85sJ275ccZH0WFTKEOJA@mail.gmail.com>
In-Reply-To: <CAEhQi8kgE933ACogqL48Ncdofcu-DW85sJ275ccZH0WFTKEOJA@mail.gmail.com>
From: "Mans Zigher" <mans.zigher@gmail.com>
Date: Tue, 14 Jul 2020 13:29:05 +0200
Message-ID: <CAEhQi8nxjCkWr6YZ_6BTOg4RddY7ff8fU5sj33XCnTp_W7LACQ@mail.gmail.com>
Subject: Re: [yocto] meta layers priority using BBFILE_PRIORITY in layer.conf is not working for me?
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

I have debugged cooker.py and everything looks good it produces a list
of the bbappend files that matches the expected result so something is
screwing it up when the recipe is baked since I can see that the order
is wrong when dumping the environment for the virtual/kernel.

BR

Den tis 14 juli 2020 kl 11:21 skrev zigext <mans.zigher@gmail.com>:
>
> Hi,
>
> I am using thud for my distro and I have two bbappend for my kernel I
> need to make sure that meta-layer1 is parsed before meta-layer2 to get
> the patches applied in the right order. So the patches in meta-layer2
> need to be applied after meta-layer1 patches have been applied. I have
> adjusted the BBFILE_PRIORITY accordingly so layer1 has 1120 and layer2
> has 1110 based on "A larger value for the BBFILE_PRIORITY variable
> results in a higher precedence." but whatever I do I am still getting
> the wrong order and do_patch is failing. Any pointers to what I am
> doing wrong? I must be doing something wrong that is preventing the
> BBFILE_PRIORITY in my layer.conf to have an effect. Running
> "bitbake-layers show-layers" shows the expected output but when
> running the do_patch it is wrong and when dumping the env using
> "bitbake -e virtual/kernel" it is clear the order is wrong.
>
> BR
