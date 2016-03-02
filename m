Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 818A4E00D48; Wed,  2 Mar 2016 04:48:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05826E00D33
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 04:48:21 -0800 (PST)
Received: by mail-io0-f182.google.com with SMTP id l127so257790780iof.3
	for <yocto@yoctoproject.org>; Wed, 02 Mar 2016 04:48:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TNK7fmPt6hDAMM1vI4SalOodSDGL4o6YBDF/sdQ6CJg=;
	b=QGLFLCX9ouGoJo+NrkDUjHkOEOPUmlxQhp/ZVwHO9E+jCg2gUc2uWKDABSMGzqmE0x
	KOOdkDYEYCsyaI4RLIZUk3rO3Eot0HPUmx53ihAZOipVKjGNDTxDXD07OxsPgxce/4bA
	TXfrFfV1VXjVPBQAw5gEelZftfa5u3JzoGxotzsFeg6hoFBggZl4vXhCjNE6WOpX+yFp
	ekQaKLDAz5XUJf7IvN+ZaE5DU5xPqcSJ7NYaja6Cb8dU6Mr6bqTh0BvkdMxHMHrL10hv
	gybfE2v9qhMrLQkII2oYNjGySUcUg8Mw/JdPiIMlIp5P5EhWOhU54OStfO5mfzmJye+s
	gKlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TNK7fmPt6hDAMM1vI4SalOodSDGL4o6YBDF/sdQ6CJg=;
	b=R8TSaVnFp9JMpeU0EfYvuSFBwjIshbaSGwAWndAyloiy+wst7PrA+Hd3qqAYDuMjER
	LvolRSBqJ7DLicBhQHxmCLu0sfxkBpYBDHKQS0lY3MuKCefFtKz5bRFe9rcb05cgZ69C
	glBZzQelWGEEMAWNDPWnZ/F7sEZybh2VwgiXmyTQGBvUYLZx7DAF/PBeoxVXoSFiExJK
	qRvCOdqhZcUbO5u59nIShc8xKT8TZsZKbzkHxzL/7J1jKwGgBKDAzUsWPrX4tmshorOn
	OO6L06u3IHDQWP1gb/NdUWAd5jc8tQKT6QVHQGUwRl3K1pgxXirSRFZgBWwkYvXMiaVt
	tsFw==
X-Gm-Message-State: AG10YOQ7a1yMP+jnDWD+JIiwO9elnZ4WQokbAuircT1snspIsr/M3DjCrPWr3CyAwhiePBbQVYyzlzsUnwrZ1wrV
X-Received: by 10.107.137.92 with SMTP id l89mr33302298iod.133.1456922900921; 
	Wed, 02 Mar 2016 04:48:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 2 Mar 2016 04:48:01 -0800 (PST)
In-Reply-To: <CAHvQdo1934XFM62FZfQXs8JrakeCyS-e0q+vUgE-Q+uUAVtOvA@mail.gmail.com>
References: <1456876322-11550-1-git-send-email-johannes.pointner@gmail.com>
	<CAJTo0LYtJC5ROMveR3ze8PwZjYVZrO98bJQ6MubmuPmPog2oaA@mail.gmail.com>
	<CAHvQdo1934XFM62FZfQXs8JrakeCyS-e0q+vUgE-Q+uUAVtOvA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 2 Mar 2016 12:48:01 +0000
Message-ID: <CAJTo0LbfmyO6d3sX5VSi8hLJnWh+cE73UAY4h5Fg=+_7Pkwzog@mail.gmail.com>
To: Johannes Pointner <h4nn35.work@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [xcursor-transparent-theme][Patch] Add several cursors
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
X-List-Received-Date: Wed, 02 Mar 2016 12:48:23 -0000
Content-Type: multipart/alternative; boundary=001a113ebdb4f9a4ce052d104b91

--001a113ebdb4f9a4ce052d104b91
Content-Type: text/plain; charset=UTF-8

On 2 March 2016 at 12:45, Johannes Pointner <h4nn35.work@gmail.com> wrote:

> I didn't know this option.
> But I think there is still a use case for the
> xcursor-transparent-theme. Because the cursor theme can be set before
> starting a new application without restarting X11.
>

How do you handle users switching between applications in that case? Or the
application crashing and leaving you without a cursor?  If a particular
application should hide the cursor them it should just hide the cursor, if
the entire UI shouldn't have a cursor then use -nocursor.

Don't worry, I won't be deleting the transparent theme just yet, but I do
think it's a hack.

Ross

--001a113ebdb4f9a4ce052d104b91
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 March 2016 at 12:45, Johannes Pointner <span dir=3D"ltr">&lt;<a href=
=3D"mailto:h4nn35.work@gmail.com" target=3D"_blank">h4nn35.work@gmail.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1ly" cla=
ss=3D"a3s" style=3D"overflow:hidden">I didn&#39;t know this option.<br>
But I think there is still a use case for the<br>
xcursor-transparent-theme. Because the cursor theme can be set before<br>
starting a new application without restarting X11.</div></blockquote></div>=
<br>How do you handle users switching between applications in that case? Or=
 the application crashing and leaving you without a cursor?=C2=A0 If a part=
icular application should hide the cursor them it should just hide the curs=
or, if the entire UI shouldn&#39;t have a cursor then use -nocursor.</div><=
div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Don&#39;t wo=
rry, I won&#39;t be deleting the transparent theme just yet, but I do think=
 it&#39;s a hack.</div><div class=3D"gmail_extra"><br></div><div class=3D"g=
mail_extra">Ross</div></div>

--001a113ebdb4f9a4ce052d104b91--
