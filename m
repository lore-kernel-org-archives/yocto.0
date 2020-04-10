Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.280.1586551665831754278
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Apr 2020 13:47:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=afMqy+BJ;
 spf=softfail (domain: sidebranch.com, ip: 140.211.169.56, mailfrom: leon@sidebranch.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BDE6E019B4; Fri, 10 Apr 2020 13:47:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9571E019AE
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2020 13:47:42 -0700 (PDT)
Received: by mail-qt1-f175.google.com with SMTP id b10so2441174qtt.9
        for <yocto@yoctoproject.org>; Fri, 10 Apr 2020 13:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2W0Tijpspf4PgaTQArtYfTnCdyjnnsw9ewSIDKwkfcg=;
        b=afMqy+BJq6ehzNqcck9rQpTnp2VYhI1o+S7JPBC5Y+oWqAuyvAFzbPyUPhYyJHsvuq
         aun4e/1qZhgqAXhX6lEnK9Nu7fJ6FQe8NIrKSrFdQB8CD02G0YT0unqDrAcvC3J2OLkz
         W/rRnVyybC/QEFQto2+idWUKSK4wg6yYEmXWXNQViNH11r4GsIKkaArvPLtYt9SGhvD1
         nx8he5wyB0xRckkSn46o9G4n9B1az4VLR44aozXCbEWM4RYTuvdyiPAEac8MzvWziv6g
         PIjwebeLr3zsJmRXYjGvxNTK1vUO2rU3nRRqH2+far9Il77lGM1dkXc8Y2frzJi+GNs6
         IikA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2W0Tijpspf4PgaTQArtYfTnCdyjnnsw9ewSIDKwkfcg=;
        b=SRH5FSZvVaDAxwNR4bUO2P7oPjFZEsvvIzlQ8r0XLDOiHQhxboed7TQg1UqbK5TyV/
         UmfpzS2nxwIBAdIntPOr1r3VhUwsclzNuWPm6RNT2zI1hR3PgWbDV50DjXUGTYTUGltz
         ws6ujJvmVhwxLGH9cWrAaEQ3smEBxob2oFqDJP1ky4SsD5gSKiCAOnBREwc2Zymw1Zn6
         BhXY9RG+idpYo3rSpQTungKrWJAvxiyNf9EYfCjphffM+jwEJPoivmLIqiLUQNherL4J
         sAyXkXcAFu6vuOzKLD+qR1r+g6ZNrH5mIaYJIBqSrehJTVrvOWlOkWN1WpAk6Hw26TU8
         L8uw==
X-Gm-Message-State: AGi0Pubz/8Mc/lnjwnZV7lEdMMV9KNSUQdCogpA+DuBTtPHQx0AypLcZ
	EO0DXQ02J3ifYEVOvhmw6cOGo0dwuMh0WjlEC+stew==
X-Google-Smtp-Source: APiQypLEcUkioV0W1R0yybF4YcY7JQgHCT5YKP3uG9G5EJa9roAblZMZI1DYqmOvyvNuq7zrE12QaN/O3ktu5C+U/2k=
X-Received: by 2002:ac8:4790:: with SMTP id k16mr1059280qtq.276.1586551662148;
 Fri, 10 Apr 2020 13:47:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv35mccyzb9fqtjpvmExtz-zZQ6a5Xk5mcn7k1pUJx+T7WQ@mail.gmail.com>
In-Reply-To: <CAAfyv35mccyzb9fqtjpvmExtz-zZQ6a5Xk5mcn7k1pUJx+T7WQ@mail.gmail.com>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Fri, 10 Apr 2020 22:47:30 +0200
Message-ID: <CAMjhiJisHc1+jooqtqm7v51-ONDVQTPXCZ1RvAmuCCsa0A7p6A@mail.gmail.com>
Subject: Re: [yocto] meta-intel: Override SERIAL_CONSOLES variable
To: Marek Belisko <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi all,

On Fri, Apr 10, 2020 at 8:56 AM Marek Belisko <marek.belisko@gmail.com> wrote:
>
> Hi,
>
> in meta-intel in machine configuration SERIAL_CONSOLES are defined as
> : SERIAL_CONSOLES = "115200;ttyS0 115200;ttyS1 115200;ttyS2"
>
For a more generic solution, could this be made  a weak assignment?

I am on a SMARC x86-64 module which only one serial is useful, so I
would like to downtune this variable as well.

Regards,

Leon.
