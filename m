Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B29C433FE
	for <webhook@archiver.kernel.org>; Thu, 17 Nov 2022 15:46:54 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web10.19386.1668700011219351470
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Nov 2022 07:46:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com header.s=20210112 header.b=5hU3xu2a;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.48, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f48.google.com with SMTP id kt23so6036031ejc.7
        for <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 07:46:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FCSXKJmS9110LzqdO9eSS3StDm9hx8qsoSvD05dgVuk=;
        b=5hU3xu2a7LlMVSXj0JGIJWPBMAC5W91B8Ey57CqJnGH0sp73iHVDLlHcxPMG2J38fz
         SSH99YdVTyaTeBrRPLjJ6khgqw14HK84DxbUu1GEAJiquGFQ9r+ESOpEFc6bNYuuB3eM
         2DZRGl+iv0PjWwa2DtBAmEuyfoEGFcc5lVCCauQLJmOXEDoxJOUu1Lsa6eLLWSTdUZRe
         VXvVDdaZadZG85Rws6wMDldZyqazIR0yQt2XtuxBKbkc34GWWZsN1dKvj7odmgfbk0mh
         0g7HYXg7foQ4bXxpX6fDjXARuOv3C3Z+5YocGJdHKDHeM8vaPhvovkep3XWzbl4T8wYH
         d+YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FCSXKJmS9110LzqdO9eSS3StDm9hx8qsoSvD05dgVuk=;
        b=U/Q+k2zPJWU5BYKUWt/5U5r9tPB1tklTXCCCq6dMh3Lwr+dSBKGK/lSh6CwGHaDS9N
         5YYVf20xxOMKlodRltkxfyTsrDfl18zjPlU3UnmDYFo01ndCQR+EKo2yJz/9nCzv6tDc
         vXDbQiR/vPqjUnJozjw4vnvGZ4VGr/J6QWlpQQgvpX5Y0ZJY7Ln173//DYaN755x1SIE
         Tzr+u1F2gdem1Ftj3yr3JOxtmyM3Wyx9iiXZ1KY+CRKqHIJa33WUMsVnJWmoVsiEIrMd
         RJutqnoCJfUF5RZLU2yslSQ01KRtZImGAGKnWzGFf3qh2eGO6T/qBOxZLtEjNuwWJx7W
         JJ5Q==
X-Gm-Message-State: ANoB5plxf35R0c5h6WyoEt5IK7+DV9QdlaMeF/f5RFhyBQgTvf7chrrF
	0d5oUf9Hj8rzPHfI0kRYshA0txv0AO8RcYYgVrhoAQ==
X-Google-Smtp-Source: AA0mqf5gdXsd1+1ZXtPwITMQJ/cbuTQD/5lNXFxpWS1851aGw6j/y7Zdv5wMOZvct0VwtW1O6RE4HDx5Z/nk/d+itqE=
X-Received: by 2002:a17:906:a1cb:b0:781:fcf6:e73a with SMTP id
 bx11-20020a170906a1cb00b00781fcf6e73amr2564230ejb.352.1668700009274; Thu, 17
 Nov 2022 07:46:49 -0800 (PST)
MIME-Version: 1.0
References: <CAKO9uzrV9XpnQnQ4irHwfr9OQehjJ=dXndVo8cijyGLy3_yViw@mail.gmail.com>
 <eaa3d543-e119-a176-62f0-8c2afe8d2f57@theobroma-systems.com>
In-Reply-To: <eaa3d543-e119-a176-62f0-8c2afe8d2f57@theobroma-systems.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 17 Nov 2022 16:46:23 +0100
Message-ID: <CAEt6Nwo9t2cw=0yGVGAG0s_X8eM0=5=nyMnaKJTZjhemF_yKNg@mail.gmail.com>
Subject: Re: [yocto] Image dependent variables/files in included recipes
To: quentin.schulz@theobroma-systems.com
Cc: Maik Vermeulen <maik.vermeulen@lightyear.one>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004a556205edac7fc3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 15:46:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58589

