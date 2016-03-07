Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E921E007B5; Mon,  7 Mar 2016 09:25:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73A7CE006CA
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 09:25:22 -0800 (PST)
Received: by mail-ig0-f182.google.com with SMTP id vs8so29237628igb.1
	for <yocto@yoctoproject.org>; Mon, 07 Mar 2016 09:25:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7rSOGGQxH1iF1HjyQg06u8zixEpbnqnZIZetggLrbjI=;
	b=18sfHmvvUKgTqnWXj8hLNlsMcruTCRMvhH2okwvg6JyBhlJaMiIn4MsQLV8B4v2hOM
	nsPvM6zu7n7Zv08HknnBmyTmb7RZESg6x/ZL//3SiC6k/v5wKnuSaOIX1b1oiPF0T33L
	Qv13hliCDOLoGrbOpmIGxWMRTUSr8UUn36LDWFhjukdDK4plaC4xYtyHzOZJJjBwV6lI
	qDRaDdp+9HJhED5t+Zd+zrJXFF86KQxtyA5H05yhEHfvGP6/eMWlGLekEi47dl7zPq2N
	87eVdpbtLrdPdYw/he5tZBxw2F9kTp6e/hQmruReJEp4c8wuXrJvv9STKNsDR9OD1kfQ
	4YHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7rSOGGQxH1iF1HjyQg06u8zixEpbnqnZIZetggLrbjI=;
	b=OExwW14js/69NK56dNBF9iljBA6b1e5OtVFgF90HsRaJaVE0QCrxMMyEK8JpSc1gMn
	uM2XnEPArQuIfG3URV2cDG8BOjWA4rQFAGUC8n5Ac19cc9hOFdcNV6o22VPh8uMo1XQX
	OspxGXfzgyN+CR/25K0gk/IGHgqF+H5fdyV4Cg5ihV+WLiodBdVBakfrCnDhP59Y1mA4
	8jxE8A4Y5ypN2KJCCv3E8YJ7pCLu5WauicDxsF9xtevxz5k8qQajasLyiY8PxMVGBNPu
	xBeYXh+RspPhyQ4TWjtMZum6dO2E3Pgg2vTWWdSqPmnOgrTUvtFQKMJ9wnGJ+h74OGTl
	FNAQ==
X-Gm-Message-State: AD7BkJJR/2yuigzDeO2JZ1CvC0JawuzF+QaSube1Y2OwsYkbQwT+YfPiOe8HNwi5psLkjZKLcX7MbTq0I5xOFd0K
X-Received: by 10.50.126.8 with SMTP id mu8mr12631718igb.52.1457371522328;
	Mon, 07 Mar 2016 09:25:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 7 Mar 2016 09:25:02 -0800 (PST)
In-Reply-To: <1457370830386.13338@seescan.com>
References: <56D8A187.8050502@windriver.com>
	<1457294903-74025-1-git-send-email-flihp@twobit.us>
	<1457370830386.13338@seescan.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 7 Mar 2016 17:25:02 +0000
Message-ID: <CAJTo0LZ7pJhr8CD3+JucSUmzceRTDXxGea4tFFGMe_HbQ7dqXg@mail.gmail.com>
To: Fred Ollinger <Fred.Ollinger@seescan.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] udev: Rename udev bbappend to eudev.
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
X-List-Received-Date: Mon, 07 Mar 2016 17:25:24 -0000
Content-Type: multipart/alternative; boundary=047d7b1635bfe502cd052d78bf94

--047d7b1635bfe502cd052d78bf94
Content-Type: text/plain; charset=UTF-8

On 7 March 2016 at 17:15, Fred Ollinger <Fred.Ollinger@seescan.com> wrote:

> Can someone please let me know what the reasoning behind the switch to
> eudev?
>

udev is unmaintained and many desktop Linux systems have already either
migrated to systemd or are using a modern udev ripped out of systemd (which
would be eudev).  We were actually seeing a number of problems caused by
having several-year-old udev APIs available, in both user and kernel space.

Ross

--047d7b1635bfe502cd052d78bf94
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 March 2016 at 17:15, Fred Ollinger <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:Fred.Ollinger@seescan.com" target=3D"_blank">Fred.Ollinger@seescan.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204)=
;border-left-style:solid;padding-left:1ex"><div style=3D"overflow:hidden">C=
an someone please let me know what the reasoning behind the switch to <span=
>eudev</span>?<br></div></blockquote></div><br>udev is unmaintained and man=
y desktop Linux systems have already either migrated to systemd or are usin=
g a modern udev ripped out of systemd (which would be eudev).=C2=A0 We were=
 actually seeing a number of problems caused by having several-year-old ude=
v APIs available, in both user and kernel space.</div><div class=3D"gmail_e=
xtra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--047d7b1635bfe502cd052d78bf94--
