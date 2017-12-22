Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 641B0E00D9D; Fri, 22 Dec 2017 10:57:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B506E00D1C
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 10:57:46 -0800 (PST)
Received: by mail-wr0-f196.google.com with SMTP id p17so4938960wre.7
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 10:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=f56o7e0k3mSOIwEigHMfeKZdSPYHaF5dx1WTZ9rCd7Q=;
	b=OmSrlgQGkvlFPIkHBx8fRftqLxy8cOYO4xCNycLkalEjP+WJjjkW8fQxO8rwfV4htX
	ChMikhybt3PI6AcuoSB/cvj8G6nM+WBY5cYQpxzxR0DtcQETFsGecMyasOgi2TodM8I5
	uMbZXxLEwMfP+wzyxsTd4kMz7yDt0zvUifgl6jdYc6aRD2og3BHUp5noRS6tUi8dX0P/
	OjWOc1FzXSNtBSpHgcfwCiXUm292qxxoKrLtHPccynIXj1x4U0MYRvLcuXll9QbngB5f
	ULckVwRJx8i3DQZjeBmjY40LGp+Est6PTr9RHY4ZE5OYBF5GfW4w5TzY4uA/Y5GYDfeC
	RtfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=f56o7e0k3mSOIwEigHMfeKZdSPYHaF5dx1WTZ9rCd7Q=;
	b=pojpZFCdFKsG0Pdo2SVcHfa17UG0UzGfVHXI+QjkL8mwbOKQkt5aAtwU501IOFwurK
	eQwX/7oqIUsvQ+u77r+p7f+khbWzDJuvuBkSUJrJYLkeB1IGeYSfpTvn4/kziS5aSMsr
	5cP+omIbWOi81+N+5Pt//JAlu5+ZAQ7tqlXXk5OTPSaNIvaE3m4oCNYb32OAtUSAdNwe
	2+bhuP3P9MBs3GrxjjR7Ouqr9ql7rH1L1tuFp8b0YsKFqMAFplzZd+ESJ89FcwJkcO74
	4L1a0dmlI3MC/xxuaU5IwMZrXe8R4bsccMuGWgI3qbm8gyL/BybQOuF4owTjJr5P4VKO
	DEcA==
X-Gm-Message-State: AKGB3mIqV3rew6XVBB0LzcSiXcWSjdVrlburY9n/f4fEYFDCcuQOr0ep
	kWliRaRAhEGmxrr6PPcRtBhyqzKrqFSDooNR/v94dQ==
X-Google-Smtp-Source: ACJfBou6SruXEoguciJlcn51p8XMJDvWkvPy6W2PXVXLjld/Rk/dGsIf7FRBCdBjdm96WIFCSYRrKA/lDFODitXia6k=
X-Received: by 10.223.141.133 with SMTP id o5mr17081932wrb.35.1513969065274;
	Fri, 22 Dec 2017 10:57:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.199.199 with HTTP; Fri, 22 Dec 2017 10:57:44 -0800 (PST)
In-Reply-To: <CALbNGRRwt8c_QkPnEsTiVFssaqnUUH9inAzjXrK=Pi80t_sGmQ@mail.gmail.com>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
	<CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
	<CALw8SCVP_pE=yyJcO0gULT+1J1T1E_pF0y3nQuShWi3feKBFdQ@mail.gmail.com>
	<CALbNGRTXT084ZC3cD4URao28SWTo0E-Lkr6FLjici5Pb9MppJg@mail.gmail.com>
	<CAK18fxFrW4LDvxneQv1VEcB6anirbtYgfGuWHQSzxQTC4Oo0CQ@mail.gmail.com>
	<CALbNGRR4GVLtkE+AjVwv0BRvPUnXSduibbjB9qkM9awZn+LEJw@mail.gmail.com>
	<CAK18fxF5=v4fJsRG7Kkcmu10UEeDecjJKatVw+Z5kwZ8qdn_Qg@mail.gmail.com>
	<CALbNGRRwt8c_QkPnEsTiVFssaqnUUH9inAzjXrK=Pi80t_sGmQ@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Fri, 22 Dec 2017 18:57:44 +0000
Message-ID: <CAPyrkgyJRsHEe9PrQ8nvE66D7wixfv760QaM0pbVoOreHdfbuw@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] linux kernel rt
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
X-List-Received-Date: Fri, 22 Dec 2017 18:57:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 22, 2017 at 2:17 PM, Andreas M=C3=BCller <schnitzeltony@gmail.c=
om> wrote:
> On Fri, Dec 22, 2017 at 2:25 PM, Andrei Gherzan <andrei@gherzan.ro> wrote=
:
>>
>> Hi Andreas,
>>
>> On Thu, Dec 21, 2017 at 8:59 PM, Andreas M=C3=BCller <schnitzeltony@gmai=
l.com>
>> wrote:
>>>
>>>
>>> Why not simply one stable kernel with RT-patches applied if user decide=
s
>>> by an option? That is what I am doing for >1 year now and meta-raspi-li=
ght
>>> is the one which caused me least efforts/headaches of all. And yes I kn=
ow I
>>> made life easy here by removing userland completely and taking care for
>>> RPi2/3 only.
>>>
>>
>> I will always advocate against forks but definitely that is an option to=
o.
>> What I want to understand is why maintaining it in meta-raspberrypi was
>> painful. Basically, the question is how do you currently maintain, rebas=
e
>> etc the rt patch? I would expect it to happen in a git tree as well. Isn=
't
>> that the case?
>>
> I maintained it this way:
>
> * Set new kernel version
> * Check if there is an update at RT-Kernel. If so update the patch.
> * Rebuild the kernel. In case a patch does not apply cleanly, I use git
> inside of oe work-shared folder, check/align for hunks failing and insert
> them manually into original patch. From my experience there are usually v=
ery
> few hunks to touch so this is no rocket science.
>
> What do you think?
>

So, my thinking was that if you're going through the effort of getting
the -rt patches to apply to the rpi kernel, I'd like to see that
available to non-OpenEmbedded users. I think a linux-raspberrypi-rt
kernel tree would be a useful think to make available as a standalone
project, which we can then pull into meta-raspberrypi as a simple
recipe.

My complaint with having the entire -rt patch in the meta-raspberrypi
repo was that it's a huge, un-reviewable blob. Multi-thousand line
patches are now less painful with review happening on GitHub now
though - they at least don't upset my email workflow anymore :)

Could you try handling this in git by merging the -rt kernel branch
(https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-stable-rt.git/log=
/?h=3Dv4.9-rt)
into the linux-raspberrypi branch regularly instead of by applying the
-rt patch manually? Any merge conflicts could be handled cleanly that
way and it would give us something we could bisect properly in case of
any bugs. The resulting git repository could be published online as
something like 'linux-raspberrypi-rt' if this works.

This is basically my opinion though, there is no one true Right Way
(TM) to do this. If you decide it's still easier for you to handle
this as a patch in the meta-raspberrypi layer then I'm happy to
support that.

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