--0000000000004a556205edac7fc3
Content-Type: text/plain; charset="UTF-8"

For the record - Yocto chant #1:

Recipe data is local - configuration data is global.

On Thu, Nov 17, 2022 at 4:30 PM Quentin Schulz via lists.yoctoproject.org
<quentin.schulz=theobroma-systems.com@lists.yoctoproject.org> wrote:

> Hi Maik,
>
> On 11/17/22 16:22, Maik Vermeulen wrote:
> > Hi,
> >
> > Depending on the image that's being built, e.g. development vs.
> production,
> > we would like to be able to include different user passwords and firewall
> > settings.
> >
> > We know this can be achieved by just having two different recipes that do
> > the same thing, but with different variables or included files. However,
> we
> > were wondering if there is a neater way?
> >
> > We saw this post:
> >
> https://urldefense.com/v3/__https://www.yoctoproject.org/pipermail/yocto/2018-June/041378.html__;!!OOPJP91ZZw!k-UkKru_mKI6U4p8UgDfH_VEh1-qar1kiQuqcmnyrETRAnubF79KykqR7VGaRu47i1Ws7n8CAagOJBqEFBB3goTxmBkgn8-qL3X383IHnKva$
> > which seems to do what we want, because one recipe can install
> > recipe-development, and the other can install recipe-production, while
> the
> > recipe itself can then implement what needs to happen for either.
> > However, other recipes included in the images can also depend on recipe,
> > and they shouldn't depend on one specifically. They should accept that
> > either recipe-development or recipe-production is included. Currently we
> > see that both the generic recipe and the specific recipe used by the
> image
> > are built and overwrite each other.
> >
> > What would be a neat way to achieve two variants of a recipe, and having
> > different contents and settings in them?
> > Or, can we solve that other included recipes depend on one of the
> variants,
> > instead of on the generic one.
> >
>
> Development vs production is solved by using different distros.
>
> You can then have the same recipe but with different files (see
> (DISTRO)OVERRIDES mechanism for SRC_URI file:// files, c.f.
>
> https://summit.yoctoproject.org/media/yocto-project-summit-2022-05/submissions/SCYYWD/resources/Demystifying_the_OVERRIDES_mec_2lZOP3n.pdf)
>
> and/or different variables via FOO:dev-distro or FOO:append:dev-distro
> for example.
>
> You could also have different recipes both PROVIDES'ing the same virtual
> recipe and then have PREFERRED_PROVIDER_my-recipe = "my-recipe-dev" in
> your dev-distro.conf file.
>
> Two distros is usually overkill when you have very small and
> non-invasive differences between your dev and prod images (e.g. an
> additional package, or a lone package that needs to be slightly
> different). In that scenario, a "drity" solution is to have two recipes
> and have the final image pick the appropriate package. But this quickly
> does not scale well once you have recipes/packages depending on those or
> if you have more than two flavors to support.
>
> The best practice is to use two distros.
>
> Cheers,
> Quentin
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58588):
> https://lists.yoctoproject.org/g/yocto/message/58588
> Mute This Topic: https://lists.yoctoproject.org/mt/95091628/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000004a556205edac7fc3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For the record - Yocto chant #1:<div><br></div><div>Recipe=
 data is local - configuration data is global.</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 17, 2022 at=
 4:30 PM Quentin Schulz via <a href=3D"http://lists.yoctoproject.org">lists=
.yoctoproject.org</a> &lt;quentin.schulz=3D<a href=3D"mailto:theobroma-syst=
ems.com@lists.yoctoproject.org">theobroma-systems.com@lists.yoctoproject.or=
g</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>Hi Maik,<br>
<br>
On 11/17/22 16:22, Maik Vermeulen wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; Depending on the image that&#39;s being built, e.g. development vs. pr=
oduction,<br>
&gt; we would like to be able to include different user passwords and firew=
all<br>
&gt; settings.<br>
&gt; <br>
&gt; We know this can be achieved by just having two different recipes that=
 do<br>
