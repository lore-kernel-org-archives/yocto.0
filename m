Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC70FE00720; Tue,  8 Mar 2016 10:53:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AE59E00720
	for <yocto@yoctoproject.org>; Tue,  8 Mar 2016 10:52:53 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id l68so145719803wml.0
	for <yocto@yoctoproject.org>; Tue, 08 Mar 2016 10:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:date:message-id:in-reply-to:references:user-agent:subject
	:mime-version; bh=wheinOqDYhGvcx8SV4zzM/dgeP1tHkbvbeaELAvcJAY=;
	b=Y3Of3QUJQTZi/FgZ+xVpYWHQtb8wkScPvm+mtTpVoJHlJ8gJYw0gtcuf4S9D0NEkK9
	91ktIZGiNwFnuUMJDCHeWTIZpP+oHEObjhYNfQJg/rX16Ie4IlkEQBb+8prFs4gCSbj7
	HS1KEaYrhUnbagHkGP1nr+suvm02jvWaeAdqTqZ2gfx76j/x3ViEpJ0LmbnJwr4S2yMZ
	8LZOBfKvPP6X13BfFOLx0vMgHrJDaVIzvVK+P6qYKH7R2nsZEzCT+IcXyorbioYzHshq
	pNO5aJI+aHd+ZLuw+IPxbGF/U3y3llfyNrP+iLyXDo6Xm0YJotJTlbm7TJF6xtUOhtVG
	bdeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:date:message-id:in-reply-to:references
	:user-agent:subject:mime-version;
	bh=wheinOqDYhGvcx8SV4zzM/dgeP1tHkbvbeaELAvcJAY=;
	b=UHOQ7HuH/xFez/Nu+tMmXpGWRju78INcp7w259e/VUOeqXfmXVcUyen9vK3AKXtB1h
	jIMTpqh3WcN+TJdHnZbZ3EratfOZZHI8rJFVtN5Y6zHHzYX7JW8czYgf06yg3hXzZaWL
	wS9mA33MyP8+KXMbRp5eeq7J9mnAEUI9Oz49yZUiZOBaNRkuI+nTCTMqQIYpO5q0dAWa
	67ejEUixkv3bMzpAcNZteaB38d9HJKszmLF4ZK8cZ9SReZhtug0wwMFhP+ra/xlZp1Nk
	UD7aoc0sM34tkz94gT8II9zyeJw3nC0PfwuXTO18Bzj7PigkiQlOwqycB97J+H/KPaXA
	hd3w==
X-Gm-Message-State: AD7BkJL7Hykp3S9pzTvfUnPRpYiM1gd3Rh9egf+dhIJDwAq/sKslQOxH+Z6X5c3WCQEg4A==
X-Received: by 10.28.153.138 with SMTP id b132mr14971850wme.36.1457463172335; 
	Tue, 08 Mar 2016 10:52:52 -0800 (PST)
