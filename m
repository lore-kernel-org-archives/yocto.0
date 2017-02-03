Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81801E00510; Fri,  3 Feb 2017 15:15:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 607AFE004D2
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 15:15:17 -0800 (PST)
Received: by mail-qt0-f171.google.com with SMTP id k15so59612779qtg.3
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 15:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Dz9jJFjyvTlNgqei/ctzmMQk+VZeeq9AH7dnMh95nyM=;
	b=xWRJPN+w02qNX+IiGz7VK1WS6V0pOGTR1155i8Si6jC/ozB4OihmFBPwu+XLO+jTAw
	rrTkbTOcAUBt1a7UG/+CoUGx+h4i58K3cpEF3kzGuflXUH4Dv7fhLJgplHLdDBPY4IIj
	Xfzn+1Q/6RBZJcmFmrnGHw7KoCWAOm6ZuPs6lvowpZ65ZP1eeSwjsqF8gmvF8s5O+U5I
	mv+qthbWxLuzfebNwPBvQ06IM5D6+ZQvYnaTyWfXFDhSjXzCpmU7YPTP7Sg2u2FO5o2J
	clxYGV579iu8VsuRViOn+pPTNKskC0bFa8P2t6sPngHyWcG88gcDrTupswM6viaG2Jbm
	crBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Dz9jJFjyvTlNgqei/ctzmMQk+VZeeq9AH7dnMh95nyM=;
	b=Ay6+eB0RIUNzXuxiJRVM1Z5EXPEDkuGB7IdxF9ye7IaMzYg2VGAQgXBVVUSbLe/FuV
	gONID2lMu6okosyTNaELDoMK/gMQHqCNcKZOSV15FiVfitgVygwYIfQzVfoduNcBj1tr
	SAIYnDrWx+idMfDkTijH/9a6a9Sn7ZX2mHegtl4hjwkCyWF9ny+mV9jTZgLlgkB1q0js
	4EkW5BVhzjWl46JKs/8Bi06wdlR9p00AGt5m8DdK8smT/2s80P51SV/GsPoCisFTIOG6
	2DhoA5iCbYdshh6qYp0nweDsv8joubpkz+6QNTnOCvn3tByqSqeX4wrzv5nucAJVg2gd
	juKQ==
X-Gm-Message-State: AIkVDXIKp9levDada4iz7PzECrpK51bFAwi+dOmH868IF3xcbiJSaPCixWzSPE4xEhOX2IRq67goqQb0rNndATB7
X-Received: by 10.237.36.208 with SMTP id u16mr16395676qtc.105.1486163717158; 
	Fri, 03 Feb 2017 15:15:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Fri, 3 Feb 2017 15:14:56 -0800 (PST)
In-Reply-To: <43debf33-b22d-2838-fcc3-286bc837e015@tantosonline.com>
References: <43debf33-b22d-2838-fcc3-286bc837e015@tantosonline.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 3 Feb 2017 23:14:56 +0000
Message-ID: <CAJTo0Laxnjdzn4pGz9JsvesUHuUeRO3nPymfYFaDDTsTjVj2Hg@mail.gmail.com>
To: Andras Tantos <andras@tantosonline.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem building glibc-locale
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
X-List-Received-Date: Fri, 03 Feb 2017 23:15:21 -0000
Content-Type: multipart/alternative; boundary=001a114104ce7092320547a874ce

--001a114104ce7092320547a874ce
Content-Type: text/plain; charset=UTF-8

So you did:

echo "DISTRO_FEATURES += \"usbhost\"" >> conf/local.conf

But poky.conf does:

DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC}
${POKY_DEFAULT_DISTRO_FEATURES}"

Which means that the final value of DISTRO_FEATURES is "usbhost", so none
of the locale support is enabled, and glibc packages badly.

If you just want to add a feature, use DISTRO_FEATURES_append = " usbhost"
(leading whitespace in the string is critical).  Note that usbhost is a
default distro feature:

meta/conf/distro/include/default-distrovars.inc:DISTRO_FEATURES_DEFAULT ?=
"acl alsa argp bluetooth ext2 irda largefile pcmcia usbgadget usbhost wifi
xattr nfs zeroconf pci 3g nfc x11"

So you don't need to specify it unless you are defining a distribution from
scratch.

Ross

--001a114104ce7092320547a874ce
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">So you did:</div><div class=3D"=
gmail_extra"><br></div><div class=3D"gmail_extra">echo &quot;DISTRO_FEATURE=
S +=3D \&quot;usbhost\&quot;&quot; &gt;&gt; conf/local.conf<br><br>But poky=
.conf does:</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">DISTRO_FEATURES ?=3D &quot;${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATUR=
ES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}&quot;<br></div><div class=3D"gmail=
_extra"><br></div><div class=3D"gmail_extra">Which means that the final val=
ue of DISTRO_FEATURES is &quot;usbhost&quot;, so none of the locale support=
 is enabled, and glibc packages badly.</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">If you just want to add a feature, use DIS=
TRO_FEATURES_append =3D &quot; usbhost&quot; (leading whitespace in the str=
ing is critical).=C2=A0 Note that usbhost is a default distro feature:</div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">meta/conf/=
distro/include/default-distrovars.inc:DISTRO_FEATURES_DEFAULT ?=3D &quot;ac=
l alsa argp bluetooth ext2 irda largefile pcmcia usbgadget usbhost wifi xat=
tr nfs zeroconf pci 3g nfc x11&quot;</div><div class=3D"gmail_extra"><br></=
div><div class=3D"gmail_extra">So you don&#39;t need to specify it unless y=
ou are defining a distribution from scratch.</div><div class=3D"gmail_extra=
"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114104ce7092320547a874ce--
