Return-Path: <pwicks86@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E8AC32772
	for <webhook@archiver.kernel.org>; Tue, 23 Aug 2022 15:42:32 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web10.33670.1661269345802962039
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Aug 2022 08:42:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Yp5RRNiu;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: pwicks86@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id q7so16533139lfu.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 23 Aug 2022 08:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=C6AVIWJpWeCuo0X55BTmVpXSetKXw9PEkupRjs03NGE=;
        b=Yp5RRNiu5gqgIniqCMQaAS8olujvvEE8w1z51wtqYiXORBqLI24foa1SdkPxIwCrd8
         9RP82uBE2R4DECuv8tL8ed3MbP+fRHn3Bqg9BMRcAVcMKCwk6EYqkcLnhWlNdFs7bQjN
         9SKXJaAbDH57Vwl60ZqEYz7DY9vqd+hdp6pyBn3MHIaWWTr30p50EIxvegBxw6FJjsW2
         U4besCRKZJihRQOz4V++iYIr1k4Td4DJrLd9n2PM3dryNB/f0K+RxAaNdq+5RISDsTbe
         tcp2I7WyuWezKuXbiQLbv3ZMA2VIWU2uqNFOJxhOisbtBbVyGOQ98A4zanax7VNMZjun
         WZ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=C6AVIWJpWeCuo0X55BTmVpXSetKXw9PEkupRjs03NGE=;
        b=ToHok4wSWFnF1MLaKhML/cXZU+A/hj8ZBYVZRhVf+rEYeeJNP4Yb6CCLmtWzSV+XXm
         t+ohBhG2OMEU95pFYEuB53SFSJxLp5OLVvwWfxFfX2CS9KnNu6TvllpiSMHhf2Jks4sR
         cFn/nchxuD68P5foir/eQM5YuMeoBD4z/44H/hZ4KL4Zw0SqORJL1heZmcZj3excYQYf
         0vkXxmf3XJ9jgXlAJKgc+VOhORfY+UyalbOWkQl292/Xd1cRVA/vD8QoLop6HwbXYBjT
         vKn/Lvrat/4fE6ssFN0ekSrZ5tQ1sqjxg4+zeOK21gu3lZz88mMlwMGlAuv79OqjxHlx
         gP8A==
X-Gm-Message-State: ACgBeo3Zcf7BBw5DjzGmLlJHvvLBHprAqEgxhyojYDMGXDl8RvbEpEd7
	y1YLZHGXzkOif1/4KZFTPZi2Tds5tZBznVUdOTQ=
X-Google-Smtp-Source: 
 AA6agR63sRJUcwdQ9flZMF78+9WpcKII+OWoQejWX+yywdb5kvtNbpmnm4T9GFyDETWfX42DLDycCPwHPqA7ik7sC5k=
X-Received: by 2002:a05:6512:31d0:b0:492:fe2e:7695 with SMTP id
 j16-20020a05651231d000b00492fe2e7695mr699018lfe.392.1661269343824; Tue, 23
 Aug 2022 08:42:23 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAOC70tue67GwmrdrJ1JduuscAyuDmctNmYaYr_Q-D=hC0A7Faw@mail.gmail.com>
 <B079364A-8118-4547-B098-B10FFCA7BBAB@arm.com>
In-Reply-To: <B079364A-8118-4547-B098-B10FFCA7BBAB@arm.com>
From: Paul Wicks <pwicks86@gmail.com>
Date: Tue, 23 Aug 2022 08:41:44 -0700
Message-ID: 
 <CAOC70tv7GxVN0QDAGLqPeWb269npcpDLMicCmge9dz2YaH8O0A@mail.gmail.com>
Subject: Re: [yocto] Custom QA Checks
To: Ross Burton <Ross.Burton@arm.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001d723705e6ea6957"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Aug 2022 15:42:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57886

--0000000000001d723705e6ea6957
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the example, very helpful!

-Paul Wicks


On Wed, Aug 17, 2022 at 6:53 AM Ross Burton <Ross.Burton@arm.com> wrote:

> On 7 Aug 2022, at 20:21, Paul Wicks via lists.yoctoproject.org <pwicks86=
=3D
> gmail.com@lists.yoctoproject.org> wrote:
> >
> > Is it possible to create additional QA checks such that they apply to
> all recipes automatically? Or even just to all recipes in a given layer?
>
> Yes, and yes.
>
> For example, I have
> https://github.com/rossburton/meta-ross/blob/master/classes/insanitier.bb=
class
>
> This defines some new sanity checks, and adds them to WARN_QA so that
> they=E2=80=99re enabled and classified as warnings (use ERROR_QA if you w=
ant them
> to be errors).
>
> Simply inheriting the class in your local or distro configuration with
> INHERIT +=3D is enough to enable them for all recipes.
>
> Ross

--0000000000001d723705e6ea6957
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the example, very helpful!<div><br clear=3D"all=
"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_s=
ignature">-Paul Wicks</div></div><br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 17, 2022 at 6:53 AM =
Ross Burton &lt;<a href=3D"mailto:Ross.Burton@arm.com">Ross.Burton@arm.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">O=
n 7 Aug 2022, at 20:21, Paul Wicks via <a href=3D"http://lists.yoctoproject=
.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> &lt;p=
wicks86=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=3D"_bl=
ank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; <br>
&gt; Is it possible to create additional QA checks such that they apply to =
all recipes automatically? Or even just to all recipes in a given layer?<br=
>
<br>
Yes, and yes.<br>
<br>
For example, I have <a href=3D"https://github.com/rossburton/meta-ross/blob=
/master/classes/insanitier.bbclass" rel=3D"noreferrer" target=3D"_blank">ht=
tps://github.com/rossburton/meta-ross/blob/master/classes/insanitier.bbclas=
s</a><br>
<br>
This defines some new sanity checks, and adds them to WARN_QA so that they=
=E2=80=99re enabled and classified as warnings (use ERROR_QA if you want th=
em to be errors).<br>
<br>
Simply inheriting the class in your local or distro configuration with INHE=
RIT +=3D is enough to enable them for all recipes.<br>
<br>
Ross</blockquote></div>

--0000000000001d723705e6ea6957--

