Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05079E00D4F; Wed,  8 Nov 2017 11:07:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.176 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.176 listed in list.dnswl.org]
Received: from mail-ot0-f176.google.com (mail-ot0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97037E00D4D
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 11:07:57 -0800 (PST)
Received: by mail-ot0-f176.google.com with SMTP id k10so3237752otb.0
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 11:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=0ryXOMAbytliMe/A11/XGcm19SZg6y4r4G5RJSvziUA=;
	b=GHTeh4xqH/9dr7IYmXIcMgwpiLwz+dcuoq3RywdJFLWeQRkeLpl9xoYEWFlp/tC413
	KsLpDIsr1gW1K4B51QXbmzBCLZVOwxCqhHgXc3QlQ0Aqx6KBkOfgrw9zolKaibuXPcOQ
	08r1ckxYTpjPXrXtDAi3Psn2/dnDFJZSfyqC0TWPKWv3MZZYlpId0yF1OWgcSxXhIib9
	qAO6UlE3NsRIPwL0odZeNJfM5FVWgy0MR0bvhuMdloAccMl5RoXW1NyNM4MNKlxSQgIQ
	+jRkJKKnaghKiStuFoOGGHoK8gbE8Ok8GCLZvkWUArQEyOEXdRUYsPPU4JW9tg2/jrBb
	/LDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=0ryXOMAbytliMe/A11/XGcm19SZg6y4r4G5RJSvziUA=;
	b=CUbHVYBi1C6nR67GYoTvyF8XNiBxQCW33ks0qYpAbLxJeIs812Y3E8m3tEfi6+Z/mV
	IGnETOSyl1UHsbpWAI6WyPrwjI5PMrLIOVLUKLkvW4/LV0UYSLLQpTHw+lsApMBVw+bf
	I5g/KkSUfB/m6FiYgELYdPANowyor0pqJXBS7VyaHDODAcDhGiTMsVkTANd5U0n1EsBK
	Sjs3abee9PsOvR6z26qa3xnbnR+yCwigYt4QlwAjWgjs936uWdOnDHh/ARWIhS0BK8+M
	589Amc/holQCi+KzZ/jKq0ouqhNKHFPJ/o1nXxDdLkRzs5WpWOargioX8Rfz1FcnmnMD
	nGrg==
X-Gm-Message-State: AJaThX7HaFwKxx/YjhbXameTrzyblQl/u6UiZ5JH3TmNNeLhcG3bz0sV
	BkRkHMgvBFK1URItl+1oqePLBF5XBtYHSGSuKO1dTQ==
X-Google-Smtp-Source: AGs4zMbo7Gq4BlITpUBMLItOD7pJP2uBWOz0rZc4JLduFKeQHkpiN88BJtbtCRnq2HDbeFe4ETH+/Eg5U97sQg7bGkE=
X-Received: by 10.157.68.232 with SMTP id p40mr1021475otg.199.1510168076292;
	Wed, 08 Nov 2017 11:07:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Wed, 8 Nov 2017 11:07:55 -0800 (PST)
In-Reply-To: <CAE0QtjOyjit90GBrK4i1nCNP_et=GHH=xdnurw72MS+JLfOyDg@mail.gmail.com>
References: <CAE0QtjOyjit90GBrK4i1nCNP_et=GHH=xdnurw72MS+JLfOyDg@mail.gmail.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 8 Nov 2017 14:07:55 -0500
Message-ID: <CAE0QtjP2tnXz6Un_BsEh3zmW3zUKvUGZWRC63NJWa-jwbZoFuQ@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Yocto problem for Ryzen-7 cpu
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
X-List-Received-Date: Wed, 08 Nov 2017 19:07:58 -0000
Content-Type: multipart/alternative; boundary="f403043c4d1cbd1786055d7d67bf"

--f403043c4d1cbd1786055d7d67bf
Content-Type: text/plain; charset="UTF-8"

(weird, yocto mails to me blocked by my gmail, treated as spam?)

Anyway, just change to Ubuntu-17, run first build, succeed with no
failures, good sign!
Will run more and see.





On Wed, Nov 8, 2017 at 12:06 PM, Jerry Lian <jerry.lian@gmail.com> wrote:

> (my Gmail does not accept new message for same subject? so I open a new
> thread)
>
> So bad: I do use Ryzen-7.
> will Ubuntu-17 or latest Debian fix the problem?
>
>
>
>

--f403043c4d1cbd1786055d7d67bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>(weird, yocto mails to me blocked by my gmail, t=
reated as spam?)<br><br></div>Anyway, just change to Ubuntu-17, run first b=
uild, succeed with no failures, good sign!<br></div>Will run more and see.<=
br><br><br><br><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Wed, Nov 8, 2017 at 12:06 PM, Jerry Lian <span dir=3D"ltr">&lt;<=
a href=3D"mailto:jerry.lian@gmail.com" target=3D"_blank">jerry.lian@gmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
><div><div>(my Gmail does not accept new message for same subject? so I ope=
n a new thread)<br><br></div>So bad: I do use Ryzen-7.<br></div>will Ubuntu=
-17 or latest Debian fix the problem?<br><br><br><br></div>
</blockquote></div><br></div>

--f403043c4d1cbd1786055d7d67bf--
