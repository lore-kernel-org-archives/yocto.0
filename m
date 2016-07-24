Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1F37E01081; Sun, 24 Jul 2016 00:04:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7DF7E0107A
	for <yocto@yoctoproject.org>; Sun, 24 Jul 2016 00:04:31 -0700 (PDT)
Received: by mail-qk0-f172.google.com with SMTP id s63so133464337qkb.2
	for <yocto@yoctoproject.org>; Sun, 24 Jul 2016 00:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8mYj0SeMu94GtfBLj7+Tl2cMQof3kj2IdYECEu8ivRY=;
	b=QKN7VYRmzhmlsNwZG5EEcgxJopukCeAu7zNe7ZbNLpyZXJw2Ps/bDLdW9Oy9NZXJTM
	aBIEKz3+TQJL+CB05FRYXvrLYFjtKmWQyX6zsYDHPheesSLqVTO61pJdNzt2veOiNcQX
	4MXJbMZX2CXOXmZjSqEkwbUPh1jG8aFw7Q0pKOmT4CiYI6Y3VbVcPmeuHvhJ8PhZ17xJ
	aYBW2KxjZlGv+hzg97rgvRkfd+fG2yZaZ3rPPW3h26p6KO8LV4zhnnMUwkPUw9Nm2Dll
	3ORDAzzZUn7DAUbv6pHiTzA3l+ZBEHXuEcdY6Qnz72EkzsD5KGr/iI5EiDiTSDZgiAye
	vv1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8mYj0SeMu94GtfBLj7+Tl2cMQof3kj2IdYECEu8ivRY=;
	b=HceUT3wlRNIMkwZM+FYuhuFvLE9c7a7rQAivfjVbWYxwdMB2e8MKV5mRznlCkzYIeU
	dtFy2xjJthnYCmBZJp/0wSCVSIznaHGPpfOPGTkwgJKID1s+Ip+FHSQZ0laSL6jgRlKE
	WummuL/VhivqkuvxQGdPRPfVz19I8kkRiGIcsfM5SG0CPXjDne9FHKByBm3Jvxvcfktq
	Z+/Ab+CeP3IKTGtzB+qPhKw/zfQk2hjWripnYkxONxWHV0DFlVkJwzSoOk2TxVcC6Kg3
	0pVNfFC9IX92WcngH9yUM6LBbmuCZhFW/16Sc488qP1HP9kxXXPhZFrXdbjE4FwREloa
	dSlg==
X-Gm-Message-State: AEkoous/DwkTsu8heAb8GRZLtt+vsNWR8v5AZWhgLKEW+fg9wyrG5xNE82Yx4aHWHugyB0SxVHbf4M1mnRdTkg==
X-Received: by 10.55.144.6 with SMTP id s6mr14576106qkd.6.1469343870626; Sun,
	24 Jul 2016 00:04:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.99 with HTTP; Sun, 24 Jul 2016 00:04:30 -0700 (PDT)
In-Reply-To: <CAMKF1sqUWtfx46-sYuGo+s8ynR24JdA_EH92BZVH+3Gh_WM=NA@mail.gmail.com>
References: <CAGMdoFkMe=gbzKMsS-WPF5ORJ8uV8S+XCuR+bHNT-reC63Er7w@mail.gmail.com>
	<CAMKF1sqUWtfx46-sYuGo+s8ynR24JdA_EH92BZVH+3Gh_WM=NA@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
Date: Sun, 24 Jul 2016 00:04:30 -0700
Message-ID: <CAGMdoF=Jhd=42QcmvLgtsMt+G5kkTg8urQhG-8TryOdG-5Kw3A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help with DISTRO settings
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
X-List-Received-Date: Sun, 24 Jul 2016 07:04:34 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Jul 23, 2016 at 11:05 PM, Khem Raj <raj.khem@gmail.com> wrote:
> Move these DISTRO settings above require conf/distro/poky.conf

That didn't change anything.  And it had been working like that for a
long time now.  Just a few days ago, it stopped taking effect and
reverting back to poky.  I have not been able to figure out what
caused it to stop working.

Thanks for your reply nonetheless.

