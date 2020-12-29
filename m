Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web09.6720.1609206301207341002
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Dec 2020 17:45:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fhV/K1ZP;
 spf=pass (domain: gmail.com, ip: 209.85.218.45, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ej1-f45.google.com with SMTP id ce23so16383841ejb.8
        for <yocto@lists.yoctoproject.org>; Mon, 28 Dec 2020 17:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=evZzJVf7p5t9NO0Zvs2WFzHeHunrNltTjeMbz4CJHns=;
        b=fhV/K1ZP53EpDA/EsJdYzZjbE8lAwkYqWmR/ydGoDyKWxoM1+kFld3QJvIABFL58WV
         g8AMiVa2+aA0AbadJbKuu7ox/Q1K4z/3phVyk3hmdzzd/cHGT3yACW62nyT7YjkUBqI8
         HzJstAbau1xtw17kNCPOx82mISzRGESrH/YhR5XMW8HnoYOZvGgPsF3kzpG2kvJF+zai
         BHq5dm/W7nRUbpUrRp63Vx8djuLOS0NJrM9GmPq5UHmMucKg15QoL1UKjHD+A8ZV9TDI
         8T9pbyEDarexLPEZkR4FybuUG25c/CwV3p4934+HCGeciIIE2sktqqot1oQTTz2A5gMT
         Jywg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=evZzJVf7p5t9NO0Zvs2WFzHeHunrNltTjeMbz4CJHns=;
        b=c7NfO1yUwrKJ+LhNCocDtkNohXPRbBpylefwYNIu/vWaGz/9eA49h9F/NDtvqAzWSX
         Q3fk9mIMgIRJ69TeEPWGa3MtkeLf/9AobKGDTMztr1I1jP6uCHlpOc+WpzGEYGx0e1Ry
         Zy9IAqRasvood7iOPR8LGWg9tqUhHWNp2kOAxtW8X4F/up0teFsPP2vNe/y/Ed5Bvunc
         0CLiOwH5npr1Q4A2z8nolIAfpJ0K7BXgsItyGfcD4E0Kqe4+ZDe1VfK2F6sPPiWpU4Qq
         yJYQTbPipeb0aYt3r3sRGA1XROF9xMybL7OpIyFBwBTqEWFVlH3S5QHtnTPt5quME2co
         n6EQ==
X-Gm-Message-State: AOAM532imEFXXeKmRJqV4wc1KBCV4E3t4DoBBIIzygFp5NAIZfP8zGb1
	88CLIZC+w67inE7KJqCKBDe4cvSZIXXEGH+RsrOlmvjt1AeYow==
X-Google-Smtp-Source: ABdhPJwWpIXjD+MgURGmbo6Chioa1Ka0z2l7UY7D6aMaR0xDPU6xB3wDMazyUZ1Bns3ktqhSTXpiAan2zqeivO1be88=
X-Received: by 2002:a17:906:ce2b:: with SMTP id sd11mr44343595ejb.334.1609206299863;
 Mon, 28 Dec 2020 17:44:59 -0800 (PST)
MIME-Version: 1.0
References: <fyAY.1609200714711197795.Hys5@lists.yoctoproject.org>
In-Reply-To: <fyAY.1609200714711197795.Hys5@lists.yoctoproject.org>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Mon, 28 Dec 2020 20:44:48 -0500
Message-ID: <CADkTA4PdYsAjURfo4m3+1usN55p-fZd6rFQM2XcFVUkEB8o02Q@mail.gmail.com>
Subject: Re: [yocto] Prevent WIC image from being built?
To: Howard <howard.egan@avid.com>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Dec 28, 2020 at 7:12 PM Howard <howard.egan@avid.com> wrote:
>
> Hi:
>
> Was wondering if there was a way to exclude wic image from being built.
>

If you remove "wic" from the IMAGE_TYPES, it won't be built.

https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-IMAGE_TYPES

Bruce

> Many thanks, and Happy New year.
> Howard
> 
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
