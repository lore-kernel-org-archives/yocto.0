Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91D81E00C4B; Tue, 29 May 2018 09:07:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f178.google.com (mail-wr0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1C72E009D4
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 09:07:24 -0700 (PDT)
Received: by mail-wr0-f178.google.com with SMTP id w7-v6so14526220wrn.6
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 09:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8Wy7Jwj1+5YaahQkbEZvfhZrZ/SeHfxuM0lq8sv+0lE=;
	b=ayH/O2ma+zsiwVMOYciaobitACoCrOOqSCm3tQaMvynJwl2WQ04DW+Y2F27svJDV+U
	JcwlsTGQ6WWAEYgY3vqDLTBiTPg8zfqNsrFluWLD+CNNpqOFoiJCjbMotjpAtRIXrtaB
	IWep6RDo1PaNbX87Reb8ENs9LMMT4Mon/4ocY3tJTHd30J1ws1vDL1+ANera4cu7L6f+
	6UFjOdUWWElPHM1l/ePSxaICh+4DxaVGvd4ivP68yF4nwqZ+oL+umQhNdMqSGLH84yJj
	BkXiMluhasjfDGtEMe+Ez0TLvpU5HtbqP2yYGhVgpuQP/ImcwoDJl1urSgpHGu8ecZJX
	KsCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8Wy7Jwj1+5YaahQkbEZvfhZrZ/SeHfxuM0lq8sv+0lE=;
	b=ZUazWTwuqAn9NvNQvFU00TSFsW9zjRiJZH1cx4xlLHE7+9HIsJDwejogKo//MJTnQN
	edABVSQpdkgDNFzLZQ2F0xZA1qWsSfMF3vWIyIFnFk+7TruqrJ+NMKZMHAa7ylnJXVIk
	mpsBvJZrQQa2ZbJCCL9H1izAnOujM0zTbtcDrNgw8J/s5W6pHhYfLiv5dc/5qjNjLVL4
	LufVBPegBBZUV4XQ+x6xKUOiJKxp4EHEL/sbZC5dEPZUlctOgZILSYtJ63kd/0I9DxyN
	fqQgVvA9QZXDPgxi2Ym0enji2KJtMrIgB8IBc+eyhXAZI23BFPeELX4gzZRrrLHyHlCz
	DGgQ==
X-Gm-Message-State: ALKqPwfxKj8TOKZPktf3Kznon/ZmWLhgiIWn6YKsiruz3mHEBwW0WXbd
	xpFPceqZcTzhmWTsfotvYYJuN9SYcqDyYX9MMgg=
X-Google-Smtp-Source: ADUXVKIwBdDHSwOSEEAtzwmNq+ownEZR5SqX2m4hutKbbjArZpR99ZgqjoQqdZTOuef5TRCxkxKZUfiR06M/pgcH91Q=
X-Received: by 2002:a19:7316:: with SMTP id o22-v6mr9445603lfc.6.1527610044013;
	Tue, 29 May 2018 09:07:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:cb07:0:0:0:0:0 with HTTP; Tue, 29 May 2018 09:07:23
	-0700 (PDT)
In-Reply-To: <CADfgfoYPVVazGs+V4DPy_xHuDzQ65R=+3-HT_U1EpVH9s3Y0mg@mail.gmail.com>
References: <2c9b354f-cb29-d8ae-875f-123a45b045e6@linux.intel.com>
	<CAHUNapSC1zBx8vq1Z2p8pU-TV_r_-uXLHv_P+C4MuSti5Yz3_Q@mail.gmail.com>
	<064fd4f8-7cac-e354-a710-c61085e7fe84@linux.intel.com>
	<3ffb78f7-8115-6040-988a-6fe2a1f79a46@linuxfoundation.org>
	<800E589716441541A37F6120DCDD24557A2CC6B1@IRSMSX101.ger.corp.intel.com>
	<CADfgfoYPVVazGs+V4DPy_xHuDzQ65R=+3-HT_U1EpVH9s3Y0mg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 29 May 2018 12:07:23 -0400
Message-ID: <CAHUNapR3pph31UUeOFXXhXbrjTfguMtWAH+U5ZJBmNNJ7zwj8g@mail.gmail.com>
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Osier-mixon,
	Jeffrey" <jeffrey.osier-mixon@intel.com>
Subject: Re: [Call to Action] Yocto Project Bug Triage
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
X-List-Received-Date: Tue, 29 May 2018 16:07:25 -0000
Content-Type: multipart/alternative; boundary="00000000000007631d056d5a6e9a"

--00000000000007631d056d5a6e9a
Content-Type: text/plain; charset="UTF-8"

On Tue, May 29, 2018 at 11:52 AM, Michael Halstead <
mhalstead@linuxfoundation.org> wrote:

> The meeting page is https://www.yoctoproject.org/public-virtual-meetings/
> for anyone interested.
>

Would it be possible to get event planners interested in
https://www.timeanddate.com/worldclock/fixedform.html ?

It makes is so easy for participants to determine when the event will occur
in their own timezone.

--00000000000007631d056d5a6e9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
ue, May 29, 2018 at 11:52 AM, Michael Halstead <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:mhalstead@linuxfoundation.org" target=3D"_blank">mhalstead@linu=
xfoundation.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr">The meeting page is <a href=3D"https://www=
.yoctoproject.org/public-virtual-meetings/" target=3D"_blank">https://www.y=
octoproject.org/<wbr>public-virtual-meetings/</a> for anyone interested.</d=
iv></blockquote><div><br></div><div>Would it be possible to get event plann=
ers interested in <a href=3D"https://www.timeanddate.com/worldclock/fixedfo=
rm.html">https://www.timeanddate.com/worldclock/fixedform.html</a> ?</div><=
div><br></div><div>It makes is so easy for participants to determine when t=
he event will occur in their own timezone.<br></div></div></div></div>

--00000000000007631d056d5a6e9a--
