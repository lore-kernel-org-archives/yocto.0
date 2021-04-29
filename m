Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web09.3152.1619731525098821825
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Apr 2021 14:25:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=wdo4Iosi;
 spf=pass (domain: burtonini.com, ip: 209.85.221.53, mailfrom: ross@burtonini.com)
Received: by mail-wr1-f53.google.com with SMTP id q9so14178290wrs.6
        for <yocto@lists.yoctoproject.org>; Thu, 29 Apr 2021 14:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=n2CR28BhU6wAyYT6DL8lnx2JrJHg7aR2vFg6OqwjWEQ=;
        b=wdo4IosiHpQlwi71i7fJKrXcLUOcslrn8PC9TC8GGysXvNpKFMR+0tDeZUEe0yc/XK
         WEgyufEoroKnh/+Oj7V4H3CSoDsSVvJvMPM4jcVn05mJ+24QGHmzJXYJW+40zlEEf+hm
         1NQovl4KhphQvSUy1+8ztBgCq1a0M+oitDv6FhQukHpiWoF4JF52UxJGPvs+BKv6i6s4
         fHjYnicfYCde92t5hH+/xIh/C12cI9ZHhV6uoNQES83VMzRYVrLBtI/cnuTMIIqoIS08
         9jYK3RNOXnZKbK42nJL/2yVXX7LMLCzfSZQDdX7bZEInFgj7jAecq17B6VeaPo7EUs5t
         z8WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=n2CR28BhU6wAyYT6DL8lnx2JrJHg7aR2vFg6OqwjWEQ=;
        b=YTpTQrIMhYF+NScDKud/o6/7CrXhf5FRpEdVa84YtMRnq4wbqghh/R1rqqpSMFKCNt
         G4nWS5K9JbTvoW6sAQ5V9mt9/kpw3HkKMv0oabKcLbP5157oDARG8uvhIU6rmeH6eNFH
         CIJJ+IuctSHOVSMYbwM1v7nc5JDdM45K1/LfUso6GjwpAg71Mnyw8Xt2JbRt4PJRS0Go
         7hDOxA7AX5D62aV1LkGCvYG8FQ/oZAcI8Otz+mylYMIYjxJOSdr0OlhjKr0LbWyrG/Uh
         Yj+Sp4DWf1DcrCMiehZzDj/ZP2AV2V8XyEOuw59lFPPTY5ww1gCiS6lQYCf9fKNbuE8C
         U9DQ==
X-Gm-Message-State: AOAM530REebMHMZD2xmxztJ3y+cUfMXbOWmQble8HW5aTr0DRIZ6Cl5T
	/ilQEwzfNqsMh+TIFsUQyh0YXD/XO3wYgYH/f/C8nA==
X-Google-Smtp-Source: ABdhPJzKW6lbX+X+iq2+LiidU8qdJNUS1jgNurZFLVTuD0cVodUvAioejhKEBxBBFE40UCKHTv0FM0BWKbsjlKIHO+M=
X-Received: by 2002:a5d:4c8a:: with SMTP id z10mr1977495wrs.395.1619731523649;
 Thu, 29 Apr 2021 14:25:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210428150904.958213-1-ross.burton@arm.com> <d194d584-ce2f-9d27-f645-d05eafa378c0@windriver.com>
In-Reply-To: <d194d584-ce2f-9d27-f645-d05eafa378c0@windriver.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Thu, 29 Apr 2021 22:25:13 +0100
Message-ID: <CAAnfSTukcCWtcLktcpXn1kKwZ7ME8LqbANomjeSzm56TL1axCw@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder2 1/2] meta-arm has a hardknott branch now
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 29 Apr 2021 at 20:35, Randy MacLeod <randy.macleod@windriver.com> wrote:
> It doesn't have a yocto-3.3 tag yet...
> Could you add one?

When we actually release, yes.

Ross
