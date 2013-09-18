Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E25AE01419
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 07:38:22 -0700 (PDT)
Received: by mail-we0-f181.google.com with SMTP id p61so6504934wes.40
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 07:38:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=eweGW7k5mD9MbfJYK77H14o6W713KImhOOWKSQs3ZZA=;
	b=POH775jKF4OiWWyavqQit1V4bFXbZQwIy6gKM/O1KAnjkjm3nxo0Q4RuFet0E9Gv9e
	gzedvQ0N4P7CoB5BOncRVTProLzT7O8tKbSyRCcT0lRMvfjEvKBdIgM9u5ZF/pUH8eq2
	TeMESSDof3Sl2vLdZIgLhctJAE4DcpwW5rQrDgtmNN4CilfFwkhjxlWW5mJcbytkdWga
	oORcCSk0k2c97Xv8SLLz6wIs/3nomnj09+DHKIXiIxJb9UufCroSqmnjv1J8cRRbhmZN
	8bHPyH0DeYv/4DwYnXRw0ZxS13SqxiO7nAMiLQTLW2G64Ls1jEqQmpmUG2BF+0iCa+0R
	Q6qQ==
X-Gm-Message-State: ALoCoQkF4GxGM6u1kWdE8bbmq46+ArdJykI71AYYA6oQ2CWw5qGcXV+T8+1cVcrokYDvzFGw04t4
X-Received: by 10.180.208.45 with SMTP id mb13mr7338203wic.27.1379515101305;
	Wed, 18 Sep 2013 07:38:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.180.91.132 with HTTP; Wed, 18 Sep 2013 07:38:01 -0700 (PDT)
In-Reply-To: <CANwz6nzOp-VJgaf-dxhfVYwgrRF2tDA2hRdnJkLosiNQDBXyQQ@mail.gmail.com>
References: <CANwz6nzOp-VJgaf-dxhfVYwgrRF2tDA2hRdnJkLosiNQDBXyQQ@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 18 Sep 2013 16:38:01 +0200
Message-ID: <CAP71WjwzvYFvDm1Akso8nKq6ycfOjz40CYve3TRr_MSw5e-bgg@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto armhf & armel on zedboard
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
X-List-Received-Date: Wed, 18 Sep 2013 14:38:23 -0000
Content-Type: multipart/alternative; boundary=001a11c37be493734004e6a963de

--001a11c37be493734004e6a963de
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Sep 18, 2013 at 4:35 PM, Edward Vidal <vidal.develone@gmail.com>wrote:

> While trying to add additional software I came across a problem.  Ubuntu
> uses armhf and the packages I had built with Yocto use armel.
> Is there a license issue with building with armhf instead of armel with
> Yocto?
>
>
not at all. it is unrelated. armhf vs armel is 'just' a build configuration
change, it is the same source code that is being built, just different
binary produced out of it.

--001a11c37be493734004e6a963de
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Sep 18, 2013 at 4:35 PM, Edward Vidal <span dir=3D"ltr">&lt;<a href=
=3D"mailto:vidal.develone@gmail.com" target=3D"_blank">vidal.develone@gmail=
.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">While trying to add additio=
nal software I came across a problem.=A0 Ubuntu
 uses armhf and the packages I had built with Yocto use armel.<br>Is there =
a license issue with building with armhf instead of armel with Yocto?=A0 <b=
r><br></div></blockquote></div><br>not at all. it is unrelated. armhf vs ar=
mel is &#39;just&#39; a build configuration change, it is the same source c=
ode that is being built, just different binary produced out of it.</div>

<div class=3D"gmail_extra"><br></div></div>

--001a11c37be493734004e6a963de--
