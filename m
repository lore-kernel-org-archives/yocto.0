Return-Path: <fede@evolware.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8697C4332F
	for <webhook@archiver.kernel.org>; Fri,  9 Dec 2022 04:29:06 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web10.4803.1670560143669043889
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Dec 2022 20:29:03 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.208.52, mailfrom: fede.evol@gmail.com)
Received: by mail-ed1-f52.google.com with SMTP id r26so1572957edc.10
        for <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 20:29:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hGjxUh4TzO+FEjFamah5qn+Dx1Dgc51hnIUVSg9r1zE=;
        b=L+gHm+jtorbGZu5Axz/LEf0tfmk84GaLTutGF+jXcEcQVNGrFyp9yPuhCtHOjw7EV3
         oHsE1FXZ2q5+io8obuuutIJHas8ziA1AVkwYMglm6k0lGE+O+qBQxhWol7325EU+SY6/
         AEKfk+3M0CtEVUMExafHbHzWvFwKEvvBJfvtbHyVo7vS/9NFvR1rtT7c5SJhdU0OCwpi
         hMDwX7xnHTe7lIskkfJQISwYHAigt89Iu6MSWQCi+J44MtCqnygZUhlLrnxfNj69ZXaN
         UlcpYqnGRiuzazm9Ouah6oEb+Vbqubxwr1FZNdnz6lgFsTy/uh/L2CGuE0VjM+d4xQSP
         0MsA==
X-Gm-Message-State: ANoB5pmQvY0xgJjGMVOQOlnUtZBwuAvKvCScVSU6V3Pm7OL5suSnfasP
	I32lsxsfhruhxplF0NR+BOaH1WC3CsNbdD1UKZ4=
X-Google-Smtp-Source: AA0mqf52d5fyktM0lrp6wTgk7nx5H+1YtEVQoe5bQPs4NzDat/kNBwdT+x2NhyNvZGCQlKnkHtJ3ETyVLf+BuwJ6HhQ=
X-Received: by 2002:aa7:d44d:0:b0:46d:7d3c:30cc with SMTP id
 q13-20020aa7d44d000000b0046d7d3c30ccmr3857435edr.322.1670560141943; Thu, 08
 Dec 2022 20:29:01 -0800 (PST)
MIME-Version: 1.0
References: <oLwT.1670518592065738278.wqdu@lists.yoctoproject.org>
In-Reply-To: <oLwT.1670518592065738278.wqdu@lists.yoctoproject.org>
From: Federico Pellegrin <fede@evolware.org>
Date: Fri, 9 Dec 2022 05:28:50 +0100
Message-ID: <CAM6O0ZimX8=tH9hOYM9zV2NVL5zStD4MdqMiOojJrpU3ajyUbw@mail.gmail.com>
Subject: Re: [yocto] Recipe to install third-party RPM #bitbake
To: dspore@parraid.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d6274405ef5d97f0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 Dec 2022 04:29:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58769

--000000000000d6274405ef5d97f0
Content-Type: text/plain; charset="UTF-8"

Hello David,
There is nothing really special compared to "usual" recipes or whatever you
use RPM or another packager.

In short:
1) You should create (likely in a layer of yours) the recipe for your
"third-party" package. You should put in this package the right
dependencies (using either DEPENDS or RDEPENDS, depending if it is build or
runtime dependency) and of course any other parts needed to build/install
it.
2) Of course should your new package depend on packages that are not
already in Yocto, you should create as well recipes for those. If they are
already in Yocto, you will just refer to them.
3) You should do (in your layer) an image recipe or extend the
core-image-base, adding your new recipe. You don't really need to add all
the dependencies there but just your final package, the dependencies will
be automatically (depending on the definitions in recipes) be pulled in.
4) the fact that is a RPM (or deb, or ipk) is just a detail, things will
work in image generation the same way. What will change is then of course
possibly how you manage those packages at runtime (ie. updates or the like).

I guess most of the things shortly mentioned above are then well documented
here:
https://wiki.yoctoproject.org/wiki/Building_your_own_recipes_from_first_principles

Hope that helps,
Federico



Il giorno gio 8 dic 2022 alle ore 17:56 <dspore@parraid.com> ha scritto:

