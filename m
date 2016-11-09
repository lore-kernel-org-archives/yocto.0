Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77431E00997; Wed,  9 Nov 2016 05:19:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.172 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19CEDE0083E
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2016 05:19:07 -0800 (PST)
Received: by mail-qk0-f172.google.com with SMTP id q130so255207952qke.1
	for <yocto@yoctoproject.org>; Wed, 09 Nov 2016 05:19:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vGdr6l4dnOG01REEwBLzTkcVRpT8dmwRT/+bkX4ESHU=;
	b=IAolzk/9SDkK+zcZoWnP0jLYNY/buAb5u+T+Ac/st+HRF700sjXJfA/ccfAqQzWlPA
	3bMQQXsf+L+lKUUrTGXJSfpTGkRklat6BxjmRtPz8jxq82gapkNdsGYx8wuVdIPI8RgE
	OEyaOj+Y/tcc5FN7dckUJmf1MYSCQh5dizI94S3fy66DiKAKd2m/5PAScPkk2seq3+Om
	XLN6h9fFhtsdX+fJdNDAtG0leeEjLeVCa5/3YLl9JKSPRX6xwwFOIP5JVvO8hFKOmWgo
	ouxzyBZ1Ooi90aoBZm0+Ygas0NtdSblIfdM45MfrnA35JuhBdWVfy1eqWFk1KcXLygZv
	Gfjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vGdr6l4dnOG01REEwBLzTkcVRpT8dmwRT/+bkX4ESHU=;
	b=ieSPygNCr7fsR4pjnrHjYTlNO9KyKnkuoV1sjBi64MZU8RV5q3q78dfNxfPZWS8R71
	arU0Z0IsJHVTy3+00k8ad+Y+vqJfgfzeWKbcQxLADeV8R5fMGurtQzoKnrfgCK4sWUxZ
	lbAZU2A8blX+TCu+BcVNUq2tcKbiCQezml1qJQMZVNXL+xLkpuq0ltwWIj1Nkv0roita
	5OEPcbmiPysMPIAjQsRGkCHzE5Tu2kX8vOdlLvkaKVCXuGlNfwDKRUq4TuBCujwqUC5a
	8pAiG59buiNxTqcarCZBZ01wTJMsuoXOo2g0CW3EnTW51JO8LmW7F6df4/3nJOkjh9Fk
	QSlg==
X-Gm-Message-State: ABUngvf1wjxTrQmqgfjo+DurSRDRhyURyoes/7lUQUaV6+BIZZK+0TpFODm77seC0XRZeY3NgOqN9CoDWqu39WP7
X-Received: by 10.55.31.157 with SMTP id n29mr17734520qkh.221.1478697546528;
	Wed, 09 Nov 2016 05:19:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.85.136 with HTTP; Wed, 9 Nov 2016 05:18:46 -0800 (PST)
In-Reply-To: <30C2D590D16A5C46ADFE6521910377987FF75F11@AZ-US1EXMB02.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377987FF75F11@AZ-US1EXMB02.global.avaya.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 9 Nov 2016 13:18:46 +0000
Message-ID: <CAJTo0Lbd-K4aJFd5RFqa+hgrgjBZLz=TCzEDoA3-Qg+CtSbtdw@mail.gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Postinsts question
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
X-List-Received-Date: Wed, 09 Nov 2016 13:19:13 -0000
Content-Type: multipart/alternative; boundary=001a1147f228fdd1450540de1950

--001a1147f228fdd1450540de1950
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 8 November 2016 at 23:23, Vuille, Martin (Martin) <vmartin@avaya.com>
wrote:

> We are running with our rootfs mounted read-only.
>
> Consequently, any postinsts that get deferred to first boot fail.
>
>
>
> Is there a way to fail the build for any postinsts that can=E2=80=99t
>
> be performed during the build and have to be deferred?
>
>
I was looking at some other selftests today and a test suggested that this
already happens, and it's true.

If you add 'read-only-rootfs' to IMAGE_FEATURES then delayed postists are
fatal:

ERROR: core-image-sato-base-1.0-r0 do_rootfs: The following packages could
not be configured offline and rootfs is read-only: ['postinst-test-delayed'=
]
ERROR: core-image-sato-base-1.0-r0 do_rootfs: Function failed: do_rootfs

Ross

--001a1147f228fdd1450540de1950
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 November 2016 at 23:23, Vuille, Martin (Martin) <span dir=3D"ltr">&lt;=
<a href=3D"mailto:vmartin@avaya.com" target=3D"_blank">vmartin@avaya.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bo=
rder-left-style:solid;padding-left:1ex"><p class=3D"MsoNormal"><span lang=
=3D"EN-US">We are running with our rootfs mounted <span class=3D"gmail-il">=
read</span>-<span class=3D"gmail-il">only</span>.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Consequently, any postinsts tha=
t get deferred to first boot fail.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there a way to fail the buil=
d for any postinsts that can=E2=80=99t<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">be performed during the build a=
nd have to be deferred?<u></u><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>I was looking at some oth=
er selftests today and a test suggested that this already happens, and it&#=
39;s true.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ex=
tra">If you add &#39;read-only-rootfs&#39; to IMAGE_FEATURES then delayed p=
ostists are fatal:</div><div class=3D"gmail_extra"><br></div><div class=3D"=
gmail_extra"><div class=3D"gmail_extra">ERROR: core-image-sato-base-1.0-r0 =
do_rootfs: The following packages could not be configured offline and rootf=
s is read-only: [&#39;postinst-test-delayed&#39;]</div><div class=3D"gmail_=
extra">ERROR: core-image-sato-base-1.0-r0 do_rootfs: Function failed: do_ro=
otfs</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">R=
oss</div></div></div>

--001a1147f228fdd1450540de1950--
