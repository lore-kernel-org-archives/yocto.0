Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F3EBC433F5
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 14:05:01 +0000 (UTC)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com
 [209.85.222.44])
 by mx.groups.io with SMTP id smtpd.web11.32511.1635170700928549004
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 07:05:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=C6rT2FxC;
 spf=pass (domain: gmail.com, ip: 209.85.222.44,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f44.google.com with SMTP id o12so18265828uap.0
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 07:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mzlH01h8/uhbS+Z2ykLvNZe9E8MYF1a1GsyiHPdeBak=;
        b=C6rT2FxCnUjvIUdvhAga48caVqAC99SnDf6oAD5nCZXDuwkUigzEZenGME9ugM8Ic2
         kjYXsBLUwFDn++A5wxNcp2dKvye4dMovVwRtbLShNQYg3mKlKx5LpedBTmzdMFOEll3M
         mE12pvov8zPOlgwEiBJB1SmTtoQbEbV1aGls4DI3bpcpIDcXNq2DVGpq9MMePvJrqSGD
         T5Fg3Sn6G56BqEZ5fp44ItT3wpeS0VXcTcMu+BzlSZK7NXsCwxZdUrtooG6nI3l9ofB8
         5v4S4mLTzoQwzItSJeFl4DjrZxr1jg8wvT/4b+w+d6tZ1aeQ/Yy3iikESgYi7WBwdRlw
         j3mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mzlH01h8/uhbS+Z2ykLvNZe9E8MYF1a1GsyiHPdeBak=;
        b=ZHfiTACVuVDMnfW9B1lmIFAHUxjJcJUWH225/NuzcuGqnnP0mDgvmU0Hpe6cIXVkTO
         Jtkrxn5EsdbmLgzYoroiZyresy9CmqBHr+IU64EzAkkhCtnDzzSSgx1we5116jEEXDRt
         JEXBSaoxOfKEqaNQQ/fKTWLe4mmRe72FbE4STCe91JOQ6M0ZrQ1zocxPkUcatmWpR1cZ
         YQxdlvs3pS7rDczOZlfnz8Wzi1sbYKjo4LmEzA7WgcmX92b68RSO+IUOKXfM7OModNmX
         B0p2kQoFovaxwcrM0FjkBW6+1pVaLiDzX0dC0VllQyzGIK9HWiwj7OhAgJ25BbX7I4w6
         lFcw==
X-Gm-Message-State: AOAM531NvqKWJTSshbUNcf9++aqWKn56LjUhYeUzwF9NAF7kwCqv8qgg
	ydmX0eIym8S6Zb+6MxrZcTyCHdAgnNSexk0rZpE=
X-Google-Smtp-Source: 
 ABdhPJwp/1X4N0U7T0RjEvKs7U0WstGWrWnz4VGEPzLJtZkGkYvrKwiVSaj3zEXgHUiJ2B5ZDzuM/Y/7mVKnKfGGP8A=
X-Received: by 2002:a67:ae47:: with SMTP id u7mr14714818vsh.7.1635170700133;
 Mon, 25 Oct 2021 07:05:00 -0700 (PDT)
MIME-Version: 1.0
References: <v8hs.1635165524206043434.Grp7@lists.yoctoproject.org>
In-Reply-To: <v8hs.1635165524206043434.Grp7@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 25 Oct 2021 16:04:48 +0200
Message-ID: 
 <CANNYZj9FR7j4ux4w7+uiJsSSW2yGm9T6NWw99O-VdVLuxzpARw@mail.gmail.com>
Subject: Re: [yocto] How to iherit class based on a conditional variable?
 #sysvinit #systemd
To: Bel Hadj Salem Talel <bhstalel@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ba888105cf2dd8d4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 14:05:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55143

--000000000000ba888105cf2dd8d4
Content-Type: text/plain; charset="UTF-8"

It's fine to inherit both classes and install both files without even
checking DISTRO_FEATURES. There's behind the scenes magic that will do the
right thing depending on what init manager is chosen in the distro config.

Alex

On Mon, 25 Oct 2021 at 14:38, Bel Hadj Salem Talel <bhstalel@gmail.com>
wrote:

> Hello,
>
> I have a recipe that installs a simple bash script to run on startup.
> As you all know, there is systemd and sysvinit.
> I need to add support for both init managers.
>
> I can do :
> SRC_URI_append = " ${@bb.utils.contains('DISTRO_FEATURES', 'systemd',
> 'file://script.service', 'file://script.sh', d)}"
>
> and I can do the same in all the tasks.
>
> The problem is, that I need to inherit either systemd or update-rc.d
>
> Is it possible to inherit them all, or how can I inherit something
> conditionally ?
>
> Thanks,
> Talel
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55135):
> https://lists.yoctoproject.org/g/yocto/message/55135
> Mute This Topic: https://lists.yoctoproject.org/mt/86575814/1686489
> Mute #sysvinit:https://lists.yoctoproject.org/g/yocto/mutehashtag/sysvinit
> Mute #systemd:https://lists.yoctoproject.org/g/yocto/mutehashtag/systemd
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000ba888105cf2dd8d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It&#39;s fine to inherit both classes and install bot=
h files without even checking DISTRO_FEATURES. There&#39;s behind the scene=
s magic that will do the right thing depending on what init manager is chos=
en in the distro config.</div><div><br></div><div>Alex<br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 25 =
Oct 2021 at 14:38, Bel Hadj Salem Talel &lt;<a href=3D"mailto:bhstalel@gmai=
l.com">bhstalel@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">Hello,<br><br>I have a recipe that installs a simp=
le bash script to run on startup.<br>As you all know, there is systemd and =
sysvinit.<br>I need to add support for both init managers.<br><br>I can do =
:<br>SRC_URI_append =3D &quot; ${@bb.utils.contains(&#39;DISTRO_FEATURES&#3=
9;, &#39;systemd&#39;, &#39;file://script.service&#39;, &#39;file://script.=
sh&#39;, d)}&quot;<br><br>and I can do the same in all the tasks.<br><br>Th=
e problem is, that I need to inherit either systemd or update-rc.d<br><br>I=
s it possible to inherit them all, or how can I inherit something condition=
ally ?<br><br>Thanks,<br>Talel<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55135): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55135" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55135</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86575814/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86575814/1686489</a><br>
Mute #sysvinit:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashta=
g/sysvinit" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject=
.org/g/yocto/mutehashtag/sysvinit</a><br>
Mute #systemd:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/systemd" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/systemd</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000ba888105cf2dd8d4--

