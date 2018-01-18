Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD5D2E00E17; Thu, 18 Jan 2018 06:08:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f67.google.com (mail-lf0-f67.google.com
	[209.85.215.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43A90E00DC2
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 06:08:57 -0800 (PST)
Received: by mail-lf0-f67.google.com with SMTP id q194so15349716lfe.13
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 06:08:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=u5IS1AMJJMKZ51xLEhckRWKgwqG5RJATodSCabBgJ84=;
	b=AD/QgFQEeZ9TNBEfav+2APFcK3IfOY+y0qCJCgWwZ1UZfZvmen/69646tS2r7mkL0i
	GKQ5aCJ+ieQppTWYrdKdp4MH42teK6x+yI4Cx5BCBdsdhOzJvAEZhVRuJCoIhe/AxDlB
	X7fQz34q4nw0FG5YWnuxOBpCITFDXQT7EWVnOYyEcufrQwZyrj0K0K2pPfjY9KU4VcSB
	SvN0IYoGt7hg3tbQY9s77qZP8ZLsMXJ0teDn7SJ8PyEi+YkNe5fzAZpxVw+al3+9elUV
	44aBvsOTXS8ZlSYVhW0oZO3rcHVrR8OnccFODrmcm+Po7UajvPw54ejwXPxMUb+V7WXW
	1tjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=u5IS1AMJJMKZ51xLEhckRWKgwqG5RJATodSCabBgJ84=;
	b=jKkPezHkGx0lOefdkW7pv80IuexXcfDaSqfBfbZLTSP63eXgfdaESqyuamN+4KUBcm
	vK6WlcvJ+LcacSnDpgohKCpNpo/t+wy2RsfaMiBtkxx+pY0JgvhiVyw2VdzmQfGPF0ut
	fL+Z9eW/mkIURhV5XRcm19LpgNwwTj4nrqOWTPN4iFf0xIG+H1vp8TzSs6IH3VbQhwCy
	ZAT4aKjhnHE+L80StMEtngjxv15IUcQ6vcHVBjtcs/p4qwOAX56vwdzORmoQsYShCmmG
	pCQDx1XzjeZlj9AQmzt20YvnFqlDJiHsR/KJLYu7o7C/ux3TllkLd5boAiHkQF1p15Oo
	GUbw==
X-Gm-Message-State: AKwxytfNg0VWGgGOwZfWomyOzyApnQ7m7jkR7FbL7kiuJDOsfjepijwN
	MWvRT4+QIJwD9mT+JqqDYJNVY267wgGd32X0l/o=
X-Google-Smtp-Source: ACJfBosf+/Imai+5mx+ymovLA4jbLuToht1SNHAoBH/U/K+DAWFfGMzG/kGLB/W6U/4kp0sUMCTsBquu5+qXs3fUlcg=
X-Received: by 10.25.83.4 with SMTP id h4mr21454921lfb.121.1516284537134; Thu,
	18 Jan 2018 06:08:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.83.210 with HTTP; Thu, 18 Jan 2018 06:08:56 -0800 (PST)
In-Reply-To: <20d47e1b-c33b-d7f6-1b9e-f7a6f1e779a0@linux.intel.com>
References: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
	<CAC+thW1kL2F2LKxpnLMTd-YfWZV8KNzDSqpF8q2KdOBENBjt4g@mail.gmail.com>
	<CAC+thW0xBGsXZz-GJQU5f-LbVtUVWmzt5ReUwZr-SG4gvw-eVA@mail.gmail.com>
	<20d47e1b-c33b-d7f6-1b9e-f7a6f1e779a0@linux.intel.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 18 Jan 2018 09:08:56 -0500
Message-ID: <CAHUNapTu4HeiwwdHLFcyNpQV2+F5gw2oQWZWCcSiqLy47hHuyQ@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Mathias Rudnik <rudnik.mathias@googlemail.com>, yocto@yoctoproject.org
Subject: Re: Error do_compile libepoxy
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
X-List-Received-Date: Thu, 18 Jan 2018 14:08:58 -0000
Content-Type: multipart/alternative; boundary="94eb2c1cdf8036e75905630d81c4"

--94eb2c1cdf8036e75905630d81c4
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 18, 2018 at 4:05 AM, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> On 01/18/2018 10:58 AM, Andrea Galbusera wrote:
>
>>
>> Looks like my first guess was not that bad. Reverting below commit,
>> which switched to meson build system brought my build back to green.
>> Also CC-ing the patch author who might suggest further investigations.
>>
>>      libepoxy: convert to meson build
>>
>>
> There's probably a missing header include
>
>

The original error:


../libepoxy-1.4.3/test/egl_common.c:36:20: error: implicit declaration
of function 'XOpenDisplay'; did you mean 'eglGetDisplay'?
[-Werror=implicit-function-declaration]
     Display *dpy = XOpenDisplay(NULL);

implies a missing #include <X11/Xlib.h>

--94eb2c1cdf8036e75905630d81c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Jan 18, 2018 at 4:05 AM, Alexander Kanavin <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:alexander.kanavin@linux.intel.com" target=3D"_blank">alexander.=
kanavin@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><span class=3D"gmail-">On 01/18/2018 10:58 AM, Andr=
ea Galbusera wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D"gma=
il-">
<br>
Looks like my first guess was not that bad. Reverting below commit,<br>
which switched to meson build system brought my build back to green.<br>
Also CC-ing the patch author who might suggest further investigations.<br>
<br></span><span class=3D"gmail-">
=C2=A0 =C2=A0 =C2=A0libepoxy: convert to meson build<br>
<br>
</span></blockquote>
<br>
There&#39;s probably a missing header include<br><br></blockquote><div><br>=
=C2=A0</div></div>The original error:<br><br></div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra"><pre style=3D"white-space:pre-wrap;=
font-variant-ligatures:normal">../libepoxy-1.4.3/test/egl_<wbr>common.c:36:=
20: error: implicit declaration of function &#39;XOpenDisplay&#39;; did you=
 mean &#39;eglGetDisplay&#39;? [-Werror=3Dimplicit-function-<wbr>declaratio=
n]
     Display *dpy =3D XOpenDisplay(NULL);<br><br><font size=3D"2"><span sty=
le=3D"font-family:arial,helvetica,sans-serif">implies a missing #include &l=
t;X11/Xlib.h&gt;</span></font></pre></div></div>

--94eb2c1cdf8036e75905630d81c4--
