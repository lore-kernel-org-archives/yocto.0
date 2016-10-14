Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E294E0049B; Fri, 14 Oct 2016 08:56:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14AB2E0044F
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 08:55:12 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id i202so124923515ioi.2
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 08:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kU9LyfzOCh/0UP6TCSa2iu8vKjNGIEl7O0lO16jTRZk=;
	b=eXKO3/j2u24NVkG4cCHNSe0cQ77eYuiNBgxtB43HYZlZISTTTQItskpxWHbHzy6avQ
	zNAz85JADOStCEFjYE6JyomCEJ8poCM0U8RsSdVUcH3gwO9Qu/jo/ymhlfxioE6+kfCn
	+OEWWYNHNHMnZ0URqDOYU+saS9j5h3QnD18Tq9y2VyHggnpdszxVOdHmf44CjGEh/3Zi
	BbfCalSP5Gs53MsRHSw6FXmLNKcrhdU71wyqN1ceKYTDGCmDhS3YHQf/Os33dQguYt2w
	2BwcDuFFop1BqTLGG7P6yPqT08TEodTkufIJPGdoPfkSzk9Fphr5M/8zTc0+onOwOKLn
	p+4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kU9LyfzOCh/0UP6TCSa2iu8vKjNGIEl7O0lO16jTRZk=;
	b=GN5k5DZhIr8oX2veHQ7q3AnYhs4LtzAbjnh8MnsPkNxFI5HNshYJhgiQRrt0ZclTsY
	gRjOvSXg4WDm18T3lZThdUfEitVlC3vjJZmtSIs9D7ayuAObpFSlGFnN9YHIAq9NLQ8/
	gTG7vYsFTk7tVyjd2qg3R0AEO4HH4PNR71I5Lu/7XMnB6l0DuMiYRjcVm7MtaInl7VYY
	dCk7RQonItarjdK/pV/5Uf1+Ze5mkbFObTEyVdCFsi55WsH4P8DVa/W53yPqoN8RR0up
	/pfOkqOpFexo/HEwJqj2y8IsVg2mUVd9tV+aZ74mRZ2d3CV0soAyukbCv07OuqJ6diB+
	GsSg==
X-Gm-Message-State: AA6/9RkhuTG7OtstDQ0+dB3tf/UIfzTORsx9edAjTr9c336TwrT66zQlReNK5pQt19czSeMGXZxTc26nzSqIwcCP
X-Received: by 10.107.138.15 with SMTP id m15mr12490731iod.127.1476460511654; 
	Fri, 14 Oct 2016 08:55:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.155.66 with HTTP; Fri, 14 Oct 2016 08:54:51 -0700 (PDT)
In-Reply-To: <CADm5WxPcAqeDdB8f18YhsyX_365Ve7kFqtNuhN0pyp+192G7ng@mail.gmail.com>
References: <CADm5WxPcAqeDdB8f18YhsyX_365Ve7kFqtNuhN0pyp+192G7ng@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 14 Oct 2016 16:54:51 +0100
Message-ID: <CAJTo0LZbgdZXHH7NMa1PBbJwHE06=QRXm9+5zbsSq+5sMt+zbA@mail.gmail.com>
To: Michael Callahan <coder.callahan@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Two pythons
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
X-List-Received-Date: Fri, 14 Oct 2016 15:56:16 -0000
Content-Type: multipart/alternative; boundary=001a113feb3c528e2e053ed540a7

--001a113feb3c528e2e053ed540a7
Content-Type: text/plain; charset=UTF-8

On 12 October 2016 at 18:58, Michael Callahan <coder.callahan@gmail.com>
wrote:

> I just moved my project from Fido to Krogoth and now I have two
> pythons (2.7 and 3).  This bumps the size of my image by approximately
> 25%.  What would be the most reasonable way to get back to just one
> python?  Ideally I'd like a magical setting to get rid of python3
> because there is no custom code for that one but I suppose with enough
> work I could get all of the python2 code working with python3.
>

Sadly you can't have a magic option to flip from one to the other as code
isn't compatible.  In general master has moved to be 99% Py3 - with smartpm
being the only major python2 recipe left - but I thought Krogoth was still
Py2 by default so shouldn't be in your image by default.

I suggest you use the usual tools to find out why python2 and python3 are
in your images, and see what you can change to have just one.

Ross

--001a113feb3c528e2e053ed540a7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 October 2016 at 18:58, Michael Callahan <span dir=3D"ltr">&lt;<a href=
=3D"mailto:coder.callahan@gmail.com" target=3D"_blank">coder.callahan@gmail=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":lf=
" class=3D"a3s aXjCH m157c3deda85fa0d9">I just moved my project from Fido t=
o Krogoth and now I have two<br>
pythons (2.7 and 3).=C2=A0 This bumps the size of my image by approximately=
<br>
25%.=C2=A0 What would be the most reasonable way to get back to just one<br=
>
python?=C2=A0 Ideally I&#39;d like a magical setting to get rid of python3<=
br>
because there is no custom code for that one but I suppose with enough<br>
work I could get all of the python2 code working with python3.</div></block=
quote></div><br>Sadly you can&#39;t have a magic option to flip from one to=
 the other as code isn&#39;t compatible.=C2=A0 In general master has moved =
to be 99% Py3 - with smartpm being the only major python2 recipe left - but=
 I thought Krogoth was still Py2 by default so shouldn&#39;t be in your ima=
ge by default.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmai=
l_extra">I suggest you use the usual tools to find out why python2 and pyth=
on3 are in your images, and see what you can change to have just one.</div>=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><=
/div>

--001a113feb3c528e2e053ed540a7--
