Return-Path: <max.oss.09@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3093E00E00; Thu, 18 Jan 2018 05:13:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (max.oss.09[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f170.google.com (mail-ot0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D4C8E0085E
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 05:13:54 -0800 (PST)
Received: by mail-ot0-f170.google.com with SMTP id 44so19128270otk.8
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 05:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ck1ZFNbdgwA37xqklvKgfhfkKzMynG1kxApRTu6NOME=;
	b=SuSS8GDuMI3UdoU7jS3E4XLjMAIWR4qhOOgzImcxsoiizH47h2AJwVypW7jjnnIqsl
	cDIj0fG2xLjGJCbHOLPTJE+iYqghYMBGPAnremccBtjWbONYf6mqYFDvRZSS8gL7aQl0
	Xw9MLEk4RzPstLkXUWYYQCFehOoBGfSlizuPHULM5IgPhlHF2DvHVLpOQjsA39CLJuNX
	EB+A+6hVytM/OZ4B768EtcfMG/mVQgscrWtMxtsvdOGlYQRbU8mU1kt+LTgyWyRYnMQ8
	tvvnU2jMVF2hsY9owVc8JAxQloQxEXzkFsXDUHkMD8EbkvrPj2AokQ2bhCfx9MyhowQD
	5IVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ck1ZFNbdgwA37xqklvKgfhfkKzMynG1kxApRTu6NOME=;
	b=NepmY6S/aNPI2y3uD1+bld66yhiE458G5YcP07/W3lhcBgN0dRHuBfB8rw/r2J7Ali
	XSlkJo68Cf6OujLz8cPjJQK1lc7LWfVgDcasQChbDTBG9AfXuQ0D2w1uotszvvX0OlSx
	gdv/dVSeDfKZ8rTy0sdpO/TYiFTwneK9G2ByX0lQwj4gk0rxERD0TQmyJg+p9E/0GkDR
	d49Nwqp+8VwNYwmHMYXBljkRhbxu4NNkh0VIvVqZL+al2tqjSw89GZW3ZRtRtKI4AITO
	yV2WlG/+7mgNMUmXjpx6A11pZYEoxKCU24fUVzyE53b6QKTyZUGFR5a6Y6llxbc+B6Z3
	eAuQ==
X-Gm-Message-State: AKwxytfV/kykl9nmTw5XVFij4J/T9Z6FnD5l6IXjUbpPpaOlPMUdMTuR
	6uC8L/8H+36Usy1ZUH8GaiLq78KJT90E8fh9FpE=
X-Google-Smtp-Source: ACJfBovSvtPjfXmXVdPmSzZLXAQrENkzWMthsCjm53dEf5LScjhZyEzVNXP4ZxsWoogdtJPgyvkRr29OL8/lQVeC4Qk=
X-Received: by 10.157.51.76 with SMTP id u12mr3499736otd.197.1516281234446;
	Thu, 18 Jan 2018 05:13:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.67.113 with HTTP; Thu, 18 Jan 2018 05:13:53 -0800 (PST)
In-Reply-To: <20d47e1b-c33b-d7f6-1b9e-f7a6f1e779a0@linux.intel.com>
References: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
	<CAC+thW1kL2F2LKxpnLMTd-YfWZV8KNzDSqpF8q2KdOBENBjt4g@mail.gmail.com>
	<CAC+thW0xBGsXZz-GJQU5f-LbVtUVWmzt5ReUwZr-SG4gvw-eVA@mail.gmail.com>
	<20d47e1b-c33b-d7f6-1b9e-f7a6f1e779a0@linux.intel.com>
From: Max Krummenacher <max.oss.09@gmail.com>
Date: Thu, 18 Jan 2018 14:13:53 +0100
Message-ID: <CAEHkU3WSqGih6myuVDZCrWjszPA7yaj6p_BWuEqin53LBh_tsA@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Mathias Rudnik <rudnik.mathias@googlemail.com>,
	Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 18 Jan 2018 13:13:55 -0000
Content-Type: multipart/alternative; boundary="001a113e1d365be10b05630cbc16"

--001a113e1d365be10b05630cbc16
Content-Type: text/plain; charset="UTF-8"

Hi

2018-01-18 10:05 GMT+01:00 Alexander Kanavin <
alexander.kanavin@linux.intel.com>:

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
> There's probably a missing header include - carefully compare do_compile
> logs in both cases and see how they differ for the failing file. Also
> inspect the file for any conditional define macros and see if they're
> enabled or not in both cases.
>
>
I've seen this also with a build for Nviidia Tegras which have non
'standard' (i.e. not from the mesa build) EGL/OpenGLES header files. (And
there is no OpenGL/GLX.)

Above error and a linking attempt against the not existing GLX are both in
the test binaries produced from the libepoxy-1.4.3/test directory. All
artefacts from in there are not packaged by our recipe. Before the switch
to meson those binaries were not built, so I guess that the issues have
been there all along but they did not trigger.

My interim fix is to remove the test directory from the top-level
meson.build file but I'm unsure if that is a way forward.
I did not yet build nativesdk-libepoxy with this.

--- libepoxy-1.4.3/meson.build~ 2017-06-06 11:55:31.000000000 +0200
+++ libepoxy-1.4.3/meson.build  2018-01-18 14:10:49.517098475 +0100
@@ -258,7 +258,6 @@

 subdir('include/epoxy')
 subdir('src')
-subdir('test')

 if get_option('enable-docs')
   doxygen = find_program('doxygen', required: false)
[

Max

--001a113e1d365be10b05630cbc16
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<br><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">2018-01-18 10:05 GMT+01:00 Alexander Kanavin <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:alexander.kanavin@linux.intel.com" target=3D"_blank">alexan=
der.kanavin@linux.intel.com</a>&gt;</span>:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><span class=3D"gmail-">On 01/18/2018 10:58 AM, Andrea=
 Galbusera wrote:<br>
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
There&#39;s probably a missing header include - carefully compare do_compil=
e logs in both cases and see how they differ for the failing file. Also ins=
pect the file for any conditional define macros and see if they&#39;re enab=
led or not in both cases.<br>
<br></blockquote></div><br>I&#39;ve seen this also with a build for Nviidia=
 Tegras which have non &#39;standard&#39; (i.e. not from the mesa build) EG=
L/OpenGLES header files. (And there is no OpenGL/GLX.)<br><br><div>Above
 error and a linking attempt against the not existing GLX are both in the t=
est=20
binaries produced from the libepoxy-1.4.3/test directory. All artefacts=20
from in there are not packaged by our recipe. Before the switch to meson th=
ose=20
binaries were not built, so I guess that the issues have been there=20
all along but they did not trigger.<br></div><br></div><div class=3D"gmail_=
extra">My interim fix is to remove the test directory from the top-level me=
son.build file but I&#39;m unsure if that is a way forward.<br></div><div c=
lass=3D"gmail_extra">I did not yet build nativesdk-libepoxy with this. </di=
v><div class=3D"gmail_extra"><br>--- libepoxy-1.4.3/meson.build~ 2017-06-06=
 11:55:31.000000000 +0200<br>+++ libepoxy-1.4.3/meson.build=C2=A0 2018-01-1=
8 14:10:49.517098475 +0100<br>@@ -258,7 +258,6 @@<br>=C2=A0<br>=C2=A0subdir=
(&#39;include/epoxy&#39;)<br>=C2=A0subdir(&#39;src&#39;)<br>-subdir(&#39;te=
st&#39;)<br>=C2=A0<br>=C2=A0if get_option(&#39;enable-docs&#39;)<br>=C2=A0=
=C2=A0 doxygen =3D find_program(&#39;doxygen&#39;, required: false)<br>[<br=
><br></div><div class=3D"gmail_extra">Max<br></div></div>

--001a113e1d365be10b05630cbc16--
