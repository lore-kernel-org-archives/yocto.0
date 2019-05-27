Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4330DE00C43; Mon, 27 May 2019 04:47:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (praveen.vatt[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3D71E00B33
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 04:47:10 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id d9so16649722wrx.0
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 04:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=L/C0ryHe9eB5t9LlYLLKlBaHnzoSrcJw14HwEKVM3nI=;
	b=YwLdbMS7eXtMrxBxX+jPCJ+SerQIsID+tJFiV+MDa/am5uDqtQgYCK9mMWsxuqwv9n
	lTGFDtmTg6wIE4RegmCC7f+rRQhATgYoZrZs7rBbN6Mpee17Z8Fg4aV4Ed7GP8FtYLeh
	YGJKHuPzu0nI1NIh4yMc5keacm/jFimJEm7fRLrqWRTsM1F3PrJREEe5v+zgzAexV0ww
	abm41rOmac7FG3DLIkjQHGASSex3sRs0lnvDiPOOhRRHEJxu8ULOrnc1jQmv7OMAQHiH
	he5z0hQNIRg71MvhyNAZJEdUDoD3hDKLfVQtaRWQVTI6OViJK4kZcgIF6+gFSWwYAHkz
	k4Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=L/C0ryHe9eB5t9LlYLLKlBaHnzoSrcJw14HwEKVM3nI=;
	b=LaCi1Uen5tvz1vesRoqiVfY4umj8i5xT+aJy0amCESzGJkBcpxS6NOnt0adkjBguNt
	IeUiK95Q5l5sPwavNbLetpdqbCktBq/A8UBQccWQw/DHqDoM+N4LwUrUSZFVjdBY+vux
	2aWiAH0Kb0mvHvI+GTZfS3G6jqnIrKyXN7exd2fJ/4AqqbzRMGw0+IWgmlpcP+5eu6uR
	sMUPqf7W3D/RRJfpo4QqSp0LgsjCYPC0Bvh0mH1/pq8DOVNSxTB4jZ7tyir2SYQGfrip
	Tx45aeBRLh/NugtyMhwjwSIlqM1d1/E0y5vnuEq6kbWPdGSVSTsY8REz3RQAtu5rD64E
	aSFQ==
X-Gm-Message-State: APjAAAVi277D+rRH/HW/iWTmVsCa6GgdG6uVURl6bR+DC3Lcyzfx3cYN
	PgH7WkbF3b2bCvMaDWgl6MMPFTeGH3wE6oaNhXE=
X-Google-Smtp-Source: APXvYqziWAvdVHkGQSgpEimvrDAftmZuttdNrmX+yG7p4jCPF0vamYB3MHpo9OPSGz4DXm0n/OiCEdDH/H5fFj4q0Wc=
X-Received: by 2002:a5d:6242:: with SMTP id m2mr7537837wrv.310.1558957630140; 
	Mon, 27 May 2019 04:47:10 -0700 (PDT)
MIME-Version: 1.0
References: <CA+pXca1pnxm6Y56m5oaPjkkegH-c7a6TATzWLG=B5EYppA+ncw@mail.gmail.com>
	<CAP71Wjw=AzrWVDjh0Nx1PoVrF3XQk9wV6ZsBPayrpmg6b=VcqA@mail.gmail.com>
In-Reply-To: <CAP71Wjw=AzrWVDjh0Nx1PoVrF3XQk9wV6ZsBPayrpmg6b=VcqA@mail.gmail.com>
From: praveen vattipalli <praveen.vatt@gmail.com>
Date: Mon, 27 May 2019 17:16:58 +0530
Message-ID: <CA+pXca3U9wsVMEmvxc0Zwm7efdYSRo+U_sYCM4yW-dw7YEZ=vg@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: final image size got increased when migrated from krogoth to Sumo
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
X-List-Received-Date: Mon, 27 May 2019 11:47:12 -0000
Content-Type: multipart/alternative; boundary="000000000000c3b4260589dd1bc1"

--000000000000c3b4260589dd1bc1
Content-Type: text/plain; charset="UTF-8"

Thanks Nicolas, i will try this.

On Mon, May 27, 2019 at 5:10 PM Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:

> On Mon, May 27, 2019 at 1:29 PM praveen vattipalli
> <praveen.vatt@gmail.com> wrote:
> >
> > Hi All,
> >
> > I have migrated Yocto poky version from Krogoth to Sumo, after building
> the final image, i observed that the size of image got increased by more
> than 70Mb. I have not added any new packages.
> > Any suggestions, how can I reduce the image size now.
>
> you should most likely start looking at buildhistory data which will
> give you the list of installed packages and their size. that should
> give you hints about what has changed.
>
> >
> > Thanks in Advance.
> >
> > Thanks,
> > Praveen
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000c3b4260589dd1bc1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks=C2=A0Nicolas, i will try this.</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 27, 2019=
 at 5:10 PM Nicolas Dechesne &lt;<a href=3D"mailto:nicolas.dechesne@linaro.=
org">nicolas.dechesne@linaro.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On Mon, May 27, 2019 at 1:29 PM praveen va=
ttipalli<br>
&lt;<a href=3D"mailto:praveen.vatt@gmail.com" target=3D"_blank">praveen.vat=
t@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi All,<br>
&gt;<br>
&gt; I have migrated Yocto poky version from Krogoth to Sumo, after buildin=
g the final image, i observed that the size of image got increased by more =
than 70Mb. I have not added any new packages.<br>
&gt; Any suggestions, how can I reduce the image size now.<br>
<br>
you should most likely start looking at buildhistory data which will<br>
give you the list of installed packages and their size. that should<br>
give you hints about what has changed.<br>
<br>
&gt;<br>
&gt; Thanks in Advance.<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Praveen<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--000000000000c3b4260589dd1bc1--
