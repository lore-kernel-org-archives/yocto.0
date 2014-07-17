Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA936E00781; Thu, 17 Jul 2014 02:01:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DEE0E006B9
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 02:01:53 -0700 (PDT)
Received: by mail-ie0-f182.google.com with SMTP id y20so2413075ier.41
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 02:01:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=qxFZo4cz8LwT4jjjPzawXVxsTo/AiMjvIswylsInVIM=;
	b=VoeK+6EYhh5u8nNPOFBXqGOJ22iQDETgBs02Ii8abpSzGCnD49vYT6ropQBf9eRIcR
	K4IS8kkbIwVr5ozl8e8X/LZ3FCZHdYS80jCvELEjuuJE9GqXu/gCYMo0sFATXAGyT1BN
	OhB+sWnWBaL3QYSpewjLEv/aTuJ71cKsEXCY25OZVjTa9KbaoHtIoJeRCttcP2xU3RiM
	BtApiPXr4aL6SttG4l5FfUcR9axTe3Acbp156hYNaS/9T+RrB/Xl0qwRUr784yQ9hkZd
	xPXIFNdWq29P+xf2vZEPfFBZbWwp2iTYAP5m9vTadUpqtdufjrdUNQ3pYKrBbz5/ybRv
	ZRqg==
X-Gm-Message-State: ALoCoQls/sUH9sXZ46VjMeDeheysYYbMYeeLeEzjpsJgHfpEuEJieX59pnk3y+uAUsxbbwVqJeXd
X-Received: by 10.182.112.134 with SMTP id iq6mr41809088obb.34.1405587713171; 
	Thu, 17 Jul 2014 02:01:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.168 with HTTP; Thu, 17 Jul 2014 02:01:31 -0700 (PDT)
In-Reply-To: <DUB128-W12498E2678002801067F3092F40@phx.gbl>
References: <DUB128-W12498E2678002801067F3092F40@phx.gbl>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 17 Jul 2014 11:01:31 +0200
Message-ID: <CAP71WjwYGsUt7ye2JFsotAis2TPEfk7wFH0jS_1+u72Svc2iBA@mail.gmail.com>
To: Natural Groove <natural_groove@hotmail.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to include native bitstream dependency in recipe?
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
X-List-Received-Date: Thu, 17 Jul 2014 09:01:55 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 17, 2014 at 10:37 AM, Natural Groove
<natural_groove@hotmail.fr> wrote:
> Im trying to crosscompile a framework that needs native bitstream
> dependency, but the configure does not find the headers.

what is 'bitstream'?

> I was told to use ASSUME_PROVIDED, but i dont know how to give the path to
> bitstream in the recipe.
> Or is there a another way to deal with that like installing bitstream to a
> specific dir that oe will now of?

ASSUME_PROVIDED is generally used for host binary that you want OE to
use instead of building them. for example, it is generally ok to use
the 'git' application from your host instead of rebuilding git during
an OE build. This is applicable *only* to host binaries.

in your case (granted that I don't know what 'bitstream' is) I think
you will need to have a recipe that build 'bitstream'. Note that the
dependency is 'native' in case it's a tool that needs to run on the
host, like a preprocessor. If you need 'bitstream' to cross compile
for your target because your target framework builds and links against
'bistream' them it's not a native dependency, but just a regular
dependency.

