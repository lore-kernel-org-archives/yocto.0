Return-Path: <andrei@gherzan.ro>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D18FE004AB
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 03:01:27 -0700 (PDT)
Received: by iagt4 with SMTP id t4so2096687iag.35
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2012 03:01:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:from:date:message-id:subject:to
	:content-type:x-gm-message-state;
	bh=4mJJMjAdTZuGzEZog8xAmYdyH7dOe3lMvVPEwXZEEqI=;
	b=Av9110Wfpkh9aKRW72+UDUs7T3birPRYKKA/IaSDTWmfvfJuu6bR9JqxySk2zl5Jfz
	ZDyQmCNQ5y+f1abgPlL6JeTtaKQuAIZsDyXT1K+BUFIvofDMhj1neMqWAoDOPA/z28UD
	CR7Hh3XVwjjonQ86Fv+CxnAQWK8LT7oiaRqcCjpIMZFg8pPGWy2FQ1AvdjDqt1HRYD5y
	uhM4xwmjVWwIvXdc4F0mOkiBbDX8g+gRF5kU6O/46Hs8XhEJNN+dfaLQUa1JIHxVokeA
	JKbrYu7m9UvoJ64cXn/qZNWdbFU0yZojKXWLL6C8UfFCThxCg6NdEX/B8tv6sQh7qi04
	9UcA==
Received: by 10.50.41.129 with SMTP id f1mr21454681igl.57.1346925673035; Thu,
	06 Sep 2012 03:01:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.129.232 with HTTP; Thu, 6 Sep 2012 03:00:52 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 6 Sep 2012 13:00:52 +0300
Message-ID: <CAK18fxEb3gjEEwhvN-du3eJvgUVCbjXU2Ag4kicFFDt6xra6og@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQm4i2HtllundsD02mPPLhQ4LubzKxavmP8Sf5nWmfUHx83bAyq+OJ1uef3VO6OuNUCn5zLO
Subject: opengl / libgl / libgles
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Sep 2012 10:01:27 -0000
Content-Type: multipart/alternative; boundary=14dae934068347b85504c90592c6

--14dae934068347b85504c90592c6
Content-Type: text/plain; charset=ISO-8859-1

Hello,

In DISTRO_FEATURES we have opengl. That is pretty vague and generally we
don't want to have mesa on machines where there is no libgl but only gles +
egl. For example if we want to compile something that adds a DEPENDS based
on DISTRO_FEATURE opengl, this dependency will be added even if there is no
libgl implemented for that specific machine.

First idea would be that opengl (gl / gles) are machine related. On the
other hand opengl can be a DISTRO_FEATURE as we have a software
implementation - mesa.

How would you guys see a solution for this? The idea that came into my mind
was to map opengl to libgl or libgles. Or to both if there is the case.

ag

--14dae934068347b85504c90592c6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,
<div><br></div><div>In DISTRO_FEATURES we have opengl. That is pretty vague=
 and generally we don&#39;t want to have mesa on machines where there is no=
 libgl but only gles + egl. For example if we want to compile something tha=
t adds a DEPENDS based on DISTRO_FEATURE opengl, this dependency will be ad=
ded even if there is no libgl implemented for that specific machine.</div>

<div><br></div><div>First idea would be that opengl (gl / gles) are machine=
 related. On the other hand opengl can be a DISTRO_FEATURE as we have a sof=
tware implementation - mesa.</div><div><br></div><div>How would you guys se=
e a solution for this? The idea that came into my mind was to map opengl to=
 libgl or libgles. Or to both if there is the case.</div>

<div><br></div><div>ag</div>

--14dae934068347b85504c90592c6--
