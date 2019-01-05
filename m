Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50A25E00C99; Sat,  5 Jan 2019 13:45:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com
	[209.85.221.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34CF4E00901
	for <yocto@yoctoproject.org>; Sat,  5 Jan 2019 13:45:40 -0800 (PST)
Received: by mail-vk1-f174.google.com with SMTP id y14so8670007vkd.1
	for <yocto@yoctoproject.org>; Sat, 05 Jan 2019 13:45:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=a9ID8l6Gezbe8yfC+Z6Vk5MhOwN49QnFmlZ+eZZyBQc=;
	b=E2QDbaRBSqtl1bKU9kJhwBa0mHz3whwWR6uvX54W12uxT1iotZuhFjPNYI8Hxz31aO
	6hqFRv57cJ/nIjM32s+R1HcOr7n65iNoLYx6Ns+278ZNhnYCkkbilkgVebXYATBXgsb7
	UhbkNW/56NLt6K2Ca4iV+VPs3zhB4y+V4NtkY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=a9ID8l6Gezbe8yfC+Z6Vk5MhOwN49QnFmlZ+eZZyBQc=;
	b=j68V300Q1ymkHER3EMyuV7Oy8b+YQ1LQLk5yUepfeUnz7MzqFTeWtbCbtPUzG+dVvD
	JSOWHO7R9MX+0KKRgpb22U/OotH71Eq5uzjEJtpz7dbkUPNfbPNcqp5pGy0qQq6huTEa
	4fIlrO9HD8F52rgtir8t4RcgiDfH9wr1mo9ztO94iOY+hfvQTXumZA9v/tqDEx1kk4YM
	eVH1sV0r1DyMJ31GNdoIjxfUidz3Yna6IJarihCCuu+U+JjHYTKe3qhNlRAGoUucWgF1
	LDHNR9B6MSDGAAYA6NF9oyPIwbWQkwbrWWlYR3BinPciXPZtEhEl1SbLU+sTkgDxGVcd
	RjdQ==
X-Gm-Message-State: AJcUukfrtoGsaW3pi2IGNvfRKgVMFzMzVJwMb/I4GEdTZSM6tNQTQZqF
	HRNV9g5TuDwJkRiKfFGYWGt6AxxuxLG1wccwm9sgdA==
X-Google-Smtp-Source: ALg8bN776mewfgIhWwibbkxbm363tzooNrX9pNbk+0wuJ7ktFYwXcvlcLrBcUsiLA9LCrT2G5l+twTSNmtCTiNla3gE=
X-Received: by 2002:a1f:4d47:: with SMTP id a68mr20110077vkb.34.1546724740327; 
	Sat, 05 Jan 2019 13:45:40 -0800 (PST)
MIME-Version: 1.0
References: <20190103180218.6968-1-anibal.limon@linaro.org>
	<6fc3263d9097d1af78c96df089bfe1ca3184efdc.camel@linuxfoundation.org>
	<CA+_AqitHQj3_FwKW4UvF_dcO5fo4P+5_iirXOqnR4sMKZiCf3Q@mail.gmail.com>
	<db401220935541d71fbc28556c51db29937b9365.camel@linuxfoundation.org>
In-Reply-To: <db401220935541d71fbc28556c51db29937b9365.camel@linuxfoundation.org>
From: Anibal Limon <anibal.limon@linaro.org>
Date: Sat, 5 Jan 2019 15:45:29 -0600
Message-ID: <CA+_AqisAskR0sgZHvNCRqFLcHzcMYumnNbq0mA6nDr45nstr_Q@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][ptest-runner] ptest-runner: Add support timeout failure type to XML result file
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
X-List-Received-Date: Sat, 05 Jan 2019 21:45:42 -0000
Content-Type: multipart/alternative; boundary="000000000000b690c2057ebcead3"

--000000000000b690c2057ebcead3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 5 Jan 2019 at 12:52, <richard.purdie@linuxfoundation.org> wrote:

