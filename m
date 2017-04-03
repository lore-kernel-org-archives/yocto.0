Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6979E00AA5; Mon,  3 Apr 2017 06:11:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.169 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 870C1E00A4C
	for <yocto@yoctoproject.org>; Mon,  3 Apr 2017 06:11:29 -0700 (PDT)
Received: by mail-qk0-f169.google.com with SMTP id h67so14475843qke.0
	for <yocto@yoctoproject.org>; Mon, 03 Apr 2017 06:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fE4ZWaix2ssReapQ6MoyS4nwmf2h0UnNhdZn36DrbTM=;
	b=YADJbvVeHPv5DrvNMEZulES9hHECzbBtRE/rbGvxUE2HYzejbZ3PDX4hKQlpqw7rBz
	fupL05w+yZzrJ5cQklKSDhmx7RlY3xS9IMg7FkqFeiqGIka1cWO5SSPmIB8yurVAsas0
	MmOyCbGibqTNgm72lbQxV3D/YrgFy6gqX8fmrd1WEKarlmP/fPrtWAYekNshCnYoIbxO
	yVJpdN8oyn5ViHpzac7e7/53Za07Rys5d0bouhFbkBeJm7ohopOlV7Wa45cM/GG4Q4Ec
	kVvqHx99Cw/lRaMZi/LQBQRLSvGAIEpUDIcjvi5/jzImgL9pGD2+BGfZEbULreW4rLb4
	3Jxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fE4ZWaix2ssReapQ6MoyS4nwmf2h0UnNhdZn36DrbTM=;
	b=Jj64ejKk5LR1i6Ao7YgoqChPbv3zXlniyDDtZkX8dxEC4uCO7T2i4HTY2QO8xXXhDA
	mUjuZ7ETWcSkDrNiuskj1znMAsokcvWKvCJQMoD8xUsGYKVHxV54f4UrmsCYGl8dG/Tg
	5KKac47/9kDt7HF3eUEFzPmDu5HsgbR7nc8H8AAd8/LBDVbecfDwpzrAiWqOvFr7EgXS
	MWTWKarF9/swstwnY0BsoN9+loGzRZjkfet/Ljzl1PRZbL4abNMBRx4vlThz1yG/81yi
	us/l5IYBZ7qml0vwuMNg/HbWVuyV20Uxue7Li+0K8Q4FE9ePOq7Xe+n5Te5+WvUMePtG
	ZBFQ==
X-Gm-Message-State: AFeK/H0o5/HAA9erZr68+bRI/yobAPwMub9k9Aoe/2c2Jxfhi5KeoxjXYjY/xTfmzMIBZ3f7Thx+W8LZISeVSCOO
X-Received: by 10.55.123.6 with SMTP id w6mr17629734qkc.36.1491225088570; Mon,
	03 Apr 2017 06:11:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 3 Apr 2017 06:11:08 -0700 (PDT)
In-Reply-To: <321234949.389819.1491224825363@email.1and1.co.uk>
References: <0a9201d2ac6b$36b55fa0$a4201ee0$@ln-systems.com>
	<CAJTo0LbeDVgV3mAq=hK4opN70zVyBZ+nwRHcXeNt+d6c4PFJ2A@mail.gmail.com>
	<321234949.389819.1491224825363@email.1and1.co.uk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 3 Apr 2017 14:11:08 +0100
Message-ID: <CAJTo0LZC8phfFv5yW6i2wNou1NX1Z2Kgt+h+Qp06kWK3a-kbmg@mail.gmail.com>
To: Colin Helliwell <colin.helliwell@ln-systems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: xsltproc failing to load docbook.xsl
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
X-List-Received-Date: Mon, 03 Apr 2017 13:11:42 -0000
Content-Type: multipart/alternative; boundary=94eb2c063a18af544b054c42e58b

--94eb2c063a18af544b054c42e58b
Content-Type: text/plain; charset=UTF-8

On 3 April 2017 at 14:07, Colin Helliwell <colin.helliwell@ln-systems.com>
wrote:

> Hmmm, that's not got it unfortunately.
> I've also added a depend on libxslt-native (to get the xsltproc binary
> itself), and can see docbook-xsl-stylesheets-native building first - it
> creates a lot of docbook.xml's in various places (e.g. down under
> tmp/sysroots/x86_64-linux/, and tmp/work/x86_64-linux/), but the
> networkmanager recipe still isn't then finding that file.
>

There's a few pieces in oe-core which use docbook-xsl, I'd grep it and see
if there are any obvious fixes required.

Ross

--94eb2c063a18af544b054c42e58b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 April 2017 at 14:07, Colin Helliwell <span dir=3D"ltr">&lt;<a href=3D"=
mailto:colin.helliwell@ln-systems.com" target=3D"_blank">colin.helliwell@ln=
-systems.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div i=
d=3D":ec" class=3D"a3s aXjCH m15b33ef226310827">Hmmm, that&#39;s not got it=
 unfortunately.<br>
I&#39;ve also added a depend on libxslt-native (to get the xsltproc binary =
itself), and can see docbook-xsl-stylesheets-native building first - it cre=
ates a lot of docbook.xml&#39;s in various places (e.g. down under tmp/sysr=
oots/x86_64-linux/, and tmp/work/x86_64-linux/), but the networkmanager rec=
ipe still isn&#39;t then finding that file.</div></blockquote></div><br>The=
re&#39;s a few pieces in oe-core which use docbook-xsl, I&#39;d grep it and=
 see if there are any obvious fixes required.</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">Ross</div></div>

--94eb2c063a18af544b054c42e58b--
