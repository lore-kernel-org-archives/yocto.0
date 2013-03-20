Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-da0-f48.google.com (mail-da0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFBAEE01469
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 23:03:00 -0700 (PDT)
Received: by mail-da0-f48.google.com with SMTP id p8so771456dan.35
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 23:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=d4Ue0wvpPq6kqIYjrwqYLilnXjsBxM8h40Q9KJGIsDw=;
	b=PCIyDWqbY/8B55ooSpL0yP4AB+96J5W54vXlNu1QuIiRZSEZsyCRKpROsDtF+hgq4s
	PO+THFvu/IvCNoPwo2XpNB6HfvaZuznWkzQ1wnYC3adGjF/nv6CccPgb4DypBD6uNbGO
	ImNPZTf8y5FBSETmg64t3bkkP751bH6CMrrLU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=d4Ue0wvpPq6kqIYjrwqYLilnXjsBxM8h40Q9KJGIsDw=;
	b=GSSdqLYQwGUr1Z73mwXm1l96nW0/0i1UTzdgPeA9NNcxAInbSgVZL7t0wqUGFlZYll
	U4f5CW+QwsEJbyDTOQXT7YIcp/f7wv6Zf/p3Tj1Tz5BNAll9250IdC5KYtJCFdOgy3XM
	GpIg9yj6y0GPigDUkXuX9NTQuQb/rZC3vU9iIo0f1QJNpFC5wCokSXQjwclfeCKluBHg
	wnAhih77ngYNiVZXRkP1b0qq4Fg8NFtvPKcLgXreT5L+Yu+8/+NDhH2OyxrXxz1xaYCM
	TH64G+xsMdchnEAxyaCdK1xSgnsH++P4sYPWWsl5UoTXCBPFlrfHs96/02g+OsYts544
	zVMA==
MIME-Version: 1.0
X-Received: by 10.66.171.232 with SMTP id ax8mr7509642pac.67.1363759380251;
	Tue, 19 Mar 2013 23:03:00 -0700 (PDT)
Received: by 10.68.239.134 with HTTP; Tue, 19 Mar 2013 23:03:00 -0700 (PDT)
In-Reply-To: <CABzOdpRRuxcbZt2DpC4hG2dmzLTELkfmRJ-bQ8=+L2CCLs7=Ww@mail.gmail.com>
References: <CABzOdpRRuxcbZt2DpC4hG2dmzLTELkfmRJ-bQ8=+L2CCLs7=Ww@mail.gmail.com>
Date: Tue, 19 Mar 2013 23:03:00 -0700
Message-ID: <CA+gsK-rQFFDT9Rp7Kdoqw=A55vfoM=7rhHeamVRBjU2w+8kwTw@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Florin Cristian Dan <dan.florincristian@gmail.com>
X-Gm-Message-State: ALoCoQlrssRpQqqrJoVtGBkoAzghc/7j0DJlewy5R7V1rd2uxpxX/LldTPlzMH8RKyxohEX5MApA
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob and bitbake problem!
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
X-List-Received-Date: Wed, 20 Mar 2013 06:03:00 -0000
Content-Type: multipart/alternative; boundary=047d7bd75d386c0bef04d854f9cf

--047d7bd75d386c0bef04d854f9cf
Content-Type: text/plain; charset=ISO-8859-1

Hi Florin,

You will need to look in the log file of the compile task for Qt4 to find
out what's going on: see /home/user/poky-danny-8.0/
build/tmp/work/core2-poky-linux/qt4-x11-free-4.8.1-r47.
1/temp/log.do_compile.28027

In the log file you will see the output of qmake and the compiler.

:rjs

--047d7bd75d386c0bef04d854f9cf
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Florin,<div><br></div><div style>You will need to look =
in the log file of the compile task for Qt4 to find out what&#39;s going on=
:=A0<span style=3D"font-size:13px;font-family:arial,sans-serif">see /home/u=
ser/poky-danny-8.0/</span><span style=3D"font-size:13px;font-family:arial,s=
ans-serif">build/tmp/work/core2-poky-</span><span style=3D"font-size:13px;f=
ont-family:arial,sans-serif">linux/qt4-x11-free-4.8.1-r47.</span><span styl=
e=3D"font-size:13px;font-family:arial,sans-serif">1/temp/log.do_compile.280=
27</span></div>
<div style><span style=3D"font-size:13px;font-family:arial,sans-serif"><br>=
</span></div><div style><span style=3D"font-size:13px;font-family:arial,san=
s-serif">In the log file you will see the output of qmake and the compiler.=
</span></div>
<div style><span style=3D"font-size:13px;font-family:arial,sans-serif"><br>=
</span></div><div style><span style=3D"font-size:13px;font-family:arial,san=
s-serif">:rjs</span></div><div class=3D"gmail_extra"><br><br>
</div></div>

--047d7bd75d386c0bef04d854f9cf--
