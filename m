Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C39EE00D35; Tue, 25 Jun 2019 00:30:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.50 listed in list.dnswl.org]
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
	[209.85.208.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 288E4E00CF4
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 00:30:15 -0700 (PDT)
Received: by mail-ed1-f50.google.com with SMTP id i11so25676571edq.0
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 00:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=0xfmokty4wQIVxypL+7ajg+B34HMqmuVAJ7SIV/vtXk=;
	b=rrtQbmrd9CL+wE1W0FTmXjr4smLz6+1xvMOWqZ4uCGYgsnQ6cJYrZLBnRvtdJdqJre
	+BYzYsrxDxFjPQDR5FqJAIbO0vaPUGqbwgq8vK0h4xe+Bs9VVERuTBxtd+9BjQQi90j2
	Ox8BAeAzF8XpfW5zllW02b0lO1qw1Qgw2Fz9lDDbiBTZMvms7PfLJQxg0kVPvAgLKHol
	f7K3fL27egHcBzq8NkHD0Q59k2d771/Cvf0XRe7pUbQRS74UweNxCo8KgqTOW6tjGFqh
	eJrSY3KNC0xLt2CvGCr6VFflU+PP47fvSYF/WS8feEC2m+F1sTIoMXT0vSecvbop8iuR
	pefg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=0xfmokty4wQIVxypL+7ajg+B34HMqmuVAJ7SIV/vtXk=;
	b=tGRFWOmGsOwcvHZh61nrV2B/LuDuM7T3Zh2Hi7q1BhwclaFg8ankOVGnavwkTY1091
	/iwG9xvGkrR4yMkCdaTNqJkM6BvjNuZZBMN4IZ097YA3Md0PYTPYGI0W9X2ta9kOfryh
	j/t2fBbp5zCHDDKUwBFqAKSgMk47hfnX5VWCi0+42/SuQBfh9+M/CckOaRl4QxTIX8Bd
	mj5JkJZ0FIfka4A2lhroFLBNXRKE39kDMZoMIHmXLoJYoP5RSmyMElY+6lY9pN4+UEpr
	/Eo28vMBN3pdamyCryvwG0XpRFWV+mgwoqyHkjRqorf1ogvC6dqPmDqXW4/525dPzbD3
	oBZg==
X-Gm-Message-State: APjAAAUKJpMP+O3xEBTJGCiDlznCtqxOJ9FkU/ZAQYc+fLsyNKShCUmp
	vfoZ/KUEckpxWBn08OUcsl8DoZ/DSAiNSyv3ZR6jYRg5
X-Google-Smtp-Source: APXvYqwY2gJZYpmV47E5eJ6VwAjYZjnXri/gTUoeTfBucqEhrFpLPM6Ps9H1XJts//5ctylV1VI6BZk4OUFutJX6fFw=
X-Received: by 2002:a17:906:9705:: with SMTP id
	k5mr99401854ejx.5.1561447815013; 
	Tue, 25 Jun 2019 00:30:15 -0700 (PDT)
MIME-Version: 1.0
References: <1561429587556.6733@lge.com>
In-Reply-To: <1561429587556.6733@lge.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 25 Jun 2019 09:30:04 +0200
Message-ID: <CA+chaQf7VB36-ihmnx+ARiJ7VC4rQcuBSHgmwj33ytr_fauERw@mail.gmail.com>
To: "keith.derrick" <keith.derrick@lge.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dealing with line endings
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
X-List-Received-Date: Tue, 25 Jun 2019 07:30:17 -0000
Content-Type: multipart/alternative; boundary="0000000000005969b0058c20e636"

--0000000000005969b0058c20e636
Content-Type: text/plain; charset="UTF-8"

Hi Keith,

you can use dos2unix.bbclass:
http://git.openembedded.org/openembedded-core/tree/meta/classes/dos2unix.bbclass
to convert them before do_patch.

Cheers,

On Tue, Jun 25, 2019 at 4:57 AM keith.derrick <keith.derrick@lge.com> wrote:

> I am using an upstream repo with a mix of line endings.
>
>
> In my recipe, I'm applying a patch with normalized line endings, as our
> meta layer repo has a .gitattributes with "text=auto" set.
>
>
> The patch is failing due to "different line endings".
>
>
> Can the git fetcher be configured to normalize line endings on unpack? I
> tried setting core.autocrlf in my global .gitconfig, but the
> fetcher/unpacker seems to ignore it.
>
>
> Thanks
>
> Keith
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000005969b0058c20e636
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Keith,<div><br></div><div>you can use dos2unix.bbclass:=
</div><div><a href=3D"http://git.openembedded.org/openembedded-core/tree/me=
ta/classes/dos2unix.bbclass">http://git.openembedded.org/openembedded-core/=
tree/meta/classes/dos2unix.bbclass</a></div><div>to convert them before do_=
patch.</div><div><br></div><div>Cheers,</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 25, 2019 at 4:57 A=
M keith.derrick &lt;<a href=3D"mailto:keith.derrick@lge.com">keith.derrick@=
lge.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">




<div dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);background-color:=
rgb(255,255,255);font-family:Calibri,Arial,Helvetica,sans-serif">
<p>I am using=C2=A0an upstream repo with a mix of line endings.<br>
</p>
<p><br>
</p>
<p>In my recipe, I&#39;m applying a patch with normalized line endings, as =
our meta layer repo has a .gitattributes with &quot;text=3Dauto&quot; set.<=
br>
</p>
<p><br>
</p>
<p>The patch is failing due to &quot;different line endings&quot;.<br>
</p>
<p><br>
</p>
<p>Can the git fetcher be configured to normalize line endings on unpack? I=
 tried setting core.autocrlf in my global .gitconfig, but the fetcher/unpac=
ker seems to ignore it.<br>
</p>
<p><br>
</p>
<p>Thanks<br>
</p>
<p>Keith<br>
</p>
<p><br>
</p>
</div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000005969b0058c20e636--
