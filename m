Return-Path: <uvv.mail@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0FABC3DA4A
	for <webhook@archiver.kernel.org>; Mon,  5 Aug 2024 14:53:47 +0000 (UTC)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
 by mx.groups.io with SMTP id smtpd.web11.9897.1722869617860541451
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Aug 2024 07:53:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=N59BjpSe;
 spf=pass (domain: gmail.com, ip: 209.85.219.174, mailfrom: uvv.mail@gmail.com)
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e08724b2a08so8816365276.1
        for <yocto@lists.yoctoproject.org>; Mon, 05 Aug 2024 07:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722869617; x=1723474417; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7LqUw7w4h3J3mt3W/Vh6k39ThVJDiXIUmZzF80srkTA=;
        b=N59BjpSeI6WknZIAlEPVVOHZIaN7bsBSjd35hAKuU74EQJFJACXAZIBaa7mBGd+nnK
         arluGVOBJHabcFEr1ElCFd30h9Ge85nLqeHpO/0e581BWsTjdxSI0j78Uxv43bnRozNd
         O/5MdPtfVt4qsc1F+JSMIAwDWAf6TFl9bdLtGMAfsdW4DzQBAXPd4cxx+gVwCdrnPJPE
         vAZwHS+lYPMPngLfqLQwN9oN76wLbs+Q9E1yzyAoN/mxU17wZQZMZqrHLdIPcAVdvl5Z
         z8bpukim0FrXY8MODqEWTl0LKtMVUq/2JPb0Tdhm2zL+uNyRuDWY7PxLYv0HRZsmwVZ3
         qdCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722869617; x=1723474417;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7LqUw7w4h3J3mt3W/Vh6k39ThVJDiXIUmZzF80srkTA=;
        b=TWtW9lwjFwbRtJmLgDE0Ay8jE0P+clR7AaG3uO2J1A55Pn6S7TsfD3LXcTNs90KSbX
         DG1gz9VfCUPmjUyHImGViNMh8NNpUP7K/gfSLoMqeqm6vrzeEYdsuR6bzjQazSfQbdmo
         hulnNwZT44fWIz5n9W7iXV4VIF9d8cFvHJGOae9r4e+o0VE8yPb1awwk9REVYVerA64q
         /H05IhHKXyOuvHOHI1jIojWG50nqifRbNr1TiV5wZwCF8dEyRC7NvBJ8jsf+AZacAdnC
         vaaiY6YkDhC77hDHQLaKPja1NJsXGA0ZSNzK4kvGXNC3QGQH7VH3/tjczB0myxVKXgFX
         qbbQ==
X-Gm-Message-State: AOJu0YwATU44P95L8o+H27j4Dnyv8uw9knRRorKnuVk4hEmvPxGnPpz2
	UFlWAeuDZqNR3NrxGqdenn+QlAIBQFu3xv8fFFxr52lE9SaeCYTj+MK3sEjFEGVxOFNfy8fpG/3
	+BPa9SDjkMs06dlOZx81feXQmhSaU7Jlf
X-Google-Smtp-Source: AGHT+IFDYKJKq92Pib15LuoVG2672au4GgtlokRe7gHuEL40wEVRgQHCjHcx5ygTly3dUYoxXPzYn/CnNWC8MZ78bUc=
X-Received: by 2002:a25:ef46:0:b0:e0b:be99:1fd3 with SMTP id
 3f1490d57ef6-e0bde5217cbmr12632862276.48.1722869616706; Mon, 05 Aug 2024
 07:53:36 -0700 (PDT)
MIME-Version: 1.0
References: <q01G.1720763841204258580.2k2I@lists.yoctoproject.org>
In-Reply-To: <q01G.1720763841204258580.2k2I@lists.yoctoproject.org>
From: Vyacheslav Yurkov <uvv.mail@gmail.com>
Date: Mon, 5 Aug 2024 16:53:25 +0200
Message-ID: <CAKHfEahP6--RfW8tL=i4HOo2Nch_o+9T1fgPi_0zF165PwMObg@mail.gmail.com>
Subject: Re: [yocto] Inquiry Regarding Docker Execution Issue in overlayfs
 Rootfs Configuration
