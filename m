Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web11.33709.1605527733780686406
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Nov 2020 03:55:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qpfW+Reg;
 spf=pass (domain: gmail.com, ip: 209.85.218.45, mailfrom: vvavrychuk@gmail.com)
Received: by mail-ej1-f45.google.com with SMTP id cw8so23985685ejb.8
        for <yocto@lists.yoctoproject.org>; Mon, 16 Nov 2020 03:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4IWF6cBNtXm3MBr5sJJCi4/W+j3P0z2keQFob6fkZ6c=;
        b=qpfW+RegCJA+nhkTr0bAA58ZqfLMDdOXylJClqw/iSrwxBi590C/dn4KnORsyg0E7i
         6WgnqBY3FaZHqhqI90WcWAjWTqpHYNKNDzV8yIKOmzJWmpjl+ORV1PdPyxXoxS+6fTCN
         sxzN4IsZMbi0GmFW4cVcXO/dd3MnUwWbpJDn87XlmqKwF63KjUZY7jnf4EkkR4f/yIjU
         /avYpb1VPMxe9tlhDhFWfM6TnFPtplNdussKrOaLSoujP1OZ+cCGZ+lNVBPuckbivJaM
         YRZTZ8sK7Tls4VqCOIbpFO8qGdvjTQqFVjC9HCTbdPiEVa3GgZP07ye4UPPBaCoo7ezh
         pOyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4IWF6cBNtXm3MBr5sJJCi4/W+j3P0z2keQFob6fkZ6c=;
        b=ta1m2jFZZJdGHEUSkTHns+WFXyjiibpqP8Tl24RTpiNf3897WpWgvFEOiFfwKBSC/I
         DBYGwRqI9Q7GZFqAsFXcMeyXQXMdyX6zNAofHKp+X0zvOkNBtq+jYdloaixT2nU+WNPp
         pkfsD89MH6vuFhgwcBssON8XdiHmna/n1lAFB7UxqHSj01wekDaSL+oqqsiYrrCbY7Hz
         ZzjLWUQ/uCzEK8LAeGghgIBbuQZM5tdmcj6XFW6LObSPOG6nE1Gk6/VFm/s8dE0ss+KR
         xXfre1KVvdgPAJ+7v9VYYZwK23uKVBQtRZPE1rU2j0AqeDQQovKNpn87mvO+qgU1rA7d
         Nhuw==
X-Gm-Message-State: AOAM530j4vHkTigozyAajOqzwRpvdfdmvmF9I3rYCcdF9JvzkYvMENA7
	uM+mI0pWpfkewyPepWB5Q/wU3A7FV9Fsst8eeMU=
X-Google-Smtp-Source: ABdhPJyu5CQIGAnjaljRfN3Uen5ifvI8onWGj/8S3ID3WWp0inYT/QoZZtNVV1acpd0P8siWdS2HqguonzuJZAf7qxY=
X-Received: by 2002:a17:906:ce24:: with SMTP id sd4mr13805271ejb.432.1605527732184;
 Mon, 16 Nov 2020 03:55:32 -0800 (PST)
MIME-Version: 1.0
References: <CAGj4m+4QE_Ujcoaq+pFgpku+sgkd8AARU5O7+W7X4MQCHHb6vw@mail.gmail.com>
 <CAP71Wjwpt9QtWVEieJ-U0jimk2ZOTvrmdt9bSHLri8KwDcmBjA@mail.gmail.com>
In-Reply-To: <CAP71Wjwpt9QtWVEieJ-U0jimk2ZOTvrmdt9bSHLri8KwDcmBjA@mail.gmail.com>
From: "Vasyl Vavrychuk" <vvavrychuk@gmail.com>
Date: Mon, 16 Nov 2020 13:55:21 +0200
Message-ID: <CAGj4m+75ODJhe9rdKZDT4fc2g-Z5mea7VLmQZM5oiMEsHGaz6Q@mail.gmail.com>
Subject: Re: Single page view of a particular manual
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi, Nicolas,

Thank you for your reply.

On Sun, Nov 15, 2020 at 8:06 PM Nicolas Dechesne
<nicolas.dechesne@linaro.org> wrote:
>
> Can you please describe what you are doing in the webpage? It should
> You need to select "All in one Mega manual" in the
> dropdown menu on the top left corner of the page. When you do that, it
> should bring you to this URL:
> https://docs.yoctoproject.org/singleindex.html
>
> Which contains the whole YP docs in a 'single' html page.

But as far as I remember, previously I could have a single page view
of a particular manual, for example "Development Tasks Manual", etc.
It is much more useful than complete single page view of all documents
at the same time (but this one is useful too in some cases).
