Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BC4C3ABC9
	for <webhook@archiver.kernel.org>; Thu, 15 May 2025 08:30:57 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web10.8067.1747297855437897644
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 May 2025 01:30:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UCi2gojr;
 spf=pass (domain: gmail.com, ip: 209.85.128.182, mailfrom: sateesh0457@gmail.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-709a4f97149so14199437b3.1
        for <yocto@lists.yoctoproject.org>; Thu, 15 May 2025 01:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747297854; x=1747902654; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sC+SdwBoqZuPtkv5xBVI16ClH5mHb5FqWIx5hHJe2Hg=;
        b=UCi2gojrtSgztttGaz4HUL+Dnfehe+uAQ9yHAU8p5yWdhwtv+oLIDGJ1FSYNv7aYIR
         urfY8eQFTqnQHY7svrBubcikGUNmqsr0I4yCTyEwa13iQq0glqr1RsZGc5tDKI1oVplF
         iG06V9CgQrOBgMBJqe4vMWYz/0/DTIN/fX2SzYx0eqt5LgP59CQG5TKyrkqdikqjrrFW
         r6FOkOh1px2wPkTM0XIHJ2oD258byDNPtArOuhw2Sn6wkl7UXuC39IteQRIazrpRn2eH
         8bK6czBKThaRhUwWvaFb1r6suMoZBD4go8Jadq8tPiSJfFwgoWu+45EcbgzdwaYYH10g
         vfNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747297854; x=1747902654;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sC+SdwBoqZuPtkv5xBVI16ClH5mHb5FqWIx5hHJe2Hg=;
        b=tgffxZDs8Mo4x9a9B1Ah4ggOMQ0gfJgWbtIvjCctn2gkxrb+DAmvfBKt9i5U2QCagK
         VXmF90/+QCjwD+iFS+m4zRXlraUNGxyC8Q9Zp2v0k+oERaGzYdSeJtECw9uwHWTLcmJQ
         WkIoJZ8XqecWxsAUjQ2LYdLAvt2CndhlOrqfXLRPoqvMBAMyf4uUF3kWP7xvTJedUcxw
         BOJYwuIWLBlsqrV8ifyPfyl6Cg0PaJsadcwP63ZJ2Q+yH2FIP9l9zgo1xdv0rhzJ59TQ
         7Pz+8Vg7Is24PNHvK4SQb9RRJuceRwjxsYHjNbHolnEewZ7enIcCnxgVFCVMM1+R+USg
         tAoQ==
X-Gm-Message-State: AOJu0YzKB6iZ9/K7z4I5m2vTHTQvX6YXPknty7z2d/sRPVHE7tB5DAyL
	zOm1+UMEoxeoOwSy/Be0N16x0R9fZMezKcLSSXeRdPuHpjmwi4G0/Vbu8T8lKHE9hP9EEvGPi/Z
	DN++87HmRjLWBHyEoOZ8kuEcB4iR3RqQ=
X-Gm-Gg: ASbGncsylGpgqM3sMY0Ip85RFc+XC93s2QQxIOJUEdG1dmRS5xkeWD7s+qYOQywFc1G
	NlNmAs4p2oxf7Q+/nyof9m1pgckh0M353jEXxIcJ2OgcuIA4Xg5Nh7wYoSqsGh4CRrI/k0Cx2rV
	XAYhZO8G1M5S9svLl3H9VBCbXRdQt8Z/0u9OQA8SQ5aan4LoLD8JuWnQ+3Y0ww5BQ0Mmc=
X-Google-Smtp-Source: AGHT+IGwa2hmzuRDU/IMKWsaymnBrdjHukMaYzOVpHJX82xU00pUBsP/oRdpM3BYxLaEm7nxUCiFLlATh9jisV0Y+d8=
X-Received: by 2002:a05:690c:4a03:b0:706:ae3b:cc9d with SMTP id
 00721157ae682-70c8fe235a2mr35021467b3.17.1747297854491; Thu, 15 May 2025
 01:30:54 -0700 (PDT)
MIME-Version: 1.0
References: <yoeb.1747283643576382007.FPXh@lists.yoctoproject.org> <42bc33b8-8b36-44a6-9cd0-0a447520876f@gmail.com>
In-Reply-To: <42bc33b8-8b36-44a6-9cd0-0a447520876f@gmail.com>
From: sateesh m <sateesh0457@gmail.com>
Date: Thu, 15 May 2025 14:00:40 +0530
X-Gm-Features: AX0GCFthKHW6-F7fqDtJWVmGByDf4to-tQI8W5QGj_TJHe4pKoV4Wk0wXCgOi7c
Message-ID: <CACsETSur6ntPh9h_DUjsxe4N8POjpit1MbDffdYX=wXZ10v1yA@mail.gmail.com>
Subject: Re: [yocto] mozjs 60.9 CVE issues fix.
To: Gyorgy Sarvari <skandigraun@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ef16a20635287b4f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 May 2025 08:30:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65343

--000000000000ef16a20635287b4f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for your response. But i am having some doubts If I want to get
upstream patches for the Firefox  60.9 version how to get it.

Thanks & Regards,
Satish M

On Thu, 15 May, 2025, 12:22=E2=80=AFpm Gyorgy Sarvari, <skandigraun@gmail.c=
om>
wrote:

> On 5/15/25 06:34, sateesh m via lists.yoctoproject.org wrote:
> >
> > Hi Team,
> >
> > I am currently working on CVE-related issues in the mozjs library that
> > need to be fixed for version 60.9. I am using the Dunfell branch, but
> > upon comparing it to the Gatesgarth branch, I noticed an additional
> > patch is available. The patch
> > |file://0014-fallback-to-2011-C++-standard.patch| has been removed,
> > and |0014-remove-JS_VOLATIME_ARM.patch| has been added instead.
> >
> > Could you confirm whether these changes need to be applied to my local
> > build as well? Additionally, I would like to understand the reason for
> > removing the fallback-to-2011 patch. If we retain it, could it lead to
> > any issues?
> >
> The patch comments look fairly descriptive. These are not security
> fixes, rather change gcc compatibility.
>
> 0014-fallback-to-2011-C++-standard.patch - it was introduced because
> Dunfell supported building on distros that came with an old gcc that
> couldn't compile without this patch. But later Yocto releases dropped
> support for these old distros, so this patch wasn't necessary. If your
> compiler supports c++14, then this patch is optional for you, and can be
> safely dropped. But you can also keep it.
>
> 0014-remove-JS_VOLATIME_ARM.patch - This patch removes a workaround that
> was added to fix an old gcc bug. If you are using old gcc, or very old
> Arm HW (that doesn't support aligned access), you shouldn't use this patc=
h.
> >
> > I want to incorporate upstream patch changes related to the mozjs
> > library. Since version 60.9 is a tar bundle and not a Git source,
> > where can I find relevant solutions and reference links?
> >
> Mozilla primarily does development in their Mercurial repo, where you
> can also see the commit history[1]. Incidentally they have just
> announced hosting their code in their official Github repo also, where
> you can also browse the history[2] if you are more comfortable with that
> - mostly check in the js folder history.
>
> Of course, security-wise the best would be if you could migrate to newer
> versions. All of these are pretty old, and most probably having lots of
> issues that weren't found back when developers were still fixing them.
> (Not only mozjs, but whole Dunfell)
>
> [1]: https://hg-edge.mozilla.org/mozilla-central/
> [2]: https://github.com/mozilla-firefox/firefox
> >
> > I have reviewed Bugzilla IDs, and they indicate that the issue has
> > been fixed in example Firefox ESR78 and ESR128 and few mentioned <91
> > (Is that mean below 91 all versions may effect changes). However,
> > based on my understanding, adding those changes might result in
> > dependency package version issues, such as requiring a more recent
> > Python version (e.g., Python 3.10).
> >
> > I would appreciate any clarification on this matter.
> >
> > Thanks in advance.
> >
> > Best regards,
> >
> > Satish M
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#65341):
> https://lists.yoctoproject.org/g/yocto/message/65341
> > Mute This Topic: https://lists.yoctoproject.org/mt/113122170/6084445
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> skandigraun@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>
>

--000000000000ef16a20635287b4f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Thank you for your response. But i am having some doubts If =
I want to get upstream patches for the Firefox=C2=A0 60.9 version how to ge=
t it. </p>
<p dir=3D"ltr">Thanks &amp; Regards,<br>
Satish M</p>
<br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, 15 May, 2025, 12:22=E2=80=AFpm Gyorgy Sarvari, &lt;=
<a href=3D"mailto:skandigraun@gmail.com">skandigraun@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">On 5/15/25 06:34, sateesh m via =
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer noreferrer" tar=
get=3D"_blank">lists.yoctoproject.org</a> wrote:<br>
&gt;<br>
&gt; Hi Team,<br>
&gt;<br>
&gt; I am currently working on CVE-related issues in the mozjs library that=
<br>
&gt; need to be fixed for version 60.9. I am using the Dunfell branch, but<=
br>
&gt; upon comparing it to the Gatesgarth branch, I noticed an additional<br=
>
&gt; patch is available. The patch<br>
&gt; |file://0014-fallback-to-2011-C++-standard.patch| has been removed,<br=
>
&gt; and |0014-remove-JS_VOLATIME_ARM.patch| has been added instead.<br>
&gt;<br>
&gt; Could you confirm whether these changes need to be applied to my local=
<br>
&gt; build as well? Additionally, I would like to understand the reason for=
<br>
&gt; removing the fallback-to-2011 patch. If we retain it, could it lead to=
<br>
&gt; any issues?<br>
&gt;<br>
The patch comments look fairly descriptive. These are not security<br>
fixes, rather change gcc compatibility.<br>
<br>
0014-fallback-to-2011-C++-standard.patch - it was introduced because<br>
Dunfell supported building on distros that came with an old gcc that<br>
couldn&#39;t compile without this patch. But later Yocto releases dropped<b=
r>
support for these old distros, so this patch wasn&#39;t necessary. If your<=
br>
compiler supports c++14, then this patch is optional for you, and can be<br=
>
safely dropped. But you can also keep it.<br>
<br>
0014-remove-JS_VOLATIME_ARM.patch - This patch removes a workaround that<br=
>
was added to fix an old gcc bug. If you are using old gcc, or very old<br>
Arm HW (that doesn&#39;t support aligned access), you shouldn&#39;t use thi=
s patch.<br>
&gt;<br>
&gt; I want to incorporate upstream patch changes related to the mozjs<br>
&gt; library. Since version 60.9 is a tar bundle and not a Git source,<br>
&gt; where can I find relevant solutions and reference links?<br>
&gt;<br>
Mozilla primarily does development in their Mercurial repo, where you<br>
can also see the commit history[1]. Incidentally they have just<br>
announced hosting their code in their official Github repo also, where<br>
you can also browse the history[2] if you are more comfortable with that<br=
>
- mostly check in the js folder history.<br>
<br>
Of course, security-wise the best would be if you could migrate to newer<br=
>
versions. All of these are pretty old, and most probably having lots of<br>
issues that weren&#39;t found back when developers were still fixing them.<=
br>
(Not only mozjs, but whole Dunfell)<br>
<br>
[1]: <a href=3D"https://hg-edge.mozilla.org/mozilla-central/" rel=3D"norefe=
rrer noreferrer" target=3D"_blank">https://hg-edge.mozilla.org/mozilla-cent=
ral/</a><br>
[2]: <a href=3D"https://github.com/mozilla-firefox/firefox" rel=3D"noreferr=
er noreferrer" target=3D"_blank">https://github.com/mozilla-firefox/firefox=
</a><br>
&gt;<br>
&gt; I have reviewed Bugzilla IDs, and they indicate that the issue has<br>
&gt; been fixed in example Firefox ESR78 and ESR128 and few mentioned &lt;9=
1<br>
&gt; (Is that mean below 91 all versions may effect changes). However,<br>
&gt; based on my understanding, adding those changes might result in<br>
&gt; dependency package version issues, such as requiring a more recent<br>
&gt; Python version (e.g., Python 3.10).<br>
&gt;<br>
&gt; I would appreciate any clarification on this matter.<br>
&gt;<br>
&gt; Thanks in advance.<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Satish M<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#65341): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/65341" rel=3D"noreferrer noreferrer" target=3D"_blank">http=
s://lists.yoctoproject.org/g/yocto/message/65341</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/11312217=
0/6084445" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yo=
ctoproject.org/mt/113122170/6084445</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><=
br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/g/yocto/unsub</a> [<a href=3D"mailto:skandigraun@gmail.com" target=3D"_=
blank" rel=3D"noreferrer">skandigraun@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
<br>
</blockquote></div>

--000000000000ef16a20635287b4f--

