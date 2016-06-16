Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ACB1E00D63; Wed, 15 Jun 2016 20:03:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEAC8E00D5B
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 20:03:35 -0700 (PDT)
Received: by mail-qk0-f194.google.com with SMTP id b136so5719711qkg.2
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 20:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BHlcGYeIteKNocFOUkAaqAmoTxuJvaEMqmH3pa9jYoA=;
	b=OtuHOsNl8349qUHF0KkIoL0nSyy0tO+vNFxc5ZYF3QOBmjZvE7ad8U0Tex1Bo4m3lg
	BscLyR5si/8hXRuTJ49SV7SFWaEIKOisXTqeClkQtoE28F5P3tTv0Id2hWqKwyq4EHws
	BlkxcM4Buc6+Le60sBWQ4UcgLjb6zntHvrPX0cPXPfSirX+EXXjuZNcYiEmFuN3i0xkf
	7IWN3+pAoyuYSFUZ73cfaZqoSmIosP8cmZkNXQUUNRBhNVgPfeiPpEchnqQeimuGiJ0O
	CHIs24NPEq/x2OFG/2/FK7Hf1gfHbhQIaAEgFRtcxosVf2By9d2UorR0k73kOAT0pnQt
	QZzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BHlcGYeIteKNocFOUkAaqAmoTxuJvaEMqmH3pa9jYoA=;
	b=VGXgc60EK1ZOFWkjtxRNy8E9GhBhVfd3dHgbJCdFAdhWp0GwT0AloejQV+N+/FV3gx
	Ee9JodvE91dwlNaUtGPV8OVsTFFxYCfTZ+evgfI07+JtvLqxEzTXw05CfKngxMCK7bVr
	s4+XR/KcXB7OlTQ2eKZti43OIDfWwuhxhzyVcLE4yDnVHSlUKz7p3aXIjJ8Dv8EyBxdZ
	l4qq3RnZGkkGJ7c74yyf1V7TOLoqsg/Is/trqWtyk+Z0/UkeNFfCy/i9gcC2wS8dHoCD
	1Z8VjBUwLIe/QmgdJ9uhEfhZhg99plaH0UijA6Ij8/CxhrHOFBN+daTqhUWL3ZuRNEN3
	W0vg==
X-Gm-Message-State: ALyK8tJS7GJuDDJ/uvtFweCpPY9FpPkTQBKWB70kLlWcSWAUG88EmOEbj6jZgjB024W4JnMBX/fOgUewEIK/mg==
X-Received: by 10.55.155.193 with SMTP id d184mr2336057qke.152.1466046214897; 
	Wed, 15 Jun 2016 20:03:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.8.133 with HTTP; Wed, 15 Jun 2016 20:03:05 -0700 (PDT)
In-Reply-To: <5759377E.6090309@easyarm.com>
References: <5759377E.6090309@easyarm.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 15 Jun 2016 20:03:05 -0700
Message-ID: <CAMKF1srNiuaquOyk2KZf5Jav+0=dovHeyW411U1r7G8akbXQSw@mail.gmail.com>
To: Surya <surya.n@easyarm.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: "Systemctl --user" issues
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
X-List-Received-Date: Thu, 16 Jun 2016 03:03:39 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jun 9, 2016 at 2:31 AM, Surya <surya.n@easyarm.com> wrote:
> Hello all,
>
> What could be the reason for "systemctl --user" command error.  I am using
> systemd 219.
>
>  Trying to use command "systemctl --user" but it comes with below error.
>
>
> "Failed to get D-Bus connection: Connection refused"

You need to enable pam support in systemd.

>
>
> Thanks
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

