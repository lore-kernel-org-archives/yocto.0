Return-Path: <easmith5555@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E7DCE00C1E; Tue, 12 Mar 2019 16:50:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (easmith5555[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1B9FE009A0
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 16:50:28 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id x4so100384ion.2
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 16:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=DTkWRryN3YcdLB3duFy9zoz/YkRYDKTD+Y/l02mBfjU=;
	b=RypmVlYPT/2TUupTvf8SyZgC1cIY52SRxLqdzGbOjbUJmTqUIXJFtLtIPt2rpR8Lmr
	q5FhxXomP3XOgzzkD2qiVfzb/92KZvETdV5ybfiPdLECBYlh1FDlGEvbeYRPy0ZQFxUq
	Ed04C1rnqcRrMZdMrbtCg02xRRlbXeP1OyfPi1UFk1iHID4gxfOtLct+dUwZ05ppL6rg
	dbCSp2GBtNsWhQf+79mabDcQFknBXRAhkwiME4GANRdXI46ky819wunZ3oT/uHwjhamP
	Nr0mP6cNuyL0p38nt+dWlIGBTIqplHybDcumxtIyKoxTTDDqttxoKUPdvOfatxJRkoAS
	fx+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=DTkWRryN3YcdLB3duFy9zoz/YkRYDKTD+Y/l02mBfjU=;
	b=Y6MSaRxjge+VS+qfbnEHmRwqDnPs1UR2WBTkpgpR8yqd5zY8wTufNZBNEghMY9UmfV
	Cb2vC+KPwDq2ozmw5GJWSPlxWDLyekDNc1G6zEB5zh9999NlV+pvdTX4UEJ5OqoxRHTN
	EOoAnmVs34NSFKWJGdWT9XLBslMLNQa5f7/GdtYOnYXdh9a1Z4umHPwQJV+EpInmtW0i
	8KYDgLv5A0NFWLZChGmUtOy7oFKZo4aZp4YmvLrYJBzkGSAyFKP0gitUq969HcIRESwX
	ciiHISNCNQ4llk8T2neD3zdNKe6867RKmxMxwKWCe8wNGB1gvaI7qIQBxk/i/B5Yb4cx
	VhLQ==
X-Gm-Message-State: APjAAAWQ6YNR37FMDCUkN7FSYPH//EfSi/TBx0Tcx7+QESlGy3nQt/z3
	eE/aTJarYChUhqNm/jg2OPu6eMpXEfFR1Nv2ED8QOg==
X-Google-Smtp-Source: APXvYqz/nhak1W/odT8nAz07MBYkB69VE28RC7fy+k6Jnkm6T8Ii5MEQqHpoduRQi9gmgAOVFLca9aXRjCit6lTrm4U=
X-Received: by 2002:a6b:731a:: with SMTP id e26mr1977880ioh.55.1552434627867; 
	Tue, 12 Mar 2019 16:50:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM3odyNWNPMdOyM3xiKpiDKgaTVCW4MA8ayOsen3RkTAVA@mail.gmail.com>
	<CAMjhiJgiag68y4UmRGN16NnPoRZt9iC=L=-Q8kDHMQjzsjEVMg@mail.gmail.com>
	<CAAV2bM2QGuTSc9F_DRfw1P_T0NYtb_1c2GyTKWgDB6KYM1OqaQ@mail.gmail.com>
	<CAMjhiJgL4be=AvT03ecR62tRQpar8NJV4=yij-cg+-YoGDkY8w@mail.gmail.com>
	<CAAV2bM2Mdht08DxVZ5q-1QTaCZu7DNSNG9qegQ1kkM_zx2e68A@mail.gmail.com>
	<CAMjhiJimZDYScR0oC5bisurq+38OL2wozV1qT+ZEMz3dzq2anQ@mail.gmail.com>
In-Reply-To: <CAMjhiJimZDYScR0oC5bisurq+38OL2wozV1qT+ZEMz3dzq2anQ@mail.gmail.com>
From: Emily S <easmith5555@gmail.com>
Date: Tue, 12 Mar 2019 18:50:18 -0500
Message-ID: <CAAV2bM1BqjyBOO6+WsOr05KZzH_Ld58o_3Bp8BfoA7rDZhyffQ@mail.gmail.com>
To: Leon Woestenberg <leon@sidebranch.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: /usr/bin/env requires coreutils?
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
X-List-Received-Date: Tue, 12 Mar 2019 23:50:29 -0000
Content-Type: multipart/alternative; boundary="00000000000087fd060583ee5ac2"

--00000000000087fd060583ee5ac2
Content-Type: text/plain; charset="UTF-8"

Hi Leon -

Ahh okay you meant just literally if there was anything else in it. An
additional complication of my setup is that our custom board is in Europe,
so right now there's no one to load the OS for me and boot, but I will
check as soon as I can.

In regards to your second point, do you mean that the init-clock recipe
might be trying to install the script in a slightly incorrect location? For
example it's trying to install in /usr/bin/env when my OS is setup to use
/bin/env instead?

Thanks,
Emily

On Tue, Mar 12, 2019 at 6:24 PM Leon Woestenberg <leon@sidebranch.com>
wrote:

> Hi Emily,
>
> On Tue, Mar 12, 2019 at 11:53 PM Emily S <easmith5555@gmail.com> wrote:
> >
> > When you ask if there is anything in /usr/bin at all I'm not sure what
> you mean, could you elaborate?
> >
> On the root filesystem, do you see other executables in the /usr/bin/
> directory?
>
> > Ahh so you're saying something in the init-clock recipe itself is
> incorrect in the way it uses ${bindir}? I did not actually write this
> recipe so I may be not understanding it fully, but I don't actually see
> ${bindir} in it anywhere.
> >
> That last part of the sentence might be the actual problem, in case
> you do not have /usr/bin/env (but /bin/env for example).
>
> > Yes that link is the correct recipe!
> >
> Google power.
>
> Regards,
>
> Leon.
>

--00000000000087fd060583ee5ac2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Leon -=C2=A0<div><br></div><div>Ahh okay you meant just=
 literally if there was anything else in it. An additional complication of =
my setup is that our custom board is in Europe, so right now there&#39;s no=
 one to load the OS for me and boot, but I will check as soon as I can.=C2=
=A0</div><div><br></div><div>In regards to your second point, do you mean t=
hat the init-clock recipe might be trying to install the script in a slight=
ly incorrect location? For example it&#39;s trying to install in /usr/bin/e=
nv when my OS is setup to use /bin/env instead?=C2=A0</div><div><br></div><=
div>Thanks,</div><div>Emily=C2=A0</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 12, 2019 at 6:24 PM Leon=
 Woestenberg &lt;<a href=3D"mailto:leon@sidebranch.com">leon@sidebranch.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
Hi Emily,<br>
<br>
On Tue, Mar 12, 2019 at 11:53 PM Emily S &lt;<a href=3D"mailto:easmith5555@=
gmail.com" target=3D"_blank">easmith5555@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; When you ask if there is anything in /usr/bin at all I&#39;m not sure =
what you mean, could you elaborate?<br>
&gt;<br>
On the root filesystem, do you see other executables in the /usr/bin/ direc=
tory?<br>
<br>
&gt; Ahh so you&#39;re saying something in the init-clock recipe itself is =
incorrect in the way it uses ${bindir}? I did not actually write this recip=
e so I may be not understanding it fully, but I don&#39;t actually see ${bi=
ndir} in it anywhere.<br>
&gt;<br>
That last part of the sentence might be the actual problem, in case<br>
you do not have /usr/bin/env (but /bin/env for example).<br>
<br>
&gt; Yes that link is the correct recipe!<br>
&gt;<br>
Google power.<br>
<br>
Regards,<br>
<br>
Leon.<br>
</blockquote></div>

--00000000000087fd060583ee5ac2--
