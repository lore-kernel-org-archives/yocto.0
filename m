Return-Path: <jason.liu@gumstix.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D63DE00BD5; Thu,  6 Jul 2017 16:17:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5126E00BC1
	for <yocto@yoctoproject.org>; Thu,  6 Jul 2017 16:17:54 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id l130so15106842oib.1
	for <yocto@yoctoproject.org>; Thu, 06 Jul 2017 16:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gumstix.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=wWhZDOTxSnGgOwiLGTKN68NB0mdRxaERpmysvZOqqJ0=;
	b=XndMG33BeLK4cT6VJpl9PAnsOg91rY076kwrO+f3qmp5ChtFXQkyjRl9AQT59vcLyu
	OneOL+kmMGS14op+zn7hxpJ9EsImr9I2/YllAi8yFiMYl08pc8Yf3zm4d9wTUgX97TjY
	dMKZYSY4Bj9v0HBLEaovBZiXs1dCWJ3xXU7fw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=wWhZDOTxSnGgOwiLGTKN68NB0mdRxaERpmysvZOqqJ0=;
	b=A67xiyBmrzJf5Fg7pRATOurh7LFlWvqrue0OmEm7WFC7oQ9gCydUXldPirRzZls6Df
	klHfwBYznpLzrR0hdL4K0Uai+vuzKHLl59a/bzAKrg5t0m7TVyjDawzRUToH4RaA1stK
	oDRHBJbAlwjbyHXFNtZcAZMtm8kf9N9cgB6/hNMBh9cFpHsnjJtRe7nMUfY41gs9n3+c
	ooK+dkVo8JaUn/nWQZYo5/yAOt36V85MxbO0IVImXfLRJ8HhiXpvQs+ihbJFUYmH4sU9
	R7ca6uZGrRkH/hWxJPt9CMWl7GB4L/CWWK6597QSMTw/vJY4hs/efZ1hfd1fzACbjgys
	Nczw==
X-Gm-Message-State: AKS2vOxhp0QXYo90Llw4QFP9FJxOeQOwfFfRkiKnrBO6fUoNgm6BjGsc
	+uDuoA3AIwEfUNwI7b3XXGSIaxoyvKEXhSM=
X-Received: by 10.202.49.209 with SMTP id x200mr36667139oix.107.1499383073771; 
	Thu, 06 Jul 2017 16:17:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.129.18 with HTTP; Thu, 6 Jul 2017 16:17:53 -0700 (PDT)
From: Jason Liu <jason.liu@gumstix.com>
Date: Thu, 6 Jul 2017 16:17:53 -0700
Message-ID: <CAGkS5bmci7Z9pBWNye-fv-b6CXXFb66JRDs4zzHN6iBS6nkH5Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Problem with Module Dependency
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
X-List-Received-Date: Thu, 06 Jul 2017 23:17:59 -0000
Content-Type: multipart/alternative; boundary="001a113cd50e7ea6350553ae5326"

--001a113cd50e7ea6350553ae5326
Content-Type: text/plain; charset="UTF-8"

Dear all,

Right now I am developing driver for a camera. The camera module depends on
the omap3-isp module. Most of the times the camera drive will load before
the image signal processor module is loaded thus the camera won't function
properly.

For the developing version of the driver, I use usleep_range to force it to
sleep for couple seconds but obviously it is not a good solution.

Would you have any solution that I can make sure it gets loaded after all
dependencies is loaded properly? I am thinking a way to add something in
the driver that checks if the module is available or not but I couldn't
come up with one.

Any help is greatly appreciate!

Regards,

Jason

--001a113cd50e7ea6350553ae5326
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">Dear all,</span><div styl=
e=3D"font-size:12.8px"><br></div><div style=3D"font-size:12.8px">Right now =
I am developing driver for a camera. The camera module depends on the omap3=
-isp module. Most of the times the camera drive will load before the image =
signal processor module is loaded thus the camera won&#39;t function proper=
ly.=C2=A0</div><div style=3D"font-size:12.8px"><br></div><div style=3D"font=
-size:12.8px">For the developing version of the driver, I use usleep_range =
to force it to sleep for couple seconds but obviously it is not a good solu=
tion.=C2=A0</div><div style=3D"font-size:12.8px"><br></div><div style=3D"fo=
nt-size:12.8px">Would you have any solution that I can make sure it gets lo=
aded after all dependencies is loaded properly? I am thinking a way to add =
something in the driver that checks if the module is available or not but I=
 couldn&#39;t come up with one.</div><div style=3D"font-size:12.8px"><br></=
div><div style=3D"font-size:12.8px">Any help is greatly appreciate!</div><d=
iv style=3D"font-size:12.8px"><br></div><div style=3D"font-size:12.8px">Reg=
ards,</div><div style=3D"font-size:12.8px"><br></div><div style=3D"font-siz=
e:12.8px">Jason</div></div>

--001a113cd50e7ea6350553ae5326--
