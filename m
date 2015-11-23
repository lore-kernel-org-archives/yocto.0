Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AA6CE00B05; Mon, 23 Nov 2015 06:38:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F3A2E00AF8
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 06:38:05 -0800 (PST)
Received: by ioir85 with SMTP id r85so188607407ioi.1
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 06:38:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=HK8lkipjoplzaM+w0wCNyU3tU6glGDb4V4Tc3pZkawQ=;
	b=Zlps+XEAfc91fGjO8TxUKY8GeoNzMJrOjUFeb+bI8rIrxcrjXz/7oBMn7JO7kH6Wmd
	XBK8I65f0K1TPubtRuB8oyYUE6WaDKS3XPglRnBe6b/V9Na1RHKcnEs3Mrgvgdf84F0X
	LKU9iUgxIX2BiXui/rSEmSlXGnwM8qoCM1YZgMO0UbQSwoVmhWVSObP4W141IaTqfXx+
	epj6bPdBb9qZHRuyL3+mNf5G/EtIJe9cqBksiGviZPqhGPIwGP59v5PY6lAy7FWMxTnw
	Lpaz2p57OAzvwlLRoRXfLFFYpShUoG01JnBqzToJSRZJNXf4s8fFvDLZ1DRaKzi4GPUY
	tIGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=HK8lkipjoplzaM+w0wCNyU3tU6glGDb4V4Tc3pZkawQ=;
	b=e/V7VTwsMaJYZeOrQJN8JVpgSKeNOrrRA6IVv4gHyV9EEx/WE9RMzWS8VTzGtZbpi6
	gF7PttRMZVSVrLSV3t+rUohSh/KdzTeN3H1wTC5gPL9Ez7Eh2LMuO8BdPmsgjYK7sqJG
	4ZKp4SFq9TKnFFUbU4g7CeUj4RPEKSCrIejjKSrjm7QaGyQFJb0qHek/ah4OVElol3B1
	0QSnOOYZc4EZUT5eDiPJI5axIKGClucr+GadagNKFmS6yQBA9Tuei9d77Ejk2LjYBhcM
	Zv1mq4yj4K/NJJ7iq5xXMca/9Ke9m4wDCtBLXNamX+0M/BpiMQbCM7vW4D2YfgSjK6OJ
	Ns5w==
X-Gm-Message-State: ALoCoQmF9C/FYEnNYfG4oD0Y1cyQdLkKvYHKwuedp82HrIDDNxBZHBDEGzRrmyAGsEvFBMvu060I
X-Received: by 10.107.135.30 with SMTP id j30mr23314037iod.148.1448289484722; 
	Mon, 23 Nov 2015 06:38:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.136.141 with HTTP; Mon, 23 Nov 2015 06:37:45 -0800 (PST)
In-Reply-To: <DM2PR0501MB153513529A5553C8E9054E02D7190@DM2PR0501MB1535.namprd05.prod.outlook.com>
References: <DM2PR0501MB153513529A5553C8E9054E02D7190@DM2PR0501MB1535.namprd05.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Nov 2015 14:37:45 +0000
Message-ID: <CAJTo0LZOuUu+MD08ir5txmrcKHj9gZaB69mkdVhFH+FroRmEsw@mail.gmail.com>
To: Ilya Katsnelson <ikatsnelson@vmem.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: linux-yocto_4.1.bbapend
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
X-List-Received-Date: Mon, 23 Nov 2015 14:38:06 -0000
Content-Type: multipart/alternative; boundary=001a113ec64a44ec310525362c27

--001a113ec64a44ec310525362c27
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 21 November 2015 at 01:47, Ilya Katsnelson <ikatsnelson@vmem.com> wrote:

> Sorry for a wide spam but I couldn=E2=80=99t find the right area in Bugzi=
lla where
> to put this question/error to.
>
>
>
> I was debugging a properly generated BSP and found this potential problem=
:
>
> There is a file named
> scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yoct=
o_4.1.bbapend
> <https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/scripts/lib/bsp/sub=
strate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbapend>.
> Should it be called
> scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yoct=
o_4.1.bbap
> *p*end. There is extra *p* in the extension.
>
>
This is fixed in oe-core master
(de150c051163e1457dab3cf80a7e4aff3b3cb000).  I'll send a backport request
for the jethro release branch now.

Ross

--001a113ec64a44ec310525362c27
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 21 November 2015 at 01:47, Ilya Katsnelson <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ikatsnelson@vmem.com" target=3D"_blank">ikatsnelson@vmem.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bor=
der-left-style:solid;padding-left:1ex"><p class=3D"MsoNormal">Sorry for a w=
ide spam but I couldn=E2=80=99t find the right area in Bugzilla where to pu=
t this question/error to.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I was debugging a properly generated BSP and found t=
his potential problem:<u></u><u></u></p>
<p class=3D"MsoNormal">There is a file named <span style=3D"font-family:&#3=
9;Courier New&#39;">
<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/scripts/lib=
/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbapend=
" target=3D"_blank">scripts/lib/bsp/substrate/target/arch/arm/recipes-kerne=
l/linux/linux-yocto_4.1.bbapend</a></span>. Should it
 be called <span style=3D"font-family:&#39;Courier New&#39;">scripts/lib/bs=
p/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbap<b>p</=
b>end</span>. There is extra
<b>p</b> in the extension.<u></u><u></u></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>This is fixed in oe-core =
master (de150c051163e1457dab3cf80a7e4aff3b3cb000).=C2=A0 I&#39;ll send a ba=
ckport request for the jethro release branch now.</div><div class=3D"gmail_=
extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113ec64a44ec310525362c27--
