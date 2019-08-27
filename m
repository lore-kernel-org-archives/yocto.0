Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 351B6E00D99; Mon, 26 Aug 2019 22:51:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AB9FE00CDF
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 22:51:52 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id q64so8573809qtd.5
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 22:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=L9hWrMWCoDMb9aYeYchfa/0WQyuLcrEh4ELTU/sqGQs=;
	b=FAIBvX/d0If7d6k2IxhpC93Kz/gwQumSJWgOeOgB4WoKJYuRAXn5++Z2SdQ/LUe8Ro
	/dpM3iNwSkzZ3kdd4SAO73oX8nisXgfyhC3sFLLf39P0t0mCNi9aqqOQtHcrPWceVbbn
	nwoeBW3z7gmBy0kq9yYc52QYEDvjBaxbzLkLeecLt5MrM5cUm7yZm/cJZ+itQU+pm26K
	sDUeQwi/vMhsj7mNQeCc9KKQWfHee8fbLQc5doZOEocu2J0vCTIKJspYuZrYdV23xPXc
	SE7VZAqIRYfXGjEih3lhO7UcbrLTO+e7jXcQKp/xXZWC0+Q/XOOVGciPu5JY4B8g8lpQ
	ktaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=L9hWrMWCoDMb9aYeYchfa/0WQyuLcrEh4ELTU/sqGQs=;
	b=d3eI01klu9kXrqLzrBQ9ZXsGtlCWMMJMu6CS8V9nCgo3Nw54zIPaaP/lP5teTJbHgp
	Lt1uNtV8qFZJxYF4l2RjOY1FvL8tGd1Xj/1vUdvOFKCnz+B7KxWX4NwTffSjNpwVh5y0
	VBvltCMBTDocCbLNvQPLyUhCtlZ6l1YRVkB+BP7kUtuOpRSB2rXd45Gkot5Vv8AkmLku
	YoKOTR9A0MeLt1rHUe0GaKqWZpALKFHQzUpr7ASVQDtNkrhdZlMDdWOJKSUoSTeFR1xT
	mDMcNm9jZM0B6saTUJEzEZQlwZiMl3x50HdzSU7hUDk3bXC0GcLXyGaRNyjYjsipzy05
	4glg==
X-Gm-Message-State: APjAAAWH0Fh8rBcSYdfKn7UwZZJbJeg790sthjCvNDHcRPKY3z81nvbp
	dxdD1jq5tl1qxXa2JRi+AnVAvpYsCegCf9tcmiBtBJpQYyA=
X-Google-Smtp-Source: APXvYqy8ivqz5AcTR9+itD63a9KT8QTCCsWF7XZgpjfw++64+mGlWVOpSUi4AWvx8D8WB6b9JNknx+76mHJXr2nfjts=
X-Received: by 2002:ad4:44a7:: with SMTP id n7mr18842741qvt.51.1566885111319; 
	Mon, 26 Aug 2019 22:51:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LwaOtu0OaRR+FuikEgvXTkNst6KUmd2wF_MV+t0UxTwCQ@mail.gmail.com>
In-Reply-To: <CAGAf8LwaOtu0OaRR+FuikEgvXTkNst6KUmd2wF_MV+t0UxTwCQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 27 Aug 2019 07:51:40 +0200
Message-ID: <CAGAf8LwUBUT9SBgEPHO7tYYhhP6d5+SZoOF89-5MDDmj_Y1L=g@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: WARNING: bluez5-5.50-r0 do_fetch: Failed to fetch URL file://variscite-bt.conf
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
X-List-Received-Date: Tue, 27 Aug 2019 05:51:54 -0000
Content-Type: multipart/alternative; boundary="00000000000076d0ee059112ded8"

--00000000000076d0ee059112ded8
Content-Type: text/plain; charset="UTF-8"

BTW, I have created the complete description of this problem!
https://github.com/ZoranStojsavljevic/imx6-sabre-automotive-bsp/tree/master/Issues

