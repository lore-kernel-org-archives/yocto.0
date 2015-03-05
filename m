Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B4BCE008CC; Thu,  5 Mar 2015 05:41:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20919E00718
	for <yocto@yoctoproject.org>; Thu,  5 Mar 2015 05:40:56 -0800 (PST)
Received: by obbnt9 with SMTP id nt9so13840835obb.13
	for <yocto@yoctoproject.org>; Thu, 05 Mar 2015 05:40:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=i/ejFUdbEEE761DQq/igvsMGu2nFXBO7mSQWSks5Zgc=;
	b=jMxQD20Z1NX9tyfRgAn5Fmufi1zEKu0keEDv0ns7edyIt4YcZbeExSZZNJ9czwjXFY
	yv+qwTTYFdVeb8hGkpNBcCQrmEAIucXUBual6aK2hTKL6DmWZQzlAq9eB/t2rzOMkv5U
	G7HY4xul/hcYSP5dTDzA+8x6at6x3VSt7OcaAaFYzU5PR33hCPAHUtEJbM18Z5uhcIJG
	sFQkqQgim5It8o8RUrFByl/yQtxMsvoTvBlktSZC4kIb9taDvoTZ8+sjzuaXpL22VfU+
	dvxijzJyBpH+RyL2oWUU4RUZMaDcGnIHt+/ZUDLweN9Qufl1/bh8QoiAhAxZ/gOjJCFK
	/OCA==
X-Gm-Message-State: ALoCoQnh6n3ROMm1zQYhFd6F76fPrRGeC90PbweGVdwXHdRObiLlHCWZ/VERR91JgYF+r/RIKdaz
X-Received: by 10.60.103.116 with SMTP id fv20mr7245206oeb.2.1425562856203;
	Thu, 05 Mar 2015 05:40:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.187.3 with HTTP; Thu, 5 Mar 2015 05:40:36 -0800 (PST)
In-Reply-To: <54F85B4C.4040403@mlbassoc.com>
References: <54F798FD.4090200@mlbassoc.com>
	<CAJTo0Lb+8aUN8Ufgx-5W6zfs=V_CK=eY2DgeeGeGJUyz0u22gA@mail.gmail.com>
	<54F8492B.2010205@mlbassoc.com>
	<CAJTo0LbHPUc7Xrmx06o3w4Yaf7xynR1Pb33U75ONzvziC0Wuww@mail.gmail.com>
	<54F851F5.8070409@mlbassoc.com> <54F85B4C.4040403@mlbassoc.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 5 Mar 2015 14:40:36 +0100
Message-ID: <CAP71Wjz4H2c971qGEZCgW2_pbP-Vs2rpQhiDNy_OWOhQqpz7MA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: New gst-player
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
X-List-Received-Date: Thu, 05 Mar 2015 13:41:00 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 5, 2015 at 2:34 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> Sadly, it doesn't build with the libav we have in OE-core :-(
>
> BTW, I measured the current used by my board (i.MX6Q)
>   mplayer2 => 1.8A
>   gst-play => 2.1A
> Given that I normally run my board with a 2.0A wall brick,
> it's no wonder that it dies when I run gst-play.

ouch. that's quite a difference. when you play video this is no just
about the decoders, but also how video is rendered. can you
check/compare what's the overall pipeline, including any processing
done on the video buffers (YUV) after the decoder (including up/down
scaling, color conversion, ...).

cheers
nico

