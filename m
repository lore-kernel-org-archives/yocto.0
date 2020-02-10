Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
 by mx.groups.io with SMTP id smtpd.web10.19749.1581329339347953066
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2020 02:09:00 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: basmevissen.nl, ip: 178.18.92.162, mailfrom: abuse@basmevissen.nl)
Received: from whisper.local (84-28-211-69.cable.dynamic.v4.ziggo.nl [84.28.211.69])
	(Authenticated sender: bas@emcodev.nl)
	by hosting.emcodev.net (Postfix) with ESMTPSA id 6B0D7212004;
	Mon, 10 Feb 2020 11:08:56 +0100 (CET)
Subject: Re: [yocto] Busybox and scripts licensing
To: Ross Burton <ross@burtonini.com>, lukasz.odw39@gmail.com
Cc: yocto@lists.yoctoproject.org
References: <SlU8.1580904983761204077.5wgg@lists.yoctoproject.org>
 <CAAnfSTvEkfxksg_V_G4QVmu77JKSuyEhvs5v30mdyEk9BWVVWg@mail.gmail.com>
From: "Bas Mevissen" <abuse@basmevissen.nl>
Message-ID: <34ab0791-5e4a-1636-af97-047e947421a5@basmevissen.nl>
Date: Mon, 10 Feb 2020 11:08:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAAnfSTvEkfxksg_V_G4QVmu77JKSuyEhvs5v30mdyEk9BWVVWg@mail.gmail.com>
Authentication-Results: hosting.emcodev.net;
	auth=pass smtp.auth=bas@emcodev.nl smtp.mailfrom=abuse@basmevissen.nl
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 05/02/2020 15:57, Ross Burton wrote:
> On Wed, 5 Feb 2020 at 12:16, <lukasz.odw39@gmail.com> wrote:
>> Let's assume we have busybox on our device (that's populated by default by Yocto). What license shall be chosen for package containing custom shell scripts?
>> I heard opinion, that all shell scripts running on Busybox shall be GPLv2(?).
> 
> That opinion is very wrong indeed.
> 
> If you write the scripts then you get to pick the license.
> 
> Ross
> 

If and only if the "custom" scripts are not clearly derived from 
otherwise licensed work that is. Clearly here means that you generally 
can include snippets from examples or existing scripts.

I'm actually wondering how things would be if you include (bash: 
"source") an existing licensed work and use part (say some functions) of 
it. Complicating fact here is that a lot of scripts don't carry an 
explicit license.

-- 
Bas.
