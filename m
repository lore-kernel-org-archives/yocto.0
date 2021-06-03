Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web12.1308.1622678784561370933
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Jun 2021 17:06:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=hidX3V27;
 spf=pass (domain: linaro.org, ip: 209.85.218.51, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-ej1-f51.google.com with SMTP id l1so6446868ejb.6
        for <yocto@lists.yoctoproject.org>; Wed, 02 Jun 2021 17:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=g4dRqlPGHCCorPkPlZx6Ypj9a/FtWEUurXkaKq85hBI=;
        b=hidX3V27s2YOchG6YBIsPmeFLYW7XDitU49cL2hvrFCPyO3Z4eOS86+ZOYWSjq+9cN
         fVwWq4ygE2F9w8zDiuCISSJGgaLExqjuGDmGwSsilyDcchYZFRgfp1R7RCKevx6Nxdiy
         jE2OvEueoi+hF3w8+Phk0laru+nmiQGutX9HKYfiBOZzOxJ3W98mx6sIh516+/hPvG9l
         ghxS0DW7JiyzN+hhoOyf/2yFB7YVDL7pSnLVg5VHTyWTLKJnIvMxR8Q4YYxte4cX0ZKo
         CZa7zDc6Gkz0pTYH/I3+wsFhdTP+s9ZPDmVK9PyESwCg6aW0qK/8PqfHUMjei8F9bf5B
         RPJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=g4dRqlPGHCCorPkPlZx6Ypj9a/FtWEUurXkaKq85hBI=;
        b=Ifkmz8JaaPfTw4jgK2MqCiCpXt835cwX1Ct0Ouo/t37nYRNI0WLMRdvBpsTkJ+r5xi
         TgPXsfMyEkcTX5QcqWsOTV1+EEu7HHZwuOwJDSIHoLfFxmMPLBmjjLyYB45gPEYWHpIr
         z9BP+CI0W2scGrGqAiU/VqQSOr14ouS2j6x4JhEKpBUt5TRXe2lwKoahp74+oezG3KQs
         KQK7VxGErKZMF3Rk7NPq8wF7KI0QIu6W4rQhmN0CnvnZ0UWUI7Su0bFL0sI4egQnXjbV
         tjhS4C7om1w0D1giPN7oF+2GWI4402acJ/VkQ7E6Wr4V4bosLbAirnpITIoDpI4oi/0h
         tldg==
X-Gm-Message-State: AOAM5338Mzf7bGu17S2/tqacYJeluL+T2dYfMSOzAcHSH9DlNe795EBm
	OalOd0LE4f04LxvRqi83lpB5krL6ZchduK32d9YXNvpzUkTYHh+3
X-Google-Smtp-Source: ABdhPJxrM9VzIF0UJvurTeY5s1zxMgMySvqzk3Mw7vO3Naa510ULtSfj8eUsvmbvVP3Y5BRZUST75qAd7JuF8jPDdoE=
X-Received: by 2002:a17:906:b14f:: with SMTP id bt15mr37976771ejb.126.1622678782508;
 Wed, 02 Jun 2021 17:06:22 -0700 (PDT)
MIME-Version: 1.0
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Thu, 3 Jun 2021 02:06:11 +0200
Message-ID: <CAP71WjyqEcukQb4UATKCRZhTfcjZ0jLKrdU6XDv79ZXP0qM8Ew@mail.gmail.com>
Subject: Move of official IRC channels to libera.chat
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Dear all,

As some of you may have read over the past days, there has been an
ownership dispute over the freenode.net network. The IRC network has
been used by the Yocto Project and many other projects over the past
decades as a platform for discussion and support. The dispute led to
the exodus of most former freenode staff from the network and the
founding of a new network: libera.chat [1].

Starting today, the Yocto Project is migrating the official IRC
channels from freenode.net to libera.chat. Everyone is encouraged to
join #yocto on libera.chat, and get their nick registered on the new
network as soon as possible.

It's a soft migration, we don't expect to kick users from #yocto on
freenode anytime, unless things go really bad on freenode. However we
encourage everyone to move to libera.chat and *leave* the freenode
channels during the next few weeks. We understand it will take some
time to finalize the transition of all users, it is very important
that we don't leave any member from our community behind during this
transition.

The Yocto Project community website was updated with all the
information mentioned here, and can be found at [2].

We thank the freenode community for the many years of great service
and collaboration, IRC has been, and will remain a key communication
medium for our community!

In addition, on popular demand, the Yocto Project can also be found on
the Open Matrix Network, in the dedicated room called
#yoctoproject:matrix.org, which can be accessed using [3]. Note that
this Matrix room is bridged to the #yocto channel on Libera.chat,
enabling full two-way communication between IRC and Matrix users.

It is worth mentioning that OpenEmbedded has engaged in a similar
transition, and users are encouraged to join #oe on libera.chat (or
the OpenEmbedded Room on the Open Matrix Network [4]).

In case of any difficulty , please reach out to me, Michael,
Jan-Simon, Khem or Philip!

cheers
nico

[1] https://libera.chat/
[2] https://www.yoctoproject.org/community/mailing-lists/
[3] https://matrix.to/#/#yoctoproject:matrix.org
[4] https://matrix.to/#/#oe:matrix.org
