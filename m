Return-Path: <adam.yh.lee@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A853EE00CF5; Tue, 31 Oct 2017 07:37:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (adam.yh.lee[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f193.google.com (mail-yw0-f193.google.com
	[209.85.161.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02525E00C78
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 07:37:40 -0700 (PDT)
Received: by mail-yw0-f193.google.com with SMTP id t71so14910785ywc.3
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 07:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=sDBXLmNa7AJjwj6S6eu8TBpnuJ+3RWIcew7XvC85+o4=;
	b=uN0VnagkHCb54cKFvhgfbO8FVoVgESJdsik+hJXFtsgyzrEkxC7QbqPqu1sUwA8mxm
	AqokJNEsFCeUJ2wyE4J1cG+WBY6Qup24kgs2cDNroyB1uY/FQ5ymxhjAnL9xisKVKyIe
	VN1qFf3ZcMnK/QcELx5XF7aNZ0SEbGlO1lrbyfNyyBbN7OObAJ4/PUkQeKjBpxSj8GMF
	wKmhQGrPLt1qnrMk+kgwFPEXFvnU4i0ZSa+66ER80LbEeNn8yLKwPV0wJS0BnFr6lCPy
	iV18cjZOB/Ae2T9jl3ZcM8b5fOSUpwev+vy1jxha0kVF4Ia8PLGxhO6F/El2agzNveUh
	aODg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=sDBXLmNa7AJjwj6S6eu8TBpnuJ+3RWIcew7XvC85+o4=;
	b=txygBDycB0ChVq/kszezwuIfY9Ixrn4B+Pxf5zA4ND6gtyGsByZbT8U/EyMnYoIvk+
	+yQ2e76cTW8DU9YrqwUJRwhLZK1YxhiAx0ln66W6hU1oQrGav8POA2EIQj7A1KwSEhAl
	Y6apu5m32JdPtGfz/LEse/ztQcvqPp7F5uKEhECCQmWabvlmy/jyf+4he5GtspwIYHxH
	2o3gGZBPgtUm8+iWUq88CzNXM0Rc0Xk7/u5bp29/GtHH4+WaKzqfOSke7bBmobkmAe+n
	HjsYAXlLFc/BGmiBU3gSSLYyG+7o2utCYG3L6kVAJ/y1/Zapv3Pt6wJJRL622Ra5m1ni
	vGjg==
X-Gm-Message-State: AMCzsaWyDbOGj7h14EYCJFppMW4f/4EpeOJQdvUdL66T/gfsEvinN99P
	yTn9v2agp/kq7IDUlZwjp6sTCYIf/DCyklpE0zw=
X-Google-Smtp-Source: ABhQp+TO1/M6xk4Zjez1NB7xBe0r0LyJdf/4EzK/wOlArGlL9zfSu89DjQoq5liypPxYNVJNpLsjkOJgkw1z4jDOvJo=
X-Received: by 10.37.95.77 with SMTP id h13mr1407461ybm.85.1509460659723; Tue,
	31 Oct 2017 07:37:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAFeBWL5JfhLLU8V8eQP+O_bNQBbZpO=N6CpW7w8EdXHUy9FyEQ@mail.gmail.com>
	<CAMKF1sqc1x9pVfDMMOYww3AqQufRSMX71fQ+9YXPEuUCEgoOCw@mail.gmail.com>
In-Reply-To: <CAMKF1sqc1x9pVfDMMOYww3AqQufRSMX71fQ+9YXPEuUCEgoOCw@mail.gmail.com>
From: Adam Lee <adam.yh.lee@gmail.com>
Date: Tue, 31 Oct 2017 14:37:29 +0000
Message-ID: <CAFeBWL6hOzcOXo2cGU8gNW0bVtwOXXu0UaLxDPtnXj1f8=uQjg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't run "-c devshell" - "Must be connected to a terminal"
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
X-List-Received-Date: Tue, 31 Oct 2017 14:37:41 -0000
Content-Type: multipart/alternative; boundary="089e082678c06ce3ee055cd8b2a9"

--089e082678c06ce3ee055cd8b2a9
Content-Type: text/plain; charset="UTF-8"

Not sure what has changed. I attached another terminal to the existing
container and it works fine.. Don't know what went wrong with the original
one. Weird.
Thanks for paying attention to my thread Khem.

Adam

On Mon, Oct 30, 2017 at 7:29 PM Khem Raj <raj.khem@gmail.com> wrote:

> On Mon, Oct 30, 2017 at 1:49 PM, Adam Lee <adam.yh.lee@gmail.com> wrote:
> > Hello everyone, I have this strange issue where I can't run "-c devshell"
> > any longer.
> >
> > This worked until a day ago.
> > I am on Morty, and running in a Docker container.
> >
>
> what changed ?
>
> > Has anyone seen this:
> >
> > Currently  1 running tasks (100 of 100)  99%
> >
> |#############################################################################################################################################################################################################################################
> > |
> > 0: cmem-4.14.00.00+gitAUTOINC+b514a99ac4-r1 do_devshell - 0s (pid 20279)
> > Trying to run: screen -r devshell_20279
> > Must be connected to a terminal.
> > Trying to run: screen -r devshell_20279
> > Must be connected to a terminal.
> > Trying to run: screen -r devshell_20279
> > Must be connected to a terminal.
> > Trying to run: screen -r devshell_20279
> > Must be connected to a terminal.
> > Trying to run: screen -r devshell_20279
> > Must be connected to a terminal.
> > Trying to run: screen -r devshell_20279
> > Must be connected to a terminal.
> > Trying to run: screen -r devshell_20279
> > Must be connected to a terminal.
> > Trying to run: screen -r devshell_20279
> > Must be connected to a terminal.
> > Trying to run: screen -r devshell_20279
> > Must be connected to a terminal.
> > WARNING: Screen started. Please connect in another terminal with "screen
> -r
> > devshell_20279"
> >
> > Thank you,
> >
> > Adam
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--089e082678c06ce3ee055cd8b2a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Not sure what has changed. I attached another terminal to =
the existing container and it works fine.. Don&#39;t know what went wrong w=
ith the original one. Weird.<div>Thanks for paying attention to my thread K=
hem.</div><div><br></div><div>Adam</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr">On Mon, Oct 30, 2017 at 7:29 PM Khem Raj &lt;<a href=3D"=
mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">On Mon, Oct 30, 2017 at 1:49 PM, Adam Lee &lt;<a =
href=3D"mailto:adam.yh.lee@gmail.com" target=3D"_blank">adam.yh.lee@gmail.c=
om</a>&gt; wrote:<br>
&gt; Hello everyone, I have this strange issue where I can&#39;t run &quot;=
-c devshell&quot;<br>
&gt; any longer.<br>
&gt;<br>
&gt; This worked until a day ago.<br>
&gt; I am on Morty, and running in a Docker container.<br>
&gt;<br>
<br>
what changed ?<br>
<br>
&gt; Has anyone seen this:<br>
&gt;<br>
&gt; Currently=C2=A0 1 running tasks (100 of 100)=C2=A0 99%<br>
&gt; |#####################################################################=
###########################################################################=
###########################################################################=
##################<br>
&gt; |<br>
&gt; 0: cmem-4.14.00.00+gitAUTOINC+b514a99ac4-r1 do_devshell - 0s (pid 2027=
9)<br>
&gt; Trying to run: screen -r devshell_20279<br>
&gt; Must be connected to a terminal.<br>
&gt; Trying to run: screen -r devshell_20279<br>
&gt; Must be connected to a terminal.<br>
&gt; Trying to run: screen -r devshell_20279<br>
&gt; Must be connected to a terminal.<br>
&gt; Trying to run: screen -r devshell_20279<br>
&gt; Must be connected to a terminal.<br>
&gt; Trying to run: screen -r devshell_20279<br>
&gt; Must be connected to a terminal.<br>
&gt; Trying to run: screen -r devshell_20279<br>
&gt; Must be connected to a terminal.<br>
&gt; Trying to run: screen -r devshell_20279<br>
&gt; Must be connected to a terminal.<br>
&gt; Trying to run: screen -r devshell_20279<br>
&gt; Must be connected to a terminal.<br>
&gt; Trying to run: screen -r devshell_20279<br>
&gt; Must be connected to a terminal.<br>
&gt; WARNING: Screen started. Please connect in another terminal with &quot=
;screen -r<br>
&gt; devshell_20279&quot;<br>
&gt;<br>
&gt; Thank you,<br>
&gt;<br>
&gt; Adam<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</blockquote></div>

--089e082678c06ce3ee055cd8b2a9--
