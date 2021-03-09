Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.11596.1615306916433849842
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 08:21:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=GWQngLM3;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd13147.aruba.it (smtpcmd13147.aruba.it [62.149.156.147])
	by mail.yoctoproject.org (Postfix) with ESMTP id C84C938C052B
	for <yocto@yoctoproject.org>; Tue,  9 Mar 2021 16:21:55 +0000 (UTC)
Received: from p50 ([213.213.6.58])
	by Aruba Outgoing Smtp  with ESMTPSA
	id Jf7JlK35fpL4IJf7KlxGGS; Tue, 09 Mar 2021 17:21:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1615306914; bh=i6YIjkBDr5E0dAYdEFbgpbvqJtD1Dfg01ewHcWBUsSI=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=GWQngLM3MVdSlmpCNi29ukel6qI4tLqqA6gIecAGFcHtgZtNbuMxta79DkkQpKWt8
	 YOZXWcKK/rSkWnWyCmSsaVYWn2JcYi+hLqs8I+scMBmUzxYJZtrmrKDIHFqE8tszpw
	 +JICLqQLe79qu/PZyIxWnWceqWr0BXxAWVb81PnYcQAEDBLgH2XSe78so4W1zQdv8f
	 Yl5L7aGmwLQ2e5rqw7hFCy/WbezkyBP1A4K9SaW3l1GYgnlX7PRm2vqTZFBji4q4Vi
	 S2m560VLsMBWWxXplM/kjeBzFTHOipv0wiRCI9uBlUJppJ9jy8jTuokVhmYieUFyKZ
	 r0mGyqcq0RAGg==
Date: Tue, 9 Mar 2021 17:21:53 +0100
From: "Mauro Ziliani" <mauro@faresoftware.it>
To: Laurent Gauthier <laurent.gauthier@soccasys.com>
Cc: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Message-ID: <2E0D5BE0-D90B-49BA-BC73-38EF48590586@getmailspring.com>
In-Reply-To: <CAGbd71T4PFcivOUOp+t=Qy5Hq=aJh2ZcGfxaYM+gbKaTKkNpYw@mail.gmail.com>
References: <CAGbd71T4PFcivOUOp+t=Qy5Hq=aJh2ZcGfxaYM+gbKaTKkNpYw@mail.gmail.com>
Subject: Re: [yocto] Swap management: vm.swappiness best values?
X-Mailer: Mailspring
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfDf1K3FdAmFhziisU3U23tEL4Whr2WshboaM4lPgZw40cr7V8+7Zu+ZOBcbBH4T2o7VDqUG2i+Qqc7F0oZO2ECz/J7UEFn/wHfec3kOQIyXySGsEp4KR
 FBR62BU7kio/M7idyY0V9gJCUpbAN0J1gf+MG2BRgOdv9xTn9LT815sYtOZYBlXRBB7KZHZzJQjCmCMcpLRHl+TR3ZvNB0wklos=
Content-Type: multipart/alternative; boundary="6047a0a1_29bfae65_c45"

--6047a0a1_29bfae65_c45
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Thank you for the answer.

May be I explain my problem not so well :-(
I don't have enabled swap partition in fstab and if I run swapon nothing is shown.
The swap partition is not defined anywhere in the system. Only the manager is available in the kernel.

I made an analisys of memory usage before posting this, and I see that when the free ram drop under 600MB the kernel thread mmcq/2 and kswap0 starts to work.
I see the this 600MB is 60% of 1GB, and vm.swapping=60.

So I ask here if someone has some experience. with vm.swappiness value on embedded.
You have centered perfecly the matter about the slow-down: when memory drop to low, the system is tired to work.
I cannot explain why even if no swap spaces are defined, kswap0 works
Now I try to put vm.swappiness=6 and it seems to work well
MZ
On mar 9 2021, at 12:17 pm, Laurent Gauthier <laurent.gauthier@soccasys.com> wrote:
> Ciao Mauro,
>
> Sounds more like a pure Linux/UNIX question than a yocto one :-)
>
> As you most likely know on an embedded system which uses permanent storage (NAND flash or eMMC) that is subject to wear it is important to completely turn off swap.
>
> At runtime if the system is up and running then you should issue the "swapoff -a" command.
>
> But the proper fix is to remove any entry from your /etc/fstab designating a swap partition.
>
> However I would be surprised if you had a swap partition configured in your system as most embedded systems don't have one.
>
> Instead what I am thinking is that you are likely seeing a system slow-down due to your system's memory usage coming close to 100% of the available RAM, which in turn causes all calls to memory allocation functions to slow down (algorithms have to look harder to find available memory).
>
> I would suggest that when the issue occurs that you first check the current system memory usage and have a look at which application is using the most memory and figure out if there is a way to optimize it and reduce the memory usage.
>
> Kind regards, Laurent.
> On Tue, Mar 9, 2021 at 10:03 AM Mauro Ziliani <mauro@faresoftware.it (mailto:mauro@faresoftware.it)> wrote:
> > Hi all.
> > I'm working with Krogoth on a imx6dl board with 1GB of RAM.
> > I don't setup the swap space, but sometimes I see that kswap0 task starts, and the board slow down.
> >
> > I'd like to change the value of vm.swappiness to avoid swap requests
> > The default value of vm.swappiness is 60.
> > There is a minimum value for vm.swappiness?
> > Best regards,
> > MZ
> >
> > 
> >
>
>
> --
> Laurent Gauthier
> Embedded Linux Systems & Software
> Phone: +33 630 483 429
> https://soccasys.com
>
>


