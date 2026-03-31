Return-Path: <wminer@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB5D810F92FA
	for <webhook@archiver.kernel.org>; Tue, 31 Mar 2026 19:58:21 +0000 (UTC)
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.2969.1774987100579427358
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2026 12:58:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=F2HAyv6K;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.215.179, mailfrom: wminer@linuxfoundation.org)
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-c6e2355739dso2565185a12.2
        for <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2026 12:58:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774987100; cv=none;
        d=google.com; s=arc-20240605;
        b=WGudZ3x3lNolep+jP0H4cGH+RE0F9DLzRkXMkqLQA5FuPVQYcsjCWgb4V9BI3NbCed
         X9BECZAjDojn4sn6axWFZJ5W43XmZqaciJzSAJkakS16RReTOG/6+XQVKGjdmcYkDOsR
         0NTc8hA+r78fTOTQO4dWOdheo7sSj7aCevTYXbAfs49pZROSpy0QP0mILgf/znWstgJk
         3i602uvRQE/JoJ/hUZkCEqe1RQck5n2nhVZ6cu4nRlutLMlP/ooynxoS4ncXRB5QLte+
         uGxh1IWfIrXO/lRky0c5BUq7yhhwddeSvGBG8pYGvI9gV02UctExicdGsn16/8Pq1wSk
         Nk9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=46g1S4y3xWHX9c3NYgBbB3+2UA47bIRLzG/XpKhrYoc=;
        fh=77R+wLbl7kA+Ztu6zF028ldm788zBIOUKVen8FnfrOs=;
        b=hsPFSl4E5CuNCs82maJ35rQAabmqWoqWelbPow5xrEgH0Fy1IOaYeCk9webo7Ubf3D
         FDNo8BLbppssbrCNf8zFDze+dylmW0ljwIHrsdoNXfjsu3pqCGKovou0XV0VIeZLstS3
         zg1lb1M08v23k4+MniF7ziXEu9EHj4MUCkgYRxGHJgqeYud8biiTOnwuIhwG4nfIZum2
         Il9tRdI537140NXv13yO6IZekEoRUSSWCaQhBoxEOHZXIY0jpDeSVVHmAX8AM5bBZoSQ
         zqGtjkvX3nAL73ogHKr5BS4ycMsTndvcn/dw3DR6J3+X+XP3p/u26RfdB3iCVxz5x+Sn
         3Asw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1774987100; x=1775591900; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=46g1S4y3xWHX9c3NYgBbB3+2UA47bIRLzG/XpKhrYoc=;
        b=F2HAyv6KuzoIBUC7Px8zFjP01wMk5sWsQrp5403p0tgxvl/n1RlYJashcS6uNY1WjX
         L/4Ul+CcjZpO4SFNNIASipYw5MWa+vtPD/9Wz5H/BLzv2y1KoHy3g9HNfD7enSzYnGOR
         F7nmcIOM3VS3HfRvwqgSvE4SqAd5v6ljY2RoQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774987100; x=1775591900;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=46g1S4y3xWHX9c3NYgBbB3+2UA47bIRLzG/XpKhrYoc=;
        b=ApgIz3OoqBVJ0DMY5v+n9nGNCfE2mAHKBvYlmBQkAn/cZfQ/ezciXPAhoRhvH0upBK
         kYIfXUGlJ0wXfE7i4tnuqMw3K3rpYL6JeYjyqoPwW1aT0z6YQj3MHawhlrHO9UEO49Zi
         Mh2X/ecsbscxR4tA3VpzeXKkc0uRovcDd6luTySCzGZu/vnfKa7TYYNeTdHOzb3drYhj
         Y7IASBhGr51OrQFW/dyWNat41KF6Sjd6B9T8VINnFY5XPkBSYTymL/7fXGvHqbR79nSq
         Ox9Omd/CptTbZoFvgtLyIHMdK7p8zkR6pncpOHUjfNmav3hhH9LTFtHqizHOZzgru8uN
         amWA==
X-Gm-Message-State: AOJu0Yzu13fLsnDtaOn2Z90MjJ63X7GmWMTv5hNBWKEQ5IHfNa6EjLkc
	ll9SEHaFu53yjMIBGypio4jTetoekWe71qT765JJiVsYixvs5/ZMXANuZrnXHdrkddqnfu9OOte
	xphyAYMepm/7ikhzoy7OL4/ljUAweta2FRpzYTjlEtw==
X-Gm-Gg: ATEYQzxLWvh+5qdNmN2K2oGxc/35ah8tZQ/wSxnW2ePNNz596pbqmnI0hkIpb+SRRVN
	LZHrCUiIg+fL6uweJsh1Cz0jCPFboa0y6pUmv4rBjwBnPMykscJcSMh7cCX4xGLKH8U+atq0ecV
	wrHinorsXdQ99AjIL7brP0+uvGcLdHF31lBuN7kOgg9PJq03iiRXy9I+tzWucDi5itPNv003r0Y
	EoXWq0W7tS/HFYPkMYvfrnqfysxUgz5rjM017Vzmpyh7xtls/ClofhJ7TpSqK0I34YRq9LBsmy9
	VfYSc5K/s6yBa1RBJVw5wDcLTnRPMKJe+j+vPIV/YCfODo20qSmQa3AhdvPU5f1V4B9zlUni08+
	JQhFV7+EwoA==
