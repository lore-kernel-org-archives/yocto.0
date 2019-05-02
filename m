Return-Path: <ms.priyanshu.sharma@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E4A9E00D2A; Thu,  2 May 2019 02:42:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ms.priyanshu.sharma[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.175 listed in list.dnswl.org]
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3613EE00D0F
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 02:42:58 -0700 (PDT)
Received: by mail-oi1-f175.google.com with SMTP id d62so1090817oib.13
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 02:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Zb3+xKXT6uSyn9kQHGvFF2ZPRCYt2Z7MmZeuTIKj9ss=;
	b=lRDx1fY0CYdq8+eq+pCGCbIXzpjaJL9/ppcXKVp4HDHjro7liD9hSCqy8RHZlmaOzZ
	wYRayKVgYIyNZq0zBZOudxD03CB6Qd+bVchZFHFao+75qzTShc9Rrq4nt/TgnrgdO6nh
	KCP4uar+XZ/C4W5qenARLHRh+xrKSfToz/9/IzTjIG+ROp3tUYESLyDHbPquwpdPmxV1
	fjLqrIDtM0cWqys1NV8EpC4W6KMWU4O+2qNE8gT9bevhOFLRGf0J+hMCtMn/cxPdZ6hZ
	j6u20SWZGbN3uvl9fQNh/creKrHXkrsXbjvaaCYjmee2FteAkPoKxgmxrN8g0vIY2UDU
	xfjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Zb3+xKXT6uSyn9kQHGvFF2ZPRCYt2Z7MmZeuTIKj9ss=;
	b=ZrgnlXh5tZT8tcMKAN0jgyYPPyWMuvmMtpsXiTJm+GPhYJW2BhGmSRh6uNSev6RI6E
	r/HG+OYbCxVBZNCWixWGvTUtlY1WtBKW6zpRPNDIoASWinmlWKBA95BfmblK212KjXZK
	b+OCzQZr10Spk4So5N1Rnw7yujwStj1J7MBnvE/vihICE2SIMINLpoY3bLGqTT0UOZEL
	nMB6jArSWWpPqylasLLvjVJ8fQkHkeonvO1afUvzVbDHLJIvICe1nhROq6IhdREdjHma
	RbvvcbcjuFKeGfu7JylQHOgilv99Mb600Q5E2/pmMgkFp7JN9Po6BmzRIJzoekwFMjid
	QHcA==
X-Gm-Message-State: APjAAAV3AfJE7b0B+otp9eV8VpmTCXvfJDY1QHIcFzY9HMGfDxLzxmf9
	kxFb9eok+7W+zDmxJAvPGqzK852qTC7yTiYBbcVWKMYc
X-Google-Smtp-Source: APXvYqyiuqDLEcoAGFJtgdloiYurZKgr9lxiT8Z2CXxyk8FGcaXdxXly7Iuq4LU58H8YqediFPjGvckkO4xv5+9qVKI=
X-Received: by 2002:aca:220f:: with SMTP id b15mr230799oic.73.1556790177431;
	Thu, 02 May 2019 02:42:57 -0700 (PDT)
MIME-Version: 1.0
From: Priyanshu Sharma <ms.priyanshu.sharma@gmail.com>
Date: Thu, 2 May 2019 15:12:46 +0530
Message-ID: <CAA_f9ePQ3mFXpTQBQPEo6-HVgvBma6C3nkNu9k6iHy64-CYe2w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Custom eSDK build fails
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
X-List-Received-Date: Thu, 02 May 2019 09:42:58 -0000
Content-Type: multipart/alternative; boundary="0000000000008405ab0587e475ad"

--0000000000008405ab0587e475ad
Content-Type: text/plain; charset="UTF-8"

Hi,

I've a custom Yocto layer and use that as TEMPLATECONF for building. My
custom layer also contains the image recipe based on pulsar-image (from
meta-ivi).

I'm using Yocto 2.5. The extensible sdk build fails at do_populate_sdk_ext
task for my image recipe.

$ bitbake <image> -f -c populate_sdk_ext
Error -
Exception: FileNotFoundError: [Errno 2] No such file or directory:
'<path-in-build-direcroty>/<image>/<PV>/sdk-ext/image//opt/<distro>/2.5.1/conf/local.conf.bak'
->
'<path-in-biuld-directory>/<image>/<PV>/sdk-ext/image//opt/<distro>/2.5.1/conf/local.conf'

If I check the path, <>/sdk-ext/image//opt/<distro>/2.5.1 , this directory
is getting created but getting deleted afterwards.
And  the one left after build fails is -
<>/sdk-ext/image//opt/<distro>/layers

Is there any configuration to be modified/added for my custom image?

Warm regards,
Priyanshu Sharma

--0000000000008405ab0587e475ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<div><br></div><div>I&#39;ve a custom =
Yocto layer and use that as TEMPLATECONF for building. My custom layer also=
 contains the image recipe based on pulsar-image (from meta-ivi).=C2=A0</di=
v><div><br></div><div>I&#39;m using Yocto 2.5. The extensible sdk build fai=
ls at do_populate_sdk_ext task for my image recipe.</div><div><br></div><di=
v><font face=3D"trebuchet ms, sans-serif">$ bitbake &lt;image&gt; -f -c pop=
ulate_sdk_ext</font></div><div>Error -</div><div><font face=3D"trebuchet ms=
, sans-serif">Exception: FileNotFoundError: [Errno 2] No such file or direc=
tory: &#39;&lt;path-in-build-direcroty&gt;/&lt;image&gt;/&lt;PV&gt;/sdk-ext=
/image//opt/&lt;distro&gt;/2.5.1/conf/local.conf.bak&#39; -&gt; &#39;&lt;pa=
th-in-biuld-directory&gt;/&lt;image&gt;/&lt;PV&gt;/sdk-ext/image//opt/&lt;d=
istro&gt;/2.5.1/conf/local.conf&#39;</font><br></div><div><br></div><div>If=
 I check the path, &lt;&gt;/sdk-ext/image//opt/&lt;distro&gt;/2.5.1 , this =
directory is getting created but getting deleted afterwards.</div><div>And=
=C2=A0 the one left after build fails is - &lt;&gt;/sdk-ext/image//opt/&lt;=
distro&gt;/layers<br><br>Is there any configuration to be modified/added fo=
r my custom image?</div><div><br></div><div>Warm regards,<br>Priyanshu Shar=
ma</div></div></div>

--0000000000008405ab0587e475ad--
