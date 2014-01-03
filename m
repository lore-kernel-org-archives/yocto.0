Return-Path: <andrei@gherzan.ro>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CCD3E00803
	for <yocto@yoctoproject.org>; Fri,  3 Jan 2014 13:10:37 -0800 (PST)
Received: by mail-wi0-f180.google.com with SMTP id hm19so902620wib.13
	for <yocto@yoctoproject.org>; Fri, 03 Jan 2014 13:10:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Td5X7bhc8T2ukQPaHXMqt3CopYPIqlKKKSpCpYzBAKU=;
	b=Rhvy4t8fwwOoii8sR5pdlSUzoa7y0R4RNfp+xQoPOL8J47dSe/cPFdaIr8bRHvy2e1
	z5AvvxxbtCnEbXirwywpFZ6nm1xn28/pgBolqkUEfpItSBq5LjNV7Sge2qA3uQC77w4q
	zOJOH2OvW/YZO09YOtMDh7FNZOme3xgZtZF2AtvRDThKSXEzuXwS+qXxV1FP6ld4w4xR
	reicdBs48eqPf6lPxiRoLNur+cWWY7dkfzJPTRzfqZRraqL1oiinN8R5TzvW3HE2Qr0E
	1tMwpmzj2/QPlFbF1Wg+dX2+0X0ttgqc28a0MsbhgHoNIQQZeiQHfFbIwAqep69gk45e
	6yNw==
X-Gm-Message-State: ALoCoQl+u7tEr2DAphHMetjQl17VhJMVWaLzGIyLXNXLukVP6mtQhLGVjyiDZCmNZ0yRAOJBcK73
X-Received: by 10.180.95.162 with SMTP id dl2mr3426073wib.17.1388783436763;
	Fri, 03 Jan 2014 13:10:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.150.199 with HTTP; Fri, 3 Jan 2014 13:10:16 -0800 (PST)
X-Originating-IP: [5.13.221.193]
In-Reply-To: <1387299591-29254-3-git-send-email-gary@mlbassoc.com>
References: <1387299591-29254-1-git-send-email-gary@mlbassoc.com>
	<1387299591-29254-3-git-send-email-gary@mlbassoc.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 3 Jan 2014 23:10:16 +0200
Message-ID: <CAK18fxHnoZ4ewOwJMD6nP60z3XpS6Xs9VuLspaa_y=e36oOFiQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] rpi-config: Add video camera control
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
X-List-Received-Date: Fri, 03 Jan 2014 21:10:38 -0000
Content-Type: multipart/alternative; boundary=f46d0444e9836b2d6104ef1757d6

--f46d0444e9836b2d6104ef1757d6
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Dec 17, 2013 at 6:59 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> Add video camera enable 'VIDEO_CAMERA' for config.txt
>
> Signed-off-by: Gary Thomas <gary@mlbassoc.com>
>
>
Merged. Thanks.
-- 
*ag*

--f46d0444e9836b2d6104ef1757d6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Dec 17, 2013 at 6:59 PM, Gary Thomas <span dir=3D"ltr">&lt;=
<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a=
>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Add video camera enable &#39;VIDEO_CAMERA&#3=
9; for config.txt<br>
<br>
Signed-off-by: Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@ml=
bassoc.com</a>&gt;<br><br></blockquote><div><br></div><div>Merged. Thanks.=
=A0</div></div><div>--=A0<br></div></div><div class=3D"gmail_extra"><b styl=
e=3D"color:rgb(51,51,51);font-family:Arial;text-align:center">ag</b>
</div></div>

--f46d0444e9836b2d6104ef1757d6--
