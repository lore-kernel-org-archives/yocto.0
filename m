Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E080BE0079A; Tue, 12 Aug 2014 06:05:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.219.50 listed in list.dnswl.org]
Received: from mail-oa0-f50.google.com (mail-oa0-f50.google.com
	[209.85.219.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1627E00796
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 06:05:07 -0700 (PDT)
Received: by mail-oa0-f50.google.com with SMTP id g18so7281613oah.9
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 06:05:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=OubSW2/03mULnZi0VEVKN0t9Tc+EQBP2foh4a4pl6iA=;
	b=k/rjpsELYX6smb6Z4iOdsKhyvsHCExvRHMYFwGG3TV9+UIO7506c/bzmbfas8qV3Ur
	o4Vlw1B4xY5YycfboY4NqVKOM6OwCfPygasJIrfUFf1IdI2orli1BdLlwzXhJAEUItLf
	ZXzSKIOZ2ibw3buebsyUrC/0FiqzW5jNO39XvzPS6aJqHBT93J2Pi1IbCl9AHnpDqwcp
	uboBTgsc9ynz1X4SXZCTV5KlTwSSZn1uV42PlVQcR6hLpjHzBU8KPzsu5YVgtblDjijG
	QUCoKmfdlllOjj/Jnh6z+MGLnV62wjAQJ3gwe0hAWddN34LccuO2xRhQ44WTLk6jWO/e
	c1eg==
X-Gm-Message-State: ALoCoQnAusstPC8d0yUmQnwbpb9cA+bkTFp2HraRHSS76BPkw3gH7oWVMIslHs447UrdrBEZzxWq
X-Received: by 10.182.29.234 with SMTP id n10mr4570116obh.67.1407848706666;
	Tue, 12 Aug 2014 06:05:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.194 with HTTP; Tue, 12 Aug 2014 06:04:46 -0700 (PDT)
In-Reply-To: <20140812145857.23eda070@lxbuild.skidata.net>
References: <20140812142043.31d6766f@lxbuild.skidata.net>
	<alpine.LFD.2.11.1408120827190.21762@localhost>
	<20140812145857.23eda070@lxbuild.skidata.net>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 12 Aug 2014 15:04:46 +0200
Message-ID: <CAP71WjxiBCScKkTC0a735B94WCwbu8Z9SzWVi58ma4-aw8mNMA@mail.gmail.com>
To: Richard Leitner <richard.leitner@skidata.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Force recipe to provide specific file
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
X-List-Received-Date: Tue, 12 Aug 2014 13:05:19 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 12, 2014 at 2:58 PM, Richard Leitner
<richard.leitner@skidata.com> wrote:
>
> I've also tried the following in my ghostscript bbappend, but it does not
> work. Shouldn't [1] work this way?
>
> FILES_${PN}-cups_remove = "${exec_prefix}/lib/cups/filter/gstopxl"
> FILES_${PN}-cups_remove = "${exec_prefix}/lib/cups/filter/gstoraster"

the packaging step is using regexp to get the file list to include in
the package. so it's unlikely that this pattern will be in FILES. it
might be worth printing the value of FILES with bitbake -e..

but anyways, a simpler way to so the same thing would be do have a
do_install_append() function and remove the files from ${D}. that
would in turns have the same effect as what you are trying to do here
i believe.

