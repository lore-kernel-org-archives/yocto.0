Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4170.1590579695781876381
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 May 2020 04:41:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kIiJKkn8;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: martin.jansa@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CF44E01BDA; Wed, 27 May 2020 04:41:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EAF7E01BD8
	for <yocto@yoctoproject.org>; Wed, 27 May 2020 04:41:31 -0700 (PDT)
Received: by mail-ej1-f42.google.com with SMTP id z5so27747236ejb.3
        for <yocto@yoctoproject.org>; Wed, 27 May 2020 04:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ii9aad1cIGGQMKKyC5Ohom+q88pIx6s0J9rc88V/zm0=;
        b=kIiJKkn8Ax5Rwjtz5dSiNt5q7/TdLnbF4/sx0i3ASwfegvn02LreIB49GfLtFvZyLN
         JkfOpy4hVTTEFjnxzbpRSSkK8SV0rEcZYzoiwJZWafnZuEf8eV9Ev2FTyVpUGgkCboa5
         Ed56vCj8ATHD8ZyxSQERcnx959gOG3FK4t7+EYwNcBBGgUC0D9q+vO+yjui2XFzDNrZ8
         IPMfIxsTB7EMWLUSftAnFlnEoaz22trdJP9tIyehCIPdUjofPdXQSftfS4Mm5H06s3oq
         y2xSCagPfQVOt7uMWNDAEnw0FpEW2qv0kIAmRRwv4QvXEiTaMd1CP8ubZDx448ryzoac
         YKKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ii9aad1cIGGQMKKyC5Ohom+q88pIx6s0J9rc88V/zm0=;
        b=As/QxUlfA75uL+vf0UfkvSG1e++YN9/wbgPW51DH0KxPv4HB6ZyrI5i2d+xM91ca8b
         3qTH+MjUMLl8OkGJPAh3BViSnn+jjJIp5Bij4yw4U9Wjk7zCuFI+XbrDPmZS1/uQu4/L
         4+X9uf/lXExOIvRwA74LJyb8EsCOP2/wO3A4hq/Bbse8bZZSEXqbUNXH/uK2KgG1Ou0W
         Wj9pf7yd/xiWBbh7w+pGMPSAOrgcapQwfaKZApkwuz4ZiYqUlQdDH8xEWtawUJGZxduA
         QbYLcTaurElUIvfwpKRK/zM80mR/KItcd+qDFl5ntUVTaOaicyEs3yXVPjcgpiL9H/sS
         x2OA==
X-Gm-Message-State: AOAM532Oywq1sOs7QRED6QDyYBB1zhRgicRMyHpSiVVEC9H/dy3hFeaA
	IxRNT4eDyvxOY6//SbCb37m/WgUX56hfTSun9eQ=
X-Google-Smtp-Source: ABdhPJzfQ3RlJFqpIu+nQuQ43vVuJxqUNQD7eglFJUblaM2/XCagD/cdb1mSgzbtk4Tj2oGKBz7cuTNBrJHOAc1TLOY=
X-Received: by 2002:a17:906:ce36:: with SMTP id sd22mr5497807ejb.94.1590579691012;
 Wed, 27 May 2020 04:41:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8mNzC8QV=xuRBH1=cxn40RL9923kpw2vwK-7Nh-=enNnA@mail.gmail.com>
In-Reply-To: <CAEhQi8mNzC8QV=xuRBH1=cxn40RL9923kpw2vwK-7Nh-=enNnA@mail.gmail.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Wed, 27 May 2020 13:41:19 +0200
Message-ID: <CA+chaQf-Foo=EQw+sjsRhPW7bMcteEqZSPepkJjx8Y4CABff-g@mail.gmail.com>
Subject: Re: [yocto] what to expect from distributed sstate cache?
To: Mans Zigher <mans.zigher@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000078480d05a69fb122"

--00000000000078480d05a69fb122
Content-Type: text/plain; charset="UTF-8"

There is no limitation like that, but it's quite easy to break that, you
mentioned some ugly BSP before, I wouldn't be surprised if it's broken
there.

