Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 301A2E00C56; Wed, 29 Jun 2016 08:09:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB80BE008A4
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 08:09:53 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id t74so48549571ioi.0
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 08:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WX77sQfDxq71Gg0o9dnMTiocMrIQuOHQq9AgWdcxbjI=;
	b=TjWaYPvWfCayETa7+LFjZSG/kbsjKzCQEkJdvBd3YUgMezxo7jpwX6/Z4m55C6iqM0
	28DqfCeQRVSBgh+ItSJHxF+ziCd/XWoD6NvJhAfQP1XMan8WISSr0K6K7BwgZiITEvj6
	RVrmw6lRzspQH9sCiG9FabHW7Zx6hnP+wdyVcGPTUILdHoqj/YeeufwZKLdoLGf3GGtx
	SAGMctQLHG0ebuYXVQ8ogoUuz5XLtpanH0X0LQ4uLcd7FmNKZhmKOJV1Q+kXSM47NYzS
	fmYXE9zAwP8EOOTUB7zx85KsuNSgLQ0igaBJqVhnUQ+5D7ed9uWiailVHXkmTKAeKGs2
	mpfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WX77sQfDxq71Gg0o9dnMTiocMrIQuOHQq9AgWdcxbjI=;
	b=MGioIe+dZMKs3rpeqFPXZXafzZzRgukqWb74U2OhiiXvaiSxGZeGgGvLohM2jUprPZ
	E1NaRRpsz8oAuJspT7JploChATzQAGYe2NiPw5hc5hC66Uxk7dSfO1SuLJxhruBqnhs5
	JyZLmqPL5hEbu9bZOm8KtRKk+VmMCKT7rwmj/5in+yt378xHEt3U+SnL//aw0NqVGnQ9
	YVr8QXpki6rbT8BBJW/AMMAvCvHlpJgH7HBgUiYGpYsZJwLqmCZOjkYEfx2g6zaY+CV6
	T6PlyScn43jdMYtc8y2Q7SPhVo2BVqNI3qbcyPfrBhgg5ODghVwPs6mWRpDh+eEtKj/m
	vAGQ==
X-Gm-Message-State: ALyK8tKohgH1tArLWqnmHVhlCV7mmOp2Oa0KTenqh3zuvLZ6OlqOBBsz3ojBwzhAm2lqkg5mV+w2FCWRLLf7wq6S
X-Received: by 10.107.138.201 with SMTP id c70mr9486799ioj.148.1467212993055; 
	Wed, 29 Jun 2016 08:09:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Wed, 29 Jun 2016 08:09:33 -0700 (PDT)
In-Reply-To: <CAF3SDA4bvG87u7GGfw5A3+xaSZ-OSKX+HZ1+1ckzm536CfdQcA@mail.gmail.com>
References: <CAF3SDA4bvG87u7GGfw5A3+xaSZ-OSKX+HZ1+1ckzm536CfdQcA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 29 Jun 2016 16:09:33 +0100
Message-ID: <CAJTo0LaNmAhf8tRro-QJLd-TqPc4Xb7g++EADeA=qr6k6iccZQ@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installing python scripts at image
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
X-List-Received-Date: Wed, 29 Jun 2016 15:09:55 -0000
Content-Type: multipart/alternative; boundary=001a113e8e6a42e18105366c2548

--001a113e8e6a42e18105366c2548
Content-Type: text/plain; charset=UTF-8

On 29 June 2016 at 15:43, Daniel. <danielhilst@gmail.com> wrote:

> It seems that Yocto inspect the first line of scripts to grab this
> dependency but fails to map /usr/bin/python to python-core (which is
> already installed). How to make this work right?!
>

Add a RDEPENDS_${PN} += "python-core python-modules".

Ross

--001a113e8e6a42e18105366c2548
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 29 June 2016 at 15:43, Daniel. <span dir=3D"ltr">&lt;<a href=3D"mailto:d=
anielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div id=3D":b1e" class=3D"a3s aX=
jCH m1559c9ee048b2bd3">It seems that Yocto inspect the first line of script=
s to grab this<br>
dependency but fails to map /usr/bin/python to python-core (which is<br>
already installed). How to make this work right?!</div></blockquote></div><=
br>Add a RDEPENDS_${PN} +=3D &quot;python-core python-modules&quot;.</div><=
div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></=
div>

--001a113e8e6a42e18105366c2548--
