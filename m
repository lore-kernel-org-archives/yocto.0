Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com [209.85.208.196])
 by mx.groups.io with SMTP id smtpd.web12.7518.1602146248462991890
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Oct 2020 01:37:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=GRc2BiOL;
 spf=pass (domain: burtonini.com, ip: 209.85.208.196, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f196.google.com with SMTP id a23so4048843ljp.5
        for <yocto@lists.yoctoproject.org>; Thu, 08 Oct 2020 01:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SrOy9TLa7M1qX1Uh4MF+2doqQGoF0uQfv4npuNx3U+c=;
        b=GRc2BiOLMG/tXa1nQIJQn2RoLl6CPOIbhR2uH2o5KjASgUQ2Ucv8XwAJ9JfXL4KhZd
         u/pBX1GxxI+Iusv7VJ/uPrGqUh1I3ilErl0AOXDfL+5M3OFufFTmJAbVFChk1CjFKyYj
         WtYODlDnvNUZsZ9Gj47KSLhuVkpoTMSqD9+Me1Yn6FKXpzp5uXdILmuMTMeDy2sZoi9+
         5MoVeED+NhU3ngkYxhSjOzCjC3lOZ3FZ0vSF2VTTNUkYj/L331DM6SKgYqIDN0xXK+E7
         jAeP9r47ZPqEWyFKQEuvgTGjkeqD5nzUvRkFkvm7EMza351wCiyVeJ/tbyUub37GMkxh
         yjAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SrOy9TLa7M1qX1Uh4MF+2doqQGoF0uQfv4npuNx3U+c=;
        b=iV+kMJnyAd4IObKI6TWpPwNirmHHxNAWesoOUFdhR05669DgVJFe73BfRkRRouR2PL
         MIgELJQ/g6v+7drD4l9+aVAzLndAo7eEzVheIH2tJ/gXBKYMJ0WJA0K9NPY0dK9RGlR7
         4aN6OiehYcdwJlYQkDgpU9cKOi+K2SFxZnVcu3U/KZK2pCvn5sUWImfhO9coK9zcOjSd
         bMgqW9Hu9rXxjsqHuZB3GQYJw8XsOe9NoJrBfZXQRgMyyxLCPEb0JW8OIXtjiDv6jx+c
         WjGi3bGg1qGihiKZo4WtGnCigAPOBwlWJNnucMgPVmeuWM5NYRTKY/sNLq9YCMx54qpo
         Q0eA==
X-Gm-Message-State: AOAM530XXo5wiIhgU4Y/FcxawkUN/EK8CIJOxtcbkc54mXoYpckF3NvQ
	o2kJorIoSOtZHZeWKokN5zuTM2PaclzfJgcX5/MQ8Q==
X-Google-Smtp-Source: ABdhPJwSDfC2HglzlnLMqgprriIYof6QsHdWB8IKL/SWLDZd4rgRsDNWq5FGK8QlxLL8fg54u73q0sfKyyW7DfON6/E=
X-Received: by 2002:a2e:b0cb:: with SMTP id g11mr2857834ljl.397.1602146246217;
 Thu, 08 Oct 2020 01:37:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAM9ZRVtfC7BBtSC0YoBX3VzM8RmYQZp1LDSp7FA5ZUmSAmE-OA@mail.gmail.com>
 <30730.1602060179317171509@lists.yoctoproject.org>
In-Reply-To: <30730.1602060179317171509@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Thu, 8 Oct 2020 09:37:15 +0100
Message-ID: <CAAnfSTshcSvkcabVBW31SwHH=CsCQAiH7Gynid_WyUSX+7Nq2A@mail.gmail.com>
Subject: Re: [yocto] Only index.html is cloned in private repo clone recipe #yocto
To: Bel Hadj Salem Talel <bhstalel@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 7 Oct 2020 at 09:43, Bel Hadj Salem Talel <bhstalel@gmail.com> wrote:
> Thanks for the quick reply ,
> Actually I was wrong about https, I changed it to http and added: SRCURL = "git://gitlab.tools.comp.local/comp/sense/sense_frontend"
> instead of SRCURL = "http://gitlab.tools.comp.local/comp/sense/sense_frontend"
>
> Now when I do_fetch:
>
> ############
> ERROR: sense-web-1.0-r0 do_fetch:
> Fetcher failure for URL: 'git://gitlab.tools.comp.local/comp/sense/sense_frontend;protocol=http;branch=master'.
> Please set a valid SRCREV for url ['SRCREV_default_pn-sense-web', 'SRCREV_default', 'SRCREV_pn-sense-web', 'SRCREV']
> (possible key names are git://gitlab.tools.comp.local/comp/sense/sense_frontend;protocol=http;branch=master, or use a ;rev=X URL parameter)
> ############
>
> I'm trying to understand the issue for my Yocto knowledge.
> Can you help me understand this or fix the issue ?

The git fetcher needs to know what SHA to unpack.  You haven't set
SRCREV, you can either set it to the specific SHA or to "${AUTOREV}"
if you want it to refetch every time it builds.

Note that the [md5sum] and [sha256sum] flags are only needed for HTTP
downloads, so you can delete these lines.

Ross
