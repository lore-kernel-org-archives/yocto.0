Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1A5FE006ED; Wed, 16 Jul 2014 09:45:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.219.48 listed in list.dnswl.org]
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5FEAE00547
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 09:45:12 -0700 (PDT)
Received: by mail-oa0-f48.google.com with SMTP id m1so1233884oag.35
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 09:45:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=fePvVMmb+QVrBK1WfBhMnyd3QngIeb3vgEzoK1cgZa4=;
	b=hpWuCPBDBrXq4gbPJQaBfFcXgtd8BlxtjeRyGHX9yyYZfMJe0KSljZHPtWU9Lff7hc
	4YHcShjV5M8eysFE79EpQXmFX6GNlG1yMSqPfuS8poHYKcKJNX1BP0I8B+H3SQqk5ytw
	FKHZaK2l+bd7yXwMGvNlZm5aO9DIv66w2HVakejZOFBY7Xiz/WVJ/vXtaNpIJ/cZrIeb
	/ICJkJV82I4R+9ZKbeq6N6d8nm9S10ALnwwwDq5+a97upy8VEjR2Gg5hY74CJBcSe9+P
	yG4LrTNREtdBn3VP/ydADxku6PJ1VnlJLuyeAdgw4PgFyW7hv79Th866BlAsxSQGoOk4
	eNiQ==
X-Gm-Message-State: ALoCoQkSH78lpklRc4sNf13oJgY/4x7EX6zKH2YiX75jLY+t+TRW14uc2KsbnO/o8GLCk7IEtW0h
X-Received: by 10.182.112.134 with SMTP id iq6mr36707431obb.34.1405529111289; 
	Wed, 16 Jul 2014 09:45:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.168 with HTTP; Wed, 16 Jul 2014 09:44:51 -0700 (PDT)
In-Reply-To: <CAH21_vFphaS04tuo1a3XP9vhco9mFx4wq=PPEDXxZhLDguTXBA@mail.gmail.com>
References: <CAH21_vFnWJZC60p8vzqjB-B9YCiKKbVOsUFts7Ej80gp5K1-TQ@mail.gmail.com>
	<CAP71Wjxs_GjVn64UjkskGn06yvVTvSKDRcefPh5Ny226e1gMmA@mail.gmail.com>
	<CAH21_vFphaS04tuo1a3XP9vhco9mFx4wq=PPEDXxZhLDguTXBA@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 16 Jul 2014 18:44:51 +0200
Message-ID: <CAP71Wjw=2thEYz___rMAtWZW6vy_rxkrn7qHxiroQdatoz-KFw@mail.gmail.com>
To: atulkumar singh <atul.singh008@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Toolchain build independent of host machine
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
X-List-Received-Date: Wed, 16 Jul 2014 16:45:19 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 16, 2014 at 6:37 PM, atulkumar singh
<atul.singh008@gmail.com> wrote:
> Thanks for your reply.
> And i am using Fedora20.
> Also please let me know how to check whether the machine has been install
> with 32bit lib or not?

I don't use Fedora, so i can't give the exact instructions, but the
first 2 links on google are:

https://ask.fedoraproject.org/en/question/9556/how-do-i-install-32bit-libraries-on-a-64-bit-fedora/
http://unix.stackexchange.com/questions/57863/how-to-run-32-bit-programs-on-64-bit-fedora-17

