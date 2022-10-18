Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B204C433FE
	for <webhook@archiver.kernel.org>; Tue, 18 Oct 2022 17:39:48 +0000 (UTC)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
 by mx.groups.io with SMTP id smtpd.web11.46.1666114785977162632
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Oct 2022 10:39:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=k0HSaiU5;
 spf=pass (domain: gmail.com, ip: 209.85.166.54, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f54.google.com with SMTP id y80so12364338iof.3
        for <yocto@lists.yoctoproject.org>; Tue, 18 Oct 2022 10:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=H6X3kqt+jXp090AVJPGCRSuKDBvl/2RO28E1GfStf2c=;
        b=k0HSaiU5bPkn3zbrXQ1Bb6AY2ArtIuLwOfcFVQYuse0gC/I2fugh8xZU8GdiZOl47d
         dvutOAVEjbvBUi0fsiO3JRwfGzqhv02w30QsB9bXEiPWJhtrffc02v2m71Mgct5rFqcY
         j3pJ6Uy1Sq6lq6mpu/6vB3hrACNd1QLWZKa0qMn4MgVzYREPDkkWKqJmjNJR2ZS6b1g8
         8Z0iKDsvgbgYf2gMAGlyliuDUNRagb5dHqXhaAYsKbqRqyhoRdNI9Sujrw+6x8SjRTQQ
         Sh/7ZwLqOxnEsc00qDIk+sxPnfOONTA7Ec7CqMflVMMfOoFrA2Zsk+rOQhv5LDYXQHJN
         mUGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H6X3kqt+jXp090AVJPGCRSuKDBvl/2RO28E1GfStf2c=;
        b=Wd/ZpOuhEBAS4uPkwSEqAXicC6y79ueoifmxi6SmbtYEL4nxghzkBqVfDaq6taZIQF
         wdVC+fcds+LHU0zw5PGDYfkZXo2T1dtqdJV5exSZBdyiaU3b/pOkidz6AdTDLFqtL668
         M4FQ0YVqLuQCWE7dlz6ICqV1PcA+RkOfklhNVhIBp+qEUffm/Dbq+9Q/xuMuXPe70ftl
         k1ldvGVpRCCnkT4SMKFzBVo7wxDgTgN9iFcsN+/FGI+DT0pFeVtzY1egtKJS4NnKbCck
         vH793JRiCKWjm3AY+ZLYOUtVICHF+LRTNnZesdlyYvTAGUbIbe8wnl5DppX8f4aesKzW
         tElQ==
X-Gm-Message-State: ACrzQf3YJtjpUwQAiiuoTgOKFwNk9FYWlKPWHpqk/d0ZG4SfTsuT/bmB
	LLJapBPwoTF12NbSHVa4I/3HQq1gBgTbH0i/VIk=
X-Google-Smtp-Source: AMsMyM7Ly47YqmjsFRuDpx+SXaug6gTKl0XdFC5ZOCseV0JinFzuB8LbA080qY1BqC6NdU3WJJ27ZRtPqI353TIt3ZQ=
X-Received: by 2002:a6b:3ec3:0:b0:6bb:d3ac:61d4 with SMTP id
 l186-20020a6b3ec3000000b006bbd3ac61d4mr2281443ioa.160.1666114785130; Tue, 18
 Oct 2022 10:39:45 -0700 (PDT)
MIME-Version: 1.0
References: <Y0WtLKYWtdcM9wIp@Hephaistos.local> <CADkTA4PEob-LJpM_oEkxO-hbyLq5DnENFOaYzvkhnKvu8hziqQ@mail.gmail.com>
 <Y0gbF+3+kU0Z3UW8@aglaia.inside-m2m.de> <CADkTA4MmC_PCX8+XiXD_dX+aSnfBRtkoP0LzwyGi=PMNpArssQ@mail.gmail.com>
 <Y06GaXT/pwZ8eSS+@aglaia.inside-m2m.de> <171F2C43CEC2B33F.27826@lists.yoctoproject.org>
In-Reply-To: <171F2C43CEC2B33F.27826@lists.yoctoproject.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 18 Oct 2022 13:39:34 -0400
Message-ID: <CADkTA4ONwOMCAPexh+_srLiPm+TMs1pKiXCWPqfM+1FUy9X_yQ@mail.gmail.com>
Subject: Re: [yocto] Dealing with go dependencies in recipes - native docker-compose
To: bruce.ashfield@gmail.com
Cc: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ec531b05eb529346"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Oct 2022 17:39:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58358

--000000000000ec531b05eb529346
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 18, 2022 at 9:17 AM Bruce Ashfield via lists.yoctoproject.org
<bruce.ashfield=gmail.com@lists.yoctoproject.org> wrote:

>
>
> On Tue, Oct 18, 2022 at 6:56 AM Konstantin Kletschke <
> konstantin.kletschke@inside-m2m.de> wrote:
>
>> On Sun, Oct 16, 2022 at 10:28:18PM -0400, Bruce Ashfield wrote:
>>
>> > FYI: Here's the very lightly tested RFC version of the recipe:
>> >
>> >
>> https://git.yoctoproject.org/meta-virtualization/commit/?h=master-next&id=fa24cfc08b129de5c7ba36099985359cc0228630
>>
>> Thanks for the kind notification.
>>
>> My stuff is based upon kirkstone, I stuffed the recipe from master-next
>> into my kirkstone build. One package of this new docker-compose is
>> depending
>> upon go-1.19 (kirkstone provides go-1.17) so I pulled in go-1.19 from
>> langdale also into my kirkstone build.
>>
>> The compiling and building works just fine! The recipe(s) for
>> docker-compose look impressive, I would not have expected them being so
>> complex. But they work.
>>
>>
> The amount of fetches is certainly impressive, but it is like that for any
> non-vendored go application, whether we can see it or not.  When the
> recipes are simple, all of the fetching and source structuring takes place
> behind the scenes (I know, I'm stating the obvious), just in a manner we
> don't control.
>
> I just yank the complexity out to the front, and go directly to the
> upstream sources of all the go libraries/packages. If we let go fetch it,
> we have to both rely on the versions being in the fetch locations
> "forever", or the infrastructure always being available (it should, but you
> never know). We then have to setup our own go proxy/mirror infrastructure
> to get around those two issues, and have now become curators of our own
> repositories and infrastructure. That infrastructure isn't really hard to
> setup, but in a maintenance mode, updating it, and getting new versions of
> the code for CVEs, etc, could be challenging.
>
> By doing the fetches directly, all of the established infrastructure,
> archiving, mirrors, licensing, etc, "just work", and we can bump the SRCREV
> of any dependency if a CVE or issue is found.
>
> Definitely a balancing act, with no 'one true answer' yet, so I've been
> going with what I know works :)
>
> Two notes:
>>
>> After installing the package provides /bin/docker-compose. I realized
>> other parties provide this as /usr/lib/docker/cli-plugins/docker-compose
>> which make something like "docker compose version" working. For me this
>> does not harm, only as remark. May be this is intentional.
>>
>
> Completely random. I just put it there. I'll make that adjustment in the
> recipe.
>
>
>> Upon investigating I realized the version reported by docker-compose is
>> "dev" instead of the expected "v2.11.2".
>>
>
> I saw the same thing, and was looking into fixing it, I figured it was
> worth getting the recipe out, before I did more tweaking.
>

emux86-64-c9 login: root

root@qemux86-64-c9:~# /usr/lib/docker/cli-plugins/docker-compose version

Docker Compose version v2.11.2

Cheers,

Bruce


>
>>
>> Great work, thank you!
>>
>
> I appreciate the testing and the report, very helpful!
>
> Bruce
>
>
>>
>> Regards Konstantin
>>
>>
>>
>>
>>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await thee
> at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58355):
> https://lists.yoctoproject.org/g/yocto/message/58355
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