What worked well for me over the years is using this script:
openembedded-core/scripts/sstate-diff-machines.sh
on jenkins which produces the sstate-cache, it not only checks for
signature issues between MACHINEs (can be used for single MACHINE as well)
but creates a directory with all sstate signatures in our builds, this is
then published as tarball together with built images.

Then when I'm seeing unexpected low reuse of sstate on some builder, I just
use the same sstate-diff-machines.sh locally, fetch the tarball from the
build I was trying to reproduce and compare the content with
bitbake-diffsigs.

Cheers,

On Wed, May 27, 2020 at 10:59 AM Mans Zigher <mans.zigher@gmail.com> wrote:

> Hi,
>
> This is maybe more related to bitbake but I start by posting it here.
> I am for the first time trying to make use of a distributed sstate
> cache but I am getting some unexpected results and wanted to hear if
> my expectations are wrong. Everything works as expected when a build
> node is using a sstate cache from it's self so I do a clean build and
> upload the sstate cache from that build to our mirror. If then do a
> complete build using the mirror I get a 99% hit rate which is what I
> would expect. If I then start a build on a different node using the
> same cache I am only getting a 16% hit rate. I am running the builds
> inside docker so the environment should be identical. We have several
> build nodes in our CI and they where actually cloned  and all of them
> have the same HW. They are all running the builds in docker but it
> looks like they can share the sstate cache and still get a 99% hit
> rate. This to me suggests that the hit rate for the sstate cache is
> node depending so a cache cannot actually be shared between different
> nodes which is not what I expected. I have not been able find any
> information about this limitation. Any clarification regarding what to
> expect from the sstate cache would be appreciated.
>
> Thanks
> 
>

--00000000000078480d05a69fb122
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>There is no limitation like that, but it&#39;s quite =
easy to break that, you mentioned some ugly BSP before, I wouldn&#39;t be s=
urprised if it&#39;s broken there.</div><div><br></div><div>What worked wel=
l for me over the years is using this script:</div>openembedded-core/script=
s/sstate-diff-machines.sh<br><div>on jenkins which produces the sstate-cach=
e, it not only checks for signature issues between MACHINEs (can be used fo=
r single MACHINE as well) but creates a directory with all sstate signature=
s in our builds, this is then published as tarball together with built imag=
es.</div><div><br></div><div>Then when I&#39;m seeing unexpected low reuse =
of sstate on some builder, I just use the same sstate-diff-machines.sh loca=
lly, fetch the tarball from the build I was trying to reproduce and compare=
 the content with bitbake-diffsigs.</div><div><br></div><div>Cheers,</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Wed, May 27, 2020 at 10:59 AM Mans Zigher &lt;<a href=3D"mailto:mans.zigh=
er@gmail.com">mans.zigher@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
This is maybe more related to bitbake but I start by posting it here.<br>
I am for the first time trying to make use of a distributed sstate<br>
cache but I am getting some unexpected results and wanted to hear if<br>
my expectations are wrong. Everything works as expected when a build<br>
node is using a sstate cache from it&#39;s self so I do a clean build and<=
br>
upload the sstate cache from that build to our mirror. If then do a<br>
complete build using the mirror I get a 99% hit rate which is what I<br>
would expect. If I then start a build on a different node using the<br>
same cache I am only getting a 16% hit rate. I am running the builds<br>
inside docker so the environment should be identical. We have several<br>
build nodes in our CI and they where actually cloned=C2=A0 and all of them=
<br>
have the same HW. They are all running the builds in docker but it<br>
looks like they can share the sstate cache and still get a 99% hit<br>
rate. This to me suggests that the hit rate for the sstate cache is<br>
node depending so a cache cannot actually be shared between different<br>
nodes which is not what I expected. I have not been able find any<br>
information about this limitation. Any clarification regarding what to<br>
expect from the sstate cache would be appreciated.<br>
<br>
Thanks<br>
<br>
</blockquote></div>

--00000000000078480d05a69fb122--
