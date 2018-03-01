Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 212EAE00ED2; Thu,  1 Mar 2018 06:55:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2F26E00E39
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 06:55:53 -0800 (PST)
Received: by mail-vk0-f66.google.com with SMTP id z130so3842506vkd.0
	for <yocto@yoctoproject.org>; Thu, 01 Mar 2018 06:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TLVzHpzfpwCLHUXkrXG9wYCaU9LpOfrWLOvHOLklfjo=;
	b=YffQoZo53Q1GzF3Yfm7tiL6HCBVlEL9dCD2Mday0fJoagd+tX1z9BB8O/dj+ubNJGc
	2qzXTDUDQju8XNjc3rUAGrjtKskGEZiWx2iZwsTgS24niqR09yJBnpa27XYPgKl2VG45
	AbWsApIIgj8Xd5AvdLwMj1DskqEGUKKmk52jFXCE7YDN8RJj8kGv9oppE24vr6LYUvLv
	OkQ40GIlvGTxlTefP6zulBTIZrXKghhazflUyO3pGqvkgt1rYtiKUQ5kRHL11UIwCtIL
	ZW5YFTsG4I8W9C6UvbDZBkXdgZBMCe8m6SZ9KUXzR6+siM3eqRGBEUbXrsdaWHOxHwBx
	fBVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TLVzHpzfpwCLHUXkrXG9wYCaU9LpOfrWLOvHOLklfjo=;
	b=SJJFbwT4OpgBy9He3+1q13udG3tbo/aowXcAnLYA5chtO55UMqXgx38vBxs9A4zluk
	Lb6uKTONUp7fPD6HaoQ+/KsdPoIxNJsxzF6wUnC0kAkjDqaMr7wwV0rNlLrYKI8pH2nZ
	J/hJ3Gcdbw4snV8XoAHjeJfn+vX7rQiYU65trxYUBZJfEXJBjnxs1SBNyIk8yeqKEibU
	KQ6QDFkihXm9BRh9QsY413kVxzALa/8MaQdhlg+DMrwY3/RRf3Z1xH9GUHxL/zqA8fiO
	/fe4hbsq1XB05RSWkcYS9QYHWZUV6C/cjRieO6qe1GZnlhqIB+PGZCrBmkm7R2BZIB96
	Yxhg==
X-Gm-Message-State: APf1xPDKphAx9wQZ97DIf2MlUy8UgiCN0y1UPQJJTTIGEsM/DSJ1wBQt
	TuYQHw9BDyVPp/FCJwJuU1e510FI7lK1r/kG/SLPng==
X-Google-Smtp-Source: AG47ELvkYYZcuk/UhVZp5HEWwQcRxCa2t33qmPj/3b+P9UwKPZTIJlvJzBtZnG2LTo3v577bEk91JJPY1o2LehTO7mQ=
X-Received: by 10.31.63.6 with SMTP id m6mr1487606vka.43.1519916152741; Thu,
	01 Mar 2018 06:55:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.48.69 with HTTP; Thu, 1 Mar 2018 06:55:12 -0800 (PST)
X-Originating-IP: [90.152.4.98]
In-Reply-To: <CALbNGRS9Ve6VYycqWscWxi+aOD_4Ucm5LbZ=4e7V8f_jP-LczQ@mail.gmail.com>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
	<CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
	<CALw8SCVP_pE=yyJcO0gULT+1J1T1E_pF0y3nQuShWi3feKBFdQ@mail.gmail.com>
	<CALbNGRTXT084ZC3cD4URao28SWTo0E-Lkr6FLjici5Pb9MppJg@mail.gmail.com>
	<CAK18fxFrW4LDvxneQv1VEcB6anirbtYgfGuWHQSzxQTC4Oo0CQ@mail.gmail.com>
	<CALbNGRR4GVLtkE+AjVwv0BRvPUnXSduibbjB9qkM9awZn+LEJw@mail.gmail.com>
	<CAK18fxF5=v4fJsRG7Kkcmu10UEeDecjJKatVw+Z5kwZ8qdn_Qg@mail.gmail.com>
	<CALbNGRRwt8c_QkPnEsTiVFssaqnUUH9inAzjXrK=Pi80t_sGmQ@mail.gmail.com>
	<CAPyrkgyJRsHEe9PrQ8nvE66D7wixfv760QaM0pbVoOreHdfbuw@mail.gmail.com>
	<CALbNGRSckHk37r9QqKXuQ3TGqA_oBPoEu4eFxDoM-5ZG9N2XWQ@mail.gmail.com>
	<e6dcc7ba-cc7e-2e98-7bcb-0fc21dc06415@gmail.com>
	<b4c91bca-5d86-7a02-c1b0-e53a41ff3d45@prevas.dk>
	<CAHUNapRYzSZpzzJghmWDG5o2MDJVC=dDO8Gf=M1U52EX0DU4Xw@mail.gmail.com>
	<CALbNGRS9Ve6VYycqWscWxi+aOD_4Ucm5LbZ=4e7V8f_jP-LczQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 1 Mar 2018 14:55:12 +0000
