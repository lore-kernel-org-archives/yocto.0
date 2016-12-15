Return-Path: <raltherr@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71DC3E00CB0; Thu, 15 Dec 2016 13:46:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46C8EE00AAB
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 13:46:26 -0800 (PST)
Received: by mail-io0-f181.google.com with SMTP id 136so81661953iou.3
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 13:46:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=csEzdbu8sAb4qglcO6wIRzu/reU693HfEotnzOZ3gCc=;
	b=Jnthh8vcwOzR4pXDxhkjF74fv0qOy8uWuBCnL/RItPE5EN9lTbCOwtboMSM8inl+rC
	SsRvFwJFtV0AvSMJ/H/xv3AXXNbhJxDxkm06eO9Ibr7E51/SYFh2N6qTwb54adjXtvvz
	HPq7b/YFSaAr3rRQEJgrlBPHzQQYXz8CYO71JQRRgS23UVGRyRWb7Qbsg1dst4y+og/k
	RDUQQN9cXB2O/hAhxzy5kx3AtW21pRqZ2YuTC3Pd7X3WhHggDom6Kvg/fESChFCOe+VZ
	UgSKDjbVA2eVgsQqZMgJ9PWfwrTmUhPK7PzUxpkTMbyNnxaJoc3joM1V9sGVawAEUQNh
	e7xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=csEzdbu8sAb4qglcO6wIRzu/reU693HfEotnzOZ3gCc=;
	b=opCR3yyIO1pfPVlsim9UTbjzxhmuK/Ec6l2SLsISaAvruhrU8zz7BrQ/XGVmHclanC
	mWnUL6H1gYtEObInUpMoydXfI39u4LmfIG3jnT0Hb1SDYLfXsy5yTsfIHvDhne5l13dD
	DiYPJXuBaovQIslycV5PIkiHHmpQ1lM/pHA6uXYVnGu+rbWWN873lZu7QSowKwoPRFLn
	8boSyZNVkC8CU8M/Ghom+SAqK9/f7wkpTVrnKrN/r4/NzJX0E5mVZV9Dt1gh1ZBTzFTm
	UAyGMiOgTRp3uxUwTQLXYhr+m7AH8qCgO/A6rh3w3b4AIeijKmfnk78Z6sfd54lBr8mf
	Y/pw==
X-Gm-Message-State: AIkVDXK05afoZcijWhRftDo5sleK17+nO+lHR4dhrm2jXnrF5qD9BlZVxuhogMz30wvhTW5xTXHqzZg5DAV3q62g
X-Received: by 10.107.44.5 with SMTP id s5mr3650338ios.10.1481838385590; Thu,
	15 Dec 2016 13:46:25 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:908:2cd5:0:0:0:0 with HTTP; Thu, 15 Dec 2016 13:46:25
	-0800 (PST)
In-Reply-To: <CADh9ykGqNjxchZcRF2K8ikgnk-q4w7n0wk0cMwTaF38oVdz+pw@mail.gmail.com>
References: <CADh9ykGqNjxchZcRF2K8ikgnk-q4w7n0wk0cMwTaF38oVdz+pw@mail.gmail.com>
From: Rick Altherr <raltherr@google.com>
Date: Thu, 15 Dec 2016 13:46:25 -0800
Message-ID: <CAPLgG=nuM4sW9Ck4-oWwmSwErBPeK8MhVgALsKzbzZKUnt0Yug@mail.gmail.com>
To: Ronald Oakes <ron@ron-oakes.us>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Multiple Projects from the same build directory
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
X-List-Received-Date: Thu, 15 Dec 2016 21:46:31 -0000
Content-Type: multipart/alternative; boundary=001a1139449096e0670543b962db

--001a1139449096e0670543b962db
Content-Type: text/plain; charset=UTF-8

Is the fstab dependent on MACHINE or DISTRO?

On Thu, Dec 15, 2016 at 12:49 PM, Ronald Oakes <ron@ron-oakes.us> wrote:

> I'll admit I'm being a bit lazy. I have two related projects, will call
> them A and B. B is dependent on A's layers and adds its own. So far, there
> have been no issues with just building them in the same directory since
> they have separate image recepies.
>
> However, I'm shortly going to be needing to create different fstab files
> for each, as the two will have different disk configurations. But, if I
> have two conflicting .bbappend files each specifying a fstab, only one will
> get used.
>
> So, is there a way to either specify in the image recepie or elsewhere
> which should be used, or do I need to just create a new build direcory with
>  the different set of layers for project A.
>
> Ron O
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1139449096e0670543b962db
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is the fstab dependent on MACHINE or DISTRO?</div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Dec 15, 2016 at 1=
2:49 PM, Ronald Oakes <span dir=3D"ltr">&lt;<a href=3D"mailto:ron@ron-oakes=
.us" target=3D"_blank">ron@ron-oakes.us</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">I&#39;ll admit I&#39;m being a bit lazy. I have two re=
lated projects, will call them A and B. B is dependent on A&#39;s layers an=
d adds its own. So far, there have been no issues with just building them i=
n the same directory since they have separate image recepies.=C2=A0<div><br=
></div><div>However, I&#39;m shortly going to be needing to create differen=
t fstab files for each, as the two will have different disk configurations.=
 But, if I have two conflicting .bbappend files each specifying a fstab, on=
ly one will get used.=C2=A0</div><div><br></div><div>So, is there a way to =
either specify in the image recepie or elsewhere which should be used, or d=
o I need to just create a new build direcory with =C2=A0the different set o=
f layers for project A.=C2=A0</div><div><br></div><div>Ron O</div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a1139449096e0670543b962db--
