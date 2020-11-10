Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
 by mx.groups.io with SMTP id smtpd.web10.25641.1605002416337215194
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 02:00:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=AC1r7rGf;
 spf=pass (domain: konsulko.com, ip: 209.85.210.44, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f44.google.com with SMTP id a15so10212729otf.5
        for <yocto@lists.yoctoproject.org>; Tue, 10 Nov 2020 02:00:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IPVdtv9Ct3L4eebfak8pHnUhAaUD1UQJqlXLTGv4GvU=;
        b=AC1r7rGfKBJYU2vkIuceFv2OiH68I3Z2c0BX3s57ySfizl27wLYLYUHV1vl7DC+MDd
         kBIzbLf3GHViJ+b3H/r0y2CRo4/XuHXLDEXeZyInQBCIZZa6x88/mrwDSIcudH3FPOc3
         YMdFr/a5Y5aHSIMqUuij24vCpodL1kLF9eNiE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IPVdtv9Ct3L4eebfak8pHnUhAaUD1UQJqlXLTGv4GvU=;
        b=isoALaYxB1ne2EYUkU3MbZHGsd/la8QAq7jgR8M5qp0t9YeqnY3v6XMI37A18JDIMz
         AmqeGAVDpif+BgLUa1jcIYUP0V37n7ycngqGPs/ytDgIbOY5nsp7gL2FpiZVT0m3dm/2
         WcGWLaLGn+dPp6V5hH877BXOawPVQwWtJd3IF6w1SeLp3cLMWd/23MqwUGoezYTzpOy7
         ZfuSOEwmEq1MqMNjRYVom7R3VBh7kqQZSOKq7QYjbxsWD8xDBc8eb5Z5BK7ye5nrvDQN
         7ZywjyeHCnDOXFS8P6SsHS3A6v1oM5+QUtVb2Lxn8igOwh2yugUSqm/mxM/9zTY/jGrq
         pjlg==
X-Gm-Message-State: AOAM532G41QcI28Qfic69T3vN+e76cUnUD4TbnwCgl0bWOF6kJ6MWXNH
	o4qpc8QVEz+4Nkuf6k2VIAoRKAP8I9GVkRoLLbiFlg==
X-Google-Smtp-Source: ABdhPJx529ml6P2pjvnFLxMtkumO+QjWtLH93W6Ll0eYYYqMXtYMUS7KTmXlWiBiS5WUbTv9Sr/BSOZ8aoRg6PhE96I=
X-Received: by 2002:a05:6830:831:: with SMTP id t17mr13929743ots.92.1605002415684;
 Tue, 10 Nov 2020 02:00:15 -0800 (PST)
MIME-Version: 1.0
References: <0vid.1605002161880917449.Q6oT@lists.yoctoproject.org>
In-Reply-To: <0vid.1605002161880917449.Q6oT@lists.yoctoproject.org>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Tue, 10 Nov 2020 10:00:06 +0000
Message-ID: <CAM9ZRVv4sjMZkLXVz-dd6+bdRA=4KuLtNGZqFdsn0JyqExoQPQ@mail.gmail.com>
Subject: Re: [yocto] poky oe-init-build-env doesn't update local.conf with changes from local.conf.sample
To: Andy Basey <a.basey@landguardsystems.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 10 Nov 2020 at 09:56, Andy Basey <a.basey@landguardsystems.com> wrote:
>
> I have an existing build with packages defined in my own layer outside the build directory in the local.conf.sample
> I want to add a package so I add it to my local.conf.sample and then source oe-init-build-env again
> It doesn't overwrite the local.conf in poky/build/conf as it already exists
>
> Is there a preferred way to make it update?
> Or do I just need to manually delete the files in that directory and then run source oe-init-build-env?
> I don't want to delete the whole build directory as it takes far too long to do it again from scratch
>
> For reference I am using the local.conf.sample because that is my source controllable config file

If you're adding packages to an image, the best thing to do is to
create your own image recipe and put that in your layer (so it will be
under version control).

-- 
Paul Barker
Konsulko Group
