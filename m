Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34A3BE00B58; Thu, 16 May 2019 09:01:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E3C0E00B3E
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 09:01:10 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id h11so4007079wmb.5
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 09:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=iNSkE9RcxBZTeuovKI3mxXpy4VygApczSFK2NsS52xA=;
	b=kH7fdU1lpMaccK+BfQP75M98pQtMzVhwhY+oeey8mDbpTHIPdxZBOIv/o8IJ56qLyC
	QKhrB+NnyMTF/DWj4gBq3C44FMFkjDOiH7LP15TtzCXgAAdQ224d4fZrgbSTqR2DAjzx
	bOSAQ3MGFVXz7yjIBl/MGA9wqXa3K3dZmn97Wyr9ehqIXaU8P6fmKPwAR8ELdzcXJPl/
	qKKI2J86WW0nsLoj7BfqMNdDx8A8G4cLHpO9BQFm9ttmll6Sam1pdUtuWA3kf/HeO+zp
	ZSB82CexaWMfRWgFZQB7xMZsBI+3RNLp0qpJcrJiOxex0Mpp7mPDG1+cZCmNJrkmZ77S
	hr1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=iNSkE9RcxBZTeuovKI3mxXpy4VygApczSFK2NsS52xA=;
	b=i5tB1rD74SqLheKpVa9DxoiXCbyrM0FqX3RWTqEbmEX7JftrDz4xF5xwpTACv6UCo/
	E6YdALf1WijCfcizT9rTCaw2GWEPbwWKAdsyQeR3iihS+A4spZfKJI3nCCBlYdf+in85
	ZVQIdJycIPFalQ7sUtHMGW4+g1bKtLzzo8UmwQk+FL9Uki1yBqV0uPF3oXhRgFZAePmE
	8CMcI8zbjuIoMXWCl6CKrdOEehboVUDqgXuwR/gXsIhgCfpJElpUB7ff8nMUSLfILzmO
	DDP2yToVBvL6Lglpg+PIN3nHELsBR2ZtxszHPflD6L4z0HVsFR9X7/OTczEZmCjRUNdZ
	BVqQ==
X-Gm-Message-State: APjAAAWjl1mfOGSy4YQzRPB2egb/d33oPsQshKpLcaeTOQmT3DiM3UUH
	VLz8Qn5CVJwfE4nz9Nsh5htkJgJVstA=
X-Google-Smtp-Source: APXvYqy5HzZ3lx+8AmqJYfZHmbisaCqYOES+uajCMX0EOxmRq0GQOFmQdOYHwN1FC4w7R8v+MaJRTw==
X-Received: by 2002:a1c:254:: with SMTP id 81mr6032788wmc.151.1558022469355;
	Thu, 16 May 2019 09:01:09 -0700 (PDT)
Received: from [10.100.100.101] (host90-152-4-101.ipv4.regusnet.com.
	[90.152.4.101]) by smtp.gmail.com with ESMTPSA id
	p14sm5118272wrt.53.2019.05.16.09.01.08
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 May 2019 09:01:08 -0700 (PDT)
To: Rudolf J Streif <rudolf.streif@ibeeto.com>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <db5fdd69-f031-1932-27bb-6ed1a6f60f4c@ibeeto.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <7e5c2228-c67e-bf65-fc80-0352b90502ec@gherzan.ro>
Date: Thu, 16 May 2019 17:01:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <db5fdd69-f031-1932-27bb-6ed1a6f60f4c@ibeeto.com>
Subject: Re: [meta-raspberrypi] RPi 7" Touch Display
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
X-List-Received-Date: Thu, 16 May 2019 16:01:11 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

HI,

On 16/05/2019 16.31, Rudolf J Streif wrote:
> I am trying to use the "official" RPi 7" touch display
> (https://www.raspberrypi.org/products/raspberry-pi-touch-display/)
> with meta-raspberrypi (most recent from master). However, I cannot get
> it to work. As a matter of fact the display does not even show the GPU
> rainbow screen making me think that the GPU firmware packaged with
> meta-raspberrypi does not support the DSI display. It works just fine
> with the latest Raspbian release (screen and touch).
>
> I searched the web up and down but could not find anything. Maybe
> somebody has an idea? Wrong firmware (maybe cannot be distributed
> because of licensing...)?
Sadly we don't actively test display and other related toys so they
might be broken. Even so, I would be surprised if the DSI port doesn't
work. What is you final config.txt (pastebin it please)?

-- 
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan


