Return-Path: <andreapicaro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FB3BE010AF; Mon, 18 Jun 2018 02:37:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andreapicaro[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BE8DE00E02
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2018 02:37:19 -0700 (PDT)
Received: by mail-qt0-f173.google.com with SMTP id x34-v6so14514419qtk.5
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2018 02:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=OOQCzxxM7TF5SGO250nKZLL9Al5TlgQuup5VjmPhWeI=;
	b=vQGoq5BHd0QHFTB3A6wxjMKydttCW8vnOmd3XL2lMlmp4FaXJPgSsKSAAVMUYv/rXr
	+ClBV5b/YFKPhvok4aeYiaFgNihagRYPaBp1/cko5wca63zD/RIbNno4fKH0QJpKY24q
	Ne1wG5psij+Izms4dW2nJAEz73Sebafo8Y+3bGSX+LrhpjM76qcmXvL5YjAkDVvIryJi
	rvtekdbPpNpVZLcp2vdPfscfymjLEZKnMsa9dBGim2ECsQ7T0Nj0+n/LJpfHhK2H+tLd
	Q1X5iqQM9gKJNH1OEqPJrKjO6VpYGbb1QwXwX6hoLWZOn/gUfNaEpLkS3PDwVdKcA8ao
	n4hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=OOQCzxxM7TF5SGO250nKZLL9Al5TlgQuup5VjmPhWeI=;
	b=KhfHZFk83PjvhliEPYrNpJkj50w23t5oa0mhLTwceOOPtqTcrDHBB49v7r7N2bJHyN
	oAyPDbgDKsKvi35kmVLvBsY9oM3Jylqmwentndw175NUoCZFWPSE8ipIi6iSkhATU2V1
	E/tWZu9lwGzxSfPEI6fKFMN+1vsJqoarsHF8KcjOoJbTwbnFlRvmJGt20rEUXdGI8uX1
	Ly1T4wpz2VA9DJXxjOQzR3Q1mXRBn0aOWK9nJjUhhxM9/mUobXMXuhup35EkQ68IbQhS
	1jtVZLDSCrftQGchLs5d32+1ELt4WvswZOrErqeRMXX7TjybdSv0m0IT0oLTIHiH74MW
	l2pw==
X-Gm-Message-State: APt69E1fbIulc/Upj8N3NGeTGbh/XRC51uYYVH+Z7wt7BQ7gZUmgqz5g
	+5Nf3w3a/08gNew2WzpX5iABUzFGE0/2hMo2YTnLVw==
X-Google-Smtp-Source: ADUXVKK86xw/YRuzBCTGPEj+8qNDLVRNB/x3ImwwjWz+7ks/lLuycTuRAd28iwqZKcQjIng2BXQ61qJesJQVHSwqoqU=
X-Received: by 2002:a0c:a8e1:: with SMTP id
	h33-v6mr9874867qvc.131.1529314638430; 
	Mon, 18 Jun 2018 02:37:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aed:2ac4:0:0:0:0:0 with HTTP; Mon, 18 Jun 2018 02:37:17
	-0700 (PDT)
From: Andrea Picaro <andreapicaro@gmail.com>
Date: Mon, 18 Jun 2018 11:37:17 +0200
Message-ID: <CAA7DeJAUw_3M4ophA44xGfqXh6S_gESpgZogoca2kxV_5ez=CQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Add gstwebrtcdsp to gstreamer plugins
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
X-List-Received-Date: Mon, 18 Jun 2018 09:37:20 -0000
Content-Type: multipart/alternative; boundary="000000000000c60577056ee74f69"

--000000000000c60577056ee74f69
Content-Type: text/plain; charset="UTF-8"

Hello, for an imx6 machine i need to compile gstreamer plugin bad webrtcdsp.

by following patterns i've found for other bad plugins, i tryed:



PACKAGES += "${PN}-audio-bad"

RDEPENDS_${PN}-audio-bad = "gstreamer1.0-plugins-bad-webrtcdsp"

in packagegroup-fsl-gstreamer1.0.bb



also, in gstreamer1.0-plugins-bad.inc i added

EXTRA_OECONF += "--enable-webrtcdsp" and removed --disable-webrtcdsp



No luck, plugin is not compiled. Any hint would be appreciated

Thanks

--000000000000c60577056ee74f69
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">


















<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">Hello, for an imx6 machine=
 i need to
compile gstreamer plugin bad webrtcdsp.<span></span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">by following patterns i&#3=
9;ve found for other bad
plugins, i tryed:<span></span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US"><span>=C2=A0</span></span>=
</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">PACKAGES +=3D &quot;${PN}-=
audio-bad&quot;<span></span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">RDEPENDS_${PN}-audio-bad =
=3D
&quot;gstreamer1.0-plugins-bad-webrtcdsp&quot;<span></span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">in <a href=3D"http://packa=
gegroup-fsl-gstreamer1.0.bb">packagegroup-fsl-gstreamer1.0.bb</a><span></sp=
an></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US"><span>=C2=A0</span></span>=
</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">also, in gstreamer1.0-plug=
ins-bad.inc i added<span></span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">EXTRA_OECONF +=3D
&quot;--enable-webrtcdsp&quot; and removed --disable-webrtcdsp<span></span>=
</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US"><span>=C2=A0</span></span>=
</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">No luck, plugin is not com=
piled. Any hint
would be appreciated<span></span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">Thanks<span></span></span>=
</p>






</div>

--000000000000c60577056ee74f69--
