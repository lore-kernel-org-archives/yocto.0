Return-Path: <ryan.harkin@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44FC2E00DFE; Thu, 10 May 2018 00:18:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.65 listed in list.dnswl.org]
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60A93E00D1C
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 00:18:57 -0700 (PDT)
Received: by mail-lf0-f65.google.com with SMTP id h9-v6so514907lfi.0
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 00:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/VKy55qaHvtZ9h+Zzar82WMGAMPij7rgiIt9FfVG6qw=;
	b=hJkIMGg2iHO4XM6/CRXpGJ+gTm8Bz83HVd0argLWlPW/rtKEUtIequr+17t5uayV7K
	Fu+wTpaQQcGMakAVv0aVEEX6TEcDK8Cib9AEY8OmR/n8o6u5UVRaalVagSVpviAQ8tAp
	iiIuX0yrLz7/I7KBOG6V7e/5/K0yHSvItCAtM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/VKy55qaHvtZ9h+Zzar82WMGAMPij7rgiIt9FfVG6qw=;
	b=okbDxbH/BVlVVbbYOy3dbQr59Z9opwaSdRph7lrZSeT41wHSoSHJtDkr37X1pzrTH3
	xZy3zAZOCkot+AYDWbir39w78OHhmfC1UI/FKiDMWTVa2ezDEP2uuBI1j3zig4KMI1iZ
	ITFJrgDfp68LnTqyrbBxWzHTTlJcr7rmAlAi3cEZhHm1HGIb50n0Bp5jrVFUTjbPr72q
	jIr2f1o2MgAKJv5o0aWzm1ml9w2J8LetQvjuyeiwaQPHacy+L6yUZkk+gD7EDw8NHLK3
	vQNA4v72gwrwCA053FE7oLIgrNlGydU/Icaw1zbhNyc47knNtD0zerTNvBjBm1HAi5xX
	wJqw==
X-Gm-Message-State: ALKqPwdP3xw/fR3KDtykjGodFE15ifGGBytM/xNMdb7pIpxQmRj/zM70
	GICE5YlA/1Bauu/FOa1A9KfVBOP5Jtx4W5GUfnZO0Q==
X-Google-Smtp-Source: AB8JxZqvi40OOwNRO+fUzRIMvePD7iaNnR3ldA5OoC7n7t9wXcocWk51SZku31/jlTTw50HnFm2FstuslkrbyyZHaLI=
X-Received: by 2002:a2e:320b:: with SMTP id
	y11-v6mr252244ljy.119.1525936736505; 
	Thu, 10 May 2018 00:18:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:e80b:0:0:0:0:0 with HTTP; Thu, 10 May 2018 00:18:55
	-0700 (PDT)
In-Reply-To: <CAK18fxHUgY_GH-T9MSiu3jDRs0WHLuzFx-5DN=4FedAo_FnoHw@mail.gmail.com>
References: <1525889262-14990-1-git-send-email-ryan.harkin@linaro.org>
	<CAD0U-hJ12QE=yN8Tt8FdfB-M475OZpazyOmRm9b+OG9kE5L2jA@mail.gmail.com>
	<CAK18fxHUgY_GH-T9MSiu3jDRs0WHLuzFx-5DN=4FedAo_FnoHw@mail.gmail.com>
From: Ryan Harkin <ryan.harkin@linaro.org>
Date: Thu, 10 May 2018 08:18:55 +0100
Message-ID: <CAD0U-hLgEOe77mnvGO2hohv1_K+UE=3EYw8nJMgaDMpiRbwQBg@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org, drew.moseley@northern.tech, mirza.krak@endian.se
Subject: Re: [PATCH] Revert "u-boot: Update RPi Zero W defconfig to support DTB."
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
X-List-Received-Date: Thu, 10 May 2018 07:18:59 -0000
Content-Type: multipart/alternative; boundary="000000000000212600056bd4d5e6"

--000000000000212600056bd4d5e6
Content-Type: text/plain; charset="UTF-8"

On 9 May 2018 at 19:12, Andrei Gherzan <andrei@gherzan.ro> wrote:

> On Wed, May 9, 2018 at 7:10 PM, Ryan Harkin <ryan.harkin@linaro.org>
> wrote:
>
>> Apologies all,
>>
>> I forgot to add [meta-raspberrypi] to the subject line.
>>
>> Andrei,
>>
>> Please let me know if you'd like me to resend. Assuming you don't have a
>> fix for this in flight already.
>>
>> Regards,
>> Ryan.
>>
>>
> I was just going to point that out. Anyway, the patch/fix is already in
> master.
>

Great, thanks, I see it now.


>
> --
> Andrei Gherzan
>

--000000000000212600056bd4d5e6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On 9 May 2018 at 19:12, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=3D=
"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"=
gmail_extra"><div class=3D"gmail_quote"><span class=3D"">On Wed, May 9, 201=
8 at 7:10 PM, Ryan Harkin <span dir=3D"ltr">&lt;<a href=3D"mailto:ryan.hark=
in@linaro.org" target=3D"_blank">ryan.harkin@linaro.org</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Apologies all,<div><b=
r></div><div>I forgot to add [meta-raspberrypi] to the subject line.<div><b=
r></div><div>Andrei,</div><div><br></div><div>Please let me know if you&#39=
;d like me to resend. Assuming you don&#39;t have a fix for this in flight =
already.</div><div><br></div><div>Regards,</div><div>Ryan.</div><div><br></=
div></div></div></blockquote><div><br></div></span><div>I was just going to=
 point that out. Anyway, the patch/fix is already in master.=C2=A0</div></d=
iv></div></div></blockquote><div><br></div><div>Great, thanks, I see it now=
.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><di=
v class=3D"gmail_extra"><div class=3D"gmail_quote"><div><br></div><div><div=
 style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fo=
nt-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,=
255,255);text-decoration-style:initial;text-decoration-color:initial">--</d=
iv><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-siz=
e:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;background-color:=
rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l;float:none;display:inline">Andrei Gherzan</span>=C2=A0</div></div></div><=
/div>
</blockquote></div><br></div></div>

--000000000000212600056bd4d5e6--
