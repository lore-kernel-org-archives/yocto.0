Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1EF66C4332F
	for <webhook@archiver.kernel.org>; Thu,  3 Nov 2022 21:29:06 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web08.4093.1667510939870552071
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Nov 2022 14:29:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com header.s=20210112 header.b=FQWsRljW;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.41, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f41.google.com with SMTP id i21so4973860edj.10
        for <yocto@lists.yoctoproject.org>; Thu, 03 Nov 2022 14:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rF5aTJbIX+oI/INYru4T2sEH1RF0TkdSC/f4MU2wSRQ=;
        b=FQWsRljWbWOaM9L+Ad8DsCBmROYM4hgb21ssF0aCESU7PLlWMe/SnFZdQjclDTfVCm
         yzM8lKvQFRI+UA4mqFKThp44AD1c8oQEmSiXtd7k1AFScOS4lBgY5fMHm/eyWOM+Dc3G
         UKSmjgWlpmua4JzUo8/4BA5ahFLpRiiJpQJZWe5vB3ZqJJMiJzhhMUsTd+15WLyKbMx+
         Eu/7EmVOh/sCFClAxnYDTdNIG2tlvHJEnRLttSURlqlAtTJKY3isLWyD8Q/3pprdX1Wz
         lvghMs1xo2Cc0AQgPm/1RUumtdFTJwonP/XiG3NFQ/4wsTXxYSmfMfstKrPyxlpN+jcg
         lFNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rF5aTJbIX+oI/INYru4T2sEH1RF0TkdSC/f4MU2wSRQ=;
        b=6yVQC13LgahReThT5UWOBxxRE2oHtlRS2CLI9nRo9U8BSUzMEwpOw0hmLosyjUR3FH
         i9WP+YvzzoWCrIHr7yRcbv+J7i8+j+zFtZvG0XQxtLxecOJc2c1ieKjXpSB8BTGdfSKF
         hWwaRt1aoJADTk5dLiMm7ZqhT4S4qCNu6aCznglOANSaHKRnlMaMHa8t8dUek2Xhct4J
         FoWU+uF3nOT44hLKpqojsYXJ0RVITGnlApVOdw+Zg7yQPcruA/1ActlPmLc8xe1puq8S
         UVdCaZo5yelFYaYThE58l71ngcTDAX9idLVqJ0iY9TIddtXoCwhCpo04IXmdH/89Mq+4
         Dctg==
X-Gm-Message-State: ACrzQf2FKNjGoDgaqwgafrgNT2rf9RBdc50UDln691j61kFzuVNqj2PU
	c2DKqb6wOf5UYwF0opEFtDGHIQw6WwMeKwlnRLy3VA==
X-Google-Smtp-Source: AMsMyM6RSWcpV7d7CJaqS4qvd6YoA9exmxquxu0lZS0iMp8x/f03e6RCIa0DKOykwzEu0ZL2rW3eSgjJshqD3adlMYw=
X-Received: by 2002:a05:6402:3487:b0:463:9585:ae40 with SMTP id
 v7-20020a056402348700b004639585ae40mr19491533edc.31.1667510938119; Thu, 03
 Nov 2022 14:28:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAEt6NwoaVDgwO5-5ins-RWUp7jkc61cdFrtGeCz03hKwK2Z6KA@mail.gmail.com>
 <17126.1667510678953305300@lists.yoctoproject.org>
In-Reply-To: <17126.1667510678953305300@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 3 Nov 2022 22:28:32 +0100
Message-ID: <CAEt6Nwqze1r8o=EfzMNEeXz67C3VdE4QToWFE4ksoyNwR9=Xnw@mail.gmail.com>
Subject: Re: Private: Re: [yocto] Scope of the build parameters #systemd
To: Martin Leduc <martin.leduc@luminator.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000020451f05ec97a59f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Nov 2022 21:29:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58479

--00000000000020451f05ec97a59f
Content-Type: text/plain; charset="UTF-8"

Re-adding list, as I think this is valid information for all Yocto users.

On Thu, Nov 3, 2022 at 10:24 PM martin.leduc via lists.yoctoproject.org
<martin.leduc=luminator.com@lists.yoctoproject.org> wrote:

> Ok, I get that.  If DISTRO_FEATURES is settable only into local.conf, what
> are the other variables valid into the local.conf only?


No, thats not how it works. Its like this:
- if the variable is supposed to only have an effect within the very bb
file that you are looking at then it can stay in the recipe
- if the variable is supposed to affect something else, it needs to go into
a configuration file.

This is is not tied to specific variable names or such. It is purely about
the visibility.

Greetz,
Josef

--00000000000020451f05ec97a59f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Re-adding list, as I think this is valid =
information for all Yocto users.</div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 3, 2022 at 10:24 PM martin.ledu=
c via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> =
&lt;martin.leduc=3D<a href=3D"mailto:luminator.com@lists.yoctoproject.org">=
luminator.com@lists.yoctoproject.org</a>&gt; wrote:</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Ok, I get that.=C2=A0 If DISTRO_FEATURES i=
s settable only into local.conf, what are the other variables valid into th=
e local.conf only?=C2=A0</blockquote><div><br></div><div>No, thats not how =
it works. Its like this:</div><div>- if the variable is supposed to only ha=
ve an effect within the very bb file that you are looking at then it can st=
ay in the recipe</div><div>- if the variable is supposed to affect somethin=
g else, it needs to go into a configuration file.</div><div><br></div><div>=
This is is not tied to specific variable names or such. It is purely about =
the visibility.</div><div><br></div><div>Greetz,</div><div>Josef=C2=A0</div=
></div></div>

--00000000000020451f05ec97a59f--

