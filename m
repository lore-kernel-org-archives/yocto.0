Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A7A3C4829A
	for <webhook@archiver.kernel.org>; Tue, 13 Feb 2024 14:29:05 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.12848.1707834544732447071
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Feb 2024 06:29:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VE/aKJVj;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: jpewhacker@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5101cd91017so1155538e87.2
        for <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 06:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707834543; x=1708439343; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TZxM+l1J9aW3KXgJ0p6VZHF5qd0JjDrRQ40KdYUyUkw=;
        b=VE/aKJVjPHQVOSh59/a/T3BKWIsOm+hqgz5vovhUcOArcl5HKST69svnGyS9u9Gcle
         2VYLXnDUUervWOamXuR9JqgShZCrAHho+ahQZ58doUxe2nGYsajTFpCc6NUNMy5xS41O
         odIAHL0lC6a9tde0aZdn87Ve1Ar5R4e43TsBxtWPPk2nw4EE3GvM1Mk0yaZhuWlngP87
         nhz7sFSPWdMnPkj0qqrZU95LHNvy7VTP4K9VMHpK7LoMcfh9RYIypiwxZEdJ9hz1bNxm
         he9WelscrVD2oAx2rNdKEqRA1oEfvbTPlcB/JcdNZKZIxXE+odNsVm25IeZVjPqO3NZn
         lFDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707834543; x=1708439343;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TZxM+l1J9aW3KXgJ0p6VZHF5qd0JjDrRQ40KdYUyUkw=;
        b=Pn3kLhOB/Iy76PLpaWCyBsoPoBomin6QArEhLXRlqKq0Tg1pqjNkaIhw4Itnn1wxvQ
         QNVohCHT7HH0vTIym+ZeceFGwfc/HFT7o1r3u0p7qLLFrZ2kG5in2wao07lt8sVSER4v
         koH7xlOzykI55L4L8xPuHEozv1fBu0CCh2KMAdZHfRR7Y4zEN6fVz81XO0xzMRtIaj3M
         7b5t6OcYgQ15YUftE29H/aIFz9960JO4Yw086mBCYSbWLL/5i38fbBNPfaPY+cW/jzzb
         ut4PA1CC/4UyuXpgdxDsMqUV4W7sKaBIQqN7ZA715FzzJ5QIpo3Bm735nmfaJeJuc7Ur
         OW7A==
X-Forwarded-Encrypted: i=1; AJvYcCV+hE1xSKtVZdgfrQSM8g+hHDXZ+tryiklU6y5wQ7Cqzg/NqNInwygaJ+xk8ah6mlPMeIYzlNjQSPc2ol44yzakzfzlm2E8IkGHhpu/
X-Gm-Message-State: AOJu0YxOvwxgLf3zVSMyV1u1+hSEeWZBX7T6DOyZ1Vhmci8VSnEmj7al
	T4m+TqWWeV50Rnkh6ul1oXsYS096qQrEqRLV4Zh0RJocOVJt7bmv8PXis4vrYEHu7lbGMpXV8oU
	TKOC+dx5eJO9AOmZWyZ5JYzaCvBc=
X-Google-Smtp-Source: AGHT+IHw6XJQAbN8hwPNO+L47gbyiYLSWRKRiGQ8pfNNSQsaJGRnyFsX8KppenI38RTnVWWnV1HUF+PbkUOk85aBsCY=
X-Received: by 2002:ac2:464f:0:b0:511:81da:87d with SMTP id
 s15-20020ac2464f000000b0051181da087dmr6362236lfo.39.1707834542655; Tue, 13
 Feb 2024 06:29:02 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
 <17ACA59E7A7FD97B.16230@lists.openembedded.org> <CANNYZj9X5qRSup7i9S=rtRpwo5nCNHp8VJOZAuvu5JzqhLYD_g@mail.gmail.com>
 <f1c9d0f8cbf8ea1972aafac0c29690ca400178d7.camel@linuxfoundation.org>
 <CANNYZj8tyOy=z3L=uM9L_R8uP6eZSUkYXm9BwvsU+ERpE9QcZw@mail.gmail.com>
 <018185898b86e2fccabf68570a6aec6039a0c6d6.camel@linuxfoundation.org>
 <CANNYZj_UMqZe+hDs2RzOPaLZzRmyg=8X74+HCwytN5616jZgNg@mail.gmail.com>
 <e26e53be93a4f34b75e3e66becbaa4c6ac15133d.camel@linuxfoundation.org> <CANNYZj_GFnmvmYRNGBFkivTNY7Xi-Ok3GoDEJ7+wO3A=fW3JQg@mail.gmail.com>
In-Reply-To: <CANNYZj_GFnmvmYRNGBFkivTNY7Xi-Ok3GoDEJ7+wO3A=fW3JQg@mail.gmail.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Tue, 13 Feb 2024 07:28:51 -0700
Message-ID: <CAJdd5Ga9nd+smcy2426QKTEF1nOPQhqOLpXrFmb0w9bb4Cov4g@mail.gmail.com>
Subject: Re: [OE-core] Core workflow: sstate for all, bblock/bbunlock, tools
 for why is sstate not being reused?
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="000000000000400b670611443760"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 14:29:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62480

--000000000000400b670611443760
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 13, 2024, 7:05=E2=80=AFAM Alexander Kanavin <alex.kanavin@gmail=
.com>
wrote:

> On Tue, 13 Feb 2024 at 14:44, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > In theory you can start a local hash server and then report all the
> > hashes to it?
>
> Yes, but I'd like to replicate what bitbake does: check configuration,
> start the local server if needed, and only then do the mass-import
> from the file.
>

Sorry for chiming in so late; I think you are on the right track though.
Exporting/importing bb_unihashes.dat is the think to do instead t of the
entire database (which you may not even have if it's remote). That should
at least let you reuse any sstate file that is in that file. Importing the
data as the new cache is (probably) fine and the easy first step, but be
aware it means you probably won't be able to find equivalent hashes that
are derived from the imported data, so you'll be looking at more rebuilding
than you might expect if you change something. Reporting the hashes to the
server might be an option also, but I don't know if the cache file has all
the information to do that correctly... Have to look



> Alex
>

--000000000000400b670611443760
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, Feb 13, 2024, 7:05=E2=80=AFAM Alexander Kanavi=
n &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Tue, 13 Feb 2024 at 1=
4:44, Richard Purdie<br>
&lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank"=
 rel=3D"noreferrer">richard.purdie@linuxfoundation.org</a>&gt; wrote:<br>
&gt; In theory you can start a local hash server and then report all the<br=
>
&gt; hashes to it?<br>
<br>
Yes, but I&#39;d like to replicate what bitbake does: check configuration,<=
br>
start the local server if needed, and only then do the mass-import<br>
from the file.<br></blockquote></div></div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">Sorry for chiming in so late; I think you are on the right tr=
ack though. Exporting/importing bb_unihashes.dat is the think to do instead=
 t of the entire database (which you may not even have if it&#39;s remote).=
 That should at least let you reuse any sstate file that is in that file. I=
mporting the data as the new cache is (probably) fine and the easy first st=
ep, but be aware it means you probably won&#39;t be able to find equivalent=
 hashes that are derived from the imported data, so you&#39;ll be looking a=
t more rebuilding than you might expect if you change something. Reporting =
the hashes to the server might be an option also, but I don&#39;t know if t=
he cache file has all the information to do that correctly... Have to look<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"au=
to"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
Alex<br>
</blockquote></div></div></div>

--000000000000400b670611443760--

