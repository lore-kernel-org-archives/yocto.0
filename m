Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A735FE0083C; Wed, 14 Jan 2015 12:36:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  2.7 FSL_HELO_FAKE FSL_HELO_FAKE
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56DE3E002F9
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 12:36:18 -0800 (PST)
Received: by mail-wg0-f53.google.com with SMTP id x13so11134015wgg.12
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 12:36:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=pyqskNJWqLVC8y9b29ovx0jNLDZtzZMmm6AAXryRQag=;
	b=PGvSbpbGULihW8FcsKwlaCLHSB7kUU1JAiaD9R+UKPJDdULjzS4uU+kh4UKBaBVicT
	LXq79LnuwTTlTtsE1ktvUhJ7BK4nG1UDu0kLYCY765xptZcnizGchiWz6OfaESoCS4A4
	ntJb1Up0qruMuFCLLc0QVbf6aaDZgg9OTLOxf3O7cXqjh6jsT4urMsUFkykA4UqRSpxD
	UeH+f4H0HDa7xaL1h34nRS4q/MFy27mLG8SWGGyCYhf9A8KRg488nofwOf7JovrRUWpZ
	7iNm5HAtdeUNs602vDsvK1TQqmRB34aeqfxAYoYv9dyfbBxu4z2L8Wu7r9nJr8nETZC7
	5uiw==
X-Gm-Message-State: ALoCoQloWbbSoweRql7Mm+3WYwjen5ovt9Tcm7VelRm1exrcxDPRe16UalI3rP7XWk1v2wlkHVfc
X-Received: by 10.194.175.202 with SMTP id cc10mr11078073wjc.27.1421267777284; 
	Wed, 14 Jan 2015 12:36:17 -0800 (PST)
Received: from gmail.com ([192.36.80.8])
	by mx.google.com with ESMTPSA id o16sm31519811wjw.7.2015.01.14.12.36.16
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 14 Jan 2015 12:36:16 -0800 (PST)
Date: Wed, 14 Jan 2015 21:36:10 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: "J. Tang" <tang@jtang.org>
Message-ID: <20150114203610.GB4735@gmail.com>
References: <11564A1C-1D09-4BDA-8CCB-3045DF82EFD2@jtang.org>
MIME-Version: 1.0
In-Reply-To: <11564A1C-1D09-4BDA-8CCB-3045DF82EFD2@jtang.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Why not enable hard floating point?
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
X-List-Received-Date: Wed, 14 Jan 2015 20:36:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hello,

On Sat, Jan 10, 2015 at 10:38:50AM -0500, J. Tang wrote:
> The upstream meta-raspberrypi recipe builds an arm6 toolchain with only soft floating point. As an experiment, I enabled hard floating point by setting my DEFAULTTUNE to “armv6hf”. My code still ran correctly. Is there a reason why the meta-raspberrypi layer does not enable hard floating point?
>

Well we played a little with this in the past. And we realised that, at that
time at least, switching to hf didn't add any performace improvements. Did you
test anything that proves the contrary?

Thanks,

--
Andrei Gherzan

