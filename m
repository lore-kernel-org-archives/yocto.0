Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD800E00852; Wed, 27 Jan 2016 11:13:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 959AFE0079A
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 11:13:32 -0800 (PST)
Received: by mail-ig0-f177.google.com with SMTP id t15so91108497igr.0
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 11:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=idRutQjyBO9uS1Ul19XV5QFE8KJNlToQ7BExvzK0byE=;
	b=RbQzac1DVRTdIih2YhxVbwzCUdVojLtOL+KgGmFeNLBasdKPFBa699MsIcCJxaB/AE
	WviiTBAQw0XzXPgJRCdAI0opvSytVKZVFSG3fhltWgoNY1mp6REsXnQ1IVJ9jDwWjrvN
	vhqILTy3bdIIvHVJ6bBFKh4NwbGAVS819lgDtyiUTQMZMZooGbS/Y6PGjJ5TXd6t7B9h
	ipltnqOF5QlAit36kluUbhNcKUHldU3Xi1rpay29uGi9eiXurNa5qqConm5O58R/bOSr
	sjc434IXhccuUW8UGzj6xr9hZNYM3BY9wCuJBTtFHDamxy9X+SkLrTbHRXSKZNKB0jhR
	5U0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=idRutQjyBO9uS1Ul19XV5QFE8KJNlToQ7BExvzK0byE=;
	b=bVRSu9g4KBhxNWUEGkNzcnvHjorXEl93DzOw/UTmjVX777qP5UuaF3osyXiVT8seLV
	uJ5WeOIhIrG/8L185dxorLy4pqZaEvX7hqnfE7IRyYv6Yb9OjSfKdtkW4D3ldAcTuqDP
	p9hxJ5vXrPR6xCAcGXwjpZgjcvJ3twbuHR1+J2WtuRt7v0QWwFrl0DmRIdkHrRDoHj4b
	UIbTaJvQsg/LBH30hmrADve8w2fO9M2MDR1V7uMwnQVjH5TJfCx96jpjG3J4bHjJKXH+
	kW+PtC2KDpNYuutSaEwEfQaFBDSpwtAPyJd+l5Kd3Dlxu8yj4BDEeyckHepoCjVYmLAb
	9fqA==
X-Gm-Message-State: AG10YOTKzE9aFZYiSPcZ4+XHvYm58T1HgI9SWLxnfxfMoEUdnG0UEn15S6dYL1VC3JRh09yxkryDNSvRpVAGbQ==
X-Received: by 10.50.79.196 with SMTP id l4mr31881292igx.11.1453922011598;
	Wed, 27 Jan 2016 11:13:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Wed, 27 Jan 2016 11:13:02 -0800 (PST)
In-Reply-To: <CAHpaHKnL3wa6nX+2HdjVNVkSUinQzd2wg0EE+Xk3Y1mCXF9+9w@mail.gmail.com>
References: <CAHpaHKnL3wa6nX+2HdjVNVkSUinQzd2wg0EE+Xk3Y1mCXF9+9w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 27 Jan 2016 14:13:02 -0500
Message-ID: <CAMKF1srY+WT4nCqQaPXWsWUoOhx49XzAg=-VtD9mOENLfb31pw@mail.gmail.com>
To: Max Sht <maxx1109@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Image size
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
X-List-Received-Date: Wed, 27 Jan 2016 19:13:39 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Jan 23, 2016 at 6:12 AM, Max Sht <maxx1109@gmail.com> wrote:
> Hi.
>
> Thank you in advance for your support.
> I'm using Yocto project Linux for the iMX6 CPU and imx6ulevk board.
>
> I think that I have a problem with image size. I've seen the basic image for
> that board and it's size was about 6Mb, but it didn't contain any graphical
> library.
> I need a basic graphical library, so I added FB library. My image size is
> now larger than 350Mb.
> Is it normal? Is there a possibility to make the image much smaller with
> some other graphic library?
>
> I'm very to new to Linux, and hope that you can help me.

you can look into buildhistory to help you find the dependency chain
in local.conf you need to enable buildhistory generation

then do a build before adding FB lib and after adding libs
then go into buildhistory repo and do
git show

it will show you top commit showing all the changes in packages
and image after you added FB lib

>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

