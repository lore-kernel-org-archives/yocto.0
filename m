Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web09.1074.1624474302801194268
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Jun 2021 11:51:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tdyWIWl/;
 spf=pass (domain: gmail.com, ip: 209.85.222.180, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id f70so7734547qke.13
        for <yocto@lists.yoctoproject.org>; Wed, 23 Jun 2021 11:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=LWT5/ZOH5OmRlZZPJ2z+F1VF5nWa/57cBexoxlK1t4k=;
        b=tdyWIWl/Iqumohb43IW/QAJ+Ed/1B1ktY36nv8cZ4270F41Xlxh6xidnRdUn+f+Ggn
         jqwTX45oiS1AE0RXgwPR0BtgxbjP/dtT6AS9dHA+f/3Se3HfWdWmaEZSTqBE6bPcWfie
         bukxa0fnM9hNGO5/MHIu2xxBveAkdXvuBZSM5LpBWgnZwmLa7hVMark18929rk8H9XwM
         YmEScGwwv72+iD+dOmXGXDeIwPl9TBgMgHm2LOHg9cOXT4dD2YOwCrBDX7a+SbppVTzb
         VzA5UK21a3RF9gwwFORErDU8oOA8Opss86Rqy38etRvR+PwwT7HGUvtuxeJg0ojt6iZ9
         /x+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=LWT5/ZOH5OmRlZZPJ2z+F1VF5nWa/57cBexoxlK1t4k=;
        b=ugPuyBL49udaVhCr1zLSXZgUcw8xAFoWPbdXDWd0oGP7VlGz7xpzXh2dgjfrtluvYq
         htWy1LYqTfKbqir+jxYjj/SvFvRm/ADHl+FoaiZtijBFk0qvrI8KKHPdtFU7czi4zmg3
         umsqpZfQpbVgAotMlzuVRJSjQAs0D3SHDFp+v4ZQbOcUYXawQumNcaYTRhyBRvYjJCOt
         ZYOKuxWqjhB9ftv3GRT54/9E8N4carKk/f0e0kjjTspv5Q69cK76AmAAOlAj0WO8n/oa
         3IpEW81sLCUuGiP8dQCYd+dOtSkSUz4KJgoSJKXfWxTn/oMzKyEf4iEWdKCCnmUoMRW5
         RZAQ==
X-Gm-Message-State: AOAM5334AXxm/qsCy1eRMbnWYZkbAM804tRvHsEhRN3RqlxSMxJKh3MK
	tEy4zH3RDwKTONsNW1+TzWg=
X-Google-Smtp-Source: ABdhPJxNS0Swot9iU657hub/l2oIB4z7u9uxPZ4RDhHNDZpZwRyWQEAJi6/XeV9n7IYr5BcrpwkR4g==
X-Received: by 2002:a37:2e86:: with SMTP id u128mr1567969qkh.26.1624474301902;
        Wed, 23 Jun 2021 11:51:41 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id x7sm506754qke.62.2021.06.23.11.51.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jun 2021 11:51:41 -0700 (PDT)
Date: Wed, 23 Jun 2021 14:51:39 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: ydirson@free.fr
Cc: Khem Raj <raj.khem@gmail.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-rockchip][PATCH 1/4] centralize console settings
Message-ID: <20210623185139.GA13329@localhost>
References: <CAMKF1spxfj_RD3p_1yfjLSqTLYYaWrJ0PY1jZfbeMmigpWQ-RQ@mail.gmail.com>
 <111537338.865092101.1624471807760.JavaMail.root@zimbra39-e7>
MIME-Version: 1.0
In-Reply-To: <111537338.865092101.1624471807760.JavaMail.root@zimbra39-e7>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed 2021-06-23 @ 08:10:07 PM, ydirson@free.fr wrote:
> > De: "Khem Raj" <raj.khem@gmail.com>
> > À: "Trevor Woerner" <twoerner@gmail.com>
> > Cc: "Yocto-mailing-list" <yocto@lists.yoctoproject.org>
> > Envoyé: Mercredi 23 Juin 2021 11:32:57
> > Objet: Re: [yocto] [meta-rockchip][PATCH 1/4] centralize console settings

> > > +RK_CONSOLE_BAUD = "115200"
> > > +RK_CONSOLE_DEVICE = "ttyFIQ0"
> > 
> > while I appreciate this change, it does have an effect of removing
> > the
> > users away from
> > BSP variables that core metadata layers have, e.g. SERIAL_CONSOLES is
> > a well defined
> > and documented variable and if we synthesize it then its hidden which
> > is fine if we document
> > the new variables equally well although that means every BSP will
> > invent these kind of
> > variables so if a person was doing RPI and comes to work on rockchip
> > boards he has more
> > learnings to do.

Good point, thanks for mentioning it.

> What about making this change at the poky level, then ?

I suspect it would break things in all sorts of unimaginable ways ;-)

For example, SERIAL_CONSOLES (note: plural) can contain more than one
baud+device pair so if we try to break out the baud and device then we'd need
an array (?) so we could break out multiple baud and device pairs (?), and
then that would get messy...  ugh!
