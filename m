Return-Path: <trevor.woerner@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98AA3E007BA; Thu, 30 Oct 2014 08:42:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02E25E00744
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 08:42:24 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id rd18so5548839iec.35
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 08:42:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=y8hy38j7oedLfoqP9XCkA3MU7NpSJwYAbyUpWQoH7HU=;
	b=T74kzhIII15gRVRkCQzodtJZm0mYDIiq9DGu+A0IXWEsITn5DvlkNCZbUGwk9FFrKX
	yRSZXPohlQOFes7x+eCQaxOug1fxFujr4L5gWMJ0SFpej9mS/UJuBUqP3PxFbDvsoZLg
	CQa/8e1ZjKCM/EgOQZd2ZLTnGkX/hSLyWZT4xD8I2Sde/+tLROy/qRpqf6UnI120yLrW
	Zy4GYwRU6aemNs4/yczkJzWGozLOZSwEM9EeXXgPhfRnbp+IgXkkG2SUXMnmCCc+mp/K
	E83kIPQDyaqFLLcahM77NNEj9YhcdWKHw+wWzHoIsh3+Ak6nk+Ur82VQ4pY/fPyIpEsY
	xgaw==
X-Gm-Message-State: ALoCoQk1TX5Gab0L+4Jq9Dy3zEQDsttWc901SmyYTPU1HK4snVzm71xEPWqkynxkHgnJjpMv4k2p
X-Received: by 10.50.118.35 with SMTP id kj3mr21410771igb.30.1414683744392;
	Thu, 30 Oct 2014 08:42:24 -0700 (PDT)
Received: from [192.168.141.122] ([67.55.43.177])
	by mx.google.com with ESMTPSA id qa7sm3194742igb.1.2014.10.30.08.42.23
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Oct 2014 08:42:23 -0700 (PDT)
Message-ID: <54525C63.4070309@linaro.org>
Date: Thu, 30 Oct 2014 11:42:27 -0400
From: Trevor Woerner <trevor.woerner@linaro.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.0
MIME-Version: 1.0
To: Paul Barker <paul@paulbarker.me.uk>, 
	Yocto discussion list <yocto@yoctoproject.org>,
	OE Core <openembedded-core@lists.openembedded.org>
References: <CANyK_8cFPyXs2R5+x3AiMNnPW4Q6hWnNdsjTHrf50M4F6VGJQQ@mail.gmail.com>
In-Reply-To: <CANyK_8cFPyXs2R5+x3AiMNnPW4Q6hWnNdsjTHrf50M4F6VGJQQ@mail.gmail.com>
Subject: Re: [OE-core] opkg Status Update
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
X-List-Received-Date: Thu, 30 Oct 2014 15:42:27 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Paul,

I too wanted to express my thanks to you for this work!

On 10/28/14 19:33, Paul Barker wrote:
> This would be a great time for someone to step up and
> help move things forward to v0.4.0 and beyond.

Is there a roadmap for opkg somewhere?

Best regards,
    Trevor

