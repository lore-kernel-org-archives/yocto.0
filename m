Return-Path: <nicolas.dechesne@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07E93C433EF
	for <webhook@archiver.kernel.org>; Mon, 16 May 2022 10:16:39 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web10.26805.1652696193981509040
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 May 2022 03:16:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=qry8dsYd;
 spf=pass (domain: linaro.org, ip: 209.85.218.41,
 mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-ej1-f41.google.com with SMTP id i27so27636594ejd.9
        for <yocto@lists.yoctoproject.org>;
 Mon, 16 May 2022 03:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wBQ1WB9Q7ThU+SpwuiB1uleU1aZ8A/P40jKVad7clrY=;
        b=qry8dsYdV+DLW0tqUvg1H96KIzcC6xSXnebbYzXUI73It9w4vngpqHirO6a/hoT3Om
         ofzpN01pNvQWHMfdus0VoQI+P7DpGDThNd8/g2zFt+mm192IOIbyY2tUwvKqleZiC4mU
         p3VDlQOBPeoBPMd7fg0NhAMBbCKSJ90+QgicIbUGqhbxAsO0ZO0eiRnGKtS9BiU0pbBS
         J6l9UA2ByLJlDZnBclY/fV/7gtHvLLxlJ3s1vZf5vWCljwtWlf/oinlvPSpVmf2nPB2H
         LLhS65lkEESla6ZT3g2MbOP9sXwGacz5K1upQknmmY8EahJCAVmim+vFEFQuVIteQiGM
         tpiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wBQ1WB9Q7ThU+SpwuiB1uleU1aZ8A/P40jKVad7clrY=;
        b=cIDnUC5T+CtjrCed9O6XyvYx/Yk/LwApnsdXSTslz/Oe1KZoEbwpXWyOJGP2MkXyoj
         2Xfsif0DllxmyLHQOLHN0OVNwKDOHZMNB47wu10FqcisV0hxei0kKcL92+MS6ho2Ajbq
         V11XvtNiYXNF/IkufIOmha6RIBp2auV29xB+7ixe7ioh+A/8NIZOg3T8HPBE1sm/Cq70
         lmu/z1MfRpSwfR609NRExzBigHbakEhTQ6SpBHxJedZI0G5WpE/QxSpwI1U8JuS+8Dxu
         jZjWQjGjLV00ymVqg6mJq7CrEMgQnkGfNVaODyVFbGH8yBIvEL3LAhraZFQBwwEDe3hs
         jp6Q==
X-Gm-Message-State: AOAM532xxxiSPeptmTYZ3nILYubfjkPQ2He5PT9eeLARLcqiEu+pCpUp
	gZn11fgUNHmeE9W7WP65oauYJAbnYS8A+l3hNvddIQ==
X-Google-Smtp-Source: 
 ABdhPJwp2AoWhiFQj6d6XqVtvQVV+uT1/73plmV8tDPfiI8BK74O8DBto/E4kGlsjAeWb/QSFdwizZN+MkjWKK921yo=
X-Received: by 2002:a17:907:86a7:b0:6f7:ea6:1acb with SMTP id
 qa39-20020a17090786a700b006f70ea61acbmr14782460ejc.413.1652696192160; Mon, 16
 May 2022 03:16:32 -0700 (PDT)
MIME-Version: 1.0
References: <6e94469d-a40-91a6-3b4b-841d61f1a3f9@crashcourse.ca>
 <CAP71WjxSUY+hjszAhKP_g_ae12ZF5pXrZ8mSN3UsKkUH4-P4Gw@mail.gmail.com>
In-Reply-To: 
 <CAP71WjxSUY+hjszAhKP_g_ae12ZF5pXrZ8mSN3UsKkUH4-P4Gw@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 16 May 2022 12:16:21 +0200
Message-ID: 
 <CAP71WjwKEYYY6=HysWYHAnfw_zZ4hT+1cPfP29GmTS+3h_rSxg@mail.gmail.com>
Subject: Re: [yocto] a waitlist for YP summit 2022.05?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000074b05705df1e51b6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 May 2022 10:16:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57106

--00000000000074b05705df1e51b6
Content-Type: text/plain; charset="UTF-8"

On Mon, May 16, 2022 at 11:29 AM Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:

> hey Robert,
>
>
> On Mon, May 16, 2022 at 11:27 AM Robert P. J. Day <rpjday@crashcourse.ca>
> wrote:
>
>>
>>   given that i freed up my schedule for the upcoming week, i zipped
>> over to register for this week's yp virtual summit, but was told i was
>> being placed on a wait list. a wait list for a virtual summit? is
>> there a limit being put on registrations due to technical limitations
>> or something? seems odd.
>>
>
> It is odd. And it was not expected. We are aware of the issue, and have
> reached out to LF Events team and asked for help.
>

The problem is fixed now. You should be able to register again!
Sorry about that.


>
>
>>
>> rday
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#57104):
>> https://lists.yoctoproject.org/g/yocto/message/57104
>> Mute This Topic: https://lists.yoctoproject.org/mt/91136063/1279857
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> nicolas.dechesne@linaro.org]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>>

--00000000000074b05705df1e51b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 16, 2022 at 11:29 AM Nico=
las Dechesne &lt;<a href=3D"mailto:nicolas.dechesne@linaro.org">nicolas.dec=
hesne@linaro.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">hey Robert,<div><br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Mon, May 16, 2022 at 11:27 AM Robert P. J. Day &lt;<a href=3D"mailto:rp=
jday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
=C2=A0 given that i freed up my schedule for the upcoming week, i zipped<br=
>
over to register for this week&#39;s yp virtual summit, but was told i was<=
br>
being placed on a wait list. a wait list for a virtual summit? is<br>
there a limit being put on registrations due to technical limitations<br>
or something? seems odd.<br></blockquote><div><br></div><div>It is odd. And=
 it was not expected. We are aware of the issue, and have reached out to LF=
 Events team and asked for help.=C2=A0</div></div></div></blockquote><div><=
br></div><div>The problem is fixed now. You should be able to register agai=
n!</div><div>Sorry about that.</div><div>=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><di=
v>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
rday<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57104): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57104" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57104</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/91136063/1279=
857" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/91136063/1279857</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank">n=
icolas.dechesne@linaro.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</blockquote></div></div>

--00000000000074b05705df1e51b6--

