Return-Path: <twoerner@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D112E0032E
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 07:47:33 -0800 (PST)
Received: by mail-vb0-f48.google.com with SMTP id l22so11192208vbn.35
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 07:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=G7r4WXtKfLMDJjkxVzn3KrKR12jDIJdrVJU+DFxF3W8=;
	b=wVHH8l6IyRHBYxmmeCjVH3aXQTo2elI6SOrUZkCzpDZDfjlCD1UPwABd8olIsbvF2B
	zxCXpL2VnhWt3sRzWRdOSebLtrP3OEQDftu8+4kL6E/zGrUFfotl4E3Wi8b+QGKF4RRS
	8VTRdKsQezWedfp+x0ZfbAB3fVaRDEeHaJdvbRHMxzpq1IbiRQweoOQkn7diWladWsCd
	YPIync27eLF5966r8LvZmVOVy8633Ew3Fjkne2nOKuh0Cgf/6tsVGZsTVE5eC/2ypRy7
	NQJI2q4bsXMxqucmoCh5E5oKD4IOeZojAmpE0vO1FS8Gx2CRR9emzSEtOm9Cr+2eKldH
	jaWA==
MIME-Version: 1.0
Received: by 10.52.70.83 with SMTP id k19mr16947828vdu.89.1353944851648; Mon,
	26 Nov 2012 07:47:31 -0800 (PST)
Received: by 10.220.155.5 with HTTP; Mon, 26 Nov 2012 07:47:31 -0800 (PST)
In-Reply-To: <CAHUNapSSawC9WwpdoNdg4vHBY6Yh3UycqYgOyX_pbTNw3S0Etg@mail.gmail.com>
References: <CAHUNapSSawC9WwpdoNdg4vHBY6Yh3UycqYgOyX_pbTNw3S0Etg@mail.gmail.com>
Date: Mon, 26 Nov 2012 10:47:31 -0500
Message-ID: <CAHUNapSVRuxDxn9L=oHg6aO-RKso2VNF6Mczaf2zwgxHn2zzBw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: IMAGE_INSTALL_append workflow
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Nov 2012 15:47:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm kinda surprised nobody jumped in on this one; either my question
is so silly it isn't worth anyone's time, or I'm the only one who
wants to add packages to an image after a full build. I know my
question has nothing to do with trace-cmd specifically, adding any
package after a full build results in the same problem.

It would certainly seem odd that the yocto workflow assumes you always
know 100% ahead of time which packages you want in your final image. I
know when I was playing around with Hob this wasn't an issue: I would
simply add the new packages and Hob would build them and add them to
the image.

From what I have seen from skimming the documentation, the
documentation talks at length about how to add a new package to the
configuration, but it doesn't say what commands to issue after
modifying the config files. Obviously running "bitbake <image>" alone
doesn't work.



On Fri, Nov 23, 2012 at 1:27 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> There have been many emails and lots of documentation describing how
> to add a package to a build, and that's all great.
>
> Today I was playing around with an image I had already built and
> decided I wanted to add a new package to the mix: trace-cmd. I added "
> trace-cmd" (with the required leading space) to IMAGE_INSTALL_append
> and re-ran my "bitbake <image>" command.
>
> It failed:
>
>     Unable to resolve package trace-cmd
>
> If I perform:
>
>     $ bitbake trace-cmd
>
> and then
>
>     $ bitbake <image>
>
> it works fine. What am I missing?
>
> As it turns out, if I knew before my first build that I wanted
> trace-cmd, I could have just added it as described above and
> everything would have worked as well.
>
> Best regards,
>     Trevor

