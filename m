Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB2ACE003FA; Fri, 18 Jul 2014 10:01:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ADBFE00342
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 10:01:07 -0700 (PDT)
Received: by mail-la0-f52.google.com with SMTP id e16so3119825lan.11
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 10:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=93GcBGpR3YGYaKo7O5tq01ZRGXW0DBPmaoUp+f0eDeU=;
	b=iCSAws83JfeoSlbRzrX7zknUeR1IYC+ZB11Ff1Kpkhic69OP6whd9nPx+uO0pFPklM
	zuInw6ehdeb3YBwPW732veQ7F8qwJVRAQCXKdvp8gbGAnNZTpRZX+P53d9BI8b2oCAsX
	9pvebYnr8mAQ9bnDyRZYfFbCg4SZBchLjgfbhHJlpExD5OU5u/KP3KnqYGbBE5WycYZp
	J0WH1vxsP5OGnAETuqqvQ281MxuW/cuKAD4TanEeIajKpWunPRYB1DYC/sQXw7MLi3q0
	WwlymxDj2Yg0uDCf8dpGysT8paejP3RC6bNat5Do8dUZ9gkQZjc++JDuKmxMJJHB1IRV
	5bFQ==
X-Received: by 10.112.140.41 with SMTP id rd9mr6422008lbb.31.1405702866294;
	Fri, 18 Jul 2014 10:01:06 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.63.72 with HTTP; Fri, 18 Jul 2014 10:00:46 -0700 (PDT)
In-Reply-To: <53C9515F.1040504@mlbassoc.com>
References: <53C94ACD.6010800@mlbassoc.com>
	<CABcZAN=B3uNLKrTK4j_G5Ex=9WQw3xHkidhVVR-2E-2oLpOrhw@mail.gmail.com>
	<53C9515F.1040504@mlbassoc.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Fri, 18 Jul 2014 10:00:46 -0700
X-Google-Sender-Auth: 905JI0QHWKy2mUDAkOKPDdMga28
Message-ID: <CABcZANmwNUNYWDfjZyx3+Jur1rvfhUU6TAT7rrnR2mD+Z42YCA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Extending images
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
X-List-Received-Date: Fri, 18 Jul 2014 17:01:11 -0000
Content-Type: multipart/alternative; boundary=001a11c25aa6015f5604fe7ab44c

--001a11c25aa6015f5604fe7ab44c
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 18, 2014 at 9:54 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> Most likely the image defined its own IMAGE_INSTALL using ?=, so defining
>> it yourself in the configuration data overrode its default definition,
>> since ?= is "set only if unset". If
>> the recipe didn't use ?=, then your IMAGE_INSTALL += would have had no
>> effect at all. To append to IMAGE_INSTALL directly without using
>> CORE_IMAGE_EXTRA_INSTALL you could have used
>> IMAGE_INSTALL_append, since that's a postponed operation that happens at
>> the end of the recipe parsing.
>>
>
> That makes sense, thanks.  I'll stick to using CORE_IMAGE_EXTRA_INSTALL
> from now on!


That's best, indeed. This is a case where there's a real difference between
variables intended for the user to override from configuration, and those
which are not. IMAGE_INSTALL is a detail of how images are constructed,
CORE_IMAGE_EXTRA_INSTALL is an explicit hook provided to the user to
non-destructively add packages to an image, so we don't have to try to
guess at what the recipe will do with it -- it has explicit semantics, so
we know this. There might be value in differentiating between cases like
this in the documentation, if we don't already.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c25aa6015f5604fe7ab44c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Jul 18, 2014 at 9:54 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D=
"">Most likely the image defined its own IMAGE_INSTALL using ?=3D, so defin=
ing it yourself in the configuration data overrode its default definition, =
since ?=3D is &quot;set only if unset&quot;. If<br>


the recipe didn&#39;t use ?=3D, then your IMAGE_INSTALL +=3D would have had=
 no effect at all. To append to IMAGE_INSTALL directly without using CORE_I=
MAGE_EXTRA_INSTALL you could have used<br>
IMAGE_INSTALL_append, since that&#39;s a postponed operation that happens a=
t the end of the recipe parsing.<br>
</div></blockquote>
<br>
That makes sense, thanks. =C2=A0I&#39;ll stick to using CORE_IMAGE_EXTRA_IN=
STALL<br>
from now on!</blockquote></div><br></div><div class=3D"gmail_extra">That&#3=
9;s best, indeed. This is a case where there&#39;s a real difference betwee=
n variables intended for the user to override from configuration, and those=
 which are not. IMAGE_INSTALL is a detail of how images are constructed, CO=
RE_IMAGE_EXTRA_INSTALL is an explicit hook provided to the user to non-dest=
ructively add packages to an image, so we don&#39;t have to try to guess at=
 what the recipe will do with it -- it has explicit semantics, so we know t=
his. There might be value in differentiating between cases like this in the=
 documentation, if we don&#39;t already.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a11c25aa6015f5604fe7ab44c--