> On Sat, 2019-01-05 at 11:30 -0600, Anibal Limon wrote:
> >
> >
> > On Thu, 3 Jan 2019 at 15:45, <richard.purdie@linuxfoundation.org>
> > wrote:
> > > On Thu, 2019-01-03 at 12:02 -0600, An=C3=ADbal Lim=C3=B3n wrote:
> > > > The ptest-runner support logging results to stdout and to a XML
> > > file
> > > > in stdout the ptest is mark as:
> > > >
> > > > ...
> > > > ERROR: Exit status is 1
> > > > TIMEOUT: ptest-directory
> > > > ...
> > > >
> > > > Add the same support in XML file for example,
> > > >
> > > > ...
> > > > <testcase classname=3D'ptest-directory' name=3D'run-ptest'>
> > > >   <failure type=3D'exit_code' message=3D'run-ptest exited with code=
:
> > > > 1'></failure>
> > > >   <failure type=3D'timeout'/>
> > > > </testcase>
> > > > ...
> > > >
> > > > [YOCTO #13088]
> > > >
> > > > Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
> > >
> > > Sounds good, thanks!
> > >
> > > I have a feeling this will show up a few bugs but we should find
> > > and
> > > fix the ones which are timing out...
> > >
> > > I'd still be interested in the time each directory takes too if we
> > > can
> > > get that as it would help us decide which tests to run.
> >
> > The timeout is set to 5 minutes (300 secs) by default and currently
> > there is no way to set a timeout per ptest,
> > I will create other patch to add the timeout value to stdout and XML
> > file.
>
> That is handy but what I mean is the execution time each one takes. If
> we have test which take 5s its easier to run them regularly than tests
> which take 500s. Having an idea of their relative execution time would
> therefore be helpful.
>

Got it, I can add a duration for example:.

In stdout will be (after end),

...
BEGIN: TIME
END: ptest-directory
DURATION: Ns
END: TIME
...

In XML:

...
<testcase classname=3D'%s' name=3D'run-ptest' duration=3D'Ns'>
</testcase>
...

or

...
<testcase classname=3D'%s' name=3D'run-ptest' >
<duration>Ns</duration>
</testcase>
...

What is the better? or any other?


> I assume the timeout takes effect after no output for that period?
>

Right, the timeout is based on stdout data.

Anibal

>
> Cheers,
>
> Richard
>
>

--000000000000b690c2057ebcead3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Sat, 5 Jan 2019 at 12:52, &lt;<a href=
=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundati=
on.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">On Sat, 2019-01-05 at 11:30 -0600, Anibal Limon wrote:<br>
&gt; <br>
&gt; <br>
&gt; On Thu, 3 Jan 2019 at 15:45, &lt;<a href=3D"mailto:richard.purdie@linu=
xfoundation.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&g=
t;<br>
&gt; wrote:<br>
&gt; &gt; On Thu, 2019-01-03 at 12:02 -0600, An=C3=ADbal Lim=C3=B3n wrote:<=
br>
&gt; &gt; &gt; The ptest-runner support logging results to stdout and to a =
XML<br>
&gt; &gt; file<br>
&gt; &gt; &gt; in stdout the ptest is mark as:<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; ...<br>
&gt; &gt; &gt; ERROR: Exit status is 1<br>
&gt; &gt; &gt; TIMEOUT: ptest-directory<br>
&gt; &gt; &gt; ...<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Add the same support in XML file for example,<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; ...<br>
&gt; &gt; &gt; &lt;testcase classname=3D&#39;ptest-directory&#39; name=3D&#=
39;run-ptest&#39;&gt;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0&lt;failure type=3D&#39;exit_code&#39; message=
=3D&#39;run-ptest exited with code:<br>
&gt; &gt; &gt; 1&#39;&gt;&lt;/failure&gt;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0&lt;failure type=3D&#39;timeout&#39;/&gt;<br>
&gt; &gt; &gt; &lt;/testcase&gt;<br>
&gt; &gt; &gt; ...<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; [YOCTO #13088]<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Signed-off-by: An=C3=ADbal Lim=C3=B3n &lt;<a href=3D"mailto:=
anibal.limon@linaro.org" target=3D"_blank">anibal.limon@linaro.org</a>&gt;<=
br>
&gt; &gt; <br>
&gt; &gt; Sounds good, thanks!<br>
&gt; &gt; <br>
&gt; &gt; I have a feeling this will show up a few bugs but we should find<=
br>
&gt; &gt; and<br>
&gt; &gt; fix the ones which are timing out...<br>
&gt; &gt; <br>
&gt; &gt; I&#39;d still be interested in the time each directory takes too =
if we<br>
&gt; &gt; can<br>
&gt; &gt; get that as it would help us decide which tests to run.<br>
&gt; <br>
&gt; The timeout is set to 5 minutes (300 secs) by default and currently<br=
>
&gt; there is no way to set a timeout per ptest, <br>
&gt; I will create other patch to add the timeout value to stdout and XML<b=
r>
&gt; file.<br>
<br>
That is handy but what I mean is the execution time each one takes. If<br>
we have test which take 5s its easier to run them regularly than tests<br>
which take 500s. Having an idea of their relative execution time would<br>
therefore be helpful.<br></blockquote><div><br></div><div>Got it, I can add=
 a duration for example:.</div><div><br></div><div>In stdout will be (after=
 end),</div><div><br></div><div>...</div><div>BEGIN: TIME</div><div>END: pt=
est-directory</div><div>DURATION: Ns<br></div><div>END: TIME</div><div>...<=
/div><div><br></div><div>In XML:</div><div><br></div><div>...</div><div>&lt=
;testcase classname=3D&#39;%s&#39; name=3D&#39;run-ptest&#39; duration=3D&#=
39;Ns&#39;&gt;<br></div><div>&lt;/testcase&gt;</div><div>...</div><div><br>=
</div><div>or=C2=A0</div><div><br></div><div><div>...</div><div>&lt;testcas=
e classname=3D&#39;%s&#39; name=3D&#39;run-ptest&#39; &gt;<br></div><div>&l=
t;duration&gt;Ns&lt;/duration&gt;</div><div>&lt;/testcase&gt;</div><div>...=
</div></div><div><br></div><div>What is the better? or any other?=C2=A0</di=
v><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
I assume the timeout takes effect after no output for that period?<br></blo=
ckquote><div><br></div><div>Right, the timeout is based on stdout data.</di=
v><div><br></div><div>Anibal=C2=A0</div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div></div></div>

--000000000000b690c2057ebcead3--
