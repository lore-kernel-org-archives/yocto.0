Return-Path: <tomasz.dziendzielski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6000E00B81; Thu, 18 Oct 2018 01:55:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (tomasz.dziendzielski[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AD63E00A0C
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 01:55:51 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id l25-v6so20515292ioj.0
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 01:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=E3bx5YfIgGxSCbqeSvA7iMv6nvjWR0qWoWkoBgwvl3c=;
	b=ZPXpzWidLD1Ylvv3lMTkV44kAIOJcnP2smC2xIvlN80gmAAAMyIqylpkh7rdU5grrv
	WH8gCdmZ94bMUN0WuNPETdzmebxbd4AVWni3gTVIdjm0Zd0cEGw9Q4iVZmaBZwmLmbPx
	iekDls818RMN3/Ceq820ziPUDH5IPJ9QTZI3TnPwIyUAXyLZnCiyquTHuI548pR2Ykyu
	8h4rjVEtuJDECWNlWSPwtzRQy3jtd7nB6RgLNF/9C4jad1ealThlo8PeBLVO1XNgPn+J
	T0amdSbw2ZaN3ZePQjX1a1oXNt8BbCEvOU0JdChECRfFOB3mpzMICkoQqAd0ZyeTNeKm
	zB8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=E3bx5YfIgGxSCbqeSvA7iMv6nvjWR0qWoWkoBgwvl3c=;
	b=jBUq3/+zGct1anaN+kEvhIhAugNoQ3G52ZWrgQhBSbi0CYxCGMbXhOT4sTxiL4aC7S
	nIXxs96xxsFh8SvqIqxRL3+REv2wXbZNIyX2tYwaEIScPSRqpu99c7gWioeXzUmReUV5
	1UYVe1MPqrYaYJvOeDCXYwGbMeb1WPZomBG+gWFZOS8Plezyw3f5WV5TPMHbUWklpnIk
	hrlulJsPaVYQ7U81LZnFkqqN4h4ZEKHLogOOydjp6UqXB65pusQqoY6ILwhmLX+bQj5J
	hRlccd+pen8djuaeR4kLSvcAKOk0mXm6HqkPqazOqxBuR4mB8TYFCBkiWIj7KcqN9LB8
	q3HA==
X-Gm-Message-State: ABuFfoiEBQq791yB3nga55FEbSAb+cjJP77TSrxRC7/cbX37s6DD9Nys
	qpKSSlbyAUwb7u1pVFSoWbrKFshFcgEbDfRtnok=
X-Google-Smtp-Source: ACcGV632kOwn6o1u0ynpiEcG8aqmJ9SrR6QRtRfWkuAX1seIbqpP6z4BU+j4Gp40qCwooH6cqu7Nrr8073TMRsiFGi0=
X-Received: by 2002:a6b:e802:: with SMTP id
	f2-v6mr18930227ioh.19.1539852951348; 
	Thu, 18 Oct 2018 01:55:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAJkqNs1qEJHk-knxqZ-+P1VSOjgeZt9x=RjMWSV1QUt5J3i-aw@mail.gmail.com>
	<CAJTo0LYGf_waBvUe22FY+vA7s4eNMPfZqH8JUoMGUQqyAiWWcA@mail.gmail.com>
	<CAJkqNs0bzNNuaXEAfWXvKw507iMv+OJ-uhLOr09g5K5gXTPgdA@mail.gmail.com>
In-Reply-To: <CAJkqNs0bzNNuaXEAfWXvKw507iMv+OJ-uhLOr09g5K5gXTPgdA@mail.gmail.com>
From: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
Date: Thu, 18 Oct 2018 10:56:22 +0200
Message-ID: <CAJkqNs3qrO21DyFy6DZYtDs816fR23eyuXCxNL0uVt3Uea3hig@mail.gmail.com>
To: ross.burton@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: archiver.bbclass: do_dumpdata - shell format
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 18 Oct 2018 08:55:53 -0000
Content-Type: multipart/alternative; boundary="0000000000002bebc205787cf425"

--0000000000002bebc205787cf425
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So what is the proper solution?

Best regards,
Tomasz Dziendzielski

wt., 16 pa=C5=BA 2018 o 16:00 Tomasz Dziendzielski <
tomasz.dziendzielski@gmail.com> napisa=C5=82(a):

> Yes, I want to source the data files. I'm trying to adapt devtool the way
> it's creating the workspace, then I'm sourcing a script with all the
> necessary variables and then interactively run commands by hand.
> I was thinking about the devshell but in devshell variables like ${S},
> ${B} are not set and developers would need to set it manually. Or maybe
> this is where we should do the change and inject exporting that variables
> in devshell?
>
> >it's shell-like but not actually shell.
> So we should not state that this can be sourced by a shell. It's stated i=
n
> bitbake/lib/bb/data.py few times.
> Or fix it and make it possible to source.
>
> Best regards,
> Tomasz Dziendzielski
>
> wt., 16 pa=C5=BA 2018 o 15:00 Burton, Ross <ross.burton@intel.com> napisa=
=C5=82(a):
>
>> Do you actually want to source the data files, and if so why?  As with
>> the bitbake -e output, it's shell-like but not actually shell.
>>
>> Ross
>> On Tue, 16 Oct 2018 at 13:44, Tomasz Dziendzielski
>> <tomasz.dziendzielski@gmail.com> wrote:
>> >
>> > Hi,
>> > when using archiver.bbclass the do_dumpdata task is using
>> bb.data.emit_env function, which should emit variables "in a format such
>> that it can be sourced by a shell.".
>> > The problem is that the *-showdata.dump file can't be properly sourced=
,
>> because variables are not in a correct format.
>> >
>> > There are many lines like:
>> > PREFERRED_PROVIDER_virtual/fakeroot-native=3D"pseudo-native"
>> > The variables with slash are considered to be a directory and the ones
>> with dash are considered to be a command.
>> > Also shell cannot properly set the variables like FOO_machine.
>> >
>> > Should it be sourced with some specific shell or is that function wron=
g
>> and should be fixed?
>> >
>> > Best regards,
>> > Tomasz Dziendzielski
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>

--0000000000002bebc205787cf425
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>So what is the proper solution?</div><div><br></div><=
div>Best regards,</div><div>Tomasz Dziendzielski<br></div><div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr">wt., 16 pa=C5=BA 2018 o 16:00=C2=A0Toma=
sz Dziendzielski &lt;<a href=3D"mailto:tomasz.dziendzielski@gmail.com">toma=
sz.dziendzielski@gmail.com</a>&gt; napisa=C5=82(a):<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr"><div>Yes, I want to source the data files=
. I&#39;m trying to adapt devtool=20
the way it&#39;s creating the workspace, then I&#39;m sourcing a script wit=
h all
 the necessary variables and then interactively run commands by hand. <br><=
/div><div>I
 was thinking about the devshell but in devshell variables like ${S},=20
${B} are not set and developers would need to set it manually. Or maybe=20
this is where we should do the change and inject exporting that=20
variables in devshell?<br></div><span class=3D"m_-4831254567820543335gmail-=
im"><div><br></div><div>&gt;it&#39;s shell-like but not actually shell.</di=
v></span><div>So we should not state that this can be sourced by a shell. I=
t&#39;s stated in bitbake/lib/bb/data.py few times.</div><div>Or fix it and=
 make it possible to source.<br></div><div><br></div><div>Best regards,</di=
v><div>Tomasz Dziendzielski</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr">wt., 16 pa=C5=BA 2018 o 15:00=C2=A0Burton, Ross &lt;<a href=3D"=
mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&g=
t; napisa=C5=82(a):<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Do you actually=
 want to source the data files, and if so why?=C2=A0 As with<br>
the bitbake -e output, it&#39;s shell-like but not actually shell.<br>
<br>
Ross<br>
On Tue, 16 Oct 2018 at 13:44, Tomasz Dziendzielski<br>
&lt;<a href=3D"mailto:tomasz.dziendzielski@gmail.com" target=3D"_blank">tom=
asz.dziendzielski@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt; when using archiver.bbclass the do_dumpdata task is using bb.data.emit=
_env function, which should emit variables &quot;in a format such that it c=
an be sourced by a shell.&quot;.<br>
&gt; The problem is that the *-showdata.dump file can&#39;t be properly sou=
rced, because variables are not in a correct format.<br>
&gt;<br>
&gt; There are many lines like:<br>
&gt; PREFERRED_PROVIDER_virtual/fakeroot-native=3D&quot;pseudo-native&quot;=
<br>
&gt; The variables with slash are considered to be a directory and the ones=
 with dash are considered to be a command.<br>
&gt; Also shell cannot properly set the variables like FOO_machine.<br>
&gt;<br>
&gt; Should it be sourced with some specific shell or is that function wron=
g and should be fixed?<br>
&gt;<br>
&gt; Best regards,<br>
&gt; Tomasz Dziendzielski<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>
</blockquote></div></div></div>

--0000000000002bebc205787cf425--
