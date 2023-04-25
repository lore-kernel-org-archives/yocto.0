Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 321DBC77B7C
	for <webhook@archiver.kernel.org>; Tue, 25 Apr 2023 22:26:41 +0000 (UTC)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
 by mx.groups.io with SMTP id smtpd.web10.94643.1682461591481370098
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Apr 2023 15:26:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=RFfSuwJV;
 spf=pass (domain: gmail.com, ip: 209.85.219.179, mailfrom: ticotimo@gmail.com)
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-b994571219fso4020737276.1
        for <yocto@lists.yoctoproject.org>; Tue, 25 Apr 2023 15:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682461590; x=1685053590;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vgAZBi7odX+fAWUEgaTiuh5iV9iXtzRivpnnXX9gMBg=;
        b=RFfSuwJVoV0SxBzi9OBgawQ+vNJGVhJ/ztStfB6jKgk9E/8f3fLF9ZDTuaj6zjKwS8
         n5pl4JSrMHpp7kJXJG6isSCh5Mmkd8aV8RQcFPVF3XuwKs+PBTIoGbL44dRfMHu+SIDp
         loP6U8cjrPBCqS76ulvmR8AD8F+9vaUNpLbXF00YGbzYYUePhZlnaKIuz3JxC20Gm3od
         MEWyJ8LLhuGjR3K0G/ycZPVbsEg+0dsMqXxWOLpiC1WSaxo5YgjjFyV0kgnsn4+lhgvM
         kDDlO28O0rqaSLr8VeeI49gMxVun/5zqAxOzNd2AL5PPirCTElB/XSAvN7s4YHmU+QeP
         4vow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682461590; x=1685053590;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vgAZBi7odX+fAWUEgaTiuh5iV9iXtzRivpnnXX9gMBg=;
        b=T5ahQGG14zu8ZgVyLUSD0CLUdWIumPasyJwqeMYFmqw4jOGCqmqgX/nr5NnyB/GB0e
         D0jvADoDvOPV3FOEQC4AxZa9ZWuuxuxBxSxtTtbksLB1KRkJL7wwbCYrnl3DbkvHsC22
         rUea8LFuJYIScZZninPrstsqZor2hxYV9rhhe0T4orIkziPlY8edaXYsFoEFLBCazYDh
         ogWkSA7GbyfN3+hhBKsFXMquYMtbIyZqgV9BUdTEyqT/+9qP9I8TqZ+FAKe+YjUDOJtu
         Uh4tOCBv7thGUkPj3N1saDw//SUJHK5aR5bWTJnyZzaLf56M7kcU3TKSf7rsmQ5Ej/Cw
         q6OQ==
X-Gm-Message-State: AAQBX9ddcx3nePasPyA+Kd+/EcWG5FKwdFq/N2eo8BTx/+AkzRQfmPLk
	N4RVMpE3O2eElcC6gmarZ2b6nsiyS3mJ/Zo/nqk=
X-Google-Smtp-Source: AKy350YmgbHqxHkKwSYxOatlw+ju81Dm37sI3PPkVpH7VUJKTZ1ZRIHV6nPsVjZHxs38EYzhQGK9TMBqCoJ1Ifvk8gw=
X-Received: by 2002:a81:4e0d:0:b0:543:1dc1:828b with SMTP id
 c13-20020a814e0d000000b005431dc1828bmr11788287ywb.33.1682461590290; Tue, 25
 Apr 2023 15:26:30 -0700 (PDT)
MIME-Version: 1.0
References: <b2b1f3c5c42d5eded06ae5b3a6cfa754b1eeb99e.camel@weaverpad.com> <0E75AB98-AA7A-4CF5-B883-076A2CF0CDF0@arm.com>
In-Reply-To: <0E75AB98-AA7A-4CF5-B883-076A2CF0CDF0@arm.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Tue, 25 Apr 2023 15:26:19 -0700
Message-ID: <CANx9H-A=8dQjv=fhGK67ZGoYwsiNcwbRND=BQg6LHc2vwJ9PJg@mail.gmail.com>
Subject: Re: [yocto] Error building m4-native while trying to build Beaglebone
 Black branch
To: Ross Burton <ross.burton@arm.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	"steve@weaverpad.com" <steve@weaverpad.com>
Content-Type: multipart/alternative; boundary="00000000000070047705fa309d68"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Apr 2023 22:26:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59781

