Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 060F3E00803
	for <yocto@yoctoproject.org>; Fri,  3 Jan 2014 13:11:58 -0800 (PST)
Received: by mail-wg0-f54.google.com with SMTP id n12so14164726wgh.9
	for <yocto@yoctoproject.org>; Fri, 03 Jan 2014 13:11:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ehuegteStepuky/zp+Oy9YfFgN6ufG1rUOee9IhnWck=;
	b=k1ngAHMyc8Ifg/lwL39MzgMOKrNQQIkrYAxxLW9SQSkMCh+DJEEHxRiZEnls1kmzCp
	1zdppBIRK3YMRAA4+wQ+Tj3ZbuyGie/Y8OafICMCtZhNpmyDLssRqwj7BHjNKqtSpLYk
	Bu7KGXuceZlxpES0onoufy4V5nFzAXN0apY6WOnescPs3nFjSqTn15zT0LX/vVIiDRIa
	oEJItpXhsMavse4bvMmOLRF4xnd8SmaQwbJtKbBUyASqfb+pXw7v/R9neKCb43q0g75I
	IIJvmGrOBZivwMhsQU6dt9YPxD3P9QyfupFEdDHLKGRP4Uf6WqGPKDMxg7unMrnhQcq6
	0bMQ==
X-Gm-Message-State: ALoCoQmnFL+yoUBr+Z7SMA6NdSaVgYvVHYLgYcVV2aLVoOupMuj+pFnKpbZ71k8DVzyYxTo8aHIw
X-Received: by 10.194.48.74 with SMTP id j10mr37801836wjn.41.1388783517056;
	Fri, 03 Jan 2014 13:11:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.150.199 with HTTP; Fri, 3 Jan 2014 13:11:36 -0800 (PST)
X-Originating-IP: [5.13.221.193]
In-Reply-To: <1387221202-1702-1-git-send-email-gary@mlbassoc.com>
References: <1387221202-1702-1-git-send-email-gary@mlbassoc.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 3 Jan 2014 23:11:36 +0200
Message-ID: <CAK18fxEFdF3swTmq9=g1myMW-UQmJwvMm=3JeiLo6VR4GV_R3w@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Add version 3.12.4+
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
X-List-Received-Date: Fri, 03 Jan 2014 21:11:59 -0000
Content-Type: multipart/alternative; boundary=047d7ba975c834554504ef175c65

--047d7ba975c834554504ef175c65
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Dec 16, 2013 at 9:13 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> This kernel enables camera video via the new 'bcm2835-v4l2' module.
> Just add 'start_x=1' to your boot config.txt
>
> Signed-off-by: Gary Thomas <gary@mlbassoc.com>
>

Merged. Thanks.
-- 
*ag*

--047d7ba975c834554504ef175c65
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Mon, Dec 16, 2013 at 9:13 PM, Gary Thomas <span dir=3D"ltr">&lt;=
<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a=
>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">This kernel enables camera video via the new &#39;bcm2835-=
v4l2&#39; module.<br>


Just add &#39;start_x=3D1&#39; to your boot config.txt<br>
<br>
Signed-off-by: Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@ml=
bassoc.com</a>&gt;<br></blockquote><div><br></div><div class=3D"gmail_extra=
"><div class=3D"gmail_quote">Merged. Thanks.=A0</div><div>--=A0<br></div></=
div><div>

<b style=3D"color:rgb(51,51,51);font-family:Arial;text-align:center">ag</b>=
=A0</div></div>
</div></div>

--047d7ba975c834554504ef175c65--