Best Regards,
Zoran
_______

On Mon, Aug 26, 2019 at 5:23 PM Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Hello Folks,
>
> While doing the following YOCTO build:
>
> http://variwiki.com/index.php?title=Yocto_Build_Release&release=RELEASE_MORTY_V1
>
> Actually, using the latest available tag: thud-fslc-4.14.78-mx6ul-v1.1
> <https://github.com/varigit/variscite-bsp-platform/releases/tag/thud-fslc-4.14.78-mx6ul-v1.1>
> From https://github.com/varigit/variscite-bsp-platform/tags
>
> I've got the following error, while compiling for both:
> bitbake -k fsl-image-gui
> bitbake -k fsl-image-qt5
>
> Seems, that the local file: file://variscite-bt.conf is somehow missing?!
>
> I can add this file artificially, but, the question is: why this file is
> missing???
> _______
>
> Transcript follows:
> bluez5-5.50-r0 do_fetch: Failed to fetch variscite-bt.conf
> https://pastebin.com/U9LRtNwr
>
> Thank you,
> Zoran
> _______
>
>

--00000000000076d0ee059112ded8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>BTW, I have created the complete des=
cription of this problem!</div><div><a href=3D"https://github.com/ZoranStoj=
savljevic/imx6-sabre-automotive-bsp/tree/master/Issues">https://github.com/=
ZoranStojsavljevic/imx6-sabre-automotive-bsp/tree/master/Issues</a></div><d=
iv><br></div><div>Best Regards,</div><div>Zoran</div><div>_______<br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Mon, Aug 26, 2019 at 5:23 PM Zoran Stojsavljevic &lt;<a href=3D"mailto:z=
oran.stojsavljevic@gmail.com">zoran.stojsavljevic@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div>Hello Folks,</div><div><br></div><div>While doing the following YOCTO=
 build:</div><div><a href=3D"http://variwiki.com/index.php?title=3DYocto_Bu=
ild_Release&amp;release=3DRELEASE_MORTY_V1" target=3D"_blank">http://variwi=
ki.com/index.php?title=3DYocto_Build_Release&amp;release=3DRELEASE_MORTY_V1=
</a></div><div><br></div><div>Actually, using the latest available tag: <a =
href=3D"https://github.com/varigit/variscite-bsp-platform/releases/tag/thud=
-fslc-4.14.78-mx6ul-v1.1" target=3D"_blank">thud-fslc-4.14.78-mx6ul-v1.1</a=
></div><div>From <a href=3D"https://github.com/varigit/variscite-bsp-platfo=
rm/tags" target=3D"_blank">https://github.com/varigit/variscite-bsp-platfor=
m/tags</a></div><div><br></div><div>I&#39;ve got the following error, while=
 compiling for both:<br></div><div>bitbake -k fsl-image-gui</div><div>bitba=
ke -k fsl-image-qt5</div><div><br></div><div>Seems, that the local file: fi=
le://variscite-bt.conf is somehow missing?!<br></div><div><br></div><div>I =
can add this file artificially, but, the question is: why this file is miss=
ing???<br></div><div>_______</div><div><br></div><div>Transcript follows:<s=
pan style=3D"font-weight:normal"><font size=3D"2"><br></font></span></div><=
div><span style=3D"font-weight:normal"><font size=3D"2">bluez5-5.50-r0 do_f=
etch: Failed to fetch variscite-bt.conf</font></span><font size=3D"2"><span=
 style=3D"font-weight:normal"><br></span></font></div><div><font size=3D"2"=
><span style=3D"font-weight:normal"><a href=3D"https://pastebin.com/U9LRtNw=
r" target=3D"_blank">https://pastebin.com/U9LRtNwr</a></span></font></div><=
div><div><br></div><div>Thank you,</div><div>Zoran</div><div>_______</div><=
div><br></div><span style=3D"font-weight:normal"></span></div></div>
</blockquote></div></div>

--00000000000076d0ee059112ded8--