--00000000000070047705fa309d68
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 25, 2023 at 2:06 PM Ross Burton <ross.burton@arm.com> wrote:

> On 25 Apr 2023, at 15:33, Steven Weaver via lists.yoctoproject.org <steve=
> weaverpad.com@lists.yoctoproject.org> wrote:
> >
> > Greetings,
> > I am trying to follow the docs to build Yocto for the Beaglebone
> Black[1]. I've been able to clone
> > everything just fine. I am triggering the following #errors when I try
> to run 'bitbake-image-*':
> >
> > |
> /home/steven/temp/beaglebone/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-
> > 1.4.17/lib/freadahead.c: In function 'freadahead':
> > |
> /home/steven/temp/beaglebone/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-
> > 1.4.17/lib/freadahead.c:91:3: error: #error "Please port gnulib
> freadahead.c to your platform! Look
> > at the definition of fflush, fread, ungetc on your system, then report
> this to bug-gnulib."
> > |    91 |  #error "Please port gnulib freadahead.c to your platform!
> Look at the definition of
> > fflush, fread, ungetc on your system, then report this to bug-gnulib."
>
> What release of Yocto are you using? I ask because this was fixed in
> 2018...
>

clearly a release before 2017:
https://git.yoctoproject.org/poky/commit/meta/recipes-devtools/m4?id=a06e298de8306356327485be03404e45ed1941fa


> Ross
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59780):
> https://lists.yoctoproject.org/g/yocto/message/59780
> Mute This Topic: https://lists.yoctoproject.org/mt/98493950/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/leave/7531966/924729/429220467/xyzzy
> [ticotimo@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000070047705fa309d68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Apr 25, 2023 at 2:06 PM Ross Burton &lt;<a href=3D"=
mailto:ross.burton@arm.com">ross.burton@arm.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">On 25 Apr 2023, at 15:33, Steven Weaver via <a =
href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank"=
>lists.yoctoproject.org</a> &lt;steve=3D<a href=3D"mailto:weaverpad.com@lis=
ts.yoctoproject.org" target=3D"_blank">weaverpad.com@lists.yoctoproject.org=
</a>&gt; wrote:<br>
&gt; <br>
&gt; Greetings,<br>
&gt; I am trying to follow the docs to build Yocto for the Beaglebone Black=
[1]. I&#39;ve been able to clone<br>
&gt; everything just fine. I am triggering the following #errors when I try=
 to run &#39;bitbake-image-*&#39;:<br>
&gt; <br>
&gt; | /home/steven/temp/beaglebone/build/tmp/work/x86_64-linux/m4-native/1=
.4.17-r0/m4-<br>
&gt; 1.4.17/lib/freadahead.c: In function &#39;freadahead&#39;:<br>
&gt; | /home/steven/temp/beaglebone/build/tmp/work/x86_64-linux/m4-native/1=
.4.17-r0/m4-<br>
&gt; 1.4.17/lib/freadahead.c:91:3: error: #error &quot;Please port gnulib f=
readahead.c to your platform! Look<br>
&gt; at the definition of fflush, fread, ungetc on your system, then report=
 this to bug-gnulib.&quot;<br>
&gt; |=C2=A0 =C2=A0 91 |=C2=A0 #error &quot;Please port gnulib freadahead.c=
 to your platform! Look at the definition of<br>
&gt; fflush, fread, ungetc on your system, then report this to bug-gnulib.&=
quot;<br>
<br>
What release of Yocto are you using? I ask because this was fixed in 2018..=
.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">clearly a releas=
e before 2017:</div><div dir=3D"auto"><div><a href=3D"https://git.yoctoproj=
ect.org/poky/commit/meta/recipes-devtools/m4?id=3Da06e298de8306356327485be0=
3404e45ed1941fa">https://git.yoctoproject.org/poky/commit/meta/recipes-devt=
ools/m4?id=3Da06e298de8306356327485be03404e45ed1941fa</a></div><br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><br>
Ross<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59780): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59780" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59780</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98493950/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
98493950/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/leave/753196=
6/924729/429220467/xyzzy" rel=3D"noreferrer" target=3D"_blank">https://list=
s.yoctoproject.org/g/yocto/leave/7531966/924729/429220467/xyzzy</a> [<a hre=
f=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@gmail.com</a>]<b=
r>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000070047705fa309d68--