--000000000000ec531b05eb529346
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, Oct 18, 2022 at 9:17 AM Bruce Ashfield via =
<a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;br=
uce.ashfield=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.co=
m@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, Oct 18, 2022 at 6:56 AM Konstantin Kletschk=
e &lt;<a href=3D"mailto:konstantin.kletschke@inside-m2m.de" target=3D"_blan=
k">konstantin.kletschke@inside-m2m.de</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">On Sun, Oct 16, 2022 at 10:28:18PM -04=
00, Bruce Ashfield wrote:<br>
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
<br></blockquote><div><br></div><div><div style=3D"font-size:small">The amo=
unt of fetches is certainly impressive, but it is like that for any non-ven=
dored go application, whether we can see it or not.=C2=A0 When the recipes =
are simple, all of the fetching and source structuring takes place behind t=
he scenes (I know, I&#39;m stating the obvious), just in a manner we don&#3=
9;t control.</div></div><div><br></div><div><div style=3D"font-size:small">=
I just yank the complexity out to the front, and go directly to the upstrea=
m sources of all the go libraries/packages. If we let go fetch it, we have =
to both rely on the versions being in the fetch locations &quot;forever&quo=
t;, or the infrastructure always being available (it should, but you never =
know). We then have to setup our own go proxy/mirror infrastructure to get =
around those two issues, and have now become curators of our own repositori=
es and infrastructure.  That infrastructure isn&#39;t really hard to setup,=
 but in a maintenance mode, updating it, and getting new versions of the co=
de for CVEs, etc, could be challenging.</div><div style=3D"font-size:small"=
><br></div><div style=3D"font-size:small">By doing the fetches directly, al=
l of the established infrastructure, archiving, mirrors, licensing, etc, &q=
uot;just work&quot;, and we can bump the SRCREV of any dependency if a CVE =
or issue is found.</div><div style=3D"font-size:small"><br></div><div style=
=3D"font-size:small">Definitely a balancing act, with no &#39;one true answ=
er&#39; yet, so I&#39;ve been going with what I know works :)</div><br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
Two notes:<br>
<br>
After installing the package provides /bin/docker-compose. I realized<br>
other parties provide this as /usr/lib/docker/cli-plugins/docker-compose<br=
>
which make something like &quot;docker compose version&quot; working. For m=
e this<br>
does not harm, only as remark. May be this is intentional.<br></blockquote>=
<div><br></div><div><div style=3D"font-size:small">Completely random. I jus=
t put it there. I&#39;ll make that adjustment in the recipe.</div></div><di=
v><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Upon investigating I realized the version reported by docker-compose is<br>
&quot;dev&quot; instead of the expected &quot;v2.11.2&quot;.<br></blockquot=
e><div><br></div><div><div style=3D"font-size:small">I saw the same thing, =
and was looking into fixing it, I figured it was worth getting the recipe o=
ut, before I did more tweaking.</div></div></div></div></blockquote><div><b=
r></div><div>





<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:14px;line-height:no=
rmal;font-family:&quot;Andale Mono&quot;;color:rgb(161,161,161);background-=
color:rgb(0,0,0)"><span class=3D"gmail-s1" style=3D"font-variant-ligatures:=
no-common-ligatures">emux86-64-c9 login: root</span></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:14px;line-height:no=
rmal;font-family:&quot;Andale Mono&quot;;color:rgb(161,161,161);background-=
color:rgb(0,0,0)"><span class=3D"gmail-s1" style=3D"font-variant-ligatures:=
no-common-ligatures">root@qemux86-64-c9:~# /usr/lib/docker/cli-plugins/dock=
er-compose version</span></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:14px;line-height:no=
rmal;font-family:&quot;Andale Mono&quot;;color:rgb(161,161,161);background-=
color:rgb(0,0,0)"><span class=3D"gmail-s1" style=3D"font-variant-ligatures:=
no-common-ligatures">Docker Compose version v2.11.2</span></p></div><div>=
=C2=A0</div><div><div class=3D"gmail_default" style=3D"font-size:small">Che=
ers,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div>=
<div class=3D"gmail_default" style=3D"font-size:small">Bruce</div><br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div cl=
ass=3D"gmail_quote"><div>=C2=A0</div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">
<br>
Great work, thank you!<br></blockquote><div><br></div><div><div style=3D"fo=
nt-size:small">I appreciate the testing and the report, very helpful!</div>=
<div style=3D"font-size:small"><br></div><div style=3D"font-size:small">Bru=
ce</div></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
<br>
Regards Konstantin<br>
<br>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
>- Thou shalt not follow the NULL pointer, for chaos and madness await thee=
 at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br=
><br></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58355): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58355" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58355</a><br>
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

--000000000000ec531b05eb529346--

