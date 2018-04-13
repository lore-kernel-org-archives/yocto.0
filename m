Return-Path: <jeremy.thien@adtecdigital.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED10DE00B28; Fri, 13 Apr 2018 12:18:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wr0-f182.google.com (mail-wr0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03CF9E007E1
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 12:18:03 -0700 (PDT)
Received: by mail-wr0-f182.google.com with SMTP id f7so3767054wrh.6
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 12:18:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=+DEPOG9173nTJabjREgX32nCyOuQ5KZGtVUxpX8XEa4=;
	b=rNb9RkOlFjdxn8mjJ+0y8DZnIEQkvMkiPQsE+FN4GvBxaouxDI4mwNnNyX7MU1wLTn
	IZdYHJL/JHHSMLPNdXUmkXSCsNH2DNFTts/OtIWbkqf39Afu+FwHW0n+S/+NIe7+Eehk
	l3nra/Lyodo6VU9s3k6lqebmy9BhHnCaeBrI7sK2bwJpAW6DRhWAulOBQDkvLzApEuTW
	9Gaazi/ImButDsrnLRx3oMJmqrWROIwZdbpo5HFkVbM1RvydDfSG5yz7zwOLN9/UwKxY
	X9KI2CGP9Sg9MZaGCemznP859tlE6AA1OZessjX9CZEpbQHo5x8/EfFbT+3rc7xE5r/E
	w3OQ==
X-Gm-Message-State: ALQs6tC8iAb74femoMhMO/jTIPKVhJLlytM18orA0SQgMBbfuHK+DRKA
	/d8W7D2/Tb2/nk/7+PS/6B9KWAJ54ba077GTAoltOw==
X-Google-Smtp-Source: AIpwx493iuyBz3H+DfPu1ohaqKteuuNCpCatGbaJZajxN4amArxZM367ixPU7LNDXDyvKyWiu4IyD6ei9+qU+l3LXAA=
X-Received: by 10.223.219.198 with SMTP id e6mr4948319wrj.212.1523647082816;
	Fri, 13 Apr 2018 12:18:02 -0700 (PDT)
MIME-Version: 1.0
References: <231b0a5a6c0744ee9799b8bedf2c1ab7@sakuraus.com>
In-Reply-To: <231b0a5a6c0744ee9799b8bedf2c1ab7@sakuraus.com>
From: Jeremy Thien <jeremyt@adtecinc.com>
Date: Fri, 13 Apr 2018 19:17:52 +0000
Message-ID: <CALzCvPRyNuhEXsDE4CBdPfu_2kBwQfU2aWZzJUL+n9jk4d9thQ@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to patch a driver in Linux source tree
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
X-List-Received-Date: Fri, 13 Apr 2018 19:18:05 -0000
Content-Type: multipart/alternative; boundary="883d24f28eec227cbc0569bfbb94"

--883d24f28eec227cbc0569bfbb94
Content-Type: text/plain; charset="UTF-8"

SRC_URI = "<your kernel git path> file://your-patch-path"

Then place the patch in files subdirectory.

So your tree should look something like:

<your layer>/recipes-kernel/linux/
  linux-raspberrypi_4.4.bbappend
  files/
    <your patch>

Instead of "files", it might be named "linux-raspberrypi".

Hope this helps,
Jeremy

On Fri, Apr 13, 2018 at 2:41 PM Greg Wilson-Lindberg <GWilson@sakuraus.com>
wrote:

> I'm working on a raspberry pi3 Yocto build from Qt's boot2qt project, it's
> running Yocto version 2.2.3, and Linux kernel 4.4.50. I need to back port
> some changes to a file in drivers/net/can/spi. I confused about where and
> how I set up the patch file.
>
> I have a linux-raspberrypi_4.4.bbappend file. Do I put the patch file in
> that, and If so, how do I indicate the path to the file?
>
>
> Thanks for the help and enlightenment,
>
> Greg Wilson-Lindberg
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
-- 
Jeremy Thien
Director of Engineering | Adtec Digital
jeremy.thien@adtecdigital.net | mobile: +1 (904) 910-1749

--883d24f28eec227cbc0569bfbb94
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>SRC_URI =3D &quot;&lt;your kernel git path&gt; fi=
le://your-patch-path&quot;</div><div><br></div><div>Then place the patch in=
 files subdirectory.</div><div><br></div><div>So your tree should look some=
thing like:</div><div><br></div><div>&lt;your layer&gt;/recipes-kernel/linu=
x/</div><div>=C2=A0 linux-raspberrypi_4.4.bbappend</div><div>=C2=A0 files/<=
/div><div>=C2=A0 =C2=A0 &lt;your patch&gt;</div><div><br></div><div>Instead=
 of &quot;files&quot;, it might be named &quot;linux-raspberrypi&quot;.</di=
v><div><br></div><div>Hope this helps,</div><div>Jeremy</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr">On Fri, Apr 13, 2018 at 2:41 PM Gre=
g Wilson-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com">GWilson@sakur=
aus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_-8286453528904483776divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif">
<p>I&#39;m working on a raspberry pi3=C2=A0Yocto build from=C2=A0Qt&#39;s b=
oot2qt project, it&#39;s running Yocto version 2.2.3, and Linux kernel 4.4.=
50. I need to back=C2=A0port some changes to a file in drivers/net/can/spi.=
 I confused about where and how I set up the patch file.</p>
<p>I have a linux-raspberrypi_4.4.bbappend file. Do I put the patch file in=
 that, and If so, how do I indicate the path to the file?</p>
<p><br>
</p>
<p>Thanks for the help and enlightenment,</p>
<p>Greg Wilson-Lindberg</p>
</div>
</div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Jeremy Thien<div>Director of =
Engineering | Adtec Digital</div><div><a href=3D"mailto:jeremy.thien@adtecd=
igital.net">jeremy.thien@adtecdigital.net</a> | mobile: +1 (904) 910-1749</=
div></div></div>

--883d24f28eec227cbc0569bfbb94--
