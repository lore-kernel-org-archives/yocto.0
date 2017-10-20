Return-Path: <xavinux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 286EFE00B67; Fri, 20 Oct 2017 16:19:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xavinux[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98411E00A62
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 16:19:29 -0700 (PDT)
Received: by mail-qk0-f173.google.com with SMTP id o187so16186689qke.7
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 16:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JTrinjT4Vjr7qyZNGwRO2PedmWEf+rTpW5gLExBZOvY=;
	b=d8fs1Lwn8oRxEPvn1HIpmWHB4bfIbp7srmBDAhUXmQs4HfBbh/giUQAO7M4IE/Qfiu
	ud/x43ZV/FeRDB+RdHgs8L80lbbyMWXY6dhSvSWJ5gK6U7KBkVDrDWzDd7odJijnv2II
	dHCGj03di95Jxm8hmti7S8DkCdKt808Hp3uNr8hbD33z8tAzMpo84ksqvgQJ8YlfwBhU
	WrsOKqZapJ90R05yK/qrCkXWDQUeQX1MOh4l1hZbPKaI9ZSn+eGA9peBGJZeQmaw32IH
	WbG4nYrFF5OvJkJfDALEyAPvbT6vAr12Iu2D+Ewh5SWOEiQ3/Z8T6j22Pl0tETUez+gy
	A6ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JTrinjT4Vjr7qyZNGwRO2PedmWEf+rTpW5gLExBZOvY=;
	b=nzDCrcTWpHMpOV15nWdZ9613L0bZfolH3Uv6JEBUnd+I/CEwION3GFAwR7X+2KJ86i
	CamSgZNInPWNJScg2vUCAKriOC4Ffi1bnIK1KiejUkRFCwddUV9+1yeQIiK9LiS3HYO0
	NhIaeuEFGrJbnRUjzaNU/1sCa5bu9G2ULR/+Qok1pVJWn0ucPRo7OkzkB6m9P/Rs80M0
	Le/dfuawzePn0lIDW6dZtQfwvdcuao0LZBSFuhw8V9imHMyrpahQNLM0lEJW2tyS1hzv
	OSH6ggL8t9CR6E9NjqT2MyVictC7XWFWn0EUL7VgD2ECba/AoHoODnlAP4TtaPmYsOzB
	wrFw==
X-Gm-Message-State: AMCzsaUCHIkha6hhgJwM8Upd+SKnChPh5EeRtVU8Gubh+25AbxxdBJtB
	yfsoPVqKy2JP3uMOQZPVRmIyAhvU2xEItFWhTms=
X-Google-Smtp-Source: ABhQp+QWfI2g4MzkThMAfr9dVUCxBkB6azuuo7pcCxrZoluRfenkeDq5iQ0Zgn5QHQaDTAY/V4FSgL+3rub4ocAmvtQ=
X-Received: by 10.55.43.75 with SMTP id r72mr8778338qkh.307.1508541568529;
	Fri, 20 Oct 2017 16:19:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.153.200 with HTTP; Fri, 20 Oct 2017 16:19:28 -0700 (PDT)
In-Reply-To: <CAEsOVNc-jTQcx78b3JRwMGHpi07SzJibgaMdcKwxfO51fLb95A@mail.gmail.com>
References: <CAEX+82LrShupg3kUd+nE3yW0OYcE13HAYA0fSc+iHu-SgQ-gTA@mail.gmail.com>
	<CAEsOVNc-jTQcx78b3JRwMGHpi07SzJibgaMdcKwxfO51fLb95A@mail.gmail.com>
From: Javier Romero <xavinux@gmail.com>
Date: Fri, 20 Oct 2017 20:19:28 -0300
Message-ID: <CAEX+82JjstJ-jjZUdkjDvhpuznAThZFyh3LBPSU+bV83qiyb4Q@mail.gmail.com>
To: Matthew McClintock <msm-oss@mcclintock.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Contribution to Yocto Linux.
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
X-List-Received-Date: Fri, 20 Oct 2017 23:19:30 -0000
Content-Type: text/plain; charset="UTF-8"

No, I`m not a programmer, but if I can help on something let it me know.

Regards,


Javier Romero
E-mail: xavinux@gmail.com
Skype: xavinux



2017-10-20 17:15 GMT-03:00 Matthew McClintock <msm-oss@mcclintock.net>:
> It might be quite a bit of work to get linux-yocto working on the
> rpi's since they are using their own kernel forks. Are you prepared to
> reconcile the additional patches the rpi kernel's are carrying?
>
> -M
>
> On Fri, Oct 20, 2017 at 12:22 PM, Javier Romero <xavinux@gmail.com> wrote:
>> Hi,
>>
>> My name is Javier and live in Argentina.
>>
>> Would like to know if it can be useful to test Yocto Linux's Kernel on
>> my Raspberry PI 3, and report bugs that maybe found.
>>
>> Thanks for your attention.
>>
>> Regards,
>>
>>
>> Javier Romero
>> E-mail: xavinux@gmail.com
>> Skype: xavinux
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

