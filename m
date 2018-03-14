Return-Path: <krussell7711@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A2C3E009D7; Wed, 14 Mar 2018 13:59:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bkylerussell[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28067E009D7
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 13:59:27 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id 139so6660439wmn.2
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 13:59:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=F45KatpA7jf6+t91PIbYVqJYoKQMK1bdpyLLElhF7Jg=;
	b=gWwzM0GYslwB0z0lChQ1+WlnFzLkdZ9j2JoVEjbDgHnmepJEmh3ASpFyRtGjCidjDh
	PQtFO7uFrVWgr1PObrRmmxKJcvYSVVqmavlHMPBh+o3Dc3klxSQIYiLGdj3ne6qmEWUf
	UyOnmyGG2pLLCUoqi79A5s/I8AF7EZWJ8yl6MlK0/fE4B0XsmUdwsYcKji1MoSh/Cvw6
	v3U4j+OlTPFSnVfa0ENCzPbXdIVtrCO2rhkb73C/s7I9cKRoaD6sBffQdOSQXp11qOWC
	GP5rhSb6N2iLKV7UXE5L8LTLa5iQe2vmgwA5JBCcD8OA0V+J4Z2pyd/w6CEzvnMGaTOH
	7EDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=F45KatpA7jf6+t91PIbYVqJYoKQMK1bdpyLLElhF7Jg=;
	b=fMfAux9f2Wf/7Ziq0Wj4pwPCurWeJ9qHh0H4TT7pKSv3QdRqALgtkMguzdtOgBTICk
	9TDzxyNFFVGgrd0gHOjNVaKC4Xgf2CWB66BwRSEeKalHHNBG2F/R0YM7SslZoietvOpb
	9YD6VzFWrgVFW0wU9QO8CHmC2eoLaa/TkerOJmAltCezCEsE3idTl9FMM8GImNSGh1oY
	dbf0a4nh2S6XrZTdRxr6WUsuIGxa0cIutQtQ5LE8Kxcz6YCXTgtZbyUNv5dLzhVh2VOh
	SUOE42vXNlHYYUqEnxlm7cbJm2YnzH8RtJVdzcKyZ/9LayMnbwpac/R8nfN6UkriIit/
	jX4Q==
X-Gm-Message-State: AElRT7FNklDuzHGVrNAm/w4aDVsC1qES2pqtkltJmnEcxRN5H4xxeLh4
	3jVQJn0W7uAhTtl/CXkaxezgImooMfvbnj2EkpA=
X-Google-Smtp-Source: AG47ELtniqthNPToWbUxYG75W3OrWTHl9Yp7R1nt8FAgTyXxLFBCgoGHllq9Sqgk04CKqLsBCTn9h7MBvq5rT1LDMfU=
X-Received: by 10.80.169.116 with SMTP id m49mr6407986edc.172.1521061166019;
	Wed, 14 Mar 2018 13:59:26 -0700 (PDT)
MIME-Version: 1.0
References: <1518817283-31382-1-git-send-email-bkylerussell@gmail.com>
	<CAJTo0La7R7AhY3xVwerW7X+sJTE2y-MRJOofvHqOt1xvOZpo=A@mail.gmail.com>
	<CAFrQVPPwDP1yaqAUsj+RVnYa=FoR4H2tyAYVT5CemWGVEZvczQ@mail.gmail.com>
In-Reply-To: <CAFrQVPPwDP1yaqAUsj+RVnYa=FoR4H2tyAYVT5CemWGVEZvczQ@mail.gmail.com>
From: Kyle Russell <bkylerussell@gmail.com>
Date: Wed, 14 Mar 2018 20:59:15 +0000
Message-ID: <CAFrQVPOE7FdqvKN4Z3vfRVfHoHqiQCJvsCGOxoJzuHh0VXx9aA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [meta][PATCH] ptest.bbclass: fix path for multilib
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
X-List-Received-Date: Wed, 14 Mar 2018 20:59:28 -0000
Content-Type: multipart/alternative; boundary="94eb2c0e4b447b7860056765a676"

--94eb2c0e4b447b7860056765a676
Content-Type: text/plain; charset="UTF-8"

I logged a bug for this so not to lose track of it. I'll be glad to do the
work, but I want to make sure it's valuable if something more than a
trivial fix is desired.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=12604

On Mon, Feb 19, 2018, 12:46 PM Kyle Russell <bkylerussell@gmail.com> wrote:

> That's reasonable, but how would you propose that work?  An analogous fix
> for ptest-runner is to use ${libdir} instead of /usr/lib (leaving the
> bbclass intact), but that just flips the problem if you try to run
> lib32-libfoo-ptest using a 64-bit ptest-runner with default arguments (not
> specifying -d /usr/lib).  Alternatively, I suppose ptest-runner could look
> in multiple directories by default (for example, ${libdir} and
> ${nonarch_libdir}, assuming they're different).  Although, it almost feels
> like the run-ptest scripts should really be installed to ${libexecdir}.
>
> I'll be glad to workup a different patch, but I want to make sure I
> understand the desired design.
>
> On Fri, Feb 16, 2018 at 6:12 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> On 16 February 2018 at 21:41, Kyle Russell <bkylerussell@gmail.com>
>> wrote:
>>
>>> ptest-runner always looks at /usr/lib, so make this arch independent.
>>>
>>
>> I'd say the bug here is in ptest-runner.  I'd expect to be able to
>> install libfoo-ptest and lib32-libfoo-ptest in parallel.
>>
>> Ross
>>
>
>

--94eb2c0e4b447b7860056765a676
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<span>I logged a bug for this so not to lose track of it. I&#39;ll be glad =
to do the work, but I want to make sure it&#39;s valuable if something more=
 than a trivial fix is desired.</span><div><br></div><div><a href=3D"https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D12604">https://bugzilla.yocto=
project.org/show_bug.cgi?id=3D12604</a><br><br><div class=3D"gmail_quote"><=
div dir=3D"ltr">On Mon, Feb 19, 2018, 12:46 PM Kyle Russell &lt;<a href=3D"=
mailto:bkylerussell@gmail.com">bkylerussell@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">That&#39;s reasonable, b=
ut how would you propose that work?=C2=A0 An analogous fix for ptest-runner=
 is to use ${libdir} instead of /usr/lib (leaving the bbclass intact), but =
that just flips the problem if you try to run lib32-libfoo-ptest using a 64=
-bit ptest-runner with default arguments (not specifying -d /usr/lib).=C2=
=A0 Alternatively, I suppose ptest-runner could look in multiple directorie=
s by default (for example, ${libdir} and ${nonarch_libdir}, assuming they&#=
39;re different).=C2=A0 Although, it almost feels like the run-ptest script=
s should really be installed to ${libexecdir}.<div><br></div><div>I&#39;ll =
be glad to workup a different patch, but I want to make sure I understand t=
he desired design.</div></div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Fri, Feb 16, 2018 at 6:12 PM, Burton, Ross <span dir=3D"ltr=
">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burto=
n@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div di=
r=3D"ltr"><span>On 16 February 2018 at 21:41, Kyle Russell <span dir=3D"ltr=
">&lt;<a href=3D"mailto:bkylerussell@gmail.com" target=3D"_blank">bkyleruss=
ell@gmail.com</a>&gt;</span> wrote:<br></span><div class=3D"gmail_extra"><d=
iv class=3D"gmail_quote"><span><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">ptest-runner =
always looks at /usr/lib, so make this arch independent.<br></blockquote><d=
iv><br></div></span><div>I&#39;d say the bug here is in ptest-runner.=C2=A0=
 I&#39;d expect to be able to install libfoo-ptest and lib32-libfoo-ptest i=
n parallel.</div><span class=3D"m_-1242428618161253666HOEnZb"><font color=
=3D"#888888"><div><br></div><div>Ross=C2=A0</div></font></span></div></div>=
</div>
</blockquote></div><br></div>
</blockquote></div></div>

--94eb2c0e4b447b7860056765a676--
