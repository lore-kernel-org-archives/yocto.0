Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C163C433EF
	for <webhook@archiver.kernel.org>; Thu,  3 Mar 2022 12:54:00 +0000 (UTC)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
 [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web10.10153.1646312039426878297
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 04:53:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fzHOL6WO;
 spf=pass (domain: gmail.com, ip: 209.85.166.53, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f53.google.com with SMTP id d62so5547232iog.13
        for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 04:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fcEWL9lON9Qx2fsxI2SJYn/pEOvSUR5MiED2ZVpT33A=;
        b=fzHOL6WOboIqRcvGVgaw5vGS2shluypttND1R0PhnhfI3QGZYtS71jseBluqU2h7dn
         f7jMR942cqzSp7aNxOYQ8Bs1TBRLs4EJseFEq1SIVr9lsr8dcciJRpZsN3/H3i1QPVVq
         WHaG22I15sNDgsu6EELEPUwT7P3sJVkwFYM0dU40iGmZkfPuUGxYt4zkbYYe5GA+NPhT
         RGsIHCJvHOZqMzyetmnEE+bTTwvfvA+wcW/TVUsJHKFtcet7CYoTJK849JA0KccqW1tn
         K85Aik0bYD+OqUCUiZDzPsBlaiUhwTbVuMjaN4W9D3zSvvzYpQofF7comCJ7YCHzVBx7
         zj1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fcEWL9lON9Qx2fsxI2SJYn/pEOvSUR5MiED2ZVpT33A=;
        b=WVEGQ2igDpXqwGJ2lwJTNE4P9hs3hzaAqalbF0LTo6wTQCtx6P3Meekoxdeprabvsw
         6sip1PhyqsKLtGx1+V9mNhEXRI4gffqtflw0HKO/tjrFMcVvXZlx9mIvSM/UWZA9DVWJ
         LfUUwwouaJVBRGoWzMi8ZDiIQiyyZFMdfdqdq5QFiH36FnZ0aIdZSN3MkgaN2rmI+aGA
         lbEDpJ2iPcdv5a8rQOxFqGnHJdqd8oTsUc6Verz54ULTEOD7WSzfq2evcQ6sxzWrmJeN
         0dzQWi8uc7BZJLP/v3LChmxi8seNtR5IdxLFlKoYxutCOc2eG1oywFyqiPWw4kyAGsnA
         je0A==
X-Gm-Message-State: AOAM533WO15l1f9P1U/WslpcuuoPI1fOInIZUpAMWYnPWwFbbuZVNELN
	Vgu7l+JYcBosAgqdIHe6z//31PLbMbo5fXQDGr0=
X-Google-Smtp-Source: 
 ABdhPJzKjIQk9L2vS8nZRZTiC0TSvT+Ct/Czrw44toRnaEEAtOXZ9i+yp4dTiR0HZ7EZwCGDqLeE0AS3a/ZL2eMyp9Y=
X-Received: by 2002:a05:6602:2e92:b0:644:ad6f:161 with SMTP id
 m18-20020a0566022e9200b00644ad6f0161mr19337051iow.89.1646312038597; Thu, 03
 Mar 2022 04:53:58 -0800 (PST)
MIME-Version: 1.0
References: <20220222022847.1392656-1-raj.khem@gmail.com>
 <20220222141604.GA40656@localhost>
 <CA+chaQeN_N_aFnV=kcddovjq4qCqQwvsU5nMqDy0aCvzb0SjNw@mail.gmail.com>
In-Reply-To: 
 <CA+chaQeN_N_aFnV=kcddovjq4qCqQwvsU5nMqDy0aCvzb0SjNw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 3 Mar 2022 07:53:46 -0500
Message-ID: 
 <CAHUNapTQEy-yh5EZ69OVLCGecc_Hopk8L_nW2HYr5hAEYxOsHw@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] layers: Bump to use kirkstone
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000400a8d05d94fe45a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Mar 2022 12:54:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56355

--000000000000400a8d05d94fe45a
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 3, 2022 at 2:33 AM Martin Jansa <martin.jansa@gmail.com> wrote:

> Hi,
>
> can you please create honister branch.
>
> I think 17703ee37b46d15ec369588fbb86dde336df6028 commit (just before this
> kirkstone change was applied) would be reasonable branching point.
>
> Now there isn't any branch compatible with Honister release.
>

Done, thanks!


>
> Thanks
>
> On Tue, Feb 22, 2022 at 3:16 PM Trevor Woerner <twoerner@gmail.com> wrote:
>
>> On Mon 2022-02-21 @ 06:28:47 PM, Khem Raj wrote:
>> > its not going to be backward ABI compatible with honister due to
>> variable renaming.
>> >
>> > Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> > ---
>> >  conf/layer.conf | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> Applied to meta-rockchip master and kirkstone.
>> Thanks!
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#56239):
>> https://lists.yoctoproject.org/g/yocto/message/56239
>> Mute This Topic: https://lists.yoctoproject.org/mt/89309323/3617156
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> Martin.Jansa@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>>

--000000000000400a8d05d94fe45a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 3, 2022 at 2:33 AM Martin=
 Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com">martin.jansa@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr">Hi,<div><br></div><div>can you please create honister bran=
ch.</div><div><br></div><div>I think=C2=A017703ee37b46d15ec369588fbb86dde33=
6df6028 commit (just before this kirkstone change was applied) would be rea=
sonable branching point.</div><div><br></div><div>Now there isn&#39;t any b=
ranch compatible with Honister release.</div></div></blockquote><div><br></=
div><div>Done, thanks!<br></div><div>=C2=A0</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>Thanks</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Tue, Feb 22, 2022 at 3:16 PM Trevor Woerner &lt;<a href=3D"mailto:twoerner=
@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">On Mon 2022-02-21 @ 06:28:4=
7 PM, Khem Raj wrote:<br>
&gt; its not going to be backward ABI compatible with honister due to varia=
ble renaming.<br>
&gt; <br>
&gt; Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" targ=
et=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 conf/layer.conf | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
Applied to meta-rockchip master and kirkstone.<br>
Thanks!<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56239): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56239" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56239</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/89309323/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/89309323/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>
</blockquote></div></div>

--000000000000400a8d05d94fe45a--

