Return-Path: <seth.boll@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86D53E006DB; Wed, 27 Aug 2014 04:43:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (seth.boll[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.181 listed in list.dnswl.org]
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2849EE00566
	for <yocto@yoctoproject.org>; Wed, 27 Aug 2014 04:43:12 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id bs8so286382wib.2
	for <yocto@yoctoproject.org>; Wed, 27 Aug 2014 04:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=7UaV6OrdISlqHz1yWTto/y7OeaHj5vwcUDDyHSAHoeA=;
	b=G6+S1rQi4xGBD16ZweWVCtyXhyEUwOI2uVvyZr2fqk53lsDLcU7EkWZIXtg9ITGR4B
	YscYUQQJ/Ticy1HaLzN8Pq+3sFetL+73n8a0yE3Gqz7ZzVPpN2YyS441KUsOpRLt7SGD
	SVvv2y93IbNGitjhLU8AAUd4jKn5eda5Qbf4+Ndwe45uVT7HonQyV/gd+Y3+iLnOw0qR
	hL6NUe3joOndScp8EcrRWmpMt/DcoMokQ/XT6Bjyc8mTUh+sZ+cfuALKyRo4GE2yK/T9
	AAE/vAyBZlyfJEz23hjyXSwZykgoT07Rl4RNdGYWbNG7O+wG5IuSYQZiE/CH9NdGBfsb
	riJw==
MIME-Version: 1.0
X-Received: by 10.180.73.235 with SMTP id o11mr28285236wiv.41.1409139789620;
	Wed, 27 Aug 2014 04:43:09 -0700 (PDT)
Received: by 10.216.208.73 with HTTP; Wed, 27 Aug 2014 04:43:09 -0700 (PDT)
In-Reply-To: <CABcZANnRi__cWdrruHYB8JLc1=Q7oj=DPMCLUwYPm72W0roC0Q@mail.gmail.com>
References: <CA+JN8xNsPD_Fi2e7nyTfq6Vje0ssz_eSdxjicussA94B0pSU3g@mail.gmail.com>
	<CABcZANnRi__cWdrruHYB8JLc1=Q7oj=DPMCLUwYPm72W0roC0Q@mail.gmail.com>
Date: Wed, 27 Aug 2014 06:43:09 -0500
Message-ID: <CA+JN8xMgr_eSpOU7B6tWjnP0HaqhGGB4gc0rv0RkP8b=hX883w@mail.gmail.com>
From: Seth Bollinger <seth.boll@gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Image that depends on another image
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
X-List-Received-Date: Wed, 27 Aug 2014 11:43:16 -0000
Content-Type: multipart/alternative; boundary=f46d043d66dd996c2405019aec41

--f46d043d66dd996c2405019aec41
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 21, 2014 at 7:25 PM, Christopher Larson <clarson@kergoth.com>
wrote:

>
> On Thu, Aug 21, 2014 at 5:08 PM, Seth Bollinger <seth.boll@gmail.com>
> wrote:
>
>> Our device requires two images to be built.  Is there any way to have the
>> first image depend on the second image?
>
>
> do_rootfs[depends] += "some-other-image:do_rootfs" would probably do.
>

I hate to resurrect this thread, but after testing this out and using it we
ran into a small hiccup.  Since we're using the second image to generate a
second partition, a lot of the dependencies actually need to be injected
into the first image (users, utilities, etc.).  Is there a way to do this?

Thanks again!

Seth

--f46d043d66dd996c2405019aec41
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Aug 21, 2014 at 7:25 PM, Christopher Larson <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a>=
&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">On Thu, Aug 21, 2014 at 5:08 PM, Seth Bollin=
ger <span dir=3D"ltr">&lt;<a href=3D"mailto:seth.boll@gmail.com" target=3D"=
_blank">seth.boll@gmail.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Our device requires two images to be built. =
=C2=A0Is there any way to have the first image depend on the second image?<=
/blockquote>


</div><br></div><div class=3D"gmail_extra">do_rootfs[depends] +=3D &quot;so=
me-other-image:do_rootfs&quot; would probably do.</div></div></blockquote><=
div><br></div><div>I hate to resurrect this thread, but after testing this =
out and using it we ran into a small hiccup. =C2=A0Since we&#39;re using th=
e second image to generate a second partition, a lot of the dependencies ac=
tually need to be injected into the first image (users, utilities, etc.). =
=C2=A0Is there a way to do this?</div>
<div><br></div><div>Thanks again!</div><div><br></div><div>Seth</div></div>=
<br></div></div>

--f46d043d66dd996c2405019aec41--
