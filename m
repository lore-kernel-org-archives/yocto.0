Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1AA2C021A0
	for <webhook@archiver.kernel.org>; Thu, 13 Feb 2025 21:38:24 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.5945.1739482698635661736
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2025 13:38:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=M1OE0JVM;
 spf=pass (domain: smile.fr, ip: 209.85.221.51, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-38dc6d55ebaso1650211f8f.1
        for <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 13:38:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1739482697; x=1740087497; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hUP7bT5xMDtMRT/zKdIGtD6j64l0sfvGWkCVp88hRMY=;
        b=M1OE0JVMK4eb9PQ8UccDUX4kB264yROc+NEGGTgLWwZ0uOIRUHrKY6BrkKYIJfUpaK
         7MeJ2oN1W90AJ357pvPUKtmuPAZtqDd1qPNYajneMx4QJssPE6y8F1J7mdwpxq5Z+jQs
         Bcte7qi5LG3bWxghdVixoTDN11cBzObEtigDA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739482697; x=1740087497;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hUP7bT5xMDtMRT/zKdIGtD6j64l0sfvGWkCVp88hRMY=;
        b=GykCmeIlnuigizio6uoVdnJ9/7TwD09bgjYgXrTU3/OBGkFi/tJBGcE6E6ZpFMwQ4h
         fhv9bDllW+LOWowi7hkwJqkhLT1BvR6/Uhpz9Pb7fxmqCt1m/AAPzgqLBEtFkTpFXXgP
         8pALW65zIwtTwKWYcCI75Z/HwDDKPF1YVMFQNXgc+xKWoQBm/Nyl2xS82+rGZiI8NmJB
         maoCf4L5BalThckR/K9B6lSvjIzZeyg/lHflBteYJQJIbAjTSp7C5H6Fi9rzNbi5hBkt
         swfp4zPiMcwTlC6xmtIns2uM3ujrFW0CeQmFrRgtBVncSCHYh4P+LAQNPEq9CBx1ls4g
         1GKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDjV+t3hv/Jfy+XlbJsH5rBGe3ToLdVOHZpaYeYVvngw5K84a/f1LoFXpQCEuZSbF/7bsHEg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzhlJi+zwspASwWJQA7NF4YuJr2q6I6o/2fMYr18kSrvtgB/N7I
	HmiXQmrsu4zUIenpiBNAjtK4suA3kRTHBDMCiPSNk/66a2KumjUFq3FHURyQEPxYXJd/8L1RHZH
	P9ZLRkbdnFr/UeYRwcQbks0pNjYNBA2VtgFv4sA==
X-Gm-Gg: ASbGncsoG0g6CzO57QV+Xsf2YNWpQfEk8LIt9R4zWAUFpmki32d+f2ssr7WU31FzRhQ
	CD3ohD5QzZ1JH6yyO1I44dXmbdLBEghW6VGNabrlewqmoYibK+jxpOPQrAnKB5jaOdXi0aFak
X-Google-Smtp-Source: AGHT+IHTfIu+5IOLNvns3yYgG7noacEjXfF6VeJB7sLW4dUrJOECvTqGHeo3FbZlnbHZhZM5XAFMBpp9acy84xn9pSY=
X-Received: by 2002:a5d:6f19:0:b0:386:374b:e8bc with SMTP id
 ffacd0b85a97d-38f24d10851mr5167444f8f.15.1739482696754; Thu, 13 Feb 2025
 13:38:16 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb9Fr9MFy5uub2_pTRWmVbt96OWBJ5ty+eAB9Qn+LYa_Wg@mail.gmail.com>
 <CANNYZj-PbWQDa5hAc5X6sqHVMvJ0QE01XXwytya8rprwvSsqag@mail.gmail.com>
 <d22a4cec5e317e62f1f44d8d9a810cf4745ccb48.camel@linuxfoundation.org> <Z65ER5YO6Ci2MAK0@ravine.members.linode.com>
In-Reply-To: <Z65ER5YO6Ci2MAK0@ravine.members.linode.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Thu, 13 Feb 2025 22:37:49 +0100
X-Gm-Features: AWEUYZmUVxHnMzHryN-TC7OhC3_VExi-MpLKl4psWs5s4FiqE3AU_l4LTwHjcEQ
Message-ID: <CAMSfU+5JA443jn_AQtGVNrV1mRZfVG5_x+0=Pi+ikFYNxUBh9Q@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 11 Feb. 2025 (WW07)
To: jsbronder@cold-front.org
Cc: richard.purdie@linuxfoundation.org, alex.kanavin@gmail.com, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	yocto-status@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003bbee3062e0ce071"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 21:38:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64809

--0000000000003bbee3062e0ce071
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeu. 13 f=C3=A9vr. 2025 =C3=A0 20:13, Justin Bronder via lists.openembed=
ded.org
<jsbronder=3Dcold-front.org@lists.openembedded.org> a =C3=A9crit :

> On 11/02/25 23:36 +0000, Richard Purdie via lists.openembedded.org wrote:
> > You used to be able to disable pull requests for six month periods, it
> > looks like you can no longer do that and it was a pain having to try
> > and remember anyway.
>
> Isn't this just 'Settings -> Moderation Options -> Interaction Limits'?
> It looks like you can restrict it to repository collaborators (which is a
> list under the repo owner's control) to 6 months.
>

It is! Thanks!
When creating a PR, users get a message "An owner of this repository has
limited the ability to open a pull request to users that are collaborators
on this repository."
Opening an Issue results in an "Unable to create issue." error (not nice).
and it is done on a repo basis.

I agree, this could be a sensible solution.

It's also exposed on the REST API,
> https://docs.github.com/en/rest/interactions/repos?apiVersion=3D2022-11-2=
8#set-interaction-restrictions-for-a-repository,
> which if you're willing to pull down the official github cli tool, gh,
> could go into a cron job fairly easily:
>
> gh api -X PUT \
>     /repos/openembedded/openembedded-core/interaction-limits \
>     -f 'limit=3Dcollaborators_only' \
>     -f 'expiry=3Dsix_months'
>
> I obviously couldn't test in the OpenEmbedded Org, but this worked both o=
n
> my personal repos and in a private (paid) organization.
>
--=20
> Justin Bronder
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#211364):
> https://lists.openembedded.org/g/openembedded-core/message/211364
> Mute This Topic: https://lists.openembedded.org/mt/111124663/4316185
> Group Owner: openembedded-core+owner@lists.openembedded.org
> Unsubscribe: https://lists.openembedded.org/g/openembedded-core/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Yoann Congal
Smile ECS - Tech expert

--0000000000003bbee3062e0ce071
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0jeu. 13=
 f=C3=A9vr. 2025 =C3=A0=C2=A020:13, Justin Bronder via <a href=3D"http://li=
sts.openembedded.org">lists.openembedded.org</a> &lt;jsbronder=3D<a href=3D=
"mailto:cold-front.org@lists.openembedded.org">cold-front.org@lists.openemb=
edded.org</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">On 11/02/25 23:36 +0000, Richard Purdie via <a href=
=3D"http://lists.openembedded.org" rel=3D"noreferrer" target=3D"_blank">lis=
ts.openembedded.org</a> wrote:<br>
&gt; You used to be able to disable pull requests for six month periods, it=
<br>
&gt; looks like you can no longer do that and it was a pain having to try<b=
r>
&gt; and remember anyway.<br>
<br>
Isn&#39;t this just &#39;Settings -&gt; Moderation Options -&gt; Interactio=
n Limits&#39;?=C2=A0 It looks like you can restrict it to repository collab=
orators (which is a list under the repo owner&#39;s control) to 6 months.<b=
r></blockquote><div><br></div><div>It is! Thanks!</div><div>When creating a=
 PR, users get a message &quot;An owner of this repository has limited the =
ability to open a pull request to users that are collaborators on this repo=
sitory.&quot;</div><div>Opening an Issue results in an &quot;<span class=3D=
"gmail-Toast-content">Unable to create issue.&quot; </span>error (not nice)=
.</div><div>and it is done on a repo basis.</div><div><br></div><div><div>I=
 agree, this could be a sensible solution.</div><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
It&#39;s also exposed on the REST API, <a href=3D"https://docs.github.com/e=
n/rest/interactions/repos?apiVersion=3D2022-11-28#set-interaction-restricti=
ons-for-a-repository" rel=3D"noreferrer" target=3D"_blank">https://docs.git=
hub.com/en/rest/interactions/repos?apiVersion=3D2022-11-28#set-interaction-=
restrictions-for-a-repository</a>, which if you&#39;re willing to pull down=
 the official github cli tool, gh, could go into a cron job fairly easily:<=
br>
<br>
gh api -X PUT \<br>
=C2=A0 =C2=A0 /repos/openembedded/openembedded-core/interaction-limits \<br=
>
=C2=A0 =C2=A0 -f &#39;limit=3Dcollaborators_only&#39; \<br>
=C2=A0 =C2=A0 -f &#39;expiry=3Dsix_months&#39;<br>
<br>
I obviously couldn&#39;t test in the OpenEmbedded Org, but this worked both=
 on my personal repos and in a private (paid) organization. <br></blockquot=
e><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
-- <br>
Justin Bronder<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#211364): <a href=3D"https://lists.openembedded.org/g/op=
enembedded-core/message/211364" rel=3D"noreferrer" target=3D"_blank">https:=
//lists.openembedded.org/g/openembedded-core/message/211364</a><br>
Mute This Topic: <a href=3D"https://lists.openembedded.org/mt/111124663/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.openembedded.org/m=
t/111124663/4316185</a><br>
Group Owner: <a href=3D"mailto:openembedded-core%2Bowner@lists.openembedded=
.org" target=3D"_blank">openembedded-core+owner@lists.openembedded.org</a><=
br>
Unsubscribe: <a href=3D"https://lists.openembedded.org/g/openembedded-core/=
unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.openembedded.org/=
g/openembedded-core/unsub</a> [<a href=3D"mailto:yoann.congal@smile.fr" tar=
get=3D"_blank">yoann.congal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div><fon=
t face=3D"Raleway, regular">Smile ECS - Tech expert<br></font></div></div><=
/div></div>

--0000000000003bbee3062e0ce071--

