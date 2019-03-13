Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 612FDE00D0F; Wed, 13 Mar 2019 08:42:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
	[209.85.208.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 878A6E00CAB
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2019 08:42:40 -0700 (PDT)
Received: by mail-ed1-f53.google.com with SMTP id n14so1931744edv.8
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2019 08:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=55exGfMjLi22w1TOm3BJVZTclXaPjsIRMw33gvxTDB0=;
	b=u3Q/FCWMyfuZVsC5sHlgd9XlkNsEQIqF950wMhV9KvvFYQm0E2/KdpilJpbxzb9b9h
	QAEfOazhG1XqHkV0uQEtgFMARPjTz2G3gW83/yRUFpc/fXryH48JRqBSSJnNmv6dOsLx
	mUbAwXSdmtthDodd52XNVTZderABYrdrDzG6ZCvk9vLY3GBMq/P9oPVuPzYUWdeypF1l
	5kaRF/TieuaeyjxVilmOXnP2vrCHordMvSpBDnuls6KUYa2vTS9+pUx49scDu/IsBkG6
	bPw3+jgKicK7+uFTnk6PsHF5DAsrrs435wmri/xXR39wdvJ0523ICZFpcG8ukiDd3ffv
	Zo4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=55exGfMjLi22w1TOm3BJVZTclXaPjsIRMw33gvxTDB0=;
	b=HO3mPP3WVQwMEKIvhylNMRER3+hbqXc150QgO1rbFYjevmq93ZWJURNY20kO75qGFo
	+PZd+8k8a42BXc9Oa4nZ1HxVwNN0M2cpDY48P5qQzsSSg3CSNRQAWvlaYD+q7WExo9QX
	AkUD3mAb77jRm4pw99Qr4RtEm1wAcFW9G95DNptvVlR5WOsbO9VbsxvDUW/ysqi8XR4T
	St4AnrOYJ0NEJzFzACiSLW7YCt9ybYoL3yixBjPYf3+5EssIcKDek2SRQerdhJXdKIqy
	FzKTFerPLSja9cXyX8UG2ImCLhdSHdKfdLeEll2Djpty2aRwFD2rtYz51M4s3i5at7tF
	/sxw==
X-Gm-Message-State: APjAAAWOTrWLi2zOEuhPNTwPOewHMkmR+UdjvShlplSWsETejJZI67yY
	c/FihNgaRgzgUc8MCHIWqY3rspF5vzJkpyIHbnhF61kP
X-Google-Smtp-Source: APXvYqzEYIavxxF6zvs2OWcHNRlET6htkS1/aCA3lftk8L3cPazif63pxy9PtJNaLw/5v0IXPVexgXef7TJCsWhXfjI=
X-Received: by 2002:a17:906:5f91:: with SMTP id
	a17mr29984686eju.48.1552491759595; 
	Wed, 13 Mar 2019 08:42:39 -0700 (PDT)
MIME-Version: 1.0
References: <003d01d4d9b0$30bb26b0$92317410$@san.rr.com>
In-Reply-To: <003d01d4d9b0$30bb26b0$92317410$@san.rr.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Wed, 13 Mar 2019 09:42:28 -0600
Message-ID: <CAFNP8OsRB6Upapfkc_fPG5YKTG4Jozkn47QP-h4PM2dx-nbF9g@mail.gmail.com>
To: sscott@san.rr.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: packaging documentation
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
X-List-Received-Date: Wed, 13 Mar 2019 15:42:41 -0000
Content-Type: multipart/alternative; boundary="000000000000d8f7da0583fba7e7"

--000000000000d8f7da0583fba7e7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Steve,

Have you found the YP Overview and Concepts Manual?  There is a fairly
large section here -
https://yoctoproject.org/docs/2.6.1/overview-manual/overview-manual.html#op=
enembedded-build-system-build-concepts
that covers build concepts in some detail.  This might help you.

Another idea for finding topics in the YP manual set is to use the YP
Mega-Manual (
https://yoctoproject.org/docs/current/mega-manual/mega-manual.html), which
is a compilation of the set of YP manuals.  You can search the entire set
for terms (e.g. "packag").  It occurs a lot in the set but it is a way to
find all the occurrences.

If you still cannot find satisfactory explanation on how packages are
generated, we can file a bug against the docs and get a good explanation in
there.

Hope this helps,
Scott

On Wed, Mar 13, 2019 at 9:21 AM Steve Scott <sscott@san.rr.com> wrote:

> Hi:
>
>
>
> I=E2=80=99ve been trying to get a better understanding of how packages ar=
e
> generated by recipes. I found a fairly good explanation in an old
> OpenEmbedded User=E2=80=99s Manual (
> https://dominion.thruhere.net/koen/OE/OE-usermanual.html#recipes_packages=
).
> The manual is hard to find, and doesn=E2=80=99t appear to be archive on t=
he
> openembedded site (https://www.openembedded.org/wiki/Documentation).
>
>
>
> Can somebody point me to an equivalent discussion in the current Yocto
> project documentation?
>
>
>
> Thanks.
>
>
>
> -steve
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000d8f7da0583fba7e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Steve, <br></div><div><br></div><=
div>Have you found the YP Overview and Concepts Manual?=C2=A0 There is a fa=
irly large section here - <a href=3D"https://yoctoproject.org/docs/2.6.1/ov=
erview-manual/overview-manual.html#openembedded-build-system-build-concepts=
">https://yoctoproject.org/docs/2.6.1/overview-manual/overview-manual.html#=
openembedded-build-system-build-concepts</a> that covers build concepts in =
some detail.=C2=A0 This might help you.=C2=A0 <br></div><div><br></div><div=
>Another idea for finding topics in the YP manual set is to use the YP Mega=
-Manual (<a href=3D"https://yoctoproject.org/docs/current/mega-manual/mega-=
manual.html">https://yoctoproject.org/docs/current/mega-manual/mega-manual.=
html</a>), which is a compilation of the set of YP manuals.=C2=A0 You can s=
earch the entire set for terms (e.g. &quot;packag&quot;).=C2=A0 It occurs a=
 lot in the set but it is a way to find all the occurrences. <br></div><div=
><br></div><div>If you still cannot find satisfactory explanation on how pa=
ckages are generated, we can file a bug against the docs and get a good exp=
lanation in there.</div><div><br></div><div>Hope this helps, <br></div><div=
>Scott<br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Wed, Mar 13, 2019 at 9:21 AM Steve Scott &lt;<a hr=
ef=3D"mailto:sscott@san.rr.com">sscott@san.rr.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div c=
lass=3D"gmail-m_-8481650631589886565WordSection1"><p class=3D"MsoNormal">Hi=
:<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=
=3D"MsoNormal">I=E2=80=99ve been trying to get a better understanding of ho=
w packages are generated by recipes. I found a fairly good explanation in a=
n old OpenEmbedded User=E2=80=99s Manual (<a href=3D"https://dominion.thruh=
ere.net/koen/OE/OE-usermanual.html#recipes_packages" target=3D"_blank">http=
s://dominion.thruhere.net/koen/OE/OE-usermanual.html#recipes_packages</a>).=
 The manual is hard to find, and doesn=E2=80=99t appear to be archive on th=
e openembedded site (<a href=3D"https://www.openembedded.org/wiki/Documenta=
tion" target=3D"_blank">https://www.openembedded.org/wiki/Documentation</a>=
).<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=
=3D"MsoNormal">Can somebody point me to an equivalent discussion in the cur=
rent Yocto project documentation?<u></u><u></u></p><p class=3D"MsoNormal"><=
u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">Thanks.<u></u><u></u></p><p c=
lass=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">-steve<u>=
</u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div></div>-=
- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000d8f7da0583fba7e7--