X-Received: by 2002:a05:6a20:4307:b0:398:ed77:7d54 with SMTP id
 adf61e73a8af0-39ef773bd5cmr591642637.49.1774987099874; Tue, 31 Mar 2026
 12:58:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb-sFQWmxJHc2MPrSRMWhFRsMFUrm69vtT6FxNV8zL+Ktw@mail.gmail.com>
 <debd57881df9f7bb1681ff140d35869f81e17fcd.camel@pbarker.dev>
In-Reply-To: <debd57881df9f7bb1681ff140d35869f81e17fcd.camel@pbarker.dev>
From: Walt Miner <wminer@linuxfoundation.org>
Date: Tue, 31 Mar 2026 15:58:03 -0400
X-Gm-Features: AQROBzCvKgNnQJ7lqhrmw7iJ8gvlNw6mxaB0THLbdWReI0pkmnAuiQuXh1QhAEU
Message-ID: <CAC_dYdoTbrG-8f2tAYVa5DdHVWYCbr-RR2F13vdqjJwch=7-ow@mail.gmail.com>
Subject: Re: [yocto-status] [yocto] Yocto Project Status 31 March 2026 (WW14)
To: yocto-status@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org, sjolley.yp.pm@gmail.com, 
	"openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="00000000000091b721064e57635b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2026 19:58:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66374

--00000000000091b721064e57635b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

When will we see the plan for after June 5?


Walt Miner
AGL Community Manager
The Linux Foundation

Visit us at:
www.automotivegradelinux.org
lists.automotivelinux.org
www.linuxfoundation.org




On Tue, Mar 31, 2026 at 11:31=E2=80=AFAM Paul Barker via lists.yoctoproject=
.org
<paul=3Dpbarker.dev@lists.yoctoproject.org> wrote:

