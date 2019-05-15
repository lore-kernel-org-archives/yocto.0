Return-Path: <ms.priyanshu.sharma@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC87DE00D75; Wed, 15 May 2019 03:28:08 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38C56E00A0C
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 03:28:08 -0700 (PDT)
Received: by mail-ot1-f42.google.com with SMTP id l17so1778404otq.1
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 03:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=YNT4fHWRWN/aacoSp4M23RCUy1sJ/KONl6f46Y9yP+A=;
	b=ssdBHfDmG0n2xsluTZmljr6hgYJ0lq/REFlbav5uWZedKzxZhWzf+XRW46NuZ/ENf0
	8XEDyfn2mUg4ggV9OUcoLrpBUQ467R8E4AXztVx5t7V1HjFVl0YTiAHNScLQHeXuRkY6
	FbON9avUBmUXHrWk3wetCfb7dqBYgh+0in3n1RQ/7g3BShxkQWqUV2lDV0ghMa4N5ERM
	1UcveC/rOT/KZ2hr72sgFajFSh6G9XB6JhrOcq6UGaHkMO5EUn8ITTMJ4Z4RjqvxDrf5
	yBw8M48rgwl7JhLjCQoaON0ABqXEDrlWMRIdpX/W8Fxr/W1q9lPoEoNTriC9O6XWZQ4X
	8XmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=YNT4fHWRWN/aacoSp4M23RCUy1sJ/KONl6f46Y9yP+A=;
	b=j3odIfwqaR2xk3Z9nh2mIqnHpkVnmw3swqb5oCIm8uU4eHUlMLzhV7uKdYg+MJ93Xz
	k/S2sUY7Hym/5WHi8MBXkElB9GBLOPvWwJYLyOL2WjEMH7f8fVYNeFE2glMSkbTT2I7h
	uxtWFM5UReLWTeYzMWGfOqUYFKMMyXE2cfgcFlXMr2UhlHqTjXeE0YXCyNkm55WZTs2X
	nTLFMB3DHalvE/KnO0uuaCNKD7s89gtB3jhgdwRjNDXkETdhtTDDIgpBd3tUhHe0z1xd
	13b6qAevbWwuD7GGaXE3XcDV77a0w1h2drWCeGL54ZgS4GyaLltJboPmiHz6hQBD5IFX
	SUtw==
X-Gm-Message-State: APjAAAVNDWLO/WMz/3xol0caujIhn4rs5DAbRseTcW9NOICrWuMMst28
	sBfOQ2TF1ierakUR/Fv/Qp91fhifVHYGkzhy71AlRQ==
X-Google-Smtp-Source: APXvYqyOyCoEf899EDh774Xg7CuF81gCMHTG8Se1p64MCEsDIhHUo4BjcQz2RqTmxJK2HLV0FavUmv4Z29ooPb9zMHU=
X-Received: by 2002:a9d:468:: with SMTP id 95mr24036675otc.240.1557916087416; 
	Wed, 15 May 2019 03:28:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAA_f9ePQ3mFXpTQBQPEo6-HVgvBma6C3nkNu9k6iHy64-CYe2w@mail.gmail.com>
In-Reply-To: <CAA_f9ePQ3mFXpTQBQPEo6-HVgvBma6C3nkNu9k6iHy64-CYe2w@mail.gmail.com>
From: Priyanshu Sharma <ms.priyanshu.sharma@gmail.com>
Date: Wed, 15 May 2019 15:57:56 +0530
Message-ID: <CAA_f9eMaMJKm8fqwcvti+7BDCc9WjzS2X+u3OeRWuYFs0=-nrg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Custom eSDK build fails
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
X-List-Received-Date: Wed, 15 May 2019 10:28:08 -0000
Content-Type: multipart/alternative; boundary="000000000000fafce50588ea9aa0"

--000000000000fafce50588ea9aa0
Content-Type: text/plain; charset="UTF-8"