--6047a0a1_29bfae65_c45
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Thank you for the answer.</div><br><div>May be I explain my problem no=
t so well :-(</div><br><div>I don't have enabled swap partition in fstab an=
d if I run swapon nothing is shown.</div><div>The swap partition is not def=
ined anywhere in the system. Only the manager is available in the kernel.</=
div><br><div>I made an analisys of memory usage before posting this,&nbsp; =
and I see that when the free ram drop under 600MB the kernel thread mmcq/2 =
and kswap0 starts to work.</div><div>I see the this 600MB is 60% of 1GB, an=
d vm.swapping=3D60.</div><br><div>So I ask&nbsp; here if someone has some e=
xperience.&nbsp; with vm.swappiness&nbsp; value on embedded.</div><br><div>=
You have centered perfecly the matter about the slow-down: when memory drop=
 to low, the system is tired to work.</div><br><div>I cannot explain why ev=
en if no swap spaces are defined, kswap0 works</div><br><div>Now I try to p=
ut vm.swappiness=3D6&nbsp; and it seems to work well</div><br><div>MZ</div>=
<br><div class=3D"gmail_quote_attribution">On mar 9 2021, at 12:17 pm, Laur=
ent Gauthier &lt;laurent.gauthier@soccasys.com&gt; wrote:</div><blockquote>=
<div><div>Ciao Mauro,</div><div><br></div><div><div>Sounds more like a pure=
 Linux/UNIX question than a yocto one :-)</div></div><div><br></div><div>As=
 you most likely know on an embedded system which uses permanent storage (N=
AND flash or eMMC) that is subject to wear it is important to completely tu=
rn off swap.</div><div><br></div><div>At runtime if the system is up and ru=
nning then you should issue the "<strong>swapoff -a</strong>" command.</div=
><div><br></div><div>But the proper fix is to remove any entry from your /e=
tc/fstab designating a swap partition.</div><div><br></div><div>However I w=
ould be surprised if you had a swap partition configured in your system as =
most embedded systems don't have one.</div><div><br></div><div>Instead what=
 I am thinking is that you are likely seeing a system slow-down due to your=
 system's memory usage coming close to 100% of the available RAM, which in =
turn causes all calls to memory allocation functions to slow down (algorith=
ms have to look harder to find available memory).</div><div><br></div><div>=
I would suggest that when the issue occurs that you first check the current=
 system memory usage and have a look at which application is using the most=
 memory and figure out if there is a way to optimize it and reduce the memo=
ry usage.</div><div><br></div><div><div>Kind regards, Laurent.</div></div><=
/div><br><div class=3D"gmail_quote"><div class=3D"gmail_attr"><div>On Tue, =
Mar 9, 2021 at 10:03 AM Mauro Ziliani &lt;<a href=3D"mailto:mauro@faresoftw=
are.it" title=3D"mailto:mauro@faresoftware.it">mauro@faresoftware.it</a>&gt=
; wrote:</div></div><blockquote><div>Hi all.</div><div>I'm working with Kro=
goth on a imx6dl board with 1GB of RAM.</div><div>I don't setup the swap sp=
ace, but sometimes I see that kswap0 task starts, and the board slow down.<=
/div><br><div>I'd like to change&nbsp; the value of vm.swappiness to avoid =
swap requests</div><br><div>The default value&nbsp; of vm.swappiness is 60.=
</div><br><div>There is a minimum value for vm.swappiness?</div><br><div>Be=
st regards,</div><div>&nbsp;&nbsp; MZ</div><br><div></div><br></blockquote>=
</div><br><br><div>--</div><div class=3D"gmail_signature"><div><div>Laurent=
 Gauthier</div><div>Embedded Linux Systems &amp; Software</div><div>Phone: =
+33 630 483 429</div><div><a href=3D"https://soccasys.com" title=3D"https:/=
/soccasys.com">https://soccasys.com</a></div></div></div></blockquote>

--6047a0a1_29bfae65_c45--
