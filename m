Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01494E00DC3; Thu, 18 Jan 2018 11:15:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69DCFE00C45
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 11:15:33 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id g1so23996948wmg.2
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 11:15:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vu3klN0Uw9cv6JnUxT24eG+A+nv0qcm0J1Op0Hu4wVg=;
	b=QruXsAiFYaZDPTKBm2QoVfjrc5+m2rRAgy7/jDeR3hZ5z5FoBKs4GQHoVoSxG/qI5a
	j2CwlLvkr2ynoG8YPJ+igBKest5KB5f8OXd2pCTIN9W/O4dS5m54ic4PhDQJbgaGPSK5
	oJ9cw9W737ou39koqrWYT0ayyKDARPc/AxXFohttjE5jglPlzDfrnwuXAge9azJ0lG8t
	qOnYxB++vUJjwDH4nRyvWXQYJg9GdSazDglCa237MgbpUQaCICHoYgUQQS242fxyn416
	ubD30/3pD9vMmgU50kU5zkiA1LcZI+wDqpTT77Zfa7PZjhNH+EKVm3pNfE8JBCR3KGuO
	7yfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vu3klN0Uw9cv6JnUxT24eG+A+nv0qcm0J1Op0Hu4wVg=;
	b=lSdrgf9lQr9JhLgRJFt/FWmgSpx96KZuKoxSdPd8eaAMf9e5ZTCeSNOTLjlYk3qfKM
	UZfMebm1boxCC/u3to7CLbL6ikY86JRK0ftlZPpuDfLCwr6RS6uNt/biyZ/wnmOnvdqf
	sxcjaJDk+zDxOG8nsAb/DhrlEnHlG7tJXj7n/BTR8aeRpNc/ogo5JkROE/Nr7UxCnyGA
	zVkQjEursQ5LsTcwsFdI/ECjLVb2R3d3va/lzBeYZ/Wz4g+1qS+gZajXQqmEj+lCYM7Y
	9rgeBpj0jh5mP2DsYmDQT+cJtaQSCBKrctzHcdGb8nOzu2CaGUUr4tRHFAt6wT6dl09J
	ozMg==
X-Gm-Message-State: AKwxytevlvAVfIPGx0nhyS3fkqACXduwwD6+jSm0WyP3miiP8oTy6ZzT
	PjIU8BmTpB85ft2axxcPxJONWOpZqF3SgO2+5VI=
X-Google-Smtp-Source: ACJfBov+mboVFtlnoJS9xpOUiZitKIuBcEjH5bIXuQqobdL88DsU461pLya3lKHiZbDWfIVN6UYLnZDG3AvkAGp2T0w=
X-Received: by 10.28.174.20 with SMTP id x20mr5515046wme.87.1516302933197;
	Thu, 18 Jan 2018 11:15:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.190.132 with HTTP; Thu, 18 Jan 2018 11:15:32 -0800 (PST)
In-Reply-To: <CAHUNapS5pP1EHg0Qqxwx_J9Z5Ts3u+EvgEN34gGppp0ojLF8Cw@mail.gmail.com>
References: <CACfi_Z1iHtpMLTNnQO=FPpFVu+ZYaXrRLVSk6HkrrsSbt+CBkA@mail.gmail.com>
	<CACfi_Z1-wtH0iVO6Q3vg2Q661tWSHF1ZFQuGU_QVyCtijxW58Q@mail.gmail.com>
	<5e8d8895-3d01-02d9-2481-27f400834670@windriver.com>
	<CAHUNapS5pP1EHg0Qqxwx_J9Z5Ts3u+EvgEN34gGppp0ojLF8Cw@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 18 Jan 2018 11:15:32 -0800
Message-ID: <CAJ86T=VYYFeD4WjEOWOxQfrTf=q74f-rgYQQ_YZn5Miyg8PEqg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [poky] Fwd: How to make the os-release package work with local walltime instead of GMT?
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
X-List-Received-Date: Thu, 18 Jan 2018 19:15:35 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jan 15, 2018 at 9:20 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Thu, Jan 11, 2018 at 12:26 AM, Robert Yang <liezhi.yang@windriver.com>
> wrote:
>>
>> BUILD_ID = "${@time.strftime('%Y-%m-%d %H:%M:%S',time.localtime())}"
>
> Brilliant! Why isn't this the default?

Using localtime could cause confusion for teams which span different time zones.

Even if everyone is in the same time zone, it can also give unexpected
results when entering or leaving daylight savings time.

