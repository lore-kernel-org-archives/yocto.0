Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B29E1E00D1F; Fri, 10 Jun 2016 04:59:06 -0700 (PDT)
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
	*      [209.85.223.171 listed in list.dnswl.org]
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63CE9E00D07
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 04:59:04 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id n127so63448374iof.3
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 04:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1Dx2BJphANYZsgWXiLd70Pu/Qy2UgxnTJtloW3labC0=;
	b=b/cZMggoejpvVohqFBHZmrY78c9x89gD6Vf93JmaBfTAe1VpicwbDHYhsivoCxj90t
	NYTWtm9mdLsbhuJP9TI2sk+eGnjt6ycCswQiWgxsnL4m656TXkF4XS/pVab9UXWyksT9
	B3oX8rp1nQFU67s0PlFvSSOhSS1e3aW92ZdjwNzff4AEdhaRVFcAYuuzw4AOKYEQmWsc
	hobELl9ISixZ7vXrCZt1GbcokiAZLiiHkHK8MK+I01YSI3I/7gSU7SnsujdhIrKu9ok7
	yPqKQCVa4+OUjTolt8+X2QQDdDEfntM8yAnNQ31y5hoSnS+OOle2PIkguZTNad1hbBxw
	FoZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1Dx2BJphANYZsgWXiLd70Pu/Qy2UgxnTJtloW3labC0=;
	b=mYbqe9wE3+3liATPAHAxHhYcNthFzYvUWXzSCW6sq99lOVvf662jw0rqGeai1OS/J+
	oR3VojzmDrDQlHsb5okpPeMcP78TjSc2khkPF0vhp4nkY/4y3+Vk0a/qLziAMICjK+cF
	gubXV4/zeRAE0gB3KOjRXANkisuCO1+QmHTZi7T1hkNx3IRIdYnUO3r1WScNzE4Upkp+
	yOk6rxFMm49H/q7O6HWChtFux/7ZQZGmBiFsQO1rW0EogIq0vXlD6Jlf8dg+DJXhEZMc
	fRIjyl2wnryC+cBpKyUJPb/ftSlKmd3N7sNNNa7M5CqP2Tt0EKECbSmNqSEqNkp3Lr1j
	H4iQ==
X-Gm-Message-State: ALyK8tIz5Z1KmIUlSmx/4usxbiM0xbn03SyXtcbdKWVRPJcRnusG2Rb929b4UM9A4m00VDMSKvwzXv+RvF2HZFdi
X-Received: by 10.107.179.9 with SMTP id c9mr3048143iof.99.1465559943659; Fri,
	10 Jun 2016 04:59:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Fri, 10 Jun 2016 04:58:44 -0700 (PDT)
In-Reply-To: <5756E529.3000500@nokia.com>
References: <5756E529.3000500@nokia.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 10 Jun 2016 12:58:44 +0100
Message-ID: <CAJTo0LYx16CNV_bvxC_Oe6738YfqvMwK38vC47jnK-HMHUmAyg@mail.gmail.com>
To: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PULL] fixes in Dependency Explorer
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
X-List-Received-Date: Fri, 10 Jun 2016 11:59:06 -0000
Content-Type: multipart/alternative; boundary=001a11485762d6d2800534eb4320

--001a11485762d6d2800534eb4320
Content-Type: text/plain; charset=UTF-8

Hi Bartosz,

Please can you re-send these to the bitbake list?

Thanks,
Ross

On 7 June 2016 at 16:15, Woronicz, Bartosz ( NSN - PL/Wroclaw) <
bartosz.woronicz@nokia.com> wrote:

>
> --
> Kind regards,
> Bartosz Woronicz
> Engineer, Software Configuration (SCM)
> Nokia Networks - PL/Wroclaw
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11485762d6d2800534eb4320
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Bartosz,<div><br></div><div>Please can you re-send thes=
e to the bitbake list?</div><div><br></div><div>Thanks,</div><div>Ross</div=
></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 7 June =
2016 at 16:15, Woronicz, Bartosz ( NSN - PL/Wroclaw) <span dir=3D"ltr">&lt;=
<a href=3D"mailto:bartosz.woronicz@nokia.com" target=3D"_blank">bartosz.wor=
onicz@nokia.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><sp=
an class=3D"HOEnZb"><font color=3D"#888888"><br>
-- <br>
Kind regards,<br>
Bartosz Woronicz<br>
Engineer, Software Configuration (SCM)<br>
Nokia Networks - PL/Wroclaw<br>
<br>
</font></span><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11485762d6d2800534eb4320--
