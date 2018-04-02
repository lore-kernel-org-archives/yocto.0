Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D525E00C76; Sun,  1 Apr 2018 20:10:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B4EFE00857
	for <yocto@yoctoproject.org>; Sun,  1 Apr 2018 20:10:31 -0700 (PDT)
Received: by mail-lf0-f45.google.com with SMTP id g203-v6so18850533lfg.11
	for <yocto@yoctoproject.org>; Sun, 01 Apr 2018 20:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fzZR1JQmC7EFW+U3GM9L+jLBzW40+N4W5+GdiDq+5UA=;
	b=cI3d7eVYATKY/BqWVmoZewRWIAxxiZ8kgxSC7kzRlmya9jtSPKoBe26eseN7II2atH
	bqxVAM9MYfnr8Oscum/nqpeim4H/cxFQHcttM+hojNn88ScMgqdo+g55kI/F16TV1w6+
	JGEu6Ej62YZRfKT0fOOMcg8srazTiAmJa+cqQw7XwNk6i+GjJ9bTQegGUdeG7m+t1nee
	q7SnF6azjGFAjobm6XBt3nDTwSpxFMGm+eOyUGYpYKNzfLOshCFEAO8IxYRU23V79/VW
	8Y8V6VfmuxWmKcv/VUvo0+3gs2037nOOcjJ/By4IwSy1b/0YP7mYXGUMjDVM0uMgQOZj
	cMAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fzZR1JQmC7EFW+U3GM9L+jLBzW40+N4W5+GdiDq+5UA=;
	b=llhpv0UpliUEQwH6RfAd+jrRM42ZKz/v2A54Nckyr7h6ifbqWZmn6332pmnWLZYhh+
	AxqvV+sVddavgT7R4wRK+4jtEfw+d5KWvoBuVWLl7Mb9ETn2wz0cUqD0gz7otF0sFKdg
	vNl1tQBSts7tNdD6Dx4+gbeVvJh4F3HWqGhlpv/pOpYAb72m4Or27NsG2GEZd6R3REYR
	l/GKvSH/PP56hCFwkHd/Xc/mW6BIHBAxqqTAD2knSbvAzC4KFx6uqBSJFhp6wVziolry
	BTiH3RRylAa1uN9mwWpZDcPh71VClxDM9ppO29KNUUij/+0zbDYyKiQGFw6/pAXBZznl
	qUiQ==
X-Gm-Message-State: ALQs6tArI71i74X9gHh4UEUqsx2HdNySGqQHNnbpd4DhquL15cVEHa/6
	2zERPjXFNdefuRzvmq/FgDoDYkFAlGjTuRtnI7o=
X-Google-Smtp-Source: AIpwx4/mn/w+9OwGFQrr2dKKQ7Y+/eZLvWBPuS4CXAZfQTIhhaftL8QUGjxC5gVQYa3mMrBukhPPyKlsQ8OtML7tpuU=
X-Received: by 2002:a19:385e:: with SMTP id
	d30-v6mr4494210lfj.16.1522638631037; 
	Sun, 01 Apr 2018 20:10:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:d80f:0:0:0:0:0 with HTTP;
	Sun, 1 Apr 2018 20:10:30 -0700 (PDT)
In-Reply-To: <CALbNGRR__b_jq3zRaOP8iawqgPgpxnH5ceQpo7+Tq-wPdWqaow@mail.gmail.com>
References: <CALbNGRRA3Ev3mPT4ZDRO_koC_uwVWy4qXc8onJN5nSeXnE3JRg@mail.gmail.com>
	<CAHUNapQhvr8UWBuF-Z5y0ojhsfF=fUU3nfgmRdxNGi4iKdkbqA@mail.gmail.com>
	<CAMKF1sonaNhe0jznAaVFySa5z-JOBdqxDRjifq-F04kra=_rfg@mail.gmail.com>
	<CALbNGRR0qo=yS2dop-3pfpAZVSC9NekDyg_aFCzURs7NM3UGvg@mail.gmail.com>
	<CALbNGRTKdu+H4eW8U1D4FxM9+LjfoOeZUC0c=irJyHmK69bdMQ@mail.gmail.com>
	<CALbNGRS06u3NTU=2XYRiga=B_rPj_rNyLwv2dC8hRUkx=mJt+A@mail.gmail.com>
	<CAHUNapQP=2OYu6qjf5QLmMbcurXRFo_O1fWg0_oiqCXDZykccA@mail.gmail.com>
	<CALbNGRTifa4-1SW2+zNCB_1a6+wHAjAYigMA1chrNMFiDb15Kg@mail.gmail.com>
	<CALbNGRRR2z6bZFtU=aRBrY8FqAxU1YLtJaD+TGAw3yA-Vr+6AA@mail.gmail.com>
	<20180329214654.GA25163@linux-uys3>
	<CALbNGRR__b_jq3zRaOP8iawqgPgpxnH5ceQpo7+Tq-wPdWqaow@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Sun, 1 Apr 2018 23:10:30 -0400
Message-ID: <CAHUNapTBry7BbPkLyJCjN_2ss4FcqgEXkL==YUqZS1X5NToJ6Q@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Has anybody run VC4 + X + recent meta/masters lately
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
X-List-Received-Date: Mon, 02 Apr 2018 03:10:34 -0000
Content-Type: multipart/alternative; boundary="000000000000b970690568d4ee1d"

--000000000000b970690568d4ee1d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 30, 2018 at 6:45 AM, Andreas M=C3=BCller <schnitzeltony@gmail.c=
om>
wrote:

> After party hangover: sddm and kde look horrible with this patch.
> Should respect linear if requested explicitly - wonder if that slows
> down horses...
>

Out of curiosity, are you going to follow up on this? Maybe with the mesa
people?
When I encountered this issue, my google-foo didn't yield anything.

--000000000000b970690568d4ee1d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Mar 30, 2018 at 6:45 AM, Andreas M=C3=BCller <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:schnitzeltony@gmail.com" target=3D"_blank">schnitzeltony@gmai=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D=
"HOEnZb"><div class=3D"h5"><span style=3D"color:rgb(34,34,34)">After party =
hangover: sddm and kde look horrible with this patch.</span><br></div></div=
>
Should respect linear if requested explicitly - wonder if that slows<br>
down horses...<br></blockquote><div><br></div><div>Out of curiosity, are yo=
u going to follow up on this? Maybe with the mesa people?</div><div>When I =
encountered this issue, my google-foo didn&#39;t yield anything.=C2=A0</div=
></div></div></div>

--000000000000b970690568d4ee1d--
