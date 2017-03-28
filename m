Return-Path: <maxpowel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BABC6E0050B; Tue, 28 Mar 2017 14:47:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxpowel[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20F35E003E1
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 14:47:27 -0700 (PDT)
Received: by mail-qk0-f176.google.com with SMTP id r142so49061415qke.2
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 14:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=GQ9bhlu2hG/4vtMu0dhOJJBoX/xgbmrXvnbl/4aMVz4=;
	b=QPvs3WGl3v835DlPjwvj/th80Ji3cR+FjrEgAJLKo4hI9dKGaIc/SpNgoVrk+RgpRY
	mgkZ+MO09LNzyjPVbcSd5Y2HKA/GJEOFI2a9OZOomEz/OOYI4yv3+x7HAal8dSpgUVzo
	ocV/4a+gPBki07z/Ge73MPajo9Bk8UQDKGPtK9lzYAUvOkawblYa9562I5lUznHPLib7
	W0m4siuO9nnf1+BECP86nyfjQl4xOBv1XLGi52fTVeXw8zfT3AdMF3g8J1x9Wr6KExNZ
	D986edMyR3PdRNd+MrL4mPYHIlQp/tnAo/OQYUPk1jusZKaEOZqUxFxx8P3jUXj9FBin
	xDqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=GQ9bhlu2hG/4vtMu0dhOJJBoX/xgbmrXvnbl/4aMVz4=;
	b=Gucuihprvj1mHIyNK6mvIqF6Vf+M5vXsl0Drm360hLRJU6V9VcXMwA+zoIUO2cVaYG
	ITaDNNh0bMZpm1sEVOJo4ZG/ExjDnNvk9qdJZYBF6E3JbTY7dbob0kshZcMVVLu8fqlO
	F3DQyD9g9veZxDvPBuRhDV7jKfa0p7hKQWnr+dhHkosE5yvsDv1Te0jsBOFU0Z7K8dES
	Xs1eBhJYE8elX4oTf2mama/RcgTcEaz8hd2Dn5bYChDCafZdhOxDd/07Zdxw+4j5xjnB
	RUSdxj/3rsrpsXCY/ONzo6b1GfAGckNqzmk4k2ncpzWZJ1MOeSa5xiyZRmPCmDHqEOpC
	ezCA==
X-Gm-Message-State: AFeK/H1ewQNcmfqb/x2WOXYk0x8UZrwwJtZHOmHCkXi7mi5KsRzJmgE+meqwZ0UMhvHr4gNl3d3oj5fuMLWgvg==
X-Received: by 10.55.142.69 with SMTP id q66mr26423886qkd.13.1490737647139;
	Tue, 28 Mar 2017 14:47:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.37.5 with HTTP; Tue, 28 Mar 2017 14:47:26 -0700 (PDT)
From: Alvaro Garcia <maxpowel@gmail.com>
Date: Tue, 28 Mar 2017 23:47:26 +0200
Message-ID: <CAOsmwBR47gfDH-mQ5ej7vzn9xJSeB=OM=pv9X06-smxgKkKX6A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: NVIDIA Drivers
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
X-List-Received-Date: Tue, 28 Mar 2017 21:47:28 -0000
Content-Type: multipart/alternative; boundary=94eb2c083c7ae9621d054bd167ff

--94eb2c083c7ae9621d054bd167ff
Content-Type: text/plain; charset=UTF-8

Hi, I have built an image based on poky core-image-x11. Everything went
fine but the graphic card drivers. I want more resolution than the provided
by vesa (800x600) so I really need this drivers.

I tried this guacamayo recipe
https://layers.openembedded.org/layerindex/recipe/3272/ but can't compile
(too old, maybe unmaintained?). Also tried the recipe xf86-video-nouveau
(it is blacklisted but in krogoth it compiles right) but when I boot the
image, the nouveau driver is not used. My knowledges are very low to even
try to cross compile the nvidia propietary drivers (and can't find any
reference) so now I'm stucked. My machine is a zotac zbox, it came with
angstrom but now I want to build my own image.

I came from ubuntu world where the drivers are installed automatically so
at this point I'm totally lost. Can you bring me some light?

Thank you

--94eb2c083c7ae9621d054bd167ff
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi, I have built an image based on poky core-ima=
ge-x11. Everything went fine but the graphic card drivers. I want more reso=
lution than the provided by vesa (800x600) so I really need this drivers. <=
br><br></div>I tried this guacamayo recipe <a href=3D"https://layers.openem=
bedded.org/layerindex/recipe/3272/">https://layers.openembedded.org/layerin=
dex/recipe/3272/</a> but can&#39;t compile (too old, maybe unmaintained?). =
Also tried the recipe xf86-video-nouveau (it is blacklisted but in krogoth =
it compiles right) but when I boot the image, the nouveau driver is not use=
d. My knowledges are very low to even try to cross compile the nvidia propi=
etary drivers (and can&#39;t find any reference) so now I&#39;m stucked. My=
 machine is a zotac zbox, it came with angstrom but now I want to build my =
own image.<br><br></div><div>I came from ubuntu world where the drivers are=
 installed automatically so at this point I&#39;m totally lost. Can you bri=
ng me some light?<br><br></div><div>Thank you<br></div></div>

--94eb2c083c7ae9621d054bd167ff--