> Hello,
> I need to deploy a third-party package as part of my Yocto image.  I am
> not sure how to build a recipe that will automate the installation of this
> RPM and dependencies.  If any of these dependent packages are not already
> included in the core-image-base image, I'll have to put together recipes
> for those as well and add them to the main recipe for the package (the RPM
> I want to install).  I have a basic idea of what needs to be done but am
> fuzzy on the detail.  I'll need to create a recipe that points to my RPM
> file via SRC_URI, but I am not sure what commands need to be included to
> make sure the RPM is seen as a package I can add via my local.conf.  The
> goal is to have the package installed in the final image such that the
> software is running as if the RPM was installed manually at the command
> prompt on the target board.   I've done a lot of googling, but the few
> posts I could find contain bits of information that aren't that useful to a
> Yocto newbie.  Note that I am using latest version of Kirkstone.
>
> Thanks!
>
> David
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58764):
> https://lists.yoctoproject.org/g/yocto/message/58764
> Mute This Topic: https://lists.yoctoproject.org/mt/95542036/5117409
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> fede@evolware.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000d6274405ef5d97f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hello David,</div><div>There is nothin=
g really special compared to &quot;usual&quot; recipes or whatever you use =
RPM or another packager.</div><div><br></div><div>In short:</div><div>1) Yo=
u should create (likely in a layer of yours) the recipe for your &quot;thir=
d-party&quot; package. You should put in this package the right dependencie=
s (using either DEPENDS or RDEPENDS, depending if it is build or runtime de=
pendency) and of course any other parts needed to build/install it.<br></di=
v><div>2) Of course should your new package depend on packages that are not=
 already in Yocto, you should create as well recipes for those. If they are=
 already in Yocto, you will just refer to them.<br></div><div>3) You should=
 do (in your layer) an image recipe or extend the core-image-base, adding y=
our new recipe. You don&#39;t really need to add all the dependencies there=
 but just your final package, the dependencies will be automatically (depen=
ding on the definitions in recipes) be pulled in.</div><div>4) the fact tha=
t is a RPM (or deb, or ipk) is just a detail, things will work in image gen=
eration the same way. What will change is then of course possibly how you m=
anage those packages at runtime (ie. updates or the like).</div><div><br></=
div><div>I guess most of the things shortly mentioned above are then well d=
ocumented here: <a href=3D"https://wiki.yoctoproject.org/wiki/Building_your=
_own_recipes_from_first_principles">https://wiki.yoctoproject.org/wiki/Buil=
ding_your_own_recipes_from_first_principles</a> <br></div><div><br></div><d=
iv>Hope that helps,</div><div>Federico</div><div><br></div><div><br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">I=
l giorno gio 8 dic 2022 alle ore 17:56 &lt;<a href=3D"mailto:dspore@parraid=
.com">dspore@parraid.com</a>&gt; ha scritto:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">Hello,<br>I need to deploy a third-party packa=
ge as part of my Yocto image.=C2=A0 I am not sure how to build a recipe tha=
t will automate the installation of this RPM and dependencies.=C2=A0 If any=
 of these dependent packages are not already included in the core-image-bas=
e image, I&#39;ll have to put together recipes for those as well and add th=
em to the main recipe for the package (the RPM I want to install).=C2=A0 I =
have a basic idea of what needs to be done but am fuzzy on the detail.=C2=
=A0 I&#39;ll need to create a recipe that points to my RPM file via=C2=A0SR=
C_URI, but I am not sure what commands need to be included to make sure the=
 RPM is seen as a package I can add via my local.conf.=C2=A0 The goal is to=
 have the package installed in the final image such that the software is ru=
nning as if the RPM was installed manually at the command prompt on the tar=
get board.=C2=A0 =C2=A0I&#39;ve done a lot of googling, but the few posts I=
 could find contain bits of information that aren&#39;t that useful to a Yo=
cto newbie.=C2=A0 Note that I am using latest version of Kirkstone.<br><br>=
Thanks!<br><br>David
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58764): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58764" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58764</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/95542036/5117=
409" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/95542036/5117409</a><br>
Mute #bitbake:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/bitbake" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/bitbake</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:fede@evolware.org" target=3D"_blank">fede@evolwa=
re.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000d6274405ef5d97f0--

