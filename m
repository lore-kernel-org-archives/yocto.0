Return-Path: <madhu1313b@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B71BEE00CB9; Fri,  8 Feb 2019 06:57:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (madhu1313b[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F33BE00C58
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2019 06:57:52 -0800 (PST)
Received: by mail-qk1-f169.google.com with SMTP id u188so2229130qkh.8
	for <yocto@yoctoproject.org>; Fri, 08 Feb 2019 06:57:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=9WIFs9jNYaXdGr7f0uPZybAaWag1PlFRgkgvUW3N8ZU=;
	b=R6k1rS7+NBcEUurVsHGer0v9STPtMPYmr0zwzEV7U4mV80r4bVAXIbV/bEtxucEl0K
	LdgcQs0I6/1zfjnbP3e50zybUIog7R78gcHVPqXOqxHxxlwq1LJt++ofVxhU8OUIzkDb
	twbcdmq5GXKX9ADKmdsfjwYBUdAZBWhSuiVNaELJx/TLcoXUNG/7uV+nrzCRch8D/hJJ
	U66FhDtUk35iabd0KDyTAyGNiFkren8ENHdejmGuD5Quj+KRS+LtAw3hF9LsaXhv4Lbw
	/ahalAK8ElIJnydTN9SbkH7FLVRxeIo5JRsyLXWqxOzWvzfRnRHWNMjTTUnL2e7oLfkB
	O0aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=9WIFs9jNYaXdGr7f0uPZybAaWag1PlFRgkgvUW3N8ZU=;
	b=fFSpGQmE9h5+fN9bsNib1A4OefYG2wphKtAxCbYip45kwUVquqoEfrfhpHyXpA60rf
	UQ1tgKz7web2mCwtGbZbuswjvjzRgqaCNIfjyKSo3VIzBxJeYC7ag3K+hz5cLAZa86u8
	YMMhbIsh1pKMKhMnMcjmlZHK63Te8oxI8wyKHW5OH1CoNPEegWdtefcTD/EcwyJwL2Rz
	3DNbkwqOhHzMnWNr5sxLqeyDl0DrLoCNTIlhqvrXaKETJa9Ga0vw0MpI4P9Fgx7iOJPx
	Wf0i7m/sFYnSSEFnUFImvf68BJ8CZ0r75lmTFWKzJSCHPLZ0zWrh7pLpA3ck9P/DlNiT
	pR2Q==
X-Gm-Message-State: AHQUAub9KITCY52sfVM+WB2qBH2D8A3fTT11mNR3OGUe/Hu87z6kKY8i
	+VIc/9/a6mv0ZXBVurzUPeyaStnoXT7c4XrDXeKHfnTp
X-Google-Smtp-Source: AHgI3IbW4T3v1UVAV5xB2B/KmIF/fy4SCdakxQsfEKKbGxAeN6YEZ09LHlcOCckEbW9QFRH7SUHqSQ9GdVP4DWRryHU=
X-Received: by 2002:a37:7b83:: with SMTP id
	w125mr16028225qkc.209.1549637871580; 
	Fri, 08 Feb 2019 06:57:51 -0800 (PST)
MIME-Version: 1.0
From: Madhu B <madhu1313b@gmail.com>
Date: Fri, 8 Feb 2019 20:27:40 +0530
Message-ID: <CAH5YvUuA8wmqVkBBiRDS_9KPA86HUeD5UVrc7eLT==sz7pcvSQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-ti] Pandaboard not booting
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
X-List-Received-Date: Fri, 08 Feb 2019 14:57:52 -0000
Content-Type: multipart/alternative; boundary="000000000000ddb95e0581632ee6"

--000000000000ddb95e0581632ee6
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I was trying to bring-up the AGL on Pandaboard. With the default yocto
layer(meta-ti) in the AGL source code, I was able to generate the target
image(agl-image-minimal). When I tried to boot the board with the generated
image, the board is not booting and even I didn't see any log on
display(blank screen).
For image flashing, I followed the instructions shared at .
https://maniacbug.wordpress.com/2012/08/03/pandayocto/
Later I tried to build it with the latest poky(denzil-7.0) and meta-ti
layers. This time, I am getting some compilation issues related to usage of
"gets()" function.

Is there anything, that I am missing?

Thanks in advance.

Regards,
-Madhu.

--000000000000ddb95e0581632ee6
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><p>Hi everyone,</p>
<p>I was trying to bring-up  the AGL on Pandaboard. With the default 
yocto layer(meta-ti) in the AGL source code, I was able to generate the 
target image(agl-image-minimal). When I tried to boot the board with the
 generated image, the board is not booting and even I didn&#39;t see any log
 on display(blank screen).<br>
For image flashing, I followed the instructions shared at  .<a rel="nofollow" href="https://maniacbug.wordpress.com/2012/08/03/pandayocto/">https://maniacbug.wordpress.com/2012/08/03/pandayocto/</a><br>
Later I tried to build it with the latest poky(denzil-7.0) and meta-ti 
layers. This time, I am getting some compilation issues related to usage of &quot;gets()&quot; function.</p><p>
Is there anything, that I am missing?</p>
<p>Thanks in advance.</p>
<p>Regards,<br>
-Madhu.</p></div>

--000000000000ddb95e0581632ee6--
