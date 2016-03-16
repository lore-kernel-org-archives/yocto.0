Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C50C7E00B37; Wed, 16 Mar 2016 08:13:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A245EE00872
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 08:13:04 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id m184so62935219iof.1
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 08:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=simNehj2J0SToGRAhQhon4WJCOV8AIdtlax/NDRzRVM=;
	b=gve7nI4dwOv3nPrHvIRKo7gmTX/jB7vafOXG0cvv9QpTFIEASR7KiIbIsNtJPMBgw3
	LaMkqEqB/eHEuiGTJBFoXpqio5YMIPs0su4qaNkzhXuV+4pAD1dlpn/8Wt5xZ5KFSkaa
	VkfVf8T9W2jW3bEqbGK6VjhJWEDgkJhSPGA2Szkzi45mWEGgiJabte2xQUVMXxfnTCQl
	yP4c12mRqJaEySWy0iO6USZ1l3nkzgZGWPakb7+oBO2RVaZiqo3U4dGgHyw6k0ksONOy
	gOBAVwOyaMEWJoY58mdVqHwWAVpErY6ku/vAmJpJ3do1mnwYGW3QFg7NWsDgm7KbTi7F
	0xGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=simNehj2J0SToGRAhQhon4WJCOV8AIdtlax/NDRzRVM=;
	b=X8Rt77rM34BfzxcZMxXTLQEh5r5lLqKhOMXmbzNz+RX3+DHEiXfVU3BTcy5HdHITWm
	thdoxv/UeQsxt8VvCuLy79Fzo5KObCuHK9WeAaayyvIotAT4PTx+qZ3EctY2Gk9lVaG9
	ggwY7j4ZUvyVViE7CFMQ9X3Jo1xCFPxq0jUajH59kHClXix96ZROwmoTZ1gyvHWJr9wX
	ezl6QnWCl4E4MQ6Sx9SOZaTApV5djVrV8/l/dXUwSWtuMasBjf7nmGjVvvEuN1fWABX8
	5hwCqBJT0pHaKfttox2xbpn3/YsS13d5Dbuk4TN6WzhyEhSyzw9SOeNlbks3rX3J3Plb
	HUhw==
X-Gm-Message-State: AD7BkJJ/APnI90G64I3ZrbviHLrftFI4qSRZKg950Sm2AhgFeG+1+Nq930GFNdSaQCftFKlIi5UJFnNrshQAL11G
X-Received: by 10.107.16.19 with SMTP id y19mr3931721ioi.148.1458141182978;
	Wed, 16 Mar 2016 08:13:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 16 Mar 2016 08:12:43 -0700 (PDT)
In-Reply-To: <1458140066928.8568@axis.com>
References: <1458140066928.8568@axis.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 16 Mar 2016 15:12:43 +0000
Message-ID: <CAJTo0LaU3qsWciM333DOd6-v6oEkMxKKv5kSK1kxM5HKLMHHrQ@mail.gmail.com>
To: Ashish Shrivastava <ashish.shrivastava@axis.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Not able to disable introspection in gstreamer
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
X-List-Received-Date: Wed, 16 Mar 2016 15:13:07 -0000
Content-Type: multipart/alternative; boundary=001a113fd1ea3ee17f052e2bf35c

--001a113fd1ea3ee17f052e2bf35c
Content-Type: text/plain; charset=UTF-8

On 16 March 2016 at 14:54, Ashish Shrivastava <ashish.shrivastava@axis.com>
wrote:

> Now gstreamer is throwing error for introspection.
>
>
> I am trying to disable it but with no success.
>

Can you include the full log of what errors you see?

Ross

--001a113fd1ea3ee17f052e2bf35c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 16 March 2016 at 14:54, Ashish Shrivastava <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ashish.shrivastava@axis.com" target=3D"_blank">ashish.shrivastav=
a@axis.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":3e2" class=3D"a3s" style=3D"overflow:hidden">Now gstreamer is throwing=
 error for introspection.<br>
<br>
<br>
I am trying to disable it but with no success.<br></div></blockquote></div>=
<br>Can you include the full log of what errors you see?</div><div class=3D=
"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113fd1ea3ee17f052e2bf35c--
