Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6802E00F56; Fri, 15 Jul 2016 07:43:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62E7CE00F4F
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 07:43:16 -0700 (PDT)
Received: by mail-qk0-f195.google.com with SMTP id n202so4851249qke.0
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 07:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fud1Cm4UxVJ3Eys19yfc2Ezq2ePr8mFiV8GpvXKiQmY=;
	b=YMq3zHNBns5m7Lp04F8zorSye1BZ9Ccx/vTi4ESCqtcb6c8WeegsHCHedE23w9nPAs
	1MaM3kN3WGXGrqYzFDxdIpjpmzXcco9M5d/v1S4zD8XD6cFHrKt2ARlq/5hlbr+4mhN/
	k+DhpOXQE5xBjU15ImfQmDs8rwqlZ46kmv55EyTvPYkoGscZVY6N9Cmrj62gIBHT/VXI
	H2tfBTCmWCWcX8TeWuvxVjDwx4WUaxvKF0HpUIbFM+uOyVr3hzAdEf1PIr+YjXYeSfNL
	M0FeIivk/SVSZDSphGF6Ya7IXE6ILLZa8BvPuhKeV50uuZcYt2HSS1DDoypTa8PTwnw8
	IA2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fud1Cm4UxVJ3Eys19yfc2Ezq2ePr8mFiV8GpvXKiQmY=;
	b=ZHup/rANHXVdlF4Xe2v2+2JAbJR/2LrQriiHNTFDXC2e6WsVG5I843Y60Pfi3lcA9V
	6uohQxILsgyx/tc8O291DAtDlT30IQ5Dr54658wb2pk8bQCtzTnltiqY0HJmUKu/vGmA
	bGVyZwdtxvbf6e9UDz/Mr0ERpyYYD1t5w4GqHkWccuNTtgvicJxGiIBXg0oI7XeMHflx
	VLBt6qD3KiT78Zj3tsSfRn+Auc+FkdFtJq3+b0AydrcWUqb6AjxC307OvOPDoT+AObu+
	1hZa0hm0IZV8+iTc0Rva1pIcYMYKCLUgSx73Ruf5/qgCQjK+p09NArO2O2OilRqqTDLY
	42Jw==
X-Gm-Message-State: ALyK8tIjCtDY855YV3A6XarMNa8MQtrHrlQdsZUlyZxP4eUMDi1j7l/4NTcNblNnasTZsHCsAVXdJhnwpeIB7w==
X-Received: by 10.55.23.25 with SMTP id i25mr26113075qkh.142.1468593796161;
	Fri, 15 Jul 2016 07:43:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.50.137 with HTTP; Fri, 15 Jul 2016 07:43:15 -0700 (PDT)
In-Reply-To: <CAF3SDA5hVSS6ERFPUQ02YqMWCMwhHGLt95+MfMSrrP4WxiWg=A@mail.gmail.com>
References: <CAF3SDA5hVSS6ERFPUQ02YqMWCMwhHGLt95+MfMSrrP4WxiWg=A@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 15 Jul 2016 10:43:15 -0400
Message-ID: <CADkTA4Oeqi8e-SysL=AZdphpyAh1o0ZbRF3JhFqmaXU38JF++Q@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Docker and Yocto
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
X-List-Received-Date: Fri, 15 Jul 2016 14:43:19 -0000
Content-Type: multipart/alternative; boundary=001a114596a88a28000537ada34a

--001a114596a88a28000537ada34a
Content-Type: text/plain; charset=UTF-8

Yep, that's something that we test consistently with the docker support in
meta-virtualization.

Bruce

On Fri, Jul 15, 2016 at 9:56 AM, Daniel. <danielhilst@gmail.com> wrote:

> Is anybory out there using Docker containers inside Yocto images? I
> have some machines running at ARMv7 architeture and I want to know if
> there is somebody already using Docker on non-x86 embedded platforms
> and if it can help deploying applications in this case too!?
>
> Regards,
>
> --
> "Do or do not. There is no try"
>   Yoda Master
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a114596a88a28000537ada34a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yep, that&#39;s something that we test consistently w=
ith the docker support in meta-virtualization.<br><br></div>Bruce<br></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Jul 15, 2=
016 at 9:56 AM, Daniel. <span dir=3D"ltr">&lt;<a href=3D"mailto:danielhilst=
@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">Is anybory out there using Docker containe=
rs inside Yocto images? I<br>
have some machines running at ARMv7 architeture and I want to know if<br>
there is somebody already using Docker on non-x86 embedded platforms<br>
and if it can help deploying applications in this case too!?<br>
<br>
Regards,<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
&quot;Do or do not. There is no try&quot;<br>
=C2=A0 Yoda Master<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;Thou shalt n=
ot follow the NULL pointer, for chaos and madness await thee at its end&quo=
t;</div>
</div>

--001a114596a88a28000537ada34a--
