Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39DD1E008E1; Sat, 15 Apr 2017 11:09:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D2E2E00777
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 11:09:04 -0700 (PDT)
Received: by mail-vk0-f65.google.com with SMTP id w6so6780327vkd.1
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 11:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=P2JIOuj4qvZxkShKm3rfiQcB/P8ppbprB9lzFAE5QwI=;
	b=ayIkRGbJtziRP9MR9nzDefJ2FE8vtf5nl0RqzmAbY6inVp5cOM1rJc7fqwdNXrlObH
	e/drsnKNV7ZIQ8ZMk+tmCnnRrPZWikW/Ncp1+sweDKfalATFhQIKe/lGnvYF9ANNwZK7
	I/PjVbekf3NjrllNhpmxpZt8+KRFGZ/eIqCnEcA0h6D5sgzeJ5nEo+MF7TOZzajRkjWV
	2mlrHhxicf18vGI2+0z/sW4VPHqagzbQ2xu4PeIJy60GYDLVbQWCFmnxVBLHz8Gy7LPl
	goDC+vMMISAuBLuu97gUA+onGyDELqi2rRz0V7X7L9prCyqgCsCWEvqNouScKX93pXlM
	y2vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=P2JIOuj4qvZxkShKm3rfiQcB/P8ppbprB9lzFAE5QwI=;
	b=E/pZ6DiaK2xXcRwDfHe3vD/jpYCFZFyc7mW4BIoaO5tVx6z8aHhDJMX97l33jOQdcG
	7z4RV7vutUkFnzVJBSRUO6/1i8wuREZDQ7u0RmqGTVk8W3YqL6C4rXKABN3gMWs2aitC
	6U62QZlj29KFUNecuM1XLyivN7mvallM7ZJr44SlHZ4jhxXhdVAyrfgUBJxm9CHsNwWo
	trKqQJ4gxiPqT71gzWSJ9tSPjnAZWzov7nU0wNZI7nC1oB/WBlXMjYlUnC5H3AtoudX9
	rnfJTUI/Tj8+Sj+mmyZ6BT4DNa4E1dkN1k12RxVeyu6z1TNWAzwR3CHs9Ld+A1xNyAdx
	zdqg==
X-Gm-Message-State: AN3rC/5Dutcdn1dFmg2aImywCVJmPEEyxaUPF7pFvyvNw0u1l5668EYi
	q36IfNBNJvPtzs1RVYbwOoihSO7YXc1L
X-Received: by 10.31.67.204 with SMTP id q195mr5528923vka.135.1492279743359;
	Sat, 15 Apr 2017 11:09:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.5 with HTTP; Sat, 15 Apr 2017 11:09:02 -0700 (PDT)
In-Reply-To: <20170415163537.GA23175@linux-uys3>
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
	<20170415163537.GA23175@linux-uys3>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Sat, 15 Apr 2017 20:09:02 +0200
Message-ID: <CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] gles2 on raspi3
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
X-List-Received-Date: Sat, 15 Apr 2017 18:09:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 15, 2017 at 6:35 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Sat 2017-04-15 @ 04:46:14 PM, Andreas M=C3=BCller wrote:
>> > Does anyone have any of these (or something else?) working?
>> >
>> Ehm userland gles2 on X11? I would not expect that to work. Experts
>> correct me but userland acceleration works for fullscreen apps only.
>
> I have made this work before (which, as you'll see later in this email,
> doesn't imply that's how it's supposed to work!):
> https://twoerner.blogspot.ca/2015/09/oe-build-of-glmark2-running-on.html
>
> Oh, and I did try both with and without "--fullscreen".
>
>> Why not using FOSS VC4+mesa?
>
> Now's probably a good time to point out I only have a vague idea of what =
I'm
> doing ;-)
>
> I didn't try vc4 because the raspi recipes implied (to me) it was for aar=
ch64
> only. The "vc4graphics" MACHINE_FEATURES is only added for raspberrypi3-6=
4.
> I'll give this a try though.
Oh yes you are right - it is long time ago - maybe this was one of the
reasons for my vc4-only fork. I thought it is an option set in
local.conf.
>
> Here's another question that only shows my inexperience in this area... d=
oes
> using mesa always imply software-only rendering? mali (for example) would=
 be
> hardware rendering (though through a binary blob) and mesa is the softwar=
e
> fallback?
I am also no expert here but Mesa is the open source userspace part
for accelerated graphics. Mesa-SW rendering driver is a fallback in
case no driver is supported/implemented. This is what you have seen
for glmark2. Since the VC4-Mesa was implemented, for me RaspberryPi
turned into the reference hardware regarding graphics. You can have
accelerated X11 + wayland in one image without any trouble with proper
working modesetting (and HDMI sound is on it's way). I've never had
this before on other machines where closed source blobs do graphics
acceleration. Either you have fb only (no X11/wayland) or you have to
decide either X11 or wayland - and worst: With every new version of
xserver you have to expect trouble.
>
> By the way, with my current setup I have been able to run openGL apps (e.=
g.
> glmark2 by itself) albeit most definitely non-accelerated!
mesa-gl builds swrast - mentioned above
>
> A lot of google searches talk about setting environment variables. Are th=
ere
> any that might apply?
>
For the first shot I would add vc4graphics to MACHINE_FEATURES in
raspberrypi3.conf. The required settings should happen (see recipe
rpi-config).

In the long run I would start a discussion:

* Mesa/VC4 is not a machine feature only available on 64Bit Pi3 only:
It is common to all version of RaspberryPi. Using mesa should be a
decision easily selected by a setting somewhere. The only reason 64Bit
Pi3 gets VC4 by default is that userland is not working for 64Bit -
see commit 9d418db5ed2962821987ac90c07c3a61e40c0814)
* Why still use userland? Dropping it would make things MUCH easier:
All the decisions based vc4graphics in MACHINE_FEATURES could be
removed (that's what my fork does)

Andreas

