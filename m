Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B405BC433FE
	for <webhook@archiver.kernel.org>; Tue, 18 Oct 2022 13:17:40 +0000 (UTC)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
 by mx.groups.io with SMTP id smtpd.web08.6721.1666099056524491571
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Oct 2022 06:17:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Uc+OdVqy;
 spf=pass (domain: gmail.com, ip: 209.85.166.52, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f52.google.com with SMTP id p16so11665520iod.6
        for <yocto@lists.yoctoproject.org>; Tue, 18 Oct 2022 06:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IqtNBVF2+kdOiudNvUA4LukTMfijaKBv1pviUr/TU34=;
        b=Uc+OdVqycG8WjV1NPw9WZktra4LLi7W868HdKCNsNGDWCit9yIzso9JP9M/udOSxPY
         6lx5XOBsQnCjFKcfvJ7VxnAIleP/VwhKQ8BRO3pQRkaz6z9VRIIIstt07d5BPp1930iF
         U1bw5S2prGsC54hkgH5+w7fXLzUK2atKihut86wVHEQuwhqOwtPKN92jQpvAWzbBtNZr
         vWw598KdXM+B7YI5hEkhDVUGfj63euIGB313JcVT4IpEYwEaH0WmKVZCHrwoDa795ywd
         chleu0QnaqznM5z1KM/co6SCDxr6hdsjwyuaCN/vCI+uiOon7Ae5HrjItqvLJGmMa140
         WzHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IqtNBVF2+kdOiudNvUA4LukTMfijaKBv1pviUr/TU34=;
        b=NBXPwFsVeaDg5qb1Jx+KbYtFEdlI3wQ9TqX4yH2n7lZK483NqWrGsGJ5iE6vybnArc
         7Cjv46RFw2eTvyq9XV27MuE9laUaRk6Ohh8zG3Wb/qU7yimKLwNvw4krf4F7K7FYwfWW
         W3QVUjKm+HsYi1P2327kdE74H4qsMiAl6sgPwH0TPtwWee54bDKpFZyhcDwgaBOGP9iv
         dmDlTjgGmYJ8dwr0ZBtTqvptcSlf/N4FX1/LLr6jIUGG1dQUXyEhzQW9rOnNYFNBvF2G
         rGD8CYKsiWbFvZxkkMTeZtk6FSxAePItvGRMJsaKKqv089BfR4SXmQixJjZKYlcXGyv9
         t7yA==
X-Gm-Message-State: ACrzQf1riHgwLfuIE25XJJnrQVOqU7+LbxjFj98Xh+HDiS8dPWY5bcRe
	l+wF3hH12VikCazRvv5+jDTXSeLbPb/eLQrbgO5x5TTX
X-Google-Smtp-Source: AMsMyM4de7yMIH8x7DI63NFfpITH/qgJnn+DxjP0HOrF+czVXS5mFf0chRWJhhtfgmEebCyhhKCx/iJ/odJMqL3TfRU=
X-Received: by 2002:a02:cf05:0:b0:363:a207:c3ff with SMTP id
 q5-20020a02cf05000000b00363a207c3ffmr1910698jar.178.1666099055623; Tue, 18
 Oct 2022 06:17:35 -0700 (PDT)
MIME-Version: 1.0
References: <Y0WtLKYWtdcM9wIp@Hephaistos.local> <CADkTA4PEob-LJpM_oEkxO-hbyLq5DnENFOaYzvkhnKvu8hziqQ@mail.gmail.com>
 <Y0gbF+3+kU0Z3UW8@aglaia.inside-m2m.de> <CADkTA4MmC_PCX8+XiXD_dX+aSnfBRtkoP0LzwyGi=PMNpArssQ@mail.gmail.com>
 <Y06GaXT/pwZ8eSS+@aglaia.inside-m2m.de>
In-Reply-To: <Y06GaXT/pwZ8eSS+@aglaia.inside-m2m.de>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 18 Oct 2022 09:17:24 -0400
Message-ID: <CADkTA4PhYfS_TCfnWEdLJWwmMtLvudSN4MrW=jLB45TC1Mvhww@mail.gmail.com>
Subject: Re: [yocto] Dealing with go dependencies in recipes - native docker-compose
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005f01af05eb4eead7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Oct 2022 13:17:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58355

--0000000000005f01af05eb4eead7
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 18, 2022 at 6:56 AM Konstantin Kletschke <
konstantin.kletschke@inside-m2m.de> wrote:

> On Sun, Oct 16, 2022 at 10:28:18PM -0400, Bruce Ashfield wrote:
>
> > FYI: Here's the very lightly tested RFC version of the recipe:
> >
> >
> https://git.yoctoproject.org/meta-virtualization/commit/?h=master-next&id=fa24cfc08b129de5c7ba36099985359cc0228630
>
> Thanks for the kind notification.
>
> My stuff is based upon kirkstone, I stuffed the recipe from master-next
> into my kirkstone build. One package of this new docker-compose is
> depending
> upon go-1.19 (kirkstone provides go-1.17) so I pulled in go-1.19 from
> langdale also into my kirkstone build.
>
> The compiling and building works just fine! The recipe(s) for
> docker-compose look impressive, I would not have expected them being so
> complex. But they work.
>
>
The amount of fetches is certainly impressive, but it is like that for any
non-vendored go application, whether we can see it or not.  When the
recipes are simple, all of the fetching and source structuring takes place
behind the scenes (I know, I'm stating the obvious), just in a manner we
don't control.

I just yank the complexity out to the front, and go directly to the
upstream sources of all the go libraries/packages. If we let go fetch it,
we have to both rely on the versions being in the fetch locations
"forever", or the infrastructure always being available (it should, but you
never know). We then have to setup our own go proxy/mirror infrastructure
to get around those two issues, and have now become curators of our own
repositories and infrastructure. That infrastructure isn't really hard to
setup, but in a maintenance mode, updating it, and getting new versions of
the code for CVEs, etc, could be challenging.

By doing the fetches directly, all of the established infrastructure,
archiving, mirrors, licensing, etc, "just work", and we can bump the SRCREV
of any dependency if a CVE or issue is found.

Definitely a balancing act, with no 'one true answer' yet, so I've been
going with what I know works :)

Two notes:
>
> After installing the package provides /bin/docker-compose. I realized
> other parties provide this as /usr/lib/docker/cli-plugins/docker-compose
> which make something like "docker compose version" working. For me this
> does not harm, only as remark. May be this is intentional.
>

Completely random. I just put it there. I'll make that adjustment in the
recipe.


> Upon investigating I realized the version reported by docker-compose is
> "dev" instead of the expected "v2.11.2".
>

I saw the same thing, and was looking into fixing it, I figured it was
worth getting the recipe out, before I did more tweaking.


>
> Great work, thank you!
>

I appreciate the testing and the report, very helpful!

Bruce


>
> Regards Konstantin
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58354):
> https://lists.yoctoproject.org/g/yocto/message/58354
> Mute This Topic: https://lists.yoctoproject.org/mt/94264665/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--0000000000005f01af05eb4eead7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, Oct 18, 2022 at 6:56 AM Konstantin Kletschk=
e &lt;<a href=3D"mailto:konstantin.kletschke@inside-m2m.de">konstantin.klet=
schke@inside-m2m.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">On Sun, Oct 16, 2022 at 10:28:18PM -0400, Bruce Ashfield=
 wrote:<br>