I see that my custom layers are not being copied in
<image-workdir>/sdk-ext/image/opt/${DISTRO}/${POKY_VERSION}/layers. Though
the conf files at
<image-workdir>/sdk-ext/image/opt/${DISTRO}/${POKY_VERSION}/conf.

How can I include my layers also in this?

Warm Regards,
Priyanshu Sharma

On Thu, May 2, 2019 at 3:12 PM Priyanshu Sharma <
ms.priyanshu.sharma@gmail.com> wrote:

> Hi,
>
> I've a custom Yocto layer and use that as TEMPLATECONF for building. My
> custom layer also contains the image recipe based on pulsar-image (from
> meta-ivi).
>
> I'm using Yocto 2.5. The extensible sdk build fails at do_populate_sdk_ext
> task for my image recipe.
>
> $ bitbake <image> -f -c populate_sdk_ext
> Error -
> Exception: FileNotFoundError: [Errno 2] No such file or directory:
> '<path-in-build-direcroty>/<image>/<PV>/sdk-ext/image//opt/<distro>/2.5.1/conf/local.conf.bak'
> ->
> '<path-in-biuld-directory>/<image>/<PV>/sdk-ext/image//opt/<distro>/2.5.1/conf/local.conf'
>
> If I check the path, <>/sdk-ext/image//opt/<distro>/2.5.1 , this directory
> is getting created but getting deleted afterwards.
> And  the one left after build fails is -
> <>/sdk-ext/image//opt/<distro>/layers
>
> Is there any configuration to be modified/added for my custom image?
>
> Warm regards,
> Priyanshu Sharma
>

--000000000000fafce50588ea9aa0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I see that my custom layers are not being copied in &lt;im=
age-workdir&gt;/sdk-ext/image/opt/${DISTRO}/${POKY_VERSION}/layers. Though =
the conf files at &lt;image-workdir&gt;/sdk-ext/image/opt/${DISTRO}/${POKY_=
VERSION}/conf.<div><br></div><div>How can I include my layers also in this?=
</div><div><br></div><div>Warm Regards,</div><div>Priyanshu Sharma</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, May 2, 2019 at 3:12 PM Priyanshu Sharma &lt;<a href=3D"mailto:ms.priya=
nshu.sharma@gmail.com">ms.priyanshu.sharma@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div d=
ir=3D"ltr">Hi,<div><br></div><div>I&#39;ve a custom Yocto layer and use tha=
t as TEMPLATECONF for building. My custom layer also contains the image rec=
ipe based on pulsar-image (from meta-ivi).=C2=A0</div><div><br></div><div>I=
&#39;m using Yocto 2.5. The extensible sdk build fails at do_populate_sdk_e=
xt task for my image recipe.</div><div><br></div><div><font face=3D"trebuch=
et ms, sans-serif">$ bitbake &lt;image&gt; -f -c populate_sdk_ext</font></d=
iv><div>Error -</div><div><font face=3D"trebuchet ms, sans-serif">Exception=
: FileNotFoundError: [Errno 2] No such file or directory: &#39;&lt;path-in-=
build-direcroty&gt;/&lt;image&gt;/&lt;PV&gt;/sdk-ext/image//opt/&lt;distro&=
gt;/2.5.1/conf/local.conf.bak&#39; -&gt; &#39;&lt;path-in-biuld-directory&g=
t;/&lt;image&gt;/&lt;PV&gt;/sdk-ext/image//opt/&lt;distro&gt;/2.5.1/conf/lo=
cal.conf&#39;</font><br></div><div><br></div><div>If I check the path, &lt;=
&gt;/sdk-ext/image//opt/&lt;distro&gt;/2.5.1 , this directory is getting cr=
eated but getting deleted afterwards.</div><div>And=C2=A0 the one left afte=
r build fails is - &lt;&gt;/sdk-ext/image//opt/&lt;distro&gt;/layers<br><br=
>Is there any configuration to be modified/added for my custom image?</div>=
<div><br></div><div>Warm regards,<br>Priyanshu Sharma</div></div></div>
</blockquote></div>

--000000000000fafce50588ea9aa0--
