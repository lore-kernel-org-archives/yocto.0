Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.13000.1592815432046170300
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jun 2020 01:43:52 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49r2xw51wGz5tlB;
	Mon, 22 Jun 2020 10:43:48 +0200 (CEST)
Date: Mon, 22 Jun 2020 10:43:47 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Tomek The Messenger <tomekthemessenger@gmail.com>
Cc: Gabriele Zampieri <gabbla.malist@gmail.com>,
	yocto@lists.yoctoproject.org
Subject: Re: [yocto] MACHINE and inc files
Message-ID: <20200622084346.74xni5xmxhhbdurw@qschulz>
References: <CAA4NGyuwrkQrQ05AR_2OyaYTxrF41sqx1AoaDFbJaU99TwCjxQ@mail.gmail.com>
 <CAAx3WaB-8BapkcGYtz2KftvAY7hE0HRBcEKfhKs5V-V+H3M2HQ@mail.gmail.com>
 <CAA4NGyv2S1S009zeTezOt+DU42ggfOGt5priOVc49Toi9aCFPA@mail.gmail.com>
 <CAAx3WaA4cCVD8rz5SV13Ciku5+YP+bE92AmEea+Q+V6-1Ur=EA@mail.gmail.com>
 <CAA4NGyt+jmBTuumhQ1df-nOr0x9f0VnVfXH9VT3WctiuDkrVdw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA4NGyt+jmBTuumhQ1df-nOr0x9f0VnVfXH9VT3WctiuDkrVdw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Tomek,

On Sun, Jun 21, 2020 at 03:09:40PM +0200, Tomek The Messenger wrote:
> The problem which I have is that this one below doesn't work (*):
> KERNEL_MODULE_AUTOLOAD_velismate += "A"
> KERNEL_MODULE_AUTOLOAD += "B"
> 
> The two kernel modules are autoloaded during linux startup only if I have
> in bb recipe this one:
> KERNEL_MODULE_AUTOLOAD += "A"
> KERNEL_MODULE_AUTOLOAD += "B"
> or
> KERNEL_MODULE_AUTOLOAD_velismate += "A"
> KERNEL_MODULE_AUTOLOAD_velismate += "B"

Because there is a misunderstanding on how _<override> works :)

KERNEL_MODULE_AUTOLOAD_velismate += "A"
KERNEL_MODULE_AUTOLOAD += "B"

does not mean that you add A in case of velismate machine is used.

You can have *many* variables that are override-able by machines (or
other OVERRIDES values).

In your example above you will actually have two variables for Yocto
internals:
KERNEL_MODULE_AUTOLOAD_velismate = "A"
KERNEL_MODULE_AUTOLOAD = "B"

You can check that by using `-e` after bitbake.

What you want is to **add** to KERNEL_MODULE_AUTOLOAD **only** for
velismate machine. That can be done with:
KERNEL_MODULE_AUTOLOAD_append_velismate = " A"

Note the leading space, and that it's _append_velismate and not
_velismate_append.

This will just work.

> If I have like here (*), so kind of some mix, then kernel-moduleB isn't
> autoloaded.
> On the other hand the below one works OK:
> RPROVIDES_${PN}_velismate += "kernel-module-A"
> RPROVIDES_${PN} += "kernel-module-B"
> RPPROVIDES install in filesystem your kernel module and based on variable
> AUTOLOAD some magic during building kernel image is done that after linux
> startupu your module is loading.
> So I try to pass the above by adding:
> #include ${MACHINE}.inc and in *.inc file I will use KERNEL_MODULE_AUTOLOAD
> without part "_something" as it is problematic when mixing.
> so my temp.bb recipe will looks like:
>   KERNEL_MODULE_AUTOLOAD += "B"
>   include ${MACHINE}.inc  #here for machine velismate kernel module B will
> be added
> 

As per KERNEL_MODULE_AUTOLOAD documentation[1] you can actually put it
in the machine configuration file, which makes **a lot** more sense :)
Forget about all your "I'm pulling my hair"-tries and go with that,
trust me.

[1] https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-KERNEL_MODULE_AUTOLOAD

> But the problem is that my MACHINE is:
> 'velismate-x11'
> 'velismate-x21'
> not just 'velismate'
> and how to ignore x11,x12 words and not do anything in temp.bb if in future
> machine velismate-x31 will appear.
> It must be something like
> include ${takeOnlyFirstWordOfMachine(${MACHINE})}.inc
> so I probably need to implement function takeOnlyFirstWordOfMachine but
> how, I don't know.
> In makefile it is easy, You have:
> ifeq ($(findstring velismate, $(MACHINE)), velismate)
> endif
> but in bitbake I don't have idea how to done it in the most simplest way.
> 

You want to use MACHINEOVERRIDES for that. Add your 'velismate'
"family" to it (AT THE CORRECT PLACE, use bitbake -e to check, rightmost
in MACHINEOVERRIDES has top priority). You just have to make sure
velismate is in your new machine configuration file.

IIRC, you would need to do:
MACHINEOVERRIDES =. ":velismate"
before all require/include in your machine configuration file.

https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-MACHINEOVERRIDES

Quentin
