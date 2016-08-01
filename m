Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56533E010A1; Mon,  1 Aug 2016 05:30:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4D59E0109D
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 05:30:01 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id f6so244395028ith.1
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2016 05:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=f8AHDjC8T+tlQnA7gH88ERkxd0Kh9Xe1lLpPswoc26Y=;
	b=gXGTwL9ThjGJOIhAemWH2BuQONT4qPcQMbN8FRqq3sYftGlYK+rTLQTmeCfz1iNQD1
	3Ma5fczo+SCWyTOtDiXtvK1YgCvRKOtrw+5tczNpPeQhrGddpV3c+PAicckGvvCpEmWg
	I9lLfoq2wqWaJgvjyIe3HMk/lKg3/YI0p5KJRU7y1NHup8ZXl0gaiFFkNsuGXo+2+H/4
	Eo9W2BTXjoGKVoGlpWIz8eFmr2XIYEEzbTQNSGqMyB6FELdzHnIJ/TdKlVW9vXAnhlgK
	Hya04+XI8mSsLIjAXFb15c+pl8aqnCbQ9FkyyM9w/0DTB5bEeFiQazGP+n+ExzKDq9tj
	qkyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=f8AHDjC8T+tlQnA7gH88ERkxd0Kh9Xe1lLpPswoc26Y=;
	b=GkVKQI+8YhfVMtz04bdnvZaiDYW5CWFUY7DXo8SPj3CVWyoh8qeVM1TuKuF2eQM3a9
	vys00Pa68hXejmFFEBuDxRPq8OXNmqGtbFctJDkV7TddeK3SMXnrNgKYIvEbtX8mgcwZ
	/oNapHxp5hXc4AL3srT5b27W4hRuBFAG+0xZszr6LRsfUQEyHZnYR8Ivb0+/KwW/FQzQ
	H52rxbK4t2T9r3K0/3Ns/R8pUZHmhQFbORSdFZ9vk8dkvthsFIZHO90vfT+G7uSFiuyc
	8xU2iP9gVIoB+6mKLNWqegdAtlmzQnENc2YSkIoQSH/sj9Ko0d6CRZ25LfTDZDJnSpmY
	Om9g==
X-Gm-Message-State: AEkoouuc7b5v6BcCLervWwvFOnNY4+UE5AEtLlvJovGPTmsnedW6e6fmlekI9T4uQ8vVRegoTGMH1r8HNAMxjV0j
X-Received: by 10.36.87.140 with SMTP id u134mr59496282ita.38.1470054601080;
	Mon, 01 Aug 2016 05:30:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Mon, 1 Aug 2016 05:29:41 -0700 (PDT)
In-Reply-To: <1470052915-2839-1-git-send-email-bkylerussell@gmail.com>
References: <1470052915-2839-1-git-send-email-bkylerussell@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Aug 2016 13:29:41 +0100
Message-ID: <CAJTo0LZKE9cf8i5x2Cz7AjT3ve_BVFTcMbLhHa8Ys+bkaz+BVA@mail.gmail.com>
To: Kyle Russell <bkylerussell@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta][PATCH v2] python-3.4-manifest: Add some missing RDEPENDS
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
X-List-Received-Date: Mon, 01 Aug 2016 12:30:03 -0000
Content-Type: multipart/alternative; boundary=001a1135018c4c80b5053901c2f7

--001a1135018c4c80b5053901c2f7
Content-Type: text/plain; charset=UTF-8

On 1 August 2016 at 13:01, Kyle Russell <bkylerussell@gmail.com> wrote:

>  scripts/contrib/python/generate-manifest-3.4.py | 10 +++++-----
>

Sorry, but you need to edit the script and then run the script, so the
patch contains both the script and inc file changes.

Ross

--001a1135018c4c80b5053901c2f7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 1 August 2016 at 13:01, Kyle Russell <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:bkylerussell@gmail.com" target=3D"_blank">bkylerussell@gmail.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":gh" class=3D=
"a3s aXjCH m15645fd6f848810f">=C2=A0scripts/contrib/python/<a href=3D"http:=
//generate-manifest-3.4.py" rel=3D"noreferrer" target=3D"_blank">generate-m=
anifest-3.4.py</a> | 10 +++++-----<br></div></blockquote></div><br>Sorry, b=
ut you need to edit the script and then run the script, so the patch contai=
ns both the script and inc file changes.</div><div class=3D"gmail_extra"><b=
r></div><div class=3D"gmail_extra">Ross</div></div>

--001a1135018c4c80b5053901c2f7--
