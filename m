Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAA3FE00E23; Fri,  2 Aug 2019 04:33:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.166.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A288E008E3
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2019 04:33:19 -0700 (PDT)
Received: by mail-io1-f67.google.com with SMTP id q22so31620696iog.4
	for <yocto@yoctoproject.org>; Fri, 02 Aug 2019 04:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NJVqltZyilzKRAjKe0QWe4tOO3VSph5pUiWrL9jXE84=;
	b=ZICUIqj8dRkXCxrkLqCanbZOzJ+kGxS1gyKMaTEoihXcRuEgzuUQGzHLL1KqykqfSr
	nmz8jiIrUQC5jWjcSr3cGj/YDq1M7wna0Sk0MMNLVLJL6lqHglfJFaw10+PR57d6dRwS
	VBnP9WFnnkVYaj+qLkvRPbVSR/jhugSkSExe27hFpOUSoZTu5MusxFwJttbJkUjMxnlV
	xtAP9vJRMcoLjFOALuE0G1iBpXmU1CXkUBDg6tiglORH+UOdlvAYalEzNZzFGWpd+id7
	S1L9uDLt9gLa6wvIDdwRlnOnIxoi74aQfO7KHC5/+OeDBeq70wKLbk2/V/r9/yF9ycko
	tjeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NJVqltZyilzKRAjKe0QWe4tOO3VSph5pUiWrL9jXE84=;
	b=jv2isl8Nf2xSpZKkHTbC0W6jsU0yqMVtfBgG+UYxin5VBBDvh9+QUWK+FbYkRVyTLu
	QF0mQW9KvTAscL4tMVKv1NkGN6AVWStpOlQsCPTQZc/XjEwa+5lhKUgAES8UiaRS5qji
	VRJ5LfYc2YzexmvGHKJr42lv6XNHXi436s59oOsCzadJpAGzhV1KJweC+lJsmd16CJ7/
	oQkebpxg0qtBw8WfvEecRI8HtHqkQHVMhvNbzL2aFkNlJmY/66BjkNhQ+I1IO0BGQLhW
	sHng2U0yfCrwCoClAcwLpwNp+nEYYtCyVliNzTdwaE1Simp5Af52jEEwa5AO7HKgrpn/
	dFhA==
X-Gm-Message-State: APjAAAUiJQ6gEbKctGk4BnT6YhlY44A9BAui6HN0+eE0jytExJTydZkh
	Vpgr2bX/cEKTG79gx3atZeKcn/lmmBKkElMkJlQ=
X-Google-Smtp-Source: APXvYqzB1SwsTYQKFIGmR/eNsJKPgEUOzOz6dsfMQQtrHTUjhO/UrdWlmBA3fCAP5PiYB3GsjgHwzSwayf2he9J3mxQ=
X-Received: by 2002:a5e:db02:: with SMTP id q2mr7504190iop.306.1564745598932; 
	Fri, 02 Aug 2019 04:33:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Fri, 2 Aug 2019 04:33:18 -0700 (PDT)
In-Reply-To: <867c4cd9-27b2-f7b0-63e0-c0a74a261675@windriver.com>
References: <CAA=hcWT8zsyukcEBT=C9XAYLMt2tCaRqZT6Z_5ijQKnSdrAQRw@mail.gmail.com>
	<867c4cd9-27b2-f7b0-63e0-c0a74a261675@windriver.com>
From: JH <jupiter.hce@gmail.com>
Date: Fri, 2 Aug 2019 21:33:18 +1000
Message-ID: <CAA=hcWTacFfR9-hgpNTarnZF37L=Zu27+Ri46bay8GjeGskU0Q@mail.gmail.com>
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Anyone tried to build and to use QUIC?
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
X-List-Received-Date: Fri, 02 Aug 2019 11:33:19 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Randy,


On 8/2/19, Randy MacLeod <randy.macleod@windriver.com> wrote:
> On 7/31/19 7:06 AM, JH wrote:
>> Hi,
>>
>> I searched recipes for supporting QUIC, but could not find it. Has
>> anyone tried to build and to use QUIC?
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - JH
>>
>
> Hi,
>
> I presume that you mean QUIC (Quick UDP Internet Connections)
> as in: https://github.com/conght/quic

Correct.

> I also couldn't find an existing recipe using:
>
> https://layers.openembedded.org/layerindex/branch/master/recipes/?q=QUIC
>
> or by a general web search.
>
> Do you have a specific implementation in mind?

I am looking for a small example of Linux C/C++ QUIC client / server
program in socket level to replace TCP socket communication
application. The client will run on an embedded system resource
limited imx6 built from Yocto, the server is running in Ubuntu VM.

> Care to write a recipe and send it in?
> FYI:
>    http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
>
> Alternatively contractors and companies are available if you want to go
> that route.

Absolutely, I am actually looking for that right now, contractors or
companies have expertise in both QUIC and Yocto, please contact me.
Appreciate recommendation of information for relevant contractors and
companies.

Thank you very much Randy.

Kind regards,

- JH

