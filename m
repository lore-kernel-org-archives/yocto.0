Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A0B6E005BB; Mon, 13 Jun 2016 14:58:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9070DE0059B
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 14:58:03 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id e5so53497645ith.0
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 14:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=d8i66BPo2In61AL2EaXQcTLLmdsKxJL2BNzmDVWgclI=;
	b=JHPypUoOtCAWFqrtAIcsy4lTmDyjOEp2yrEXJWeleuax8EJNB/z3FFK54oJsi7bHoC
	RkzQKSrhGcTBBTd/qsq8vyruteAWN302DZ5xIsjPY/45P2gkQ9hi/3KD2kJBN3Rh/1/7
	TlJ3AuKek6KT6O91FMbBUjh20Gt6DyRKq8ZEE8nGtyb4tYIP8yFMSl72+ixqgeG8d0w8
	uOTvucUsYGWa1hmjgmfRXu7+oV6JCQ/gqLb0BJE+xgw6Q/A29zTm15LIXJJQyP8Z73f3
	Xs+CIpNkmz+3G/zXlnbNTI6mu/wnxU9aLCAaDSCI99gSDpnNXjsH0d6a9Rd0TOeNNlpY
	Vtdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=d8i66BPo2In61AL2EaXQcTLLmdsKxJL2BNzmDVWgclI=;
	b=KOoB114dg6sHUyTbZ0ssbO0EHYAayZqChfGR3KM8LIstow2vGhcqqlMQuQyGfMYsMx
	YolSkuzCyuQq9d/NOzNNdK3Nx5nznmIzHscW4mDEBfF4rMo5gomXW21LjLTkJVKBUtGo
	JqiRFRt0zma8DgmgvBVv/+sRzJPOPmqyX8ZzgrtiKonVipHq5pJ56qeyLd3Wqy59Z4N6
	nqYquu/5+pb99a3diQkQr8hySlEhMX1Ipu8PHteLnyynya7oAapx9XcMCnsx1pZuixBY
	7Sdb/QJA7dvOtR+qN7AbK+WyRbGykZcJsnWEql5eBnXB0t3mHmm9t6S3EZDXonWRpH7r
	gqCg==
X-Gm-Message-State: ALyK8tKtdA440uZogYfFeRLKOetFdeQD+KQ61hstG3/dfOSo379O3xE9/xRQsOj3kL0dbHx6/USFhVi3KIhC89dg
X-Received: by 10.36.217.68 with SMTP id p65mr22306020itg.38.1465855082531;
	Mon, 13 Jun 2016 14:58:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Mon, 13 Jun 2016 14:57:43 -0700 (PDT)
In-Reply-To: <111ACD726EC3464BAED310F5EA7BEBDA5FE22C@RCHEXMBP1.fnc.net.local>
References: <111ACD726EC3464BAED310F5EA7BEBDA5FE22C@RCHEXMBP1.fnc.net.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 13 Jun 2016 22:57:43 +0100
Message-ID: <CAJTo0LY7sPfUwdR6G=BAJ00EChz+hm_coYPnvNo__O0tiTAGyw@mail.gmail.com>
To: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: resolvconf nameserver
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
X-List-Received-Date: Mon, 13 Jun 2016 21:58:04 -0000
Content-Type: multipart/alternative; boundary=001a114631b67ca50c05352ffb7f

--001a114631b67ca50c05352ffb7f
Content-Type: text/plain; charset=UTF-8

On 13 June 2016 at 22:47, Rajasekaran, Monica <
Monica.Rajasekaran@us.fujitsu.com> wrote:

> I thought it would be the usual method as in other linux versions such as
> Ubuntu. But there is no /etc/resolv.conf file.
>
>
Did you try just creating a /etc/resolv.conf with the nameserver entries
you want?

Ross

--001a114631b67ca50c05352ffb7f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 June 2016 at 22:47, Rajasekaran, Monica <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Monica.Rajasekaran@us.fujitsu.com" target=3D"_blank">Monica.Raja=
sekaran@us.fujitsu.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><p class=3D"MsoNormal">I thought it would be the usual method as in oth=
er linux versions such as Ubuntu. But there is no /etc/resolv.conf file.<u>=
</u><u></u></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>Did you try just creating=
 a /etc/resolv.conf with the nameserver entries you want?</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114631b67ca50c05352ffb7f--
