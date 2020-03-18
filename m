Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
 by mx.groups.io with SMTP id smtpd.web11.16696.1584542953084311671
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 07:49:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=LsJpj/1V;
 spf=pass (domain: stusta.mhn.de, ip: 141.84.69.5, mailfrom: srs0=vqhr=5d=stusta.de=bunk@stusta.mhn.de)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 48jCbm3VXyz4J;
	Wed, 18 Mar 2020 15:49:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1584542950;
	bh=Swq3jT0ut7dtFzEHGdVDoWGa0+RPojgPvt3JfNcClVA=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=LsJpj/1VNtGxlSHYkrJRHvNw0psoTylFl2KBYKSmSR8cndgl5fhDLcwWbFwP4v3LG
	 dU4UwoW10nwviIbr9C3VirYcijSmpHOr7UnQO7DyqGs8TUDkcTkQaSJsRpu4Lz78ae
	 KghljKJc88Yj6enLR5/Hxr/IqJOa5gY1bGkAdG2eKPsSg9wyYxVqGL6rH0RVp0FeWT
	 fg727jziOc5I2/eSUf5Wx3VEVI0vDRxzVECJNLeM06oVd+U/9ly3SEYC9QR4lTEKe6
	 6dPwuQ2m9pJ2SP3KNCGM9LIjtvi7KChkaE3Wtf4Zh4UU5NNfaAzilhC2J5X6a66nAN
	 UqsZW7bXGNePuqvp+u87NP3HaNdJBJvpXZvlc5k0ztKg1JkBIm2EiWHrP6+E1Kb5yZ
	 FMWUkNGOdaLsKJH3Zv+UDLRxaSOo39M3og9+aiAeQMOTksCtaYS9RxjWMVNaWM4th4
	 iYelZ1tk6JgJuIrDrgIQRQd9SolAp4lZF7VkxtYOZ7bU/RRZsloqKqUPgEeCNDjaSl
	 rfG8dY85/hkwHfVCZFZvudyQkBPZMLAcxBQlc3cjF1e1hRzjMuxBdXMaAYG3OMCcKj
	 mmQrAh1Tldo1bXesvMHftS14rxbu+ktzSjdrGpphSpR6go8W1KoJXNbh6RYvfBwilq
	 7SjGbjnwUGVVKul2P6k8zhv0=
Date: Wed, 18 Mar 2020 16:49:06 +0200
From: "Adrian Bunk" <bunk@stusta.de>
To: Jean-Marie Lemetayer <jean-marie.lemetayer@savoirfairelinux.com>,
	Paul Barker <pbarker@konsulko.com>,
	Mikko Rapeli <mikko.rapeli@bmw.de>,
	oliver westermann <oliver.westermann@cognex.com>,
	yocto@lists.yoctoproject.org,
	embedded-discuss <embedded-discuss@lists.savoirfairelinux.net>
Subject: Re: [yocto] What are the key factors for yocto build speed?
Message-ID: <20200318144906.GC23112@localhost>
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <20200318130126.GK104502@korppu>
 <CAM9ZRVuQyj7X0YFqkpSFWM2=kQHnu8ZGpMsD34ntHYny4x7XJg@mail.gmail.com>
 <251912923.167286.1584540746314.JavaMail.zimbra@savoirfairelinux.com>
MIME-Version: 1.0
In-Reply-To: <251912923.167286.1584540746314.JavaMail.zimbra@savoirfairelinux.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed, Mar 18, 2020 at 10:12:26AM -0400, Jean-Marie Lemetayer wrote:
>...
> For example one of our build servers is using:
> - AMD Ryzen 9 3900X
>...
> - 32Go DDR4 3200 MHZ CL14
>...
> It is a really good price / build time ratio configuration.

Depends on what you are building.

Building non-trivial C++ code (e.g. webkitgtk) with 24 cores
but only 32 GB RAM will not work, for such code you need
more than 2 GB/core.

On Wed, Mar 18, 2020 at 05:52:37AM -0700, Oliver Westermann wrote:
>...
> Any suggestions what to put in that build to get the most out of it?
> 
> Currently we're looking at a big Ryzen, 64G of RAM and one or multiple 
> SSDs on a "consumer grade" board like the X570.
>...

I would buy 128 GB RAM to not run into problems due to lack of RAM,
and Linux will also automatically use unused RAM as disk cache.

As long as you aren't running out of RAM or disk space all that matters 
is CPU speed, Ryzen 9 3950X with 128 GB RAM would be my choice unless 
you are on a tight budget.

cu
Adrian
