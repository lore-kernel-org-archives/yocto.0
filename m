Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4260.1590580149680989080
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 May 2020 04:49:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oyUbRMlL;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: mans.zigher@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8809AE01BDA; Wed, 27 May 2020 04:49:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,RCVD_IN_DNSWL_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6D28E01BD8
	for <yocto@yoctoproject.org>; Wed, 27 May 2020 04:49:08 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id w10so28575103ljo.0
        for <yocto@yoctoproject.org>; Wed, 27 May 2020 04:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=j008W1Oq9k+Qm+9XaK5/VtEbScpZyl+6ReLaFJWLeEw=;
        b=oyUbRMlL037lrLRgZPmjW37jnyJvd6hgrUaUpaTqAIRon7eESa6x/f7+st/vT3hroD
         FwC7BFH7EKVkjCkFBsiiBjgavU4F6aYQo5r5h4UGLgk1qKhg+kZ71x2wnd0KriL3E4v6
         Or/vOGNewQhnlAKuX+fkHKcnEWwZZOU50Ge5KKKQvsVZBzO4smjnSMsl+B0Rf4AZ2ggX
         9KhdD2iUdvR34nNbcOoKEOuX4q+zjACCzjPgtj5Z+WM0pmdH4iwadFrtXbeoFtH/4g5e
         FYG2HT4G8qRHwA5+I8AaexeGlT/8NWHCrLXweMlJj3sV/GlyKABXFrQx2ZUmPEhvZpVR
         T3yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=j008W1Oq9k+Qm+9XaK5/VtEbScpZyl+6ReLaFJWLeEw=;
        b=LFcXHxWbGhw5qraaKz1aO+d7FOnJUNJJCZzeNDFW08G39kAnpY0qg8FioctMwx415k
         Gj6Ak4Q/aladUWiBIdAXQ90JIHnaF4filYyG7STDLzx8W44nrCB7k5gLv8cpvsLxo9R6
         nvV3+Pr3WGpx0KCnAdVR0hf+Fwr9M+8Pg2CHU7N34pCukprmVcxeUAjweEEebhg6hlPX
         70ROmrcwQuI/lBeXfjHP4HfvqH30ARa9izyWYn6IrGQ8khneAOBSqmNboQDeSKUQHgC+
         IDXQ84fnPJCbTyTW5XD5MUjH6IfnlFgMW8nKekYHsDBqYYTGroUC7LapID//qjfZy2cx
         6qbw==
X-Gm-Message-State: AOAM531KJhrj6d+c9+0le18k81Oyt1Xm/Ft6IyarqJEKJUDqqVNrVZ69
	UrbgSeUl7IJMc8RJVrcgLwVZ6iO2/oaLu6T+h55B6u+B
X-Google-Smtp-Source: ABdhPJz+ExUmHHRzJPe2jhCDYrvX6iHHysWFjVON4zd3ITTDagTCht4YYyIqG4jyxh/o9EOwVR5k+FErZCEwahc09SY=
X-Received: by 2002:a2e:810c:: with SMTP id d12mr2839419ljg.410.1590580147143;
 Wed, 27 May 2020 04:49:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8mNzC8QV=xuRBH1=cxn40RL9923kpw2vwK-7Nh-=enNnA@mail.gmail.com>
 <CA+chaQf-Foo=EQw+sjsRhPW7bMcteEqZSPepkJjx8Y4CABff-g@mail.gmail.com>
In-Reply-To: <CA+chaQf-Foo=EQw+sjsRhPW7bMcteEqZSPepkJjx8Y4CABff-g@mail.gmail.com>
From: "Mans Zigher" <mans.zigher@gmail.com>
Date: Wed, 27 May 2020 13:48:55 +0200
Message-ID: <CAEhQi8kq+y_xKG9fdZ2=X=9bDYkwkdUYnZTO+XxE++zXPLp5ZQ@mail.gmail.com>
Subject: Re: [yocto] what to expect from distributed sstate cache?
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks will have a look at that script.

Den ons 27 maj 2020 kl 13:41 skrev Martin Jansa <martin.jansa@gmail.com>:
>
> There is no limitation like that, but it's quite easy to break that, you=
 mentioned some ugly BSP before, I wouldn't be surprised if it's broken the=
re.
>
> What worked well for me over the years is using this script:
> openembedded-core/scripts/sstate-diff-machines.sh
> on jenkins which produces the sstate-cache, it not only checks for signa=
ture issues between MACHINEs (can be used for single MACHINE as well) but c=
reates a directory with all sstate signatures in our builds, this is then p=
ublished as tarball together with built images.
>
> Then when I'm seeing unexpected low reuse of sstate on some builder, I j=
ust use the same sstate-diff-machines.sh locally, fetch the tarball from th=
e build I was trying to reproduce and compare the content with bitbake-diff=
sigs.
>
> Cheers,
>
> On Wed, May 27, 2020 at 10:59 AM Mans Zigher <mans.zigher@gmail.com> wro=
te:
>>
>> Hi,
>>
>> This is maybe more related to bitbake but I start by posting it here.
>> I am for the first time trying to make use of a distributed sstate
>> cache but I am getting some unexpected results and wanted to hear if
>> my expectations are wrong. Everything works as expected when a build
>> node is using a sstate cache from it's self so I do a clean build and
>> upload the sstate cache from that build to our mirror. If then do a
>> complete build using the mirror I get a 99% hit rate which is what I
>> would expect. If I then start a build on a different node using the
>> same cache I am only getting a 16% hit rate. I am running the builds
>> inside docker so the environment should be identical. We have several
>> build nodes in our CI and they where actually cloned  and all of them
>> have the same HW. They are all running the builds in docker but it
>> looks like they can share the sstate cache and still get a 99% hit
>> rate. This to me suggests that the hit rate for the sstate cache is
>> node depending so a cache cannot actually be shared between different
>> nodes which is not what I expected. I have not been able find any
>> information about this limitation. Any clarification regarding what to
>> expect from the sstate cache would be appreciated.
>>
>> Thanks
>>=20