Received: from [192.168.23.165]
	(HSI-KBW-46-223-219-101.hsi.kabel-badenwuerttemberg.de.
	[46.223.219.101])
	by smtp.gmail.com with ESMTPSA id 192sm4761525wmw.0.2016.03.08.10.52.51
	for <yocto@yoctoproject.org> (version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 08 Mar 2016 10:52:51 -0800 (PST)
From: Christian Ege <k4230r6@gmail.com>
To: <yocto@yoctoproject.org>
Date: Tue, 08 Mar 2016 19:52:50 +0100
Message-ID: <153579313d0.27ac.b5f386b42cd5ccf91b9cb7358bc3020d@gmail.com>
In-Reply-To: <56DEE78D.6070609@edalab.it>
References: <56DEE78D.6070609@edalab.it>
User-Agent: AquaMail/1.6.1.3 (build: 26000003)
MIME-Version: 1.0
Subject: Re: Image SDK with qmake
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
X-List-Received-Date: Tue, 08 Mar 2016 18:53:00 -0000
Content-Type: multipart/alternative;
	boundary="----------1535793158b600927ac48f6a20"

------------1535793158b600927ac48f6a20
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

Hi Stefano,


Am 8. März 2016 3:55:09 nachm. schrieb Stefano Cordibella 
<stefano.cordibella@edalab.it>:

> Hi list,
>      I am working on an image that use Qt5 and now I want to share an
> SDK with some of our developers.
>
> When I try to generate the SDK with bitbake -c populate_sdk
> <image_name>  there isn't a cross qmake in the generated SDK.
> On the other hand when I try to use bitbake meta-toolchain-qt5 some
> image libraries and tools are missing on the SDK.
>

Have you put this in your image?
inherit populate_sdk_qt5

Like I did for meta-udoo
https://github.com/graugans/meta-udoo/blob/jethro/qt5-layer/recipes-qt/images/udoo-image-qt5.bb

Best,
Christian

> I read about Qt5 and SDK in the meta-qt5 wiki, but I suppose that the
> related patch is integrated in the fido release that I am using.
>
> So the question is: are there any way to generate a complete SDK with
> Qt5 cross tools for my custom image? I have to add some sort on
> nativesdk qt5 package to my image in IMAGE_INSTALL ?
>
> Thank you in advance,
> Stefano.
>
> --
> *Stefano Cordibella*
> EDALab s.r.l. - Networked Embedded Systems
>
> Strada Le Grazie, 15 - 37134 Verona - Italy
> email : stefano.cordibella@edalab.it
> skype : stefano.cordibella
> tel. : +39 045 802 70 85
> web : www.edalab.it
>
>
>
> ----------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

------------1535793158b600927ac48f6a20
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: 8bit

<html>
<head>
<meta http-equiv="Content-Type" content="text/html"/>
</head>
<body>
<div style="color: black;">
<p style="margin: 0 0 1em 0; color: black;">Hi Stefano,</p>
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;"><br></p>
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">Am 8.
März 2016 3:55:09 nachm. schrieb Stefano Cordibella
&lt;stefano.cordibella@edalab.it&gt;:</p>
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">&gt;
Hi list,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I am working on an image that use Qt5
and now I want to share an <br>
&gt; SDK with some of our developers.<br>
&gt;<br>
&gt; When I try to generate the SDK with bitbake -c populate_sdk <br>
&gt; &lt;image_name&gt;&nbsp; there isn't a cross qmake in the generated
SDK.<br>
&gt; On the other hand when I try to use bitbake meta-toolchain-qt5 some <br>
&gt; image libraries and tools are missing on the SDK.<br>
&gt;</p>
<p style="margin: 0 0 1em 0; color: black;"></p>
<p style="margin: 0 0 1em 0; color: black;">Have you put this in your
image?<br>
inherit populate_sdk_qt5</p>
<p style="margin: 0 0 1em 0; color: black;">Like I did for meta-udoo<br>
<a
href="https://github.com/graugans/meta-udoo/blob/jethro/qt5-layer/recipes-qt/images/udoo-image-qt5.bb">https://github.com/graugans/meta-udoo/blob/jethro/qt5-layer/recipes-qt/images/udoo-image-qt5.bb</a></p>
<p style="margin: 0 0 1em 0; color: black;">Best,<br>
Christian<br>
</p>
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;"><br>
&gt; I read about Qt5 and SDK in the meta-qt5 wiki, but I suppose that the <br>
&gt; related patch is integrated in the fido release that I am using.<br>
&gt;<br>
&gt; So the question is: are there any way to generate a complete SDK with <br>
&gt; Qt5 cross tools for my custom image? I have to add some sort on <br>
&gt; nativesdk qt5 package to my image in IMAGE_INSTALL ?<br>
&gt;<br>
&gt; Thank you in advance,<br>
&gt; Stefano.<br>
&gt;<br>
&gt; -- <br>
&gt; *Stefano Cordibella*<br>
&gt; EDALab s.r.l. - Networked Embedded Systems<br>
&gt;<br>
&gt; Strada Le Grazie, 15 - 37134 Verona - Italy<br>
&gt; email : stefano.cordibella@edalab.it<br>
&gt; skype : stefano.cordibella<br>
&gt; tel. : +39 045 802 70 85<br>
&gt; web : <a href="http://www.edalab.it">www.edalab.it</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ----------<br>
&gt; -- <br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a
href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</p>
</div>
</body>
</html>

------------1535793158b600927ac48f6a20--
