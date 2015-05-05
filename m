Return-Path: <maxin@maxinbjohn.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEEE5E00997; Tue,  5 May 2015 04:06:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D909E00961
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 04:06:34 -0700 (PDT)
Received: by oiko83 with SMTP id o83so141624719oik.1
	for <yocto@yoctoproject.org>; Tue, 05 May 2015 04:06:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=0qae+yygybvSxe/8pP0f0VWxZ8P749wuQzdHNmrLHqc=;
	b=G8NJQ5LZIM8CnjARFgS84tPoDt2MJl32EQ98fHFaKdbMdWA59Us1BSleTsPwUwjCbY
	WkhZ0gviK3onWb8r1ciJ8ZbjXwpSkMibPjRB8W1+ar++5bVygYtiXeoPTHO0L5XdpoOI
	kcRYcoVc8UgNqqXD5eNcBgM9CnF9/HlgiQT+cjLVazk2VSEkEsG4fQ+FNWex/cObQNmo
	9SwwM6CcWYRwLRjBB2E+CYD3kK3aenmj6WLM1vC+QHSIl5jUK0LW4ol0+/cIYJwYGVEA
	bbNUphk71j1YOGftqNvU0eXh19PEkIZ15ueDxfa+ULbcO+wnkOqrSTQc8VRnHV+S2pMD
	lPog==
X-Gm-Message-State: ALoCoQk1tgSItHUq1aW2srzTZ7FEPcuJV9i+Hdmtw9dmS1Z2qfFqJlPoSgiNMRp5dS/blTCgSkl4
MIME-Version: 1.0
X-Received: by 10.50.176.134 with SMTP id ci6mr1163934igc.27.1430823993369;
	Tue, 05 May 2015 04:06:33 -0700 (PDT)
Received: by 10.36.57.134 with HTTP; Tue, 5 May 2015 04:06:33 -0700 (PDT)
X-Originating-IP: [192.36.1.252]
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A402227F4FAF43@IR-CENTRAL.corp.innerrange.com>
References: <CAF_dkJCc-fXhPLFxtRYSxSC3Q0DnWwX6k8gRUJiC-f-HP9vBmA@mail.gmail.com>
	<CAAPegz0hY842i98AZ-xB7=aEbLZpMA9Wy0ChMHsrS+c6Lb+q9A@mail.gmail.com>
	<5500469A22567C4BAF673A6E86AFA3A402227F4FAF3B@IR-CENTRAL.corp.innerrange.com>
	<5500469A22567C4BAF673A6E86AFA3A402227F4FAF43@IR-CENTRAL.corp.innerrange.com>
Date: Tue, 5 May 2015 13:06:33 +0200
Message-ID: <CAFicg86wNCPnNbe5AvttoEDAY+LZfV+PjHYOHvjj6ggmgEYCsQ@mail.gmail.com>
From: Maxin John <maxin@maxinbjohn.info>
To: Craig McQueen <craig.mcqueen@innerrange.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto-ish upgrade-in-place strategy
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
X-List-Received-Date: Tue, 05 May 2015 11:06:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi

On Tue, May 5, 2015 at 6:55 AM, Craig McQueen
<craig.mcqueen@innerrange.com> wrote:
> I=E2=80=99m working on this for a BeagleBone Black type system, which use=
s eMMC
> (i.e. disk partitions). I=E2=80=99m considering:

<snip>

>
> The BeagleBone Black U-Boot implements an incrementing =E2=80=98bootcount=
=E2=80=99, stored
> in RTC scratch, I believe. A Linux kernel driver could be written which
> allows for this to be reset to 0 by the kernel or userspace app. Then,
> U-Boot could do some alternative action if bootcount gets too big (meanin=
g
> it=E2=80=99s not successfully booting)=E2=80=94such as revert to the othe=
r older image, if
> present.

Here, one probable scenario could be user switching off the device
after firmware upgrade
instead of allowing the device to restart. The "bootcount" value may
not be preserved
in the scratch registers after poweroff. In that case, we can store
the "bootcount" value in the
persistent environment using "BOOTCOUNT_ENV" in u-boot. This could
avoid the trouble
of developing and integrating the kernel driver or userspace app for
resetting bootcount.
Instead, we can rely on the fw_(printenv/setenv) utility already
present in u-boot.

Best Regards,
Maxin

