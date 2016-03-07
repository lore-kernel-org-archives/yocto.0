Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AD3CE0090E; Mon,  7 Mar 2016 13:27:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7150EE008B4
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 13:27:47 -0800 (PST)
Received: by mail-io0-f178.google.com with SMTP id n190so3164057iof.0
	for <yocto@yoctoproject.org>; Mon, 07 Mar 2016 13:27:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0dJ221y5Ou7VGlij1maTzQDfMCcaHm9R7fxFtzs5btY=;
	b=IGx/mMSSTuFNiFKFotShCmZDBvg76IWoRQvd6hWXe2NAaxyPVKo/TxmyWrdYBIswfe
	QVXIizqEDDbEscpONvc593JR4SIJVxJbZ7cuIc6Gooj6UiD6Hrm5FT6HuEnhPUdzI8OC
	4T4zquD9+jCvMFsMfFaBMsVVCheWjvyI9DhyrdDXRYdYLkeBSOcwjCEBjx3yi+HgTBZ0
	2g/ehZxDXwSjGuCGREfQGWSBs6Cc9zsnBhyaB6UY9vn3ENFxRH6kXZe2fufC/xK8T8yB
	TJf8FD8YJF/jT9yJ7/y1154jyqjaHFC7XCM+b+pRlJi1WxkJApOOEV/QarG9uuL77gB9
	7wfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0dJ221y5Ou7VGlij1maTzQDfMCcaHm9R7fxFtzs5btY=;
	b=KYl8+79sayhXvJ9ApZYp366+BQ707wvWcBKXPvxAyGkD99VF9nWCCMH/3JJAdkp7w/
	LP+QHhWh0HBb19EzJ/9zRoJX6HXEoBI8qMsnykWJDeJUHN058HdfkY5qnAxuI4IsSpSs
	R+wN1aN2vomXXACT0c+geIsR9efRcVQNbOAd1FWwnU9ptwyT1s9bJHm4jeSnWMCfczTG
	QmSZNCQ8MRmQYFraNZ63V6CWPdFJc2ZgSCwC8CXSkHfRk5Vj/gTgHpGQV+XFfjtieB3k
	3FxXy8sqMXP+x0NQAzzRCvHoHlkYDMIFlkwkqIvCMQliqpovDlwcajsHPPF3BCszAAww
	3rSA==
X-Gm-Message-State: AD7BkJIpjFUq+qpS/gWCfFFdnZ6Fds71giH6fx11TFh0NNIQzn7I6jSYBrH+MNIdF30oLLzz7GsjZabiWVduWAZI
X-Received: by 10.107.16.19 with SMTP id y19mr9534680ioi.148.1457386066387;
	Mon, 07 Mar 2016 13:27:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.128.234 with HTTP; Mon, 7 Mar 2016 13:27:26 -0800 (PST)
In-Reply-To: <BAY181-W7C9AF39726986ECA0755AAEB10@phx.gbl>
References: <BAY181-W50B0A075391862300C0057AEB10@phx.gbl>
	<CAJTo0LY9iyRBDD+otav3mgWZMOfajHKhCDfnFHpSWNCR=H07gw@mail.gmail.com>
	<BAY181-W7C9AF39726986ECA0755AAEB10@phx.gbl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 7 Mar 2016 21:27:26 +0000
Message-ID: <CAJTo0LYmefS-OzRCFvPDFiiEDK0x14AfxjWRgq=rp+ZnwJvHbg@mail.gmail.com>
To: Mark Brown <mkbrown32@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failed to fetch URL git://gitorious.org/raw2rgbpnm/raw2rgbpnm.git
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
X-List-Received-Date: Mon, 07 Mar 2016 21:27:48 -0000
Content-Type: multipart/alternative; boundary=001a113fd1eac9c274052d7c22a8

--001a113fd1eac9c274052d7c22a8
Content-Type: text/plain; charset=UTF-8

On 7 March 2016 at 21:24, Mark Brown <mkbrown32@hotmail.com> wrote:

> I do not see anything in  /poky/meta-gumstix-extras/recipes-images/gumstix/
> gumstix-console-image.bb
> which mentions  protocol or protocol=git.
>

In the raw2rgbpnm recipe, meta-gumstix-extras/recipes-graphics/raw2rgbpnm/
raw2rgbpnm_git.bb according to the layer index (layers.openembedded.org).

Ross

--001a113fd1eac9c274052d7c22a8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 March 2016 at 21:24, Mark Brown <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:mkbrown32@hotmail.com" target=3D"_blank">mkbrown32@hotmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex"><div dir=3D"ltr">I do not see anything in=
=C2=A0 /poky/meta-gumstix-extras/recipes-images/gumstix/<a href=3D"http://g=
umstix-console-image.bb" target=3D"_blank">gumstix-console-image.bb</a>=C2=
=A0<br>which mentions=C2=A0 protocol or protocol=3Dgit.<br></div></blockquo=
te></div><br>In the raw2rgbpnm recipe, meta-gumstix-extras/recipes-graphics=
/raw2rgbpnm/<a href=3D"http://raw2rgbpnm_git.bb">raw2rgbpnm_git.bb</a> acco=
rding to the layer index (<a href=3D"http://layers.openembedded.org">layers=
.openembedded.org</a>).<br></div><div class=3D"gmail_extra"><br></div><div =
class=3D"gmail_extra">Ross</div></div>

--001a113fd1eac9c274052d7c22a8--
