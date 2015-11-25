Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B95F3E00985; Wed, 25 Nov 2015 12:20:43 -0800 (PST)
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
	*      [209.85.213.177 listed in list.dnswl.org]
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EA36E007C9
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 12:20:40 -0800 (PST)
Received: by igcmv3 with SMTP id mv3so1378391igc.0
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 12:20:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=vLfM6+R3yQqn2CfD38BhjWBR7QUP/e9TI3jOB20E+ck=;
	b=YKv1pbMScjsPW6mEhT55XvNL8c5LGgsKJgRlzvOfC5whX2iRWnxvhlFQGNiUijjxNK
	oL/nP8fwaT6GTb3K1kCiTXqZKONqoq07AYAAKsDfreBnXyPdTIQFQIhLdUjj3GcA96RF
	AUHFTVTTlEuauTGQ0I+Q0oNVjpFdT/zp0Owr/xoMcH6Abh6R76GXdAgvS9cfsfSXcEtz
	HOMKFLk3UA5S+l0s7XR9OJCHw1vZWIWivFSgpMO2h8GBpY1UJlAEqQ+WyFBb7fY5F5vq
	CL7BXXUHF3idPITBgK8UostcpWukHYVNIH0DqaJSsAlQU+/wRDoO1mlJy3SYrd6THlK0
	anZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=vLfM6+R3yQqn2CfD38BhjWBR7QUP/e9TI3jOB20E+ck=;
	b=mREyxHuAf6xn4caVWs+7b9+e3xh58VzTa9XIsuxeKRBBRngWdqVEEVcjoS9JI+JQfa
	hILWAy6XuPi7+kKAkt+meJ4m8oUyQEVFhkiZCmp+9nSgArRGDqx/6R+GQcwsPeA972vF
	Y5Y7J3QRcH6B/N60tah7OONaDVC3smlpSP3uCIvzTqiauUu1KO2SGr/3MBZQmg/6tEzh
	O4BMswtjAYtOR/1+L8JMB1ktj2B3rUBeAB+BD+zs/nUgpvdwWjTFT3k2sw2Tva73Hxu4
	gQPnHcgTgg3vUWQYySsA349FbLz052V+zvTw8e+UV9d3PY0lZLHUEc1xmK8v9p1sevnh
	vsqA==
X-Gm-Message-State: ALoCoQn77DgUox2aqd59dKqSjbgGQiX/w7n1fyfOMhF7BhkYcS2L8qDsq2vI7xebvBs+PsZPfofG
X-Received: by 10.50.64.147 with SMTP id o19mr5600495igs.52.1448482840093;
	Wed, 25 Nov 2015 12:20:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.136.141 with HTTP; Wed, 25 Nov 2015 12:20:20 -0800 (PST)
In-Reply-To: <CAMHMu0NkHpxu9i7KaHpnD6BPhrKmtm1Ox9fkR6-F-76+BWknrg@mail.gmail.com>
References: <1448383148-2344-1-git-send-email-juro.bystricky@intel.com>
	<1448383148-2344-2-git-send-email-juro.bystricky@intel.com>
	<CAMHMu0NkHpxu9i7KaHpnD6BPhrKmtm1Ox9fkR6-F-76+BWknrg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 25 Nov 2015 20:20:20 +0000
Message-ID: <CAJTo0LZ0TkWutRg1=Oe1ajRrhsBa1XKwefE5-iyS+fKFDEQQUA@mail.gmail.com>
To: Aws Ismail <aws.ismail@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Juro Bystricky <jurobystricky@hotmail.com>
Subject: Re: [PSPLASH 1/2] psplash-fb.c: Fix BGR888 detection
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
X-List-Received-Date: Wed, 25 Nov 2015 20:20:43 -0000
Content-Type: multipart/alternative; boundary=047d7bea2f9825bc210525633183

--047d7bea2f9825bc210525633183
Content-Type: text/plain; charset=UTF-8

On 25 November 2015 at 20:12, Aws Ismail <aws.ismail@gmail.com> wrote:

> :) I have sent the same patch three years ago but no one picked it up...
>
> https://lists.yoctoproject.org/pipermail/yocto/2012-October/009846.html
>

I can only apologise.  At least it's merged now!

Ross

--047d7bea2f9825bc210525633183
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 25 November 2015 at 20:12, Aws Ismail <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:aws.ismail@gmail.com" target=3D"_blank">aws.ismail@gmail.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":9lp" class=3D"a=
3s" style=3D"overflow:hidden">:) I have sent the same patch three years ago=
 but no one picked it up...<br>
<br>
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2012-October/0098=
46.html" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.or=
g/pipermail/yocto/2012-October/009846.html</a></div></blockquote></div><br>=
I can only apologise.=C2=A0 At least it&#39;s merged now!</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--047d7bea2f9825bc210525633183--
