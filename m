Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CE47E00C9E; Tue, 15 May 2018 04:18:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82B18E00C61
	for <yocto@yoctoproject.org>; Tue, 15 May 2018 04:18:53 -0700 (PDT)
Received: by mail-vk0-f50.google.com with SMTP id g72-v6so9456727vke.2
	for <yocto@yoctoproject.org>; Tue, 15 May 2018 04:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=l5o328XEiotuXx48pBHbjN/upGYxlEDMWiDq6Xo95T0=;
	b=Vc341ytCXKVu7Qb6tTvkiQqHqxI3rMDpkmu1s0U8oCo3H+nb50I9gWoW4hqHK2PIwE
	lApLrCVXlR6H2ZFfTQcmXZXryy/DpOXX9VPChz7TJOjJKpF+uWFyPuWcJ0/sD+aUCCaN
	+EbgOeoKdJ8rVCIcTci1NgyBRByKk1xiaNg5Rmyq37nIyxrDK6Qz2RAIpDtWtK0AojYA
	HFZ7u7E4iVHZgX7LlOy/cny5YVi/TirPh+oH+MAB0yRC8ShwfDIiAblWfR/2LGxIrQ6u
	c67lXUX7bCV4gECBtjGzOemaa9A1Cicjee3c11l4FJMsDFhZNN+OuGnjs7swVs8J2p+Y
	IYjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=l5o328XEiotuXx48pBHbjN/upGYxlEDMWiDq6Xo95T0=;
	b=HcVL8ckppDlthLJ/OTumv7RRdjsBq7no92+gkpTqxzJiFTKmiTZtW9Dok03QgHv2zv
	wcwmfiT3hidCMTc+WUCV638bzZ49SORzju0tZndcrmoJfqLSI+1l0i9t885Kn6T4huam
	QbaphjWohO2kpF0dz5wR5RbjtILJ8BuRFq1I+MFWAcxb0T6qdC+zTmiBWi+kD2LA/gGg
	Mewn6Zz3gwP/GUyI7T+/hzdaUbE29jCCOaCL7ikLkf2DUVQ3ev5tonNG3fVJhfUr8CrC
	0yYzbkyrsANkidyg7dKyZvbju36Es4EAJILemGLqCmNRzI1RgOSy0vFB+8RIlOMqX8Tu
	9JUg==
X-Gm-Message-State: ALKqPwfbj+m/xAtzuN9TO1Kc7La0W7j0smSXvD3nXXY3qhTX9LOPcBbh
	ak+52EAO3UHdoywj9GFKQ5VIw3of7KnDuEwm+L5i5w==
X-Google-Smtp-Source: AB8JxZq+kT3Qi06oJvpkWOhLBD2+TArcFuCs090KGnHpjTFa0aUnTTIzsAsE2eStOEXZpE/FAuXRBnsyOoD+9t2ccTs=
X-Received: by 2002:a1f:20f:: with SMTP id
	15-v6mr14280898vkc.143.1526383132651; 
	Tue, 15 May 2018 04:18:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.4.108 with HTTP; Tue, 15 May 2018 04:18:12 -0700 (PDT)
X-Originating-IP: [86.140.154.11]
In-Reply-To: <D71A3695-AB82-4B4F-A56C-FF41B9403F7D@korgrd.com>
References: <0584D083-F27E-4336-9324-CFBACD55A653@korgrd.com>
	<D71A3695-AB82-4B4F-A56C-FF41B9403F7D@korgrd.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 15 May 2018 12:18:12 +0100
Message-ID: <CAK18fxHQdyPKGiGGJZ74EFoxYCXY+JzqF0aVawfYdehWx-77NA@mail.gmail.com>
To: Bill Jenkins <bill@korgrd.com>
Cc: hhromic@gmail.com, yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] No package 'wayland-egl' found
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
X-List-Received-Date: Tue, 15 May 2018 11:18:54 -0000
Content-Type: multipart/alternative; boundary="00000000000069bdc3056c3cc4fa"

--00000000000069bdc3056c3cc4fa
Content-Type: text/plain; charset="UTF-8"

Hi,

On Tue, May 15, 2018 at 1:48 AM, Bill Jenkins <bill@korgrd.com> wrote:

>
> > On May 14, 2018, at 2:43 PM, Bill Jenkins <bill@korgrd.com> wrote:
> >
> > Hi,
> >
> > I just sync'd to the head of the master branch in the poky and
> meta-raspberrypi repos today
> > and tried a build that successfully completed last week, but now fails
> with the error message
> > "No package 'wayland-egl' found" during the gtk+3_3.22.29.bb:do_configure
> task.
> >
> > I see some recent commits in both branches related to egl movement
> between wayland
> > and userland. I made sure to be up-to-date in both repos. What could I
> be missing?
> >
>
> I found that by removing the do_install_append_rpi() from commit de8912cb,
> the build
> finishes successfully. Is there something else that this commit is
> depending on that I do
> not have?
>
>
I can confirm this is an issue introduced by https://github.com/
agherzan/meta-raspberrypi/pull/247 . We will be fixing this soon but in the
meanwhile could you create a new issue in github?

Regards,
Andrei

--00000000000069bdc3056c3cc4fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi,<br>
<br><div class=3D"gmail_quote">On Tue, May 15, 2018 at 1:48 AM, Bill Jenkin=
s <span dir=3D"ltr">&lt;<a href=3D"mailto:bill@korgrd.com" target=3D"_blank=
">bill@korgrd.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><span class=3D"m_-4702776726305338450gmail-"><br>
&gt; On May 14, 2018, at 2:43 PM, Bill Jenkins &lt;<a href=3D"mailto:bill@k=
orgrd.com" target=3D"_blank">bill@korgrd.com</a>&gt; wrote:<br>
&gt; <br>
&gt; Hi,<br>
&gt; <br>
&gt; I just sync&#39;d to the head of the master branch in the poky and met=
a-raspberrypi repos today <br>
&gt; and tried a build that successfully completed last week, but now fails=
 with the error message<br>
&gt; &quot;No package &#39;wayland-egl&#39; found&quot; during the gtk+3_3.=
22.29.bb:do_configure task.<br>
&gt; <br>
&gt; I see some recent commits in both branches related to egl movement bet=
ween wayland<br>
&gt; and userland. I made sure to be up-to-date in both repos. What could I=
 be missing?<br>
&gt; <br>
<br>
</span>I found that by removing the do_install_append_rpi() from commit de8=
912cb, the build<br>
finishes successfully. Is there something else that this commit is dependin=
g on that I do<br>
not have?<br>
<div class=3D"m_-4702776726305338450gmail-HOEnZb"><div class=3D"m_-47027767=
26305338450gmail-h5"><br></div></div></blockquote><div><br></div><div>I can=
 confirm this is an issue introduced by=C2=A0<a href=3D"https://github.com/=
agherzan/meta-raspberrypi/pull/247" target=3D"_blank">https://github.com/<w=
br>agherzan/meta-raspberrypi/<wbr>pull/247</a> . We will be fixing this soo=
n but in the meanwhile could you create a new issue in github?</div><div><b=
r></div><div>Regards,</div><div>Andrei</div></div></div></div>

--00000000000069bdc3056c3cc4fa--