To: yocto@lists.yoctoproject.org, chwoo@ls-electric.com
Content-Type: multipart/alternative; boundary="0000000000007f8e2f061ef0d7ce"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Aug 2024 14:53:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63655

--0000000000007f8e2f061ef0d7ce
Content-Type: text/plain; charset="UTF-8"

Hey ChangHyun,
Sorry for the late response. Which modules do you use for overlayfs?

If you use any of the bbclasses, I recall I had to switch them off, because
as for now they can't handle a container. But I would be glad if you have a
patch to extend the functionality.

Regards,
Slava

On Fri, Jul 12, 2024, 07:57 chwoo via lists.yoctoproject.org <chwoo=
ls-electric.com@lists.yoctoproject.org> wrote:

> Dear Yocto developers,
>
> I hope this message finds you well. My name is ChangHyun Woo, and I am
> currently engaged in developing Embedded Linux devices.
>
> I have been using the recipe from '
> https://github.com/marcusfolkesson/meta-readonly-rootfs-overlay' to
> configure the rootfs. However, I have encountered an issue: after
> integrating Docker, I discovered that 'docker exec' does not function
> within the overlayfs rootfs.
>
> Despite extensive searches across various platforms, I have been unable to
> find a solution, prompting me to reach out to you for assistance. If I have
> contacted the wrong place, I kindly ask for guidance on where to direct my
> inquiry.
>
> Furthermore, if anyone has encountered and resolved a similar issue, I
> would greatly appreciate any advice or solutions you could provide.
>
> Thank you for your attention to this matter.
>
> Best regards,
> ChangHyun Woo
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63475):
> https://lists.yoctoproject.org/g/yocto/message/63475
> Mute This Topic: https://lists.yoctoproject.org/mt/107177614/4455192
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> uvv.mail@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000007f8e2f061ef0d7ce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hey ChangHyun,</div><div dir=3D"auto">Sorry for the =
late response. Which modules do you use for overlayfs?</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">If you use any of the bbclasses, I recall I =
had to switch them off, because as for now they can&#39;t handle a containe=
r. But I would be glad if you have a patch to extend the functionality.</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">Regards,</div><div dir=3D"a=
uto">Slava</div><div dir=3D"auto"><br><div class=3D"gmail_quote" dir=3D"aut=
o"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 12, 2024, 07:57 chwoo =
via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &l=
t;chwoo=3D<a href=3D"mailto:ls-electric.com@lists.yoctoproject.org">ls-elec=
tric.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><p>Dear Yocto developers,</p>
<p>I hope this message finds you well. My name is ChangHyun Woo, and I am c=
urrently engaged in developing Embedded Linux devices.</p>
<p>I have been using the recipe from &#39;<a href=3D"https://github.com/mar=
cusfolkesson/meta-readonly-rootfs-overlay" rel=3D"noreferrer noreferrer" ta=
rget=3D"_blank">https://github.com/marcusfolkesson/meta-readonly-rootfs-ove=
rlay</a>&#39; to configure the rootfs. However, I have encountered an issue=
: after integrating Docker, I discovered that &#39;docker exec&#39; does no=
t function within the overlayfs rootfs.</p>
<p>Despite extensive searches across various platforms, I have been unable =
to find a solution, prompting me to reach out to you for assistance. If I h=
ave contacted the wrong place, I kindly ask for guidance on where to direct=
 my inquiry.</p>
<p>Furthermore, if anyone has encountered and resolved a similar issue, I w=
ould greatly appreciate any advice or solutions you could provide.</p>
<p>Thank you for your attention to this matter.</p>
<p>Best regards,<br>ChangHyun Woo</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63475): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63475" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/63475</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107177614/445=
5192" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/mt/107177614/4455192</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:uvv.mail@gmail.com" target=3D"_blank"=
 rel=3D"noreferrer">uvv.mail@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div></div>

--0000000000007f8e2f061ef0d7ce--

