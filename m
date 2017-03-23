Return-Path: <alain@craftonix.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1C8AE00AAA; Thu, 23 Mar 2017 09:52:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A642DE00777
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 09:52:26 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id l7so987045ioe.3
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 09:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=craftonix-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=e/9M08zPypc1mfQPrno7TVDx575HjGaxbAm+OzLO5NM=;
	b=H2LJDgHWqN+Bfe41oD7XM04mmGJXbj9ErI5OrvBUl6cMjiTKQZihmD7LHP9oVvxcvm
	vnhQx3EsAtde8l+HI1lH6D7yKWs9AOV4b4V8KIS8oLcX2y+SSFkNlSo5pi0ka+qr6jYS
	BXtv91l2YjBH7jv6Qi161HijBF7+tjMgXD6q75xvsuhhy+8iASfPeYk4IH8ga5+l0rvG
	OdanUhylaBf/LmsUwTI9fuPWeuY6riZWGYNcdodQM5PbyqAFewnRY5kIIZ4leCgs7IwU
	72L0RkVsQEQJ5KgpM5D2/MLEuFXc1kAxx+8nOteknwq7MW0N6zMBJJ0WzD8h01+CASm/
	B7oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=e/9M08zPypc1mfQPrno7TVDx575HjGaxbAm+OzLO5NM=;
	b=h34+8xq83b04on+z7cZ7Q2r0SabmSbkafsQ9EyE9rV7GBbufNWF2m1uWfYuGXrdkDG
	8ajjwvhbfFYAAD6kFbKnIIAYQR12PRmh/QYr0fCh2cGXzUZrZyuaDqiqO5hN3Jo4Hgrt
	L1vuHwOuO0bXwMO0EvEjYihUNwt4wJDjY0m8cptk6l8c32BRQJqdiiBxFOwD610FV4UW
	l0II2OuM83lr+X9ZZA8V5VRrfATq9h31noS/5gBbf9HPJj6s1YpK0TepxxPjBQVte0CE
	6Tw1s2wfiFyaWj60BaemasDS/NrEtQs1zG+xuljlwV8+yPBpI7WFICaFfYswzWrVVeZO
	wXGg==
X-Gm-Message-State: AFeK/H0U/HiwommX9liFZEgcY3zvYHAcAXWLWvk2sjicwMEh+GnQHJ2M99a2Zm2wlBG+IdiGJhWF0vOyYjOykQ==
X-Received: by 10.107.18.220 with SMTP id 89mr4150171ios.24.1490287946385;
	Thu, 23 Mar 2017 09:52:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.140.22 with HTTP; Thu, 23 Mar 2017 09:51:45 -0700 (PDT)
In-Reply-To: <CAJTo0LYre-dNxC+D0m4ofMLbs1Axa3scA2ewcteCGUz8Ka6VMg@mail.gmail.com>
References: <CAGkf0HBCPSm51-q8VhY0GmFnWrh2ZEDcfhxMZBgbpnweMuyy8A@mail.gmail.com>
	<CAJTo0LYre-dNxC+D0m4ofMLbs1Axa3scA2ewcteCGUz8Ka6VMg@mail.gmail.com>
From: Alain Achkar <alain@craftonix.com>
Date: Thu, 23 Mar 2017 12:51:45 -0400
Message-ID: <CALOoqfp9=uGi_kjpTS=2u-Vp9KFL06djOvifsPy8aZ8_RnH5Ow@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is there a searchable, complete archive of the Yocto mailing lists?
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
X-List-Received-Date: Thu, 23 Mar 2017 16:52:30 -0000
Content-Type: multipart/alternative; boundary=001a113ecc0ca892f2054b68b322

--001a113ecc0ca892f2054b68b322
Content-Type: text/plain; charset=UTF-8

Thanks Ross, this is very helpful!

On Thu, Mar 23, 2017 at 11:43 AM, Burton, Ross <ross.burton@intel.com>
wrote:

>
> On 23 March 2017 at 15:30, Alain Achkar <alain.achkar@triacta.com> wrote:
>
>> So, does anyone know if there is a way to search online through *all*
>> postings to *one* mailing list, or through *all* postings to *all* mailing
>> lists?
>>
>
> You can use the site: operator on google to search them.
>
> Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113ecc0ca892f2054b68b322
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Ross, this is very helpful!</div><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote">On Thu, Mar 23, 2017 at 11:43 AM, B=
urton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" =
target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><span clas=
s=3D""><br><div class=3D"gmail_quote">On 23 March 2017 at 15:30, Alain Achk=
ar <span dir=3D"ltr">&lt;<a href=3D"mailto:alain.achkar@triacta.com" target=
=3D"_blank">alain.achkar@triacta.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div>So, does anyone know if there is a way to search onl=
ine through *all* postings to *one* mailing list, or through *all* postings=
 to *all* mailing lists?</div><div></div></blockquote></div><br></span>You =
can use the site: operator on google to search them.</div><span class=3D"HO=
EnZb"><font color=3D"#888888"><div class=3D"gmail_extra"><br></div><div cla=
ss=3D"gmail_extra">Ross</div></font></span></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113ecc0ca892f2054b68b322--
