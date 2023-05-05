Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18316C7EE24
	for <webhook@archiver.kernel.org>; Fri,  5 May 2023 16:55:40 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web11.848.1683305733247383116
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 May 2023 09:55:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=h1xdz1kI;
 spf=pass (domain: gmail.com, ip: 209.85.128.174, mailfrom: twoerner@gmail.com)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-55c939fb24dso18555617b3.2;
        Fri, 05 May 2023 09:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683305732; x=1685897732;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cb12ih8SSklW4oFEeJMdbsUtYWBuoZ3o9GzxTDunb5o=;
        b=h1xdz1kIzDjTQ2uZTeVwF7IQ/KSwNWB+x6NiE/pElyXa7TPU7DyVRd0o+fDJM/KSfj
         h+6s2jc61+l8YkmyVzZOaHy+L8B03OPGO0SnnE7MIWp1T88r17CthtpY0H9kEv2gUcFX
         261hDgQPtTmI0wHOexZwZ76Oa7XFfi+u82ff9xt4EcW/FbS6ZaFf37+E+8hO5FbT5Dq6
         TuTHfAi6wqYRqUULxD1GTzjBFVOowBiJyKn6P2zJXEiahSiGTwPAOGZohSTKutNc3Zv9
         5nSE4d57TrLXxPOmydOyQ9YEbwwe5Qh5LW8QYr4Z10y6ysxI8XBE/xBee0dwrBVm9fb/
         KUrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683305732; x=1685897732;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cb12ih8SSklW4oFEeJMdbsUtYWBuoZ3o9GzxTDunb5o=;
        b=TEfNQNmfwa+/5+jVQY9Lz7nxo/DnzTP4koqPmJ6ocZW52hNJpIUdsnU/aRCeOmn5HO
         6sYlNlN+VlZFfYQIFzacqSgTWw5iw6NF80XWHEU1cdRRsIh1sOhsxsx5Tcg2dq4mV9+2
         XgDpZiLdYoheYIlTavPH19CLMC7HDSaaV33OcSRLWEcUxBGgL6IkrLn8GfMQQgxBmXD+
         z8gNo2fKRSlF5IfqmGOtFWu8kbmNgFlc5HEs4JPM5KDs6C5Hx3LnzzGkkc/0qbwhUbHn
         YH6bkndIXBiyex3WNSeYgCztfJbW/DLnHmgVyqo+HXv5NtSQGPex/o+J3c0yJk08J9dZ
         0ybg==
X-Gm-Message-State: AC+VfDzqLYNXhmUOEDgBNndL9VYX4gTO9e2sgihVFoj2wsejWdCnzqVK
	6qUg+/jOIXKqnTb0orEltx4LnzxEh0VtKk9gAhg=
X-Google-Smtp-Source: ACHHUZ6usBtU+CIYaksjb81npG26yrveuckGTZif/XnjNCJw7XVpSJWW9PcFs4X09hoiTCacFBIHyxK2oWIJLlYZV88=
X-Received: by 2002:a25:15ca:0:b0:b9e:2697:9d96 with SMTP id
 193-20020a2515ca000000b00b9e26979d96mr2062037ybv.3.1683305732356; Fri, 05 May
 2023 09:55:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAOT3mi+DorC4uSqCwO7HmmFVuXX3BLFWJNp_o-NH4OmqP=6ZSg@mail.gmail.com>
In-Reply-To: <CAOT3mi+DorC4uSqCwO7HmmFVuXX3BLFWJNp_o-NH4OmqP=6ZSg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 5 May 2023 12:55:20 -0400
Message-ID: <CAHUNapQzP0CMQTU5qL9BaMzOTTSuYsf82RPQSWeDr-NvT7zUjg@mail.gmail.com>
Subject: Re: [Yocto-Advocacy] Yocto Project Community Manager updates
To: Nicolas Dechesne <ndec13@gmail.com>
Cc: yocto@lists.yoctoproject.org, yocto-advocacy@lists.yoctoproject.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	Josef Holzmayr <jester@theyoctojester.info>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="00000000000039be9705faf528c5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 May 2023 16:55:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59888

--00000000000039be9705faf528c5
Content-Type: text/plain; charset="UTF-8"

Nico: you did a fantastic job as Community Manager, as I knew you would.
You always do a great job with everything you take on, and this endeavour
was no exception. Your help with the virtual summits is especially
appreciated; they wouldn't have happened without your help. Jeffro did a
great job setting the tone for this role; you continued on his great work
and made the Yocto Project even better. My congratulations to you.

Josef has been a visible member of the community for a while. It's exciting
to see him take on an even greater role within the community. I know Josef
will waste no time making this position his own, and doing interesting
things with it!

--00000000000039be9705faf528c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Nico: you did a fantastic job as Community Manager, a=
s I knew you would. You always do a great job with everything you take on, =
and this endeavour was no exception. Your help with the virtual summits is =
especially appreciated; they wouldn&#39;t have happened without your help. =
Jeffro did a great job setting the tone for this role; you continued on his=
 great work and made the Yocto Project even better. My congratulations to y=
ou.</div><div><br></div><div>Josef has been a visible member of the communi=
ty for a while. It&#39;s exciting to see him take on an even greater role w=
ithin the community. I know Josef will waste no time making this position h=
is own, and doing interesting things with it!</div><div><br></div><div><br>=
</div></div>

--00000000000039be9705faf528c5--

