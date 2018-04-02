Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5C0AE00A1C; Mon,  2 Apr 2018 06:05:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f171.google.com (mail-yw0-f171.google.com
	[209.85.161.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9037EE0084A
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 06:05:40 -0700 (PDT)
Received: by mail-yw0-f171.google.com with SMTP id z82so4943516ywd.9
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 06:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc
	:content-transfer-encoding;
	bh=LemrrNl9aWdhdzPIQG4MfHCEv9tNBL5IDx4FGKAJRsE=;
	b=UUbdzqmfnaieVujCztaNnXVXGhlkNjw8A570eFCiBQRwJC8H+Q0kUduI1ckAbJleH6
	SKyG+ARaht9d5S4vYDodT1v9EW33ANJLZoCZF7CruaYauFSYi9kmfqgGhNsSwYI108Lx
	9lXllPm8+3p4V6N2W37rYduKlEESspW2nd4Uo7imHX35l4nrVeXRXTxMiVhQkCutw3Qu
	MFdIbiRT/s5C2iTnXdTJZpaZWDqs3ASdIYn+7CObrTZ7OhPtiPatXlH52vhwmvlkVRqN
	0ptwjIoILgXSmePIbl76xQleOYlwtgn0Gd9AerL/NaQWQvSjS+9etggBxmyVcPuEl9hC
	vDjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
	:content-transfer-encoding;
	bh=LemrrNl9aWdhdzPIQG4MfHCEv9tNBL5IDx4FGKAJRsE=;
	b=nZyh0Oi613A8snFKtY4ZrV0OSQSA8Ee0Wc0lpZNlOqBqCXO97Idv4ExFTXdsPEDkW/
	ZmLIJ0gl/2Ez/zHqT4E1jul7K9ceK9BQxrn5MY/yWi1puZZrqjbGyOIf+MQPqiK66M2U
	Rg4xoWcHBfBQiRPCBQx3wsUrLVA5cxFJ48lSJPncjBzPIHYbWnSoep62XOmhm2exa26E
	SJcE75fWTmuJ+XN7JKkHWf4G0duKDoI9nqZWl7gzieLIAYgdnQT7MAiR0X4V3fxwdtgd
	poDhUmH86gjgT84TreTuOfXeQsMOxCj46OZIVG9NMSexYNCE31JM0ozFuIQ+WHUa6cOg
	7fWg==
X-Gm-Message-State: AElRT7HzbvnD2/EzqKbxzK8sN3rtJkIrbPHu/5ye8HT70w9bOZC/Kz+C
	AuDQe8ByX77ZoLS0DRLEmT2SynKh/QOGdnua9ic=
X-Google-Smtp-Source: AIpwx498Uhjbe7x2HQVrhNKTEQSCq3vlhMtCByVNm8fz/0gRXrs4xvvVbpDPW2LU7xS6YXvQsbjJOdQi3zKR7mgr7Jg=
X-Received: by 10.129.108.137 with SMTP id h131mr5140021ywc.180.1522674339602; 
	Mon, 02 Apr 2018 06:05:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:d105:0:0:0:0:0 with HTTP;
	Mon, 2 Apr 2018 06:05:39 -0700 (PDT)
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Mon, 2 Apr 2018 15:05:39 +0200
Message-ID: <CALbNGRRaocTSP5c0SsvUgPWxV0uMw2BBHD=fv5W1nCLdDC3FQw@mail.gmail.com>
To: Daniel Stone <daniel@fooishbar.org>, Yocto Project <yocto@yoctoproject.org>
Cc: ML mesa-dev <mesa-dev@lists.freedesktop.org>
Subject: Re: [Mesa-dev] VC4 not working for me with mesa 17.3.7 - was [meta-raspberrypi] VC4 not working for me with mesa 17.3.7
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
X-List-Received-Date: Mon, 02 Apr 2018 13:05:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 2, 2018 at 2:42 PM, Daniel Stone <daniel@fooishbar.org> wrote:
> Hi Andreas,
>
> On 31 March 2018 at 15:18, Andreas M=C3=BCller <schnitzeltony@gmail.com> =
wrote:
>> Thanks for prompt an VERY helpful support. I did:
>>
>> * Check my configure and found: --disable-dri3!
>> * Tested your patch (with --disable-dri3) and as expected it fixes the i=
ssue
>> * Found what causes --disable-dri3 - it came in by the Openembedded
>> update mentioned in first email. FWIW: I use a fork for
>> meta-raspberrypi - the original is not affected so I am the only one
>> with this issue...
>
> Glad to hear it!
>
>> I have two questions related to dri2/your patch (sorry asking for more :=
)
>>
>> 1. Your patch fixes improper initialized variable. Do you think it is
>> worth being applied?
>
> Yes, definitely: I've sent it in now. It's sadly missed 17.3.8
> (scheduled to be released about an hour ago), but hopefully we can get
> it in for a 17.3.9, if we have one. Else it'll be in 18.0.1.
>
>> 2. In the thread I mentioned in my first email Trevor mentioned that
>> he has seen error message 'Modifier 0x0 vs. tiling(0x7000000000000001)
>> mismatch' when trying to get chromium GLES accelerated. Maybe a stupid
>> question but is it possible that applications running at X can ask for
>> dri2 explicitly?
>
> He said that only happened when using the system (rather than bundled)
> libraries, which would presumably be using DRI2 by default. I've
> submitted a bug to OE to ask them to enable DRI3 by default, but in
> the meantime this Mesa fix should hopefully work anyway.
Thanks - I was thinking same. OE-Core enables DRI3 for x11 AND vulcan
only - and vulcan is not in my distro features (and does not make much
sense for VC4)

Added yocto mailing list to merge both threads together and avoid cross-tak=
.

Thanks again for taking care

Andreas

