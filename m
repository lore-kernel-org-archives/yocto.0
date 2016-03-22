Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC052E006AD; Tue, 22 Mar 2016 05:14:12 -0700 (PDT)
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
	*      [209.85.214.170 listed in list.dnswl.org]
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82D5EE0048B
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 05:14:09 -0700 (PDT)
Received: by mail-ob0-f170.google.com with SMTP id m7so198644223obh.3
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 05:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eISLLAbrXY487rsbYXO1Kn9a8bOYdMU6cpZCzrPb43c=;
	b=H0btQrryiUgcBNJQ416AtPLpYRgw8y4pnn2qi/J3iU5ACVm4Xcv00acfbl6eDB7RNE
	PAHFrdoDpgC2n40rdx9YDdvIW9GebbN5RhXf4C4GvqJrnBzbcqYUEQgqlFUGWVR088W3
	X2GWVI4z99okRHpsKR2/Sz8RJaY9hCfOa6FdJN4jYG9R2TB2fUHZATCuMdBZcj+tBd7e
	yE4URBiurxsigyjrlWnRaSu8LjRR3MNZtY0/6HUdvkXFvgwTwiC3LjrzZ9UIdkKHDxl2
	OVaHnbGdoybDpT4wXWN3QTLH84tKCIF0H2+m60Vnmzj5X/ws6YPA62D13ADw/wdYCyNP
	NVXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eISLLAbrXY487rsbYXO1Kn9a8bOYdMU6cpZCzrPb43c=;
	b=TTryV2FIklnRzvvgyqBsKoS0hfUzIvJzT0n3GXmOItSeUp4prIujEPKIlfRvLY7kXq
	u4wDujgquCaihi73j/LRKMKP5jAOTNQjDWpEIGeXAQaZlPo1De/CcvdKFQb9iOqoYj3g
	K8HFaiD/mg1APLzbSZsUxv05LmReSCmWc/MdUUMMeQr5j1jBDhw5Ysbw+i2PEAsfueAD
	KmNwBTZXaEuHu9sX5lqYF+0r5unN+xjia1V4LiKNDwB5Uo6h+XDQHz5nd6Idl/ZIFxv2
	IWWdxjLWWTyU88qJVvxnZ9/8i5tkKZCjLRp4DbfGluRhInT8C1cRYGnrbAvPHGBzVVun
	bV5w==
X-Gm-Message-State: AD7BkJJgdf+N01cRQkuZDozp9P6jRJOOHHFPzg8bUavN6V4cNls/29qvF/7hucDtEu4w3dHJGzEE+DvXQE+m+wLj
X-Received: by 10.182.242.4 with SMTP id wm4mr20398861obc.85.1458648848963;
	Tue, 22 Mar 2016 05:14:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.90.134 with HTTP; Tue, 22 Mar 2016 05:13:49 -0700 (PDT)
In-Reply-To: <1458643295-23529-1-git-send-email-jussi.kukkonen@intel.com>
References: <1458643295-23529-1-git-send-email-jussi.kukkonen@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 22 Mar 2016 12:13:49 +0000
Message-ID: <CAJTo0LaU3nPrOW5=gGGVXHzt4JQdo-HSV22ufYUc=hcXt25CLw@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [matchbox-desktop-2][PATCH] Do nothing on delete-event when not STANDALONE
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
X-List-Received-Date: Tue, 22 Mar 2016 12:14:12 -0000
Content-Type: multipart/alternative; boundary=e89a8ff24ea37efe5e052ea226e5

--e89a8ff24ea37efe5e052ea226e5
Content-Type: text/plain; charset=UTF-8

On 22 March 2016 at 10:41, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:

> This prevents an opportunistic alt-F4 from closing the desktop.
>

Pushed, thanks

Ross

--e89a8ff24ea37efe5e052ea226e5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 March 2016 at 10:41, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D"=
mailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@intel.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":ce8" c=
lass=3D"a3s" style=3D"overflow:hidden">This prevents an opportunistic alt-F=
4 from closing the desktop.<br></div></blockquote></div><br>Pushed, thanks<=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</=
div></div>

--e89a8ff24ea37efe5e052ea226e5--
