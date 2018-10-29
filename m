Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06B99E00BBF; Mon, 29 Oct 2018 09:37:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.222.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4742CE00AC5
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 09:37:26 -0700 (PDT)
Received: by mail-qk1-f175.google.com with SMTP id o89so5336337qko.0
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 09:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=rUHUytVf21RSXo0/Zv2vr+az+yO2MgTRm4PhmyQlzZw=;
	b=DZw3bKonkPlFl4CEXCjEGJFUray6MVshr6vFncWA99Ny6qEt/rTTKdz1MKUZe97n88
	h5YOfNWP9G6IXv3r7KK604KHFRpY3AUNhe//Ee7VjG1cwMhwlNUQ4dn0ryJznwEwE9+V
	cWBhzsz02FH+TsJft2JTIsYJjM4hrRNoogl4kNE59BOxpBV1fSVXtR14OPA7x6tZMPUL
	62l0mMbWu9ivMiNuTeyNCluSQo7d8a8wtjG6i7cYDXLD7SpKa63oryHtYS1cUYWWZabk
	VVhzGp2HO7/9PLydyUQXAw0tSpo5LQXY5uw4ya4bofGK0MvA//SyiFicPTyFl4Jbxv+R
	+1WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=rUHUytVf21RSXo0/Zv2vr+az+yO2MgTRm4PhmyQlzZw=;
	b=aPdvTpb9/YDCHg5gircG0oqjy3lee6XI52ku5QXfXZlQRDOVZeeE/Ecms/85yvXUc6
	LoKb7pGXnMZPxpZUfTDG7rgEQIpjgQA6LnLqNBjy2D5Kp0RYClR5TSIz/J46wUJnevc5
	co+EKzeVBSKlX9w0u3R4TQ5KVHwFmAun9kfXui0YFd7RzcmYzceRCCMhaSgx9ZqFVQb+
	iSqoYf5rY/1AdozA0nexLjfycDsg4s9gwmdzkhFi4J8uu7eSv7ASawMdRpPsF7RCCkIs
	nOXqpxOEmBhR4aZBDhXHNxOcawwfmri+a6B1sgPE8JQGm2WwJOcqbfwIZ1owqnkETMG/
	j7EQ==
X-Gm-Message-State: AGRZ1gIYxEPfVRgr0M+zBjGPJia/Z3huAlcRbfUItELQq/zNkCd+NtwT
	XIFVx0/UdAHeLM0cgT4IyLB9/6NsqwOsKorF/XY=
X-Google-Smtp-Source: AJdET5cqY6j4Z2Y00eYLQtLnIyaiiwyTiJo7NQ65XlHqaufKm9t1uqirYIUbd7u6HVar5PP6wwQeeOHPPew1udJLA20=
X-Received: by 2002:a37:d408:: with SMTP id l8mr7723870qki.315.1540831045653; 
	Mon, 29 Oct 2018 09:37:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAC4hrmo3G1FGCT40+oX-v1kU8M6ew-XG_xm6Aq6X04fOFFF1Rw@mail.gmail.com>
In-Reply-To: <CAC4hrmo3G1FGCT40+oX-v1kU8M6ew-XG_xm6Aq6X04fOFFF1Rw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 29 Oct 2018 09:36:59 -0700
Message-ID: <CAMKF1sq0iaQWyE2Wp1uWi-KmocT7mxFeZXsUH2MGc0J_b3zM7g@mail.gmail.com>
To: bhavin.maru@vvdntech.in
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Need Help To Solve Errors while build of Yocto Project
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
X-List-Received-Date: Mon, 29 Oct 2018 16:37:28 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 25, 2018 at 8:13 AM Bhavin Dharmendrabhai Maru
<bhavin.maru@vvdntech.in> wrote:
>
> Hi Support Team,
>
> I am new to yocto project and start to build yocto project by the steps provided in below link:
> https://www.yoctoproject.org/docs/2.5.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html
>
> I am getting errors when i give $ bitbake core-image-sato command. details screenshot of errors are attached with this email for your reference.
>
> Kindly help me to solve these errors. Any help in this will be appreciated.

in local.conf try to add
PACKAGECONFIG_append_pn-qemu-native = " sdl"

see if that works

>
> Thanks and Regards,
> Bhavin Maru
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