Message-ID: <CAK18fxHywzUUU8NuX3wEyzt9W7Q2WLRLnDYYJNvoGPJW7F7qPA@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Cc: =?UTF-8?Q?Martin_Hundeb=C3=B8ll?= <martin.hundeboll@prevas.dk>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] linux kernel rt
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
X-List-Received-Date: Thu, 01 Mar 2018 14:55:56 -0000
Content-Type: multipart/alternative; boundary="001a114dbe5c5f788705665b0ea1"

--001a114dbe5c5f788705665b0ea1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 1, 2018 at 1:59 PM, Andreas M=C3=BCller <schnitzeltony@gmail.co=
m>
wrote:

> On Fri, Jan 26, 2018 at 3:09 PM, Trevor Woerner <twoerner@gmail.com>
> wrote:
> > On Fri, Jan 26, 2018 at 3:43 AM, Martin Hundeb=C3=B8ll
> > <martin.hundeboll@prevas.dk> wrote:
> >>
> >>
> >>
> >> On 2018-01-26 04:51, Khem Raj wrote:
> >>>
> >>>
> >>> Secondly, I wonder how good is upstream mainline kernel for rpi now a
> >>> days, we could always have a mainline recipe as an option and use it
> as base
> >>> for things like rt.
> >>
> >>
> >> Apart from runtime device tree overlay support for RPi hats/extension
> >> boards, mainline linux fully supports each RPi revision.
> >>
> >> I guess linux-yocto-rt would be just fine...
> >>
> >
> > Does anyone know if the FIQ bug has been fixed upstream? The last time =
I
> > looked into PREEMPT_RT on the RPi, the only way to make it work/stable
> was
> > to patch the FIQ issue, or disable FIQ altogether (not ideal). This pat=
ch
> > was outside both the kernel and the PREEMPT_RT patch.
> >
> > --
> Seems RPi.org made some progress on this[1].
>
> If I only had some time left to give this a try...
>
> [1] https://github.com/raspberrypi/linux/issues/2244#
> issuecomment-369597357


Nice.

--
Andrei Gherzan

--001a114dbe5c5f788705665b0ea1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div><div class=3D"gmail_signat=
ure" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr">O=
n Thu, Mar 1, 2018 at 1:59 PM, Andreas M=C3=BCller <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:schnitzeltony@gmail.com" target=3D"_blank">schnitzeltony@gm=
ail.com</a>&gt;</span> wrote:<br></div></div></div></div><div class=3D"gmai=
l_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D=
"h5">On Fri, Jan 26, 2018 at 3:09 PM, Trevor Woerner &lt;<a href=3D"mailto:=
twoerner@gmail.com">twoerner@gmail.com</a>&gt; wrote:<br>
&gt; On Fri, Jan 26, 2018 at 3:43 AM, Martin Hundeb=C3=B8ll<br>
&gt; &lt;<a href=3D"mailto:martin.hundeboll@prevas.dk">martin.hundeboll@pre=
vas.dk</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On 2018-01-26 04:51, Khem Raj wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Secondly, I wonder how good is upstream mainline kernel for rp=
i now a<br>
&gt;&gt;&gt; days, we could always have a mainline recipe as an option and =
use it as base<br>
&gt;&gt;&gt; for things like rt.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Apart from runtime device tree overlay support for RPi hats/extens=
ion<br>
&gt;&gt; boards, mainline linux fully supports each RPi revision.<br>
&gt;&gt;<br>
&gt;&gt; I guess linux-yocto-rt would be just fine...<br>
&gt;&gt;<br>
&gt;<br>
&gt; Does anyone know if the FIQ bug has been fixed upstream? The last time=
 I<br>
&gt; looked into PREEMPT_RT on the RPi, the only way to make it work/stable=
 was<br>
&gt; to patch the FIQ issue, or disable FIQ altogether (not ideal). This pa=
tch<br>
&gt; was outside both the kernel and the PREEMPT_RT patch.<br>
&gt;<br>
</div></div>&gt; --<br>
Seems RPi.org made some progress on this[1].<br>
<br>
If I only had some time left to give this a try...<br>
<br>
[1] <a href=3D"https://github.com/raspberrypi/linux/issues/2244#issuecommen=
t-369597357" rel=3D"noreferrer" target=3D"_blank">https://github.com/<wbr>r=
aspberrypi/linux/issues/2244#<wbr>issuecomment-369597357</a></blockquote><d=
iv><br></div><div>Nice.</div><div><br></div><div><div style=3D"color:rgb(34=
,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font=
-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-s=
pacing:normal;text-align:start;text-indent:0px;text-transform:none;white-sp=
ace:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial">--</div><span style=3D"colo=
r:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:nor=
mal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;=
white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-=
decoration-style:initial;text-decoration-color:initial;float:none;display:i=
nline">Andrei Gherzan</span>=C2=A0</div></div><br></div></div>

--001a114dbe5c5f788705665b0ea1--
