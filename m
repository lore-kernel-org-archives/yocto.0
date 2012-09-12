Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86E62E002AC
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 08:16:47 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so1432637qcs.35
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 08:16:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=6OSxUQDE9ve2Cpb5sWMdXVsJ/3VwWrhk5REaekqwixQ=;
	b=NT2bp0LhnjUBemCVV8vKFw2/R0s/3yPlzliQUf0zrCyFsNHvBmoBxCvLoeULCDd+uJ
	rALtYmn4+V1tP8x4mSET47LGn10sFvgtZLDQVXg1wNOYbwg9So0+7vVPkhmfv8tPm7Kb
	m7zamEoBu4sDBeIUB3BrOP0GQKN1FMjyHZOwvUFFx9MBNGtnVW1UquGZiSEimSXE7uaf
	DBptYX4wY8HhOKbGWUZyHRoLn1e6f7BZe8CpPtFJD1XPoKqm9iRO/MbpNGJQjTEzEiDO
	7QlHMdtQWSAncFBL80pQH0SPA0MrAnWgizeymQweLkhtuxiMxnZSiZ7q6EJ377FIecw3
	mkIQ==
MIME-Version: 1.0
Received: by 10.224.183.18 with SMTP id ce18mr4478450qab.90.1347463006843;
	Wed, 12 Sep 2012 08:16:46 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.49.116.77 with HTTP; Wed, 12 Sep 2012 08:16:46 -0700 (PDT)
In-Reply-To: <CABcZANnkt30OvFX3BNctHf115jQbX4piKMxb3b2N8saP4Prrmg@mail.gmail.com>
References: <CA+gsK-qoz4u6OZV+FZN+LZq2AOgw5RajOW6DCJOnXbZGecva1w@mail.gmail.com>
	<CABcZANnkt30OvFX3BNctHf115jQbX4piKMxb3b2N8saP4Prrmg@mail.gmail.com>
Date: Wed, 12 Sep 2012 08:16:46 -0700
X-Google-Sender-Auth: Fpv04RkLNdk4Gef39lpww0ONthM
Message-ID: <CA+gsK-rSTj418hLedGJ8VgdUgrP7=eRqNw5etpb21gBWwGAYkA@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: Chris Larson <clarson@kergoth.com>
X-Gm-Message-State: ALoCoQmqXKbE2EE+qqVeBVJyXwpUyRxYNse1pVRdm+vB3tUxUK3zEnH9ignjUqyF8bzQPZLtW7va
Cc: yocto@yoctoproject.org
Subject: Re: [linux-yocto] 'bitbake linux-yocto' after 'bitbake linux-yocto -c compile -f' does not create image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Sep 2012 15:16:47 -0000
Content-Type: multipart/alternative; boundary=20cf303b3f45def29104c982ad1e

--20cf303b3f45def29104c982ad1e
Content-Type: text/plain; charset=ISO-8859-1

Thanks, Chris. From what bitbake version on is that command available? The
bitbake version bundled with YP Denzil 7.0.1 is 1.15.2 and it does not
recognize that command:

...
bitbake: error: no such option -C

Rudi

On Wed, Sep 12, 2012 at 8:08 AM, Chris Larson <clarson@kergoth.com> wrote:

> On Wed, Sep 12, 2012 at 8:06 AM, Rudolf Streif <rudolf.streif@linux.com>
> wrote:
> > bitbake linux-yocto -c compile -f
> > bitbake linux-yocto
> >
> > worked perfectly fine. The tasks after compile were rerun and the new
> kernel
> > copied to tmp/deploy/images
> >
> > In Edison 7.0.1 this does not seem to work anymore. The tasks do not
> rerun
> > and the kernel image is not deployed.
>
> I'd suggest using bitbake's new -C argument. Run bitbake -C compile
> linux-yocto.
> --
> Christopher Larson
>

--20cf303b3f45def29104c982ad1e
Content-Type: text/html; charset=ISO-8859-1

Thanks, Chris. From what bitbake version on is that command available? The bitbake version bundled with YP Denzil 7.0.1 is 1.15.2 and it does not recognize that command:<div><br></div><div>...</div><div>bitbake: error: no such option -C</div>
<div><br></div><div>Rudi<br><br><div class="gmail_quote">On Wed, Sep 12, 2012 at 8:08 AM, Chris Larson <span dir="ltr">&lt;<a href="mailto:clarson@kergoth.com" target="_blank">clarson@kergoth.com</a>&gt;</span> wrote:<br>
<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class="im">On Wed, Sep 12, 2012 at 8:06 AM, Rudolf Streif &lt;<a href="mailto:rudolf.streif@linux.com">rudolf.streif@linux.com</a>&gt; wrote:<br>

&gt; bitbake linux-yocto -c compile -f<br>
&gt; bitbake linux-yocto<br>
&gt;<br>
&gt; worked perfectly fine. The tasks after compile were rerun and the new kernel<br>
&gt; copied to tmp/deploy/images<br>
&gt;<br>
&gt; In Edison 7.0.1 this does not seem to work anymore. The tasks do not rerun<br>
&gt; and the kernel image is not deployed.<br>
<br>
</div>I&#39;d suggest using bitbake&#39;s new -C argument. Run bitbake -C compile linux-yocto.<br>
<span class="HOEnZb"><font color="#888888">--<br>
Christopher Larson<br>
</font></span></blockquote></div><br></div>

--20cf303b3f45def29104c982ad1e--
