Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4312AE00D53; Wed,  8 Nov 2017 08:22:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f173.google.com (mail-ot0-f173.google.com
	[74.125.82.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4965BE00D4C
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:22:09 -0800 (PST)
Received: by mail-ot0-f173.google.com with SMTP id s88so2760500ota.4
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 08:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=f3+cjrzeQG7xpDVI+oRJ8CisL5R9bLmhhY/2XZcwh/I=;
	b=Y76aKu+/yrRyhdVoj9bfNTAwjAkBWN48g8e6GqMmHWsB49/sqLPAFlQggABoM3Lo+s
	F//kIVS3Ndr4e4DFlQdA99i56Hc/KioTUwxRiyW4LwSr1GxGqQX+Xm5NWL4djoJ1XXBo
	W62qI0nxK5NqHrDc2b1OJ1lqGgoMp2k+CzzHhN+WsBGlEZSpC1J8L8yy1LX0MHcuer1q
	Tak+6zEVjDX5M5+HyZVj0haCqVyCGvyidT9gerVmWV8ktZjAVU+gRyyYztwV8kP5DqKZ
	4D+zxsaDYZCMwA6FzEH/1djDtOo4NHhfcIZuvdyqZlqnUaY1m2F0AToRLFJx+7Gx8Y/Z
	338g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=f3+cjrzeQG7xpDVI+oRJ8CisL5R9bLmhhY/2XZcwh/I=;
	b=olihURb3CyV1AceGBoEwoqrwOoaL7FN6ldlAckpLB0cQwvSZ5e99ceZCXlMob6qUUG
	PQ0bNAQlJNT0H1Ogkaxi/8+fM9YfOROgQ2ZrNqxwcc77acTc1oVeX/KJ3Z9RSxsa+xpV
	pewOEd6l/DjNAmWEBIsH5P1/TYfeSktBK8LDd9h7WBbMPJtcgGRqKINrXRbUIYyk9dcJ
	wIR8NXOKGHaHVU+PFt5nYZwewtVHIV9RBA90SMyVmXNxzkqPCXn7LXcO5gDy7+NpfzcO
	5EIOpbMU6pGUqQ7Of91ETO4XmgmRSu9ueoYsunJvoD3ZyMrWrzL4g3hicqWKoHbbaJux
	lBqQ==
X-Gm-Message-State: AJaThX7UyePzEvH/jv1m+NV7bmWC9CEKbgFVy/zcjrd/iZpv451R1Iwo
	2KzSqaCyChqUwDMaYVb0wOt7MGD0degcHGe8tG1Eft56
X-Google-Smtp-Source: AGs4zMbMLFal2cmjrMRQHdNmqFytdiK22z+Z+L7MZ8PPAzdmmp6KTTxKMkaSm7/hV+/fGqy1xX1Ppf24kmo2sw4/pNc=
X-Received: by 10.157.81.141 with SMTP id y13mr634652otg.51.1510158129405;
	Wed, 08 Nov 2017 08:22:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Wed, 8 Nov 2017 08:22:08 -0800 (PST)
In-Reply-To: <7b91c698b1dd25c12d10792fa298e48c@sw-optimization.com>
References: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
	<7b91c698b1dd25c12d10792fa298e48c@sw-optimization.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 8 Nov 2017 11:22:08 -0500
Message-ID: <CAE0QtjMWEr78VDNzPCd=sC2Uze9FwK=r23yNUt3ZsVEDTRvrfw@mail.gmail.com>
To: Eric Schwarz <eas@sw-optimization.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Annoying "rerun to fix" bug for bitbake: task failed, but rerun can fix it.
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
X-List-Received-Date: Wed, 08 Nov 2017 16:22:12 -0000
Content-Type: multipart/alternative; boundary="f403043d7d6cdba42e055d7b1605"

--f403043d7d6cdba42e055d7b1605
Content-Type: text/plain; charset="UTF-8"

I am not talking about my own layer or recipe.
It happens even when I run the demo QEMU/beaglebone builds.
(I just download poky, and make NO modifications)




On Wed, Nov 8, 2017 at 10:56 AM, Eric Schwarz <eas@sw-optimization.com>
wrote:

> Most likely a dependency problem of the package which fails w/ exit code 1.
> Check the dependencies in the recipe and w/ Yocto's bitbake it self.
>
> Cheers
> Eric
>
>
> Am 08.11.2017 16:49, schrieb Jerry Lian:
>
> I am not sure whether it is a bug or an error: * Quite often, bitbake will
>> fail before finishing, with message like: ... task failed with exit code
>> 1... * But if you rerun bitbake, it will continue to build. * So sometimes
>> I have to rerun many times for finish one build ---- annoying! (by the way,
>> my CPU can run 16 threads)
>>
>> Any idea to clear this annoying bug? thanks.
>>
>

--f403043d7d6cdba42e055d7b1605
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am not talking about my own layer or recipe.<br></d=
iv>It happens even when I run the demo QEMU/beaglebone builds.<br>(I just d=
ownload poky, and make NO modifications)<br><br><br><br></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Nov 8, 2017 at 10:56 A=
M, Eric Schwarz <span dir=3D"ltr">&lt;<a href=3D"mailto:eas@sw-optimization=
.com" target=3D"_blank">eas@sw-optimization.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">Most likely a dependency problem of the packag=
e which fails w/ exit code 1.<br>
Check the dependencies in the recipe and w/ Yocto&#39;s bitbake it self.<br=
>
<br>
Cheers<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Eric</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
Am 08.11.2017 16:49, schrieb Jerry Lian:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I am not sure whether it is a bug or an error: * Quite often, bitbake will =
fail before finishing, with message like: ... task failed with exit code 1.=
.. * But if you rerun bitbake, it will continue to build. * So sometimes I =
have to rerun many times for finish one build ---- annoying! (by the way, m=
y CPU can run 16 threads)<br>
<br>
Any idea to clear this annoying bug? thanks.<br>
</blockquote>
</div></div></blockquote></div><br></div>

--f403043d7d6cdba42e055d7b1605--
