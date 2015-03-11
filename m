Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49FB6E00779; Wed, 11 Mar 2015 04:54:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 057CEE0076F
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 04:54:00 -0700 (PDT)
Received: by qgfl89 with SMTP id l89so9129594qgf.11
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 04:53:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=+zwkQLql04Z6Yjf+XxMy9O4bi6pX3VU7rUu39RGayNc=;
	b=Zo7QA67xeUMyREClR4vik/JBQCUt8pvqf8y+w5Sbx/xnQTKIkeibleOQG95P+PVW2f
	pEPWVn3Y/TX6i7ikylYmaXZzIec/szgrSlh7nu3sVmwo5kheOtlggxKdupHWWyCpf/eg
	y7iR8YDLGQ/U9d4CZoCpP5/rsJauyYnnjm4EKJEOTFJvPToftLZjUvrTTiIGDUOgob2f
	HaDSGjRZE69FMGHFxKki7g6jJroHm1XJurhRaMD1gZQhhCuWAQyTAF0kqGgbKq4y8B8I
	ArujajcE0kb14NE1bVHUiNWdLACE3BZqoAdGB6SwaVtwGDevipldlUxYZMpuORIFWmAw
	mPJw==
X-Gm-Message-State: ALoCoQkjH3R//UkrQYnsr6RU25UimyjCtRNOnId7XIWeMR/EcoU1IoryeleKHUPtYLjfnKzrYsUN
X-Received: by 10.140.147.66 with SMTP id 63mr46974241qht.35.1426074839578;
	Wed, 11 Mar 2015 04:53:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Wed, 11 Mar 2015 04:53:38 -0700 (PDT)
In-Reply-To: <CABNKipJq35uppKzerqv=NtT_SJCCr_n1+nz+JjeUCZvJ6NaptQ@mail.gmail.com>
References: <CABNKipJq35uppKzerqv=NtT_SJCCr_n1+nz+JjeUCZvJ6NaptQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 11 Mar 2015 11:53:38 +0000
Message-ID: <CAJTo0LbwruA2TSgr3JsLoYzUifgo7k0zTTuCpdmmX=1v=CNd2w@mail.gmail.com>
To: Parthiban Kandasamy <parthiban@ulivesystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Udev "unable to receive control connection"
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
X-List-Received-Date: Wed, 11 Mar 2015 11:54:03 -0000
Content-Type: multipart/alternative; boundary=001a1135547e3c9cd3051101ec4a

--001a1135547e3c9cd3051101ec4a
Content-Type: text/plain; charset=UTF-8

On 11 March 2015 at 05:25, Parthiban Kandasamy <parthiban@ulivesystems.com>
wrote:

> this message shows udev version 182 but i built udev-164, so what can i do
> to overcome this error?
>

You might want to remove the tmp directory in case the newer versions are
still in deploy/.  Simply delete tmp/ and rebuild the image - assuming that
your sstate-cache isn't inside tmp/ it will rebuild very quickly.

Ross

--001a1135547e3c9cd3051101ec4a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 11 March 2015 at 05:25, Parthiban Kandasamy <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:parthiban@ulivesystems.com" target=3D"_blank">parthiban@ulivesy=
stems.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>thi=
s message shows udev version 182 but i built udev-164, so what can i do to =
overcome this error?</div></blockquote><div><br></div><div>You might want t=
o remove the tmp directory in case the newer versions are still in deploy/.=
=C2=A0 Simply delete tmp/ and rebuild the image - assuming that your sstate=
-cache isn&#39;t inside tmp/ it will rebuild very quickly.</div><div><br></=
div><div>Ross=C2=A0</div></div></div></div>

--001a1135547e3c9cd3051101ec4a--
