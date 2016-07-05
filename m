Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24929E00DC5; Tue,  5 Jul 2016 06:24:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D794BE00DC2
	for <yocto@yoctoproject.org>; Tue,  5 Jul 2016 06:24:24 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id f6so82208339ith.0
	for <yocto@yoctoproject.org>; Tue, 05 Jul 2016 06:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dBmjaWmHA/TMXDsRH9Ng+1EsEiQjP3AYRAcYBnAMQaI=;
	b=U/KdsvdaULTyk8xyD/gXBq1e/fTn+Z41v3cyJlYtap9lA5eMRzDgrYpADKmg6nWC7Y
	5HQyNi9ZNK4MxcI7CcY4x829vicSiL2ilSFEuJBVgRewKPhxn8K7Pt3d/ww/jzlEdg//
	9CF3Umb2HH/cjQYfsh4H0t6PKU4yTkVdzHDOLodbJ1mSwXzB2wmFBIaE8KwRWPgPEVJa
	vkrDxbPRiUY0h7P/tfiGeRkrE7MCfN4Q707DCP1PwUUdOgU0/f+fqgdyCJVkJWk/DzaZ
	aZRzGd8Kq0Xynjbv/KcBrlumXVMcPQ0Ejkjh6AUOtwLg6GmPsrBAM4Mphqqe2AIF9SxY
	yfGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dBmjaWmHA/TMXDsRH9Ng+1EsEiQjP3AYRAcYBnAMQaI=;
	b=KbCZOSr5lw8uTF0rQ9qIkvFgJyZL8MIyoX4ocJn4xDOGIJ1m0USvTCK+PUmgToHZGi
	RyMbXeOU3pyoPFnLLw9jvXSKAzRJZXinb1g6sNlXbfyLN1LZxZj1XUX0cngtJA6EsvtC
	sFnVsp4bebG6DRDJDJP8ekc50DqyXA5tZCRSuTzs4Wb2lH2RKHGZIvDWF1xMvcGroGgd
	Wteh9/nOZ1T+PQGLteDSlbFi6vgF7PcHKLcoF2liOFY5tIvfqXtJsRkql+bFHVrB/b28
	bNVJ1xi3nn/qgdqPvv+RAPlovMpZAXoDN+W8Gt9t9aPRgwlYoWi0hKpi2w7npLE+OmQD
	1InA==
X-Gm-Message-State: ALyK8tJTTizKPwmltbTa436T75/3Z2UEcWFU/GpsbOk1FnxPRZAQ50RyrRPL1Rf2kHY3GeVQa4FfAvoYPRXb3gCB
X-Received: by 10.36.20.212 with SMTP id 203mr13122188itg.83.1467725063786;
	Tue, 05 Jul 2016 06:24:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Tue, 5 Jul 2016 06:24:04 -0700 (PDT)
In-Reply-To: <CAF3SDA4WWewyr1gxmKMcw=oz8SQFPDD9cuQNuxz98tNgW0cu3g@mail.gmail.com>
References: <cebe898af3ab435595255b7915ba3e38@XCH-ALN-006.cisco.com>
	<CAJTo0LZq6EOSZuD7KFd4EP1TMkoST4MTSCyejs3cgjgE1vj7_Q@mail.gmail.com>
	<dd76bbae443f4c82a36406a58e07e665@XCH-ALN-006.cisco.com>
	<CAJTo0Lad+=DQvdw0v8NdWzsezK747AEL6s7kR6Bz2m5eQH7J=w@mail.gmail.com>
	<CAF3SDA4WWewyr1gxmKMcw=oz8SQFPDD9cuQNuxz98tNgW0cu3g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 5 Jul 2016 14:24:04 +0100
Message-ID: <CAJTo0LbXHJLFxqm9ix-W_W2jC0=70kWo_4Kx_Gqqa7gvgm0aXg@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto build cross toolchain issue
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
X-List-Received-Date: Tue, 05 Jul 2016 13:24:29 -0000
Content-Type: multipart/alternative; boundary=001a1143e1980e281d0536e35f2f

--001a1143e1980e281d0536e35f2f
Content-Type: text/plain; charset=UTF-8

On 5 July 2016 at 14:10, Daniel. <danielhilst@gmail.com> wrote:

> I faced problems with symbols being droped if -l option is passed
> after -Wl,--as-needed. To circumvent this I changed my Makefiles to
> add link options prior $(LDFLAGS) expansion.
>

Note that --as-needed only applies to links specified after the option
itself, so changing the order to be -lfoo -lbar --as-needed means that
as-needed isn't being used and can just be removed.

(or your link ordering fixed)

Ross

--001a1143e1980e281d0536e35f2f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 July 2016 at 14:10, Daniel. <span dir=3D"ltr">&lt;<a href=3D"mailto:da=
nielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div id=3D":29" class=3D"a3s aXjC=
H m155bb2eaa0dbd07e">I faced problems with symbols being droped if -l optio=
n is passed<br>
after -Wl,--as-needed. To circumvent this I changed my Makefiles to<br>
add link options prior $(LDFLAGS) expansion.<br></div></blockquote></div><b=
r>Note that --as-needed only applies to links specified after the option it=
self, so changing the order to be -lfoo -lbar --as-needed means that as-nee=
ded isn&#39;t being used and can just be removed.</div><div class=3D"gmail_=
extra"><br></div><div class=3D"gmail_extra">(or your link ordering fixed)</=
div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</d=
iv></div>

--001a1143e1980e281d0536e35f2f--