<br>
&gt; FYI: Here&#39;s the very lightly tested RFC version of the recipe:<br>
&gt; <br>
&gt; <a href=3D"https://git.yoctoproject.org/meta-virtualization/commit/?h=
=3Dmaster-next&amp;id=3Dfa24cfc08b129de5c7ba36099985359cc0228630" rel=3D"no=
referrer" target=3D"_blank">https://git.yoctoproject.org/meta-virtualizatio=
n/commit/?h=3Dmaster-next&amp;id=3Dfa24cfc08b129de5c7ba36099985359cc0228630=
</a><br>
<br>
Thanks for the kind notification.<br>
<br>
My stuff is based upon kirkstone, I stuffed the recipe from master-next<br>
into my kirkstone build. One package of this new docker-compose is dependin=
g<br>
upon go-1.19 (kirkstone provides go-1.17) so I pulled in go-1.19 from<br>
langdale also into my kirkstone build.<br>
<br>
The compiling and building works just fine! The recipe(s) for<br>
docker-compose look impressive, I would not have expected them being so<br>
complex. But they work.<br>
<br></blockquote><div><br></div><div><div class=3D"gmail_default" style=3D"=
font-size:small">The amount of fetches is certainly impressive, but it is l=
ike that for any non-vendored go application, whether we can see it or not.=
=C2=A0 When the recipes are simple, all of the fetching and source structur=
ing takes place behind the scenes (I know, I&#39;m stating the obvious), ju=
st in a manner we don&#39;t control.</div></div><div><br></div><div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">I just yank the complexity =
out to the front, and go directly to the upstream sources of all the go lib=
raries/packages. If we let go fetch it, we have to both rely on the version=
s being in the fetch locations &quot;forever&quot;, or the infrastructure a=
lways being available (it should, but you never know). We then have to setu=
p our own go proxy/mirror infrastructure to get around those two issues, an=
d have now become curators of our own repositories and infrastructure.  Tha=
t infrastructure isn&#39;t really hard to setup, but in a maintenance mode,=
 updating it, and getting new versions of the code for CVEs, etc, could be =
challenging.</div><div class=3D"gmail_default" style=3D"font-size:small"><b=
r></div><div class=3D"gmail_default" style=3D"font-size:small">By doing the=
 fetches directly, all of the established infrastructure, archiving, mirror=
s, licensing, etc, &quot;just work&quot;, and we can bump the SRCREV of any=
 dependency if a CVE or issue is found.</div><div class=3D"gmail_default" s=
tyle=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-size:small">Definitely a balancing act, with no &#39;one true answer&#39=
; yet, so I&#39;ve been going with what I know works :)</div><br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">
Two notes:<br>
<br>
After installing the package provides /bin/docker-compose. I realized<br>
other parties provide this as /usr/lib/docker/cli-plugins/docker-compose<br=
>
which make something like &quot;docker compose version&quot; working. For m=
e this<br>
does not harm, only as remark. May be this is intentional.<br></blockquote>=
<div><br></div><div><div class=3D"gmail_default" style=3D"font-size:small">=
Completely random. I just put it there. I&#39;ll make that adjustment in th=
e recipe.</div></div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
<br>
Upon investigating I realized the version reported by docker-compose is<br>
&quot;dev&quot; instead of the expected &quot;v2.11.2&quot;.<br></blockquot=
e><div><br></div><div><div class=3D"gmail_default" style=3D"font-size:small=
">I saw the same thing, and was looking into fixing it, I figured it was wo=
rth getting the recipe out, before I did more tweaking.</div></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Great work, thank you!<br></blockquote><div><br></div><div><div class=3D"gm=
ail_default" style=3D"font-size:small">I appreciate the testing and the rep=
ort, very helpful!</div><div class=3D"gmail_default" style=3D"font-size:sma=
ll"><br></div><div class=3D"gmail_default" style=3D"font-size:small">Bruce<=
/div></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">
<br>
Regards Konstantin<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58354): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58354" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58354</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94264665/1050=
810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/94264665/1050810</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruc=
e.ashfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--0000000000005f01af05eb4eead7--

