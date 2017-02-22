Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19440E009AD; Wed, 22 Feb 2017 09:10:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.178 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 928DEE0098A
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2017 09:10:43 -0800 (PST)
Received: by mail-qk0-f178.google.com with SMTP id x71so8698190qkb.3
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2017 09:10:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Pez3/G6xqkVYBQoAi0p3UgYtB/xwA2/I0bbs3Bd3hL0=;
	b=jVBrFJ9jfawXfKvzMEHUbqSLw4UDhAfPwpG05go5SlYptIGZ3EMd+VVGSjbeFvRrzD
	NeQAOwlD/Z3I3GP96kIg12R0g9Qd21XsoN1mJ2v1Crp2Btmj13Qb1pNXoi17fw9HPmet
	GRHUw3iWX4tFaSscuqWQbzaQBGAIw9mqOMpglEURU1JpcdiPIAjeh8BOdXneBbEQARCk
	apA4DmXEaEPyPWX/oIag2UFII3tmkFOzprMN4htsichavTLfEZvc1TppKe0S+ts4GwU7
	flV5VBFfbPWnW8DyXV7iDIMqJmrmQcENuwZS/owe4kpV/kmDF7uEKeIsEpNao0Z2Ajt7
	OjmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Pez3/G6xqkVYBQoAi0p3UgYtB/xwA2/I0bbs3Bd3hL0=;
	b=tzCJZB5geGlHrYQ9mzRMkIeRJ2YdW2TMs0bygJ0jr7IiQ9qUzOwsG1RACmvDrWXOVO
	wK4hQRXhjz7F4FzgvXcyCTHPYz1rr73CPLR50r79Ih7XQBekjTEWPlkM9M3IQAcOJV+A
	4M/229jJ5umTd1og/v4BBtiQKhcIvKUnMMsvH6+YciJYrJ7jtK8zqbJho1HORzK9e33d
	moI6hHDFEUHVZ7slxq2oOqvZcDaMMA3iMPRKMrrUL6KkulI+X4r7gyczfaBEuB/vnmQy
	dhTXow36HQQyNi8M4COoUcsx0RcNqsDUJ2oINceNFQ10W8Z7tfvvBp7LJ7b3Mgz/63AJ
	XsSw==
X-Gm-Message-State: AMke39mg41CS7AuqDsVbxvbAsyywIiIyP7wB8D6vhsZ5fM3b/x/TOMkrvRcv8EQAcGPvpb5SY9nTNIjsSGHCxBJ5
X-Received: by 10.55.3.18 with SMTP id 18mr29978230qkd.244.1487783442521; Wed,
	22 Feb 2017 09:10:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Wed, 22 Feb 2017 09:10:22 -0800 (PST)
In-Reply-To: <1494286841.2600331.1487782216318@mail.yahoo.com>
References: <1595002721.1496048.1487658650023.ref@mail.yahoo.com>
	<1595002721.1496048.1487658650023@mail.yahoo.com>
	<1487777217.29224.2.camel@linuxfoundation.org>
	<1494286841.2600331.1487782216318@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 22 Feb 2017 17:10:22 +0000
Message-ID: <CAJTo0La4e1UQeLcfwuFxXMNFVz7baanC6r5O=HF-97+ryKx8VQ@mail.gmail.com>
To: Pepe Perez <pp.perez@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: task is executed even when sstate-cache md5 matches
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
X-List-Received-Date: Wed, 22 Feb 2017 17:10:44 -0000
Content-Type: multipart/alternative; boundary=001a114c832898537d054921935d

--001a114c832898537d054921935d
Content-Type: text/plain; charset=UTF-8

On 22 February 2017 at 16:50, Pepe Perez <pp.perez@yahoo.com> wrote:

> This is important for me because I'm working in a project in which
> do_fetch should not be executed, but always resolved with the sstate
>

do_fetch can't be resolved by sstate.  If fetch needs to execute, it will
download it from a source mirror or the SRC_URI.

Ross

--001a114c832898537d054921935d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 February 2017 at 16:50, Pepe Perez <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:pp.perez@yahoo.com" target=3D"_blank">pp.perez@yahoo.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div id=3D"m_-88311642932969460=
3yui_3_16_0_ym19_1_1487740877975_58829">This is important for me because I&=
#39;m working in a project in which do_fetch should not be executed, but al=
ways resolved with the sstate<br></div></blockquote></div><br>do_fetch can&=
#39;t be resolved by sstate.=C2=A0 If fetch needs to execute, it will downl=
oad it from a source mirror or the SRC_URI.</div><div class=3D"gmail_extra"=
><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114c832898537d054921935d--
