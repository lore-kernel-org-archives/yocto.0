Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C023E00DE1; Thu, 28 Apr 2016 08:47:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3F1AE00DDA
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 08:47:08 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id 190so75317760iow.1
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 08:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=PJD0HpIr6IERFKFlVdoy532pT7Sya6kYQK2KKB8DxiY=;
	b=MmxehG9vYxnJS+HtGhVkC60Kaf/KcqJgZCVNvCDFm9wrO22UZUCSj7hUuk87yORiFW
	YwxCsYqbl9zV2Yz73shT3xMqEHwvOiQ7Iu1Ng7U7VgaE/xg3L/EFQJLaap+hnC1mozk6
	DR3BGw/9EwlgxX3NmSWEgbsnEzQ5iNUiPvwB+l102GE8UtLvDYyc2gMtlfJQ42u8z+qr
	cy1/w3xvhJfVl62wIo0GJGCTIbUEhLDRlIWd4tl+9DzZ4t9xYQl20KQDqQ1UI27aHnA5
	Yh6g+kRdNHGkDDh8WT2ngTqtRwiegcRIoYC8VM0+8/vN9jgFccqsPzR0NeBDrDLQExSL
	UDnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=PJD0HpIr6IERFKFlVdoy532pT7Sya6kYQK2KKB8DxiY=;
	b=OOve04VktAS2VlYJ2fgjxtJtgk1sI9iaGtBxTLINx6GG5lzCxhJG913dzhlQ1NWIhQ
	ro56HJq1uPJwSnGkN+I6u9uAIBG5Bd52p/s6Q6b8F+C6ufz1ezA6e5Xph81o5sOxmtTK
	tD0Y2mfJSuYEnU1vuGJfAZ4JcSeN7uJWqPa2NffgT3WxMtZpdx3GG7x2fViPwMCzob5S
	4ngtVWKk5n6VL4VP5RnstzBDPC2mD67DfBjqlzOvh3BqEP2XVWMnk5UlrG4C6NLz71rU
	mt4sCaMOguhg/JPd7pj4PqUS+gCLujG7UkXlB9813jjE1zgh+Uz2Tuf/3QyIhHlSh1G8
	xkQw==
X-Gm-Message-State: AOPr4FWwstEQmylQ2e95Ib2xFxOiBlgLjR+3nKGLGJXf+E9iqQbR5CrdJ3rHYs/3CZ9+7NU+fOGBcBL60tmHUJil
X-Received: by 10.107.51.213 with SMTP id z204mr17246022ioz.148.1461858427640; 
	Thu, 28 Apr 2016 08:47:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Thu, 28 Apr 2016 08:46:48 -0700 (PDT)
In-Reply-To: <1461857100201.50766@seescan.com>
References: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
	<CAJTo0LZxD=ddhu4zkEZXi9=a4KufoiYnf7QG_-n5LgUHXifU_A@mail.gmail.com>
	<OF1318AFAF.4F1EB7F1-ONC1257FA3.0041651C-C1257FA3.0042D0D2@esa-grimma.de>
	<CAJTo0LbzDJ4=GcYO71VNeVA7RYqnWPpu_zxDPgKcNBBAune48g@mail.gmail.com>
	<1461857100201.50766@seescan.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Apr 2016 16:46:48 +0100
Message-ID: <CAJTo0LbRp5X9-Q7y4pyXQyBtgRs5A1LnaCYzBHCq0AmTqrXgnw@mail.gmail.com>
To: Fred Ollinger <Fred.Ollinger@seescan.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Thu, 28 Apr 2016 15:47:12 -0000
Content-Type: multipart/alternative; boundary=001a11440cd04ad40505318d70f4

--001a11440cd04ad40505318d70f4
Content-Type: text/plain; charset=UTF-8

On 28 April 2016 at 16:25, Fred Ollinger <Fred.Ollinger@seescan.com> wrote:

> FILES_${PN} += "/usr/local"
>

Please don't do this unless that's actually what you want - nothing else in
the image will be using those paths so eg libraries in there might not be
found.

Ross

--001a11440cd04ad40505318d70f4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 April 2016 at 16:25, Fred Ollinger <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:Fred.Ollinger@seescan.com" target=3D"_blank">Fred.Ollinger@seescan.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1ui" =
class=3D"a3s aXjCH">FILES_${PN} +=3D &quot;/usr/local&quot;<br></div></bloc=
kquote></div><br>Please don&#39;t do this unless that&#39;s actually what y=
ou want - nothing else in the image will be using those paths so eg librari=
es in there might not be found.</div><div class=3D"gmail_extra"><br></div><=
div class=3D"gmail_extra">Ross</div></div>

--001a11440cd04ad40505318d70f4--
