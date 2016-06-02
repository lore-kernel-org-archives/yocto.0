Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CA3BE00CED; Thu,  2 Jun 2016 06:22:41 -0700 (PDT)
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
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06EBEE00CE1
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2016 06:22:36 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id t40so45842274ioi.0
	for <yocto@yoctoproject.org>; Thu, 02 Jun 2016 06:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ihf5MxDGgxrgiYm7+eL40AmKAuHbedMCBPOU/z9z41s=;
	b=nxYSm2FNyKu0YsLLlrnh4pKqyAW5H9WsubMNcZ6SPQEuwwCA6Jma8czqCE+yBi9I5O
	NpPks2udoAHf0tP7dK4IrReH322SQEO0x19MpXQdcDbUwHT8TE/KXIJvvMEIG1xyf5yn
	0sDf+8tWy2xq10hk3FbQtwtFWHXS5tbuH1XYxht03d5di4Z+WPAgP82KsJOSfP/MzACw
	sSPSUiinxrkJ7RLdWm2cITP7RUhXcn8mZS+xSSKBfd65HwCw0O9hc4afUMf3/Cc3PDTM
	6VRFOrs2QvTRyGpx9/ycKFWJmftMDScVU3KXAx8CwgkBX5zPgx7cEC0BoD2H9w0eRjxR
	UZ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ihf5MxDGgxrgiYm7+eL40AmKAuHbedMCBPOU/z9z41s=;
	b=ji27DJXhzYD3YrzLoULkGcmvaM9lfRbOqaQoex2y9D5ZpS+JOM+H3gedCYrxePGZtr
	cJt+bpBDvw56WbxdWLLwtcwgJXJhB1SqpvGhXsAm583RdWK+ORbBXNlvpXYlNSS7OCgH
	NcLVAbHybkyDfB5FGlWbXJrRHUI98pK65KNtOCf4htYT3RzdxfET1/iM9CfwCc4R5oj0
	mJJpx1uFx4H3FBsVivAFzskHrc0gqSdQ83hQOJGUspZHwLLzA9G2ec5plcX70cPahrKm
	RyIxQZVlxSHEcDd4NjJYq3+UMeVju6U4rvVePcQZMjh8w2OH3fnGYNSM4MirT0aXlqFF
	uQpw==
X-Gm-Message-State: ALyK8tLjbkZbRP586PGDyUO9gC18fRugXyxgl306LDRNz+OF2RHgCloh3KfIflAdEsuWEjxYAOJ39TShC5L/0dK3
X-Received: by 10.107.138.158 with SMTP id c30mr2896808ioj.148.1464873756477; 
	Thu, 02 Jun 2016 06:22:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Thu, 2 Jun 2016 06:22:16 -0700 (PDT)
In-Reply-To: <1464858221-27234-1-git-send-email-jussi.kukkonen@intel.com>
References: <1464858221-27234-1-git-send-email-jussi.kukkonen@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 2 Jun 2016 14:22:16 +0100
Message-ID: <CAJTo0LZRw0hGhL-bKFr=gJ5UezPCUEbivbHO7fHYCCc_RfqyoQ@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [matchbox-desktop-sato][PATCH] Remove Utilities-folder
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
X-List-Received-Date: Thu, 02 Jun 2016 13:22:41 -0000
Content-Type: multipart/alternative; boundary=001a113fe75ce55e6d05344b7fde

--001a113fe75ce55e6d05344b7fde
Content-Type: text/plain; charset=UTF-8

On 2 June 2016 at 10:03, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:

> Typical result of separate Applications and Utilities is that
> Applications only contains a single icon. Applications is also
> the default folder: it's a waste of space to have that empty.
>
> Merge all Utilities into Applications.
>

Reviewed-by: Ross Burton <ross.burton@intel.com>

--001a113fe75ce55e6d05344b7fde
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">On 2 June 2016 at 10:03, Jussi =
Kukkonen <span dir=3D"ltr">&lt;<a href=3D"mailto:jussi.kukkonen@intel.com" =
target=3D"_blank">jussi.kukkonen@intel.com</a>&gt;</span> wrote:<br><div cl=
ass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);borde=
r-left-style:solid;padding-left:1ex">Typical result of separate Application=
s and Utilities is that<br>
Applications only contains a single icon. Applications is also<br>
the default folder: it&#39;s a waste of space to have that empty.<br>
<br>
Merge all Utilities into Applications.<br></blockquote><div><br></div><div =
dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_extra">Reviewed-=
by: Ross Burton &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_bla=
nk">ross.burton@intel.com</a>&gt;</div></div></div><div>=C2=A0</div></div><=
br></div></div>

--001a113fe75ce55e6d05344b7fde--
