Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C86DDC25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 10:41:56 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.10334.1715856106358234708
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 May 2024 03:41:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=izAZuN8p;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-51ffff16400so974885e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 03:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715856104; x=1716460904; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fd15ErXcupz2a1vl7IYc48cLErYJHKEcqzpApoDMouY=;
        b=izAZuN8pxcaWOLV9E8KWmuVr9UwIiW0sI2FcLemBA0gkvLz23cpoX3vpNjTVzW1axh
         USniPttDQ64Jjpc1QkrvkCHUSVs50SeYElAadlzqe0SftjckL/ATLQl1HbyTQkVL7MYi
         iQ3whNRi9qF3gerw00UWlpynfsnn6GHLHGxtmrYsXFwSuEVXhX0Ao06IUGTqgOv0o3fm
         uj3WRVjUy1iRLZPHz5zxyqT8rqb7nSstVgC74eHcorUJIu/+RDKoSJrPoCJ2scgXoRrQ
         /ei1olSNu+xq17DdZp8jq7jz4teTL1g7nZGNhp5QVRBWEzLrhuqkYu3yIlHirQLmZjDK
         CEMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715856104; x=1716460904;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fd15ErXcupz2a1vl7IYc48cLErYJHKEcqzpApoDMouY=;
        b=kfbrS7N2hNqWtpXblHkkIhgKpdkqyLu5c5Gg4lpfnCYN5OniLFOOJcsw7hYh4SeWhc
         TxH1maKe1n0H44HnLbrLqn/k2ZcCcQiy8f1S6vnf5sHroYsKOoxceObQNLKAkruHaeNB
         Ga3JlmOcBcZkt8F7r//NijfYmTOt8PKQgjBZjQxSpCHb7agvb8QmPUtY/fyUSSUatvmx
         YslicFHEh8+4HAEQ7Ck3wFa0T1TWVMmFoaJqy77XSE7N5xQ1M2FB44MYop3vyEWfe6Rt
         TXrs3P8HE0/RxgQTA2RJihXCEpvASERiJ3TDfZG8Ga4QUNJ/JYf4M4NGV5xuuvMHOX5I
         2YmQ==
X-Gm-Message-State: AOJu0Yw59GceJ7O7hmly/LJM8GrilSD06oyHm7uymu5irxfqp/p/WEnV
	g0J8NsRuDCTyaOrJffKbjUFssobJYTSghDIQb7M9XV8M+Hc27EUvgrMWcywTnHFksB5jLFcx/bM
	DO1onfr21MkTVIPprNeqxZRFx2eFpbLHz
X-Google-Smtp-Source: AGHT+IHwmBjYRL9Fvoxo0PtPW1cDWrRP4PWgqaFmdfzvwAHFDuViwyjyYn82VQVdYBYl//NjN0mpEQW9KNjEzijMvzo=
X-Received: by 2002:ac2:55a8:0:b0:523:9003:88a0 with SMTP id
 2adb3069b0e04-523900389e8mr3703716e87.39.1715856103738; Thu, 16 May 2024
 03:41:43 -0700 (PDT)
MIME-Version: 1.0
References: <EPUO.1715855394439495383.87H2@lists.yoctoproject.org>
In-Reply-To: <EPUO.1715855394439495383.87H2@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 16 May 2024 12:41:32 +0200
Message-ID: <CANNYZj_5WDzM-e74A=bkovsQzpYYQJNAb=ZY09vogdnOWZR=+g@mail.gmail.com>
Subject: Re: [yocto] Unable to populate_sdk for ls1012afrwy macine
To: yocto@lists.yoctoproject.org, dhanyalakshmi.k@priyarajaelectronics.com
Content-Type: multipart/alternative; boundary="0000000000008c973006188fe127"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 10:41:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63114

--0000000000008c973006188fe127
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yeah, I was confused. This is the authoritative source:
https://wiki.yoctoproject.org/wiki/Releases

Neverthless mickledore is no longer supported (and nanbield is out of
support shortly).

Alex

On Thu, 16 May 2024 at 12:29, dhanyalakshmi.k via lists.yoctoproject.org
<dhanyalakshmi.k=3Dpriyarajaelectronics.com@lists.yoctoproject.org> wrote:

> Thank You Alex for the information.
> I went through the links you provided for recent branches of yocto.
> Branch Version
> mickledore YP 4.2=E2=80=93lf-6.1.55
> langdale YP 4.1=E2=80=93lf-6.1.1
> kirkstone YP 4.0=E2=80=93lf-5.15.71
> honister YP 3.4=E2=80=93lf-5.15.5
> hardknott YP 3.3=E2=80=93lf-5.10.72
> gatesgarth YP 3.2=E2=80=93lf-5.10.9
> dunfell YP 3.1=E2=80=93LSDK 2004
> zeus YP 3.0=E2=80=93LSDK 1909
> warrior YP 2.7=E2=80=93LSDK 1906
> thud YP 2.6=E2=80=93LSDK 1809
> sumo YP 2.5=E2=80=93LSDK 1806 Isn't the mickledore a recent one because i=
 can see