&gt; the same thing, but with different variables or included files. Howeve=
r, we<br>
&gt; were wondering if there is a neater way?<br>
&gt; <br>
&gt; We saw this post:<br>
&gt; <a href=3D"https://urldefense.com/v3/__https://www.yoctoproject.org/pi=
permail/yocto/2018-June/041378.html__;!!OOPJP91ZZw!k-UkKru_mKI6U4p8UgDfH_VE=
h1-qar1kiQuqcmnyrETRAnubF79KykqR7VGaRu47i1Ws7n8CAagOJBqEFBB3goTxmBkgn8-qL3X=
383IHnKva$" rel=3D"noreferrer" target=3D"_blank">https://urldefense.com/v3/=
__https://www.yoctoproject.org/pipermail/yocto/2018-June/041378.html__;!!OO=
PJP91ZZw!k-UkKru_mKI6U4p8UgDfH_VEh1-qar1kiQuqcmnyrETRAnubF79KykqR7VGaRu47i1=
Ws7n8CAagOJBqEFBB3goTxmBkgn8-qL3X383IHnKva$</a><br>
&gt; which seems to do what we want, because one recipe can install<br>
&gt; recipe-development, and the other can install recipe-production, while=
 the<br>
&gt; recipe itself can then implement what needs to happen for either.<br>
&gt; However, other recipes included in the images can also depend on recip=
e,<br>
&gt; and they shouldn&#39;t depend on one specifically. They should accept =
that<br>
&gt; either recipe-development or recipe-production is included. Currently =
we<br>
&gt; see that both the generic recipe and the specific recipe used by the i=
mage<br>
&gt; are built and overwrite each other.<br>
&gt; <br>
&gt; What would be a neat way to achieve two variants of a recipe, and havi=
ng<br>
&gt; different contents and settings in them?<br>
&gt; Or, can we solve that other included recipes depend on one of the vari=
ants,<br>
&gt; instead of on the generic one.<br>
&gt; <br>
<br>
Development vs production is solved by using different distros.<br>
<br>
You can then have the same recipe but with different files (see <br>
(DISTRO)OVERRIDES mechanism for SRC_URI file:// files, c.f. <br>
<a href=3D"https://summit.yoctoproject.org/media/yocto-project-summit-2022-=
05/submissions/SCYYWD/resources/Demystifying_the_OVERRIDES_mec_2lZOP3n.pdf"=
 rel=3D"noreferrer" target=3D"_blank">https://summit.yoctoproject.org/media=
/yocto-project-summit-2022-05/submissions/SCYYWD/resources/Demystifying_the=
_OVERRIDES_mec_2lZOP3n.pdf</a>) <br>
and/or different variables via FOO:dev-distro or FOO:append:dev-distro <br>
for example.<br>
<br>
You could also have different recipes both PROVIDES&#39;ing the same virtua=
l <br>
recipe and then have PREFERRED_PROVIDER_my-recipe =3D &quot;my-recipe-dev&q=
uot; in <br>
your dev-distro.conf file.<br>
<br>
Two distros is usually overkill when you have very small and <br>
non-invasive differences between your dev and prod images (e.g. an <br>
additional package, or a lone package that needs to be slightly <br>
different). In that scenario, a &quot;drity&quot; solution is to have two r=
ecipes <br>
and have the final image pick the appropriate package. But this quickly <br=
>
does not scale well once you have recipes/packages depending on those or <b=
r>
if you have more than two flavors to support.<br>
<br>
The best practice is to use two distros.<br>
<br>
Cheers,<br>
Quentin<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#58588): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58588" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58588</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/95091628/4689=
568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/95091628/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000004a556205edac7fc3--

