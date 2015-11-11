Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71244E00BB9; Wed, 11 Nov 2015 06:00:38 -0800 (PST)
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
	*      [209.85.192.41 listed in list.dnswl.org]
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38B41E00B4F
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 06:00:36 -0800 (PST)
Received: by qgea14 with SMTP id a14so23650826qge.0
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 06:00:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel_com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=mHKbilT4Zaqx48uMvRS4DuZnNSBqnG8s2v4+UPgXmRM=;
	b=xPSIniqvN3v7hgzcRJGGoIe3kRuEZS9gu4Yxv0HJJt+fA3jiRscOyVdhdSqhHzgMiX
	TrV5d5BvookTln3Jod+s4KW8r+ao/hl0c04JuXgIyTHskxmSVQSdfr0+ILrasxRFjblq
	ipPy448WqlHTZEwW69OBZn1WaeKD98AKLBVhTo4n+DMEZqADzzfrFhBW3J82EWMavmRa
	ERVvoExnyaR38rr7S8zuKJ0nOKgnHfN5TnaW+KgYvHWWUFA0YmQqxMHKkzjWHDRtXYz7
	1tP8XXeWPHQ2O3uMvgt9hnpFciMCQ1bXLn2aY0v2qOHILDUVFmhIUvoMvyD7SaCTZtzM
	u64A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=mHKbilT4Zaqx48uMvRS4DuZnNSBqnG8s2v4+UPgXmRM=;
	b=QRheKz4xMuq+FGLa1BBBWnHC39lXThN9nMDlAOWNp5HrYidrdyi20oaoOXUCXwdoue
	AHbsTQpOaReZU329LVblcSJbDJ5csXWWQcy8FsZW1h09TwIL0mOWz7OloBE08NeBzSaj
	2zM+Htgty+mKyl5slg0h9jOLGDiyGjfiM7It/Ct5feUKdpNIx4w1J81yQV5nSsv+qmWQ
	VQpxXJx/2q5mLA7i+hUpSYbqqFc7mkFC4MxNduPUwIOaX9ffi9m3QTdu4i33QdvaN5N6
	eDMjGao5DGKXL8geYnL1Q/m0tDCWuW8wZsn0Pv1liKKUZ57KjN5jWwkD2DTQWhWkeIcC
	EoIg==
X-Gm-Message-State: ALoCoQk+UYHx1xxEq2G4fHpUW+MVdyzCt42/dMf5KRE4H81ko6+QbfUka14AMBRbYkVBlO7vlW54
X-Received: by 10.140.105.182 with SMTP id c51mr10568727qgf.15.1447250436348; 
	Wed, 11 Nov 2015 06:00:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.94.110 with HTTP; Wed, 11 Nov 2015 06:00:16 -0800 (PST)
In-Reply-To: <CAOsp8o8rHuiaWjOKWSbW+a5kVX1kegKpfiVto4VtK3V99ZY=mA@mail.gmail.com>
References: <CAOsp8o8rHuiaWjOKWSbW+a5kVX1kegKpfiVto4VtK3V99ZY=mA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 11 Nov 2015 14:00:16 +0000
Message-ID: <CAJTo0LaM0ibVmM5D46d1u3g=ttdFr1NA2aM-kr+oOpPSUv2TYQ@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Transitioning to Yocto, some basic questions about workflow
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
X-List-Received-Date: Wed, 11 Nov 2015 14:00:38 -0000
Content-Type: multipart/alternative; boundary=001a1139874228fbd2052444401e

--001a1139874228fbd2052444401e
Content-Type: text/plain; charset=UTF-8

On 10 November 2015 at 22:27, Michael Habibi <mikehabibi@gmail.com> wrote:

> I see that Yocto thinks of the deployable image and applications as
> separate entities: first you'd build the distribution, then you would use
> ADT/cross-toolchain/etc to build the applications and install them
> separately. However, in our environment, we would need all of our custom IP
> applications to be built as part of the deployable image, and not as a
> separate procdure. For example, if I were to call "bitbake our-image", I
> would like the deployable image to contain 1) the kernel, 2) various core
> utilities and libraries for booting, and 3) our custom applications for our
> device.


Your observation here is incorrect: the ADT/etc are for developers to use
when developing the applications.  If you're doing integration (i.e.
building images) then your applications are just more recipes to build
packages from that go into the image.

Ross

--001a1139874228fbd2052444401e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">On 10 November 2015 at 22:27, M=
ichael Habibi <span dir=3D"ltr">&lt;<a href=3D"mailto:mikehabibi@gmail.com"=
 target=3D"_blank">mikehabibi@gmail.com</a>&gt;</span> wrote:<br><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">I see that Yocto thinks of =
the deployable image and applications as separate entities: first you&#39;d=
 build the distribution, then you would use ADT/cross-toolchain/etc to buil=
d the applications and install them separately. However, in our environment=
, we would need all of our custom IP applications to be built as part of th=
e deployable image, and not as a separate procdure. For example, if I were =
to call &quot;bitbake our-image&quot;, I would like the deployable image to=
 contain 1) the kernel, 2) various core utilities and libraries for booting=
, and 3) our custom applications for our device.</blockquote></div><br>Your=
 observation here is incorrect: the ADT/etc are for developers to use when =
developing the applications.=C2=A0 If you&#39;re doing integration (i.e. bu=
ilding images) then your applications are just more recipes to build packag=
es from that go into the image.</div><div class=3D"gmail_extra"><br></div><=
div class=3D"gmail_extra">Ross</div></div>

--001a1139874228fbd2052444401e--
