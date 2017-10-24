Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A1F7E00C7B; Tue, 24 Oct 2017 02:05:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.172 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78FB9E00B67
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 02:05:00 -0700 (PDT)
Received: by mail-io0-f172.google.com with SMTP id f20so23055771ioj.9
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 02:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2u4/JzyNiJBjd28KsOOsYEOIPMwmhAJpwtGrOLiySo4=;
	b=iddZmx0qc2NnHEC7j157PjF1lxNCPme1oTtI2/eBcBmMEAR4B5k+23HJ6uscxD2EKj
	GF4yxGbq+NTyqJr/8vBi1UrXHhH8HYXoN3VLA996sptAckyM1/j5SMlcaTIknjZiTp0m
	tOE6e4+OlaTz9fUg4kRHFfEwzcztlYZgLoIH/xhIFwITluxdvnVzCtnGUCVYh1wL5RrD
	u6ZmbIRsMUgV0uZ807ebiCbIP1Pm17xlVT2BuY+cz0SBpg74yJEeZXtOdtA34ZAgdq6U
	VQceBXU5j07saZZQ6zECraWHDHhQp4V0hMvW/1lfgh3HAb+A9QBSdVTW4mlndX03zNZi
	sHKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2u4/JzyNiJBjd28KsOOsYEOIPMwmhAJpwtGrOLiySo4=;
	b=B1kFnEH4jIC9/ZcSCquIhnpqrIXTpP8V9mG6Ra0RT6rSdy1KODaFxW8LlKaqGOI0qg
	d9Mi4QQbEJkm+ApwF3/EWs2/lWHetzEniaxkiRyEB5IASKIWMq8YiZ5Ycxr7YJY8keIT
	y/SSnofrcytI4p8PJo5LQ6eveCPqPPuTqswPnTl+wxxHFgxkiewYWDxsyh20gXbGcHEx
	2eJcFwexREJW5xhcmtiDhwAmepR/WNbVndw/7jF6eANPP8BU2KdJnQroMGw0JQ5eSScw
	0GvtmubrybIZW0vI1V2EwOAANhXAiEZZn8EkP03pz4pogxbnZCZyzP/uTMB5mKoEXZC5
	wYiQ==
X-Gm-Message-State: AMCzsaWFDb4Jb3k0dFcXvydMTY4rU+5fi6xAkoTuNIXvUvOYNYB1jWFW
	+43s/O9HnECKOeg9IKIcKaim5stU5stvhHw+7s0MyQ==
X-Google-Smtp-Source: ABhQp+QX42fDXGnocr4x/czMRJGjqt5iej+eibmoCLfxKGuf2oed3BfzNKmRIkDlzMikqHSVU+JICa78OhK4+02MaI0=
X-Received: by 10.107.18.67 with SMTP id a64mr22365452ioj.165.1508835899532;
	Tue, 24 Oct 2017 02:04:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Tue, 24 Oct 2017 02:04:39 -0700 (PDT)
In-Reply-To: <CAAWyHBKXgLZq7jfEAv00o32=uCUek85YnQmFev4U1U9DOVHXEQ@mail.gmail.com>
References: <CAAWyHB+xtKGGLCmGOJvWiVbjCWvhPQMttNjLq=J2SampX8QhBg@mail.gmail.com>
	<CAAWyHB+vS7nv0GHCUWiXsWQxwTc9A5qprssmU7rSV20qgjRT-A@mail.gmail.com>
	<CAAWyHBKbq=xm6DbLy9j7fx9=paFWMns=QiU5gxFB-V_NMoZ75Q@mail.gmail.com>
	<CAAWyHB+7hEg=MJY7VJWMdmzA1a8Ritts88yEdi+ciqum=PS+Qw@mail.gmail.com>
	<CAAWyHBKXgLZq7jfEAv00o32=uCUek85YnQmFev4U1U9DOVHXEQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 24 Oct 2017 10:04:39 +0100
Message-ID: <CAJTo0LY-eH1hmnBwcvUW8jio8HzNJ7fJ27ra19gK==-S9_ewnQ@mail.gmail.com>
To: vishal ashapur <vishalashapur@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding usb-modeswitch and minicom packages on yocto
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
X-List-Received-Date: Tue, 24 Oct 2017 09:05:01 -0000
Content-Type: multipart/alternative; boundary="001a113ee9b2d101aa055c473be5"

--001a113ee9b2d101aa055c473be5
Content-Type: text/plain; charset="UTF-8"

On 24 October 2017 at 05:16, vishal ashapur <vishalashapur@gmail.com> wrote:

> Hi
> I want to add USB modeswitch and minicom packages on the target image. I
> am using raspberry pi 3 for the same. How to add those two packages so that
> they are enabled on target machine.
>
>
Find the recipes you're after using the layer index:
https://layers.openembedded.org

Then customise your image as per the documentation:
http://www.yoctoproject.org/docs/2.3.2/dev-manual/dev-manual.html#usingpoky-extend-customimage

Ross

--001a113ee9b2d101aa055c473be5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 24 October 2017 at 05:16, vishal ashapur <span dir=3D"l=
tr">&lt;<a href=3D"mailto:vishalashapur@gmail.com" target=3D"_blank">vishal=
ashapur@gmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div =
class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-co=
lor:rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hi<div dir=3D"auto=
">I want to add USB modeswitch and minicom packages on the target image. I =
am using raspberry pi 3 for the same. How to add those two packages so that=
 they are enabled on target machine.</div><div dir=3D"auto"><br></div></div=
></blockquote><div><br></div><div>Find the recipes you&#39;re after using t=
he layer index: =C2=A0<a href=3D"https://layers.openembedded.org">https://l=
ayers.openembedded.org</a></div><div><br></div><div>Then customise your ima=
ge as per the documentation: <a href=3D"http://www.yoctoproject.org/docs/2.=
3.2/dev-manual/dev-manual.html#usingpoky-extend-customimage">http://www.yoc=
toproject.org/docs/2.3.2/dev-manual/dev-manual.html#usingpoky-extend-custom=
image</a></div><div><br></div><div>Ross=C2=A0</div></div></div></div>

--001a113ee9b2d101aa055c473be5--