> On Tue, 2026-03-31 at 07:50 -0700, Stephen Jolley via
> lists.yoctoproject.org wrote:
> > Current Dev Position: YP 6.0 M3
> >
> > Next Deadline: YP 6.0 M3 Build Date 2026-03-23
> >
> > Next Team Meetings:
> >
> >    -
> >
> >    Bug Triage meeting - Thursday 2nd Apr. 7:30am PDT (
> >    https://zoom.us/j/454367603?pwd=3DZGxoa2ZXL3FkM3Y0bFd5aVpHVVZ6dz09)
> >    -
> >
> >    Weekly Project Engineering Sync  - Tuesday 31st Mar. 8am PDT (
> >    https://zoom.us/j/990892712?pwd=3DcHU1MjhoM2x6ck81bkcrYjRrcmJsUT09)
> >    <https://zoom.us/j/990892712>
> >    -
> >
> >    Yocto Project Patch Review - Thursday 2nd Apr. 10am GMT and Monday 6=
th
> >    Apr. 9am PDT (https://zoom.us/j/9776239
> >    <https://zoom.us/j/97762397148?pwd=3D1xkiC9hp9SjEonaTaONwTb6iWry4Eb.=
1>7
> >    148?pwd=3D1xk0iC9hp9SjEonaTaONwTb6iWry4Eb.1
> >    <https://zoom.us/j/97762397148?pwd=3D1xkiC9hp9SjEonaTaONwTb6iWry4Eb.=
1>)
>
> Hi all,
>
> Monday 6th April is a public holiday here in the UK so Ross, Richard and
> myself will all be out of office. So, there will be no patch review call
> on Monday!
>
> Best regards,
>
> --
> Paul Barker
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#111):
> https://lists.yoctoproject.org/g/yocto-status/message/111
> Mute This Topic: https://lists.yoctoproject.org/mt/118598322/1005504
> Group Owner: yocto-status+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto-status/leave/13179051/1005504/1961=
985742/xyzzy
> [wminer@linuxfoundation.org]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>
>

--00000000000091b721064e57635b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>When will we see the plan for after June 5? =C2=A0</d=
iv><div><br></div><div><br></div><div><div dir=3D"ltr" class=3D"gmail_signa=
ture" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"=
ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"color:rgb(1=
36,136,136)">Walt Miner</span></div><div dir=3D"ltr"><div style=3D"color:rg=
b(136,136,136)">AGL Community Manager</div><div style=3D"color:rgb(136,136,=
136)">The Linux Foundation<br></div><div style=3D"color:rgb(136,136,136)"><=
br></div><div style=3D"color:rgb(136,136,136)">Visit us at:</div><div style=
=3D"color:rgb(136,136,136)"><a href=3D"http://www.automotivegradelinux.org"=
 target=3D"_blank">www.automotivegradelinux.org</a></div><div style=3D"colo=
r:rgb(136,136,136)"><a href=3D"http://lists.automotivelinux.org" target=3D"=
_blank">lists.automotivelinux.org</a></div><div style=3D"color:rgb(136,136,=
136)"><a href=3D"http://www.linuxfoundation.org" target=3D"_blank">www.linu=
xfoundation.org</a></div><div style=3D"color:rgb(136,136,136)"><br></div><d=
iv style=3D"color:rgb(136,136,136)"><br></div></div></div></div></div></div=
></div></div></div></div></div></div></div><br></div><br><div class=3D"gmai=
l_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue=
, Mar 31, 2026 at 11:31=E2=80=AFAM Paul Barker via <a href=3D"http://lists.=
yoctoproject.org">lists.yoctoproject.org</a> &lt;paul=3D<a href=3D"mailto:p=
barker.dev@lists.yoctoproject.org">pbarker.dev@lists.yoctoproject.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color=
:rgb(204,204,204);padding-left:1ex">On Tue, 2026-03-31 at 07:50 -0700, Step=
hen Jolley via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> wrote:<br>
&gt; Current Dev Position: YP 6.0 M3<br>
&gt; <br>
&gt; Next Deadline: YP 6.0 M3 Build Date 2026-03-23<br>
&gt; <br>
&gt; Next Team Meetings:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 -<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 Bug Triage meeting - Thursday 2nd Apr. 7:30am PDT (<br>
&gt;=C2=A0 =C2=A0 <a href=3D"https://zoom.us/j/454367603?pwd=3DZGxoa2ZXL3Fk=
M3Y0bFd5aVpHVVZ6dz09" rel=3D"noreferrer" target=3D"_blank">https://zoom.us/=
j/454367603?pwd=3DZGxoa2ZXL3FkM3Y0bFd5aVpHVVZ6dz09</a>)<br>
&gt;=C2=A0 =C2=A0 -<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 Weekly Project Engineering Sync=C2=A0 - Tuesday 31st Mar.=
 8am PDT (<br>
&gt;=C2=A0 =C2=A0 <a href=3D"https://zoom.us/j/990892712?pwd=3DcHU1MjhoM2x6=
ck81bkcrYjRrcmJsUT09" rel=3D"noreferrer" target=3D"_blank">https://zoom.us/=
j/990892712?pwd=3DcHU1MjhoM2x6ck81bkcrYjRrcmJsUT09</a>)<br>
&gt;=C2=A0 =C2=A0 &lt;<a href=3D"https://zoom.us/j/990892712" rel=3D"norefe=
rrer" target=3D"_blank">https://zoom.us/j/990892712</a>&gt;<br>
&gt;=C2=A0 =C2=A0 -<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 Yocto Project Patch Review - Thursday 2nd Apr. 10am GMT a=
nd Monday 6th<br>
&gt;=C2=A0 =C2=A0 Apr. 9am PDT (<a href=3D"https://zoom.us/j/9776239" rel=
=3D"noreferrer" target=3D"_blank">https://zoom.us/j/9776239</a><br>
&gt;=C2=A0 =C2=A0 &lt;<a href=3D"https://zoom.us/j/97762397148?pwd=3D1xkiC9=
hp9SjEonaTaONwTb6iWry4Eb.1" rel=3D"noreferrer" target=3D"_blank">https://zo=
om.us/j/97762397148?pwd=3D1xkiC9hp9SjEonaTaONwTb6iWry4Eb.1</a>&gt;7<br>
&gt;=C2=A0 =C2=A0 148?pwd=3D1xk0iC9hp9SjEonaTaONwTb6iWry4Eb.1<br>
&gt;=C2=A0 =C2=A0 &lt;<a href=3D"https://zoom.us/j/97762397148?pwd=3D1xkiC9=
hp9SjEonaTaONwTb6iWry4Eb.1" rel=3D"noreferrer" target=3D"_blank">https://zo=
om.us/j/97762397148?pwd=3D1xkiC9hp9SjEonaTaONwTb6iWry4Eb.1</a>&gt;)<br>
<br>
Hi all,<br>
<br>
Monday 6th April is a public holiday here in the UK so Ross, Richard and<br=
>
myself will all be out of office. So, there will be no patch review call<br=
>
on Monday!<br>
<br>
Best regards,<br>
<br>
-- <br>
Paul Barker<br>
<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#111): <a href=3D"https://lists.yoctoproject.org/g/yocto=
-status/message/111" rel=3D"noreferrer" target=3D"_blank">https://lists.yoc=
toproject.org/g/yocto-status/message/111</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/118598322/100=
5504" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/118598322/1005504</a><br>
Group Owner: <a href=3D"mailto:yocto-status%2Bowner@lists.yoctoproject.org"=
 target=3D"_blank">yocto-status+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto-status/leave=
/13179051/1005504/1961985742/xyzzy" rel=3D"noreferrer" target=3D"_blank">ht=
tps://lists.yoctoproject.org/g/yocto-status/leave/13179051/1005504/19619857=
42/xyzzy</a> [<a href=3D"mailto:wminer@linuxfoundation.org" target=3D"_blan=
k">wminer@linuxfoundation.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
<br>
</blockquote></div>

--00000000000091b721064e57635b--

