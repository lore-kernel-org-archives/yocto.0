Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABDBEE00ED4; Thu,  1 Mar 2018 05:59:35 -0800 (PST)
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
	*      [209.85.213.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f194.google.com (mail-yb0-f194.google.com
	[209.85.213.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55934E00DF0
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 05:59:32 -0800 (PST)
Received: by mail-yb0-f194.google.com with SMTP id 7-v6so418244ybc.5
	for <yocto@yoctoproject.org>; Thu, 01 Mar 2018 05:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=J1iRfFrOuuDMQ6G3XcMcUzXRWRXp6G7KdADWGuicVvo=;
	b=JFfae41CoW9JqTlqT/co3CgQgrxXeamlHTLjZZLIcX7bI+u0N+Vwof5gNIreU4lnRj
	+iw+9nj2hiySI7J26VHeMrz9qPMhJIEzBd35DvC5WDwKvYujcHY+apqzdaXSb2OCk4N4
	suD/vKIQ/2hHUcOBXlzTsll+JCJIT4p+6XXk+Ww9DZm2kN0n9u1lF/OloqLS1FYjdfwm
	Jxe/BOlf1FZmSuc685gxM7bNKbYQth9n5Rh0RvK6dC90IwZj+bOPbY4lC0mcFwVGtSJS
	r+DXsSaj8wh8gfSsve30jEismSqRO15ty6KDFAd8pX6CnH1plTYA12dcbbIifVfrkw7l
	NNhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=J1iRfFrOuuDMQ6G3XcMcUzXRWRXp6G7KdADWGuicVvo=;
	b=hbhQB65R2zUNHb01R0v/1+O7gv5HfFwA8KPrkV+z2y3ziSkVxhIlA53hOUJJf6aax/
	ifqr2Fi3VgfeISusxoWvEBMh2n1TOV6aFeZdfjS9kX7tMvFJOQMDS88mZZJM9kI52nIj
	n43A0DZf3LxFMXle17cjhl1EwNuQC1JZdk3NTTRiB3SYEYWqn9vCyhwcn7SVuuKAJAxA
	Vg6NMUOxeEOP953P1uQLBBk3mw8pQNVxs1Bp3guMdZCPzLTJHG0QLDRRti+08+/wy6j1
	3zUHjs71IN0CPdAzuEmUS4L4cF75mxS0QnLenDYeoU9/YAa5aOsuPf8ljx8GfZ0Uan6Z
	rg0g==
X-Gm-Message-State: APf1xPDJvfarFvb+MF88yQeV/5/6MNukZP4PpIIyIvUlh8B59v7dy9do
	zpOWO2aiDL05KNQwt0nDP7j6i4I7E/9xCXpgJLY=
X-Google-Smtp-Source: AG47ELtwFHwCuz7QYKKP0qnHqIWOCu0I7tM8PqvleAVLl+HXaBFjCFG0fIyH7vE7zmHn6G/rLkzoiebwOw3yvcg63vc=
X-Received: by 2002:a25:be8c:: with SMTP id
	i12-v6mr1139648ybk.185.1519912772298; 
	Thu, 01 Mar 2018 05:59:32 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a25:c787:0:0:0:0:0 with HTTP;
	Thu, 1 Mar 2018 05:59:31 -0800 (PST)
In-Reply-To: <CAHUNapRYzSZpzzJghmWDG5o2MDJVC=dDO8Gf=M1U52EX0DU4Xw@mail.gmail.com>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
	<CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
	<CALw8SCVP_pE=yyJcO0gULT+1J1T1E_pF0y3nQuShWi3feKBFdQ@mail.gmail.com>
	<CALbNGRTXT084ZC3cD4URao28SWTo0E-Lkr6FLjici5Pb9MppJg@mail.gmail.com>
	<CAK18fxFrW4LDvxneQv1VEcB6anirbtYgfGuWHQSzxQTC4Oo0CQ@mail.gmail.com>
	<CALbNGRR4GVLtkE+AjVwv0BRvPUnXSduibbjB9qkM9awZn+LEJw@mail.gmail.com>
	<CAK18fxF5=v4fJsRG7Kkcmu10UEeDecjJKatVw+Z5kwZ8qdn_Qg@mail.gmail.com>
	<CALbNGRRwt8c_QkPnEsTiVFssaqnUUH9inAzjXrK=Pi80t_sGmQ@mail.gmail.com>
	<CAPyrkgyJRsHEe9PrQ8nvE66D7wixfv760QaM0pbVoOreHdfbuw@mail.gmail.com>
	<CALbNGRSckHk37r9QqKXuQ3TGqA_oBPoEu4eFxDoM-5ZG9N2XWQ@mail.gmail.com>
	<e6dcc7ba-cc7e-2e98-7bcb-0fc21dc06415@gmail.com>
	<b4c91bca-5d86-7a02-c1b0-e53a41ff3d45@prevas.dk>
	<CAHUNapRYzSZpzzJghmWDG5o2MDJVC=dDO8Gf=M1U52EX0DU4Xw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Thu, 1 Mar 2018 14:59:31 +0100
Message-ID: <CALbNGRS9Ve6VYycqWscWxi+aOD_4Ucm5LbZ=4e7V8f_jP-LczQ@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: =?UTF-8?Q?Martin_Hundeb=C3=B8ll?= <martin.hundeboll@prevas.dk>,
	Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 01 Mar 2018 13:59:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 26, 2018 at 3:09 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Fri, Jan 26, 2018 at 3:43 AM, Martin Hundeb=C3=B8ll
> <martin.hundeboll@prevas.dk> wrote:
>>
>>
>>
>> On 2018-01-26 04:51, Khem Raj wrote:
>>>
>>>
>>> Secondly, I wonder how good is upstream mainline kernel for rpi now a
>>> days, we could always have a mainline recipe as an option and use it as=
 base
>>> for things like rt.
>>
>>
>> Apart from runtime device tree overlay support for RPi hats/extension
>> boards, mainline linux fully supports each RPi revision.
>>
>> I guess linux-yocto-rt would be just fine...
>>
>
> Does anyone know if the FIQ bug has been fixed upstream? The last time I
> looked into PREEMPT_RT on the RPi, the only way to make it work/stable wa=
s
> to patch the FIQ issue, or disable FIQ altogether (not ideal). This patch
> was outside both the kernel and the PREEMPT_RT patch.
>
> --
Seems RPi.org made some progress on this[1].

If I only had some time left to give this a try...

[1] https://github.com/raspberrypi/linux/issues/2244#issuecomment-369597357

Andreas