> that it's version is 4.2
> so i'm confused here
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63113):
> https://lists.yoctoproject.org/g/yocto/message/63113
> Mute This Topic: https://lists.yoctoproject.org/mt/106131859/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000008c973006188fe127
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yeah, I was confused. This is the authoritative sourc=
e:</div><div><a href=3D"https://wiki.yoctoproject.org/wiki/Releases">https:=
//wiki.yoctoproject.org/wiki/Releases</a></div><div><br></div><div>Neverthl=
ess mickledore is no longer supported (and nanbield is out of support short=
ly).</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 16 May 2024 at 12:29, d=
hanyalakshmi.k via <a href=3D"http://lists.yoctoproject.org">lists.yoctopro=
ject.org</a> &lt;dhanyalakshmi.k=3D<a href=3D"mailto:priyarajaelectronics.c=
om@lists.yoctoproject.org">priyarajaelectronics.com@lists.yoctoproject.org<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">T=
hank You Alex for the information.<br>I went through the links you provided=
 for recent branches of yocto.<br>
<table style=3D"box-sizing:border-box;border-spacing:0px;border-collapse:co=
llapse;margin-top:0px;margin-bottom:16px;display:block;width:max-content;ma=
x-width:100%;overflow:auto;color:rgb(31,35,40);font-family:-apple-system,Bl=
inkMacSystemFont,&quot;Segoe UI&quot;,&quot;Noto Sans&quot;,Helvetica,Arial=
,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-s=
ize:16px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-transfor=
m:none;word-spacing:0px;white-space:normal;background-color:rgb(255,255,255=
);text-decoration-style:initial;text-decoration-color:initial">
<thead style=3D"box-sizing:border-box">
<tr style=3D"box-sizing:border-box">
<th style=3D"box-sizing:border-box;padding:6px 13px">Branch</th>
<th style=3D"box-sizing:border-box;padding:6px 13px">Version</th>
</tr>
</thead>
<tbody style=3D"box-sizing:border-box">
<tr style=3D"box-sizing:border-box">
<td style=3D"box-sizing:border-box;padding:6px 13px">mickledore</td>
<td style=3D"box-sizing:border-box;padding:6px 13px">YP 4.2=E2=80=93lf-6.1.=
55</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td style=3D"box-sizing:border-box;padding:6px 13px">langdale</td>
<td style=3D"box-sizing:border-box;padding:6px 13px">YP 4.1=E2=80=93lf-6.1.=
1</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td style=3D"box-sizing:border-box;padding:6px 13px">kirkstone</td>
<td style=3D"box-sizing:border-box;padding:6px 13px">YP 4.0=E2=80=93lf-5.15=
.71</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td style=3D"box-sizing:border-box;padding:6px 13px">honister</td>
<td style=3D"box-sizing:border-box;padding:6px 13px">YP 3.4=E2=80=93lf-5.15=
.5</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td style=3D"box-sizing:border-box;padding:6px 13px">hardknott</td>
<td style=3D"box-sizing:border-box;padding:6px 13px">YP 3.3=E2=80=93lf-5.10=
.72</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td style=3D"box-sizing:border-box;padding:6px 13px">gatesgarth</td>
<td style=3D"box-sizing:border-box;padding:6px 13px">YP 3.2=E2=80=93lf-5.10=
.9</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td style=3D"box-sizing:border-box;padding:6px 13px">dunfell</td>
<td style=3D"box-sizing:border-box;padding:6px 13px">YP 3.1=E2=80=93LSDK 20=
04</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td style=3D"box-sizing:border-box;padding:6px 13px">zeus</td>
<td style=3D"box-sizing:border-box;padding:6px 13px">YP 3.0=E2=80=93LSDK 19=
09</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td style=3D"box-sizing:border-box;padding:6px 13px">warrior</td>
<td style=3D"box-sizing:border-box;padding:6px 13px">YP 2.7=E2=80=93LSDK 19=
06</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td style=3D"box-sizing:border-box;padding:6px 13px">thud</td>
<td style=3D"box-sizing:border-box;padding:6px 13px">YP 2.6=E2=80=93LSDK 18=
09</td>
</tr>
<tr style=3D"box-sizing:border-box">
<td style=3D"box-sizing:border-box;padding:6px 13px">sumo</td>
<td style=3D"box-sizing:border-box;padding:6px 13px">YP 2.5=E2=80=93LSDK 18=
06</td>
</tr>
</tbody>
</table>
Isn&#39;t the mickledore a recent one because i can see that it&#39;s versi=
on is 4.2<br>so i&#39;m confused here
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63113): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63113" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63113</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/106131859/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/106131859/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000008c973006188fe127--

