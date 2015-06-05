Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E72BE009EB; Fri,  5 Jun 2015 07:35:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.6 FSL_HELO_FAKE FSL_HELO_FAKE
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B69FBE009E7
	for <yocto@yoctoproject.org>; Fri,  5 Jun 2015 07:35:30 -0700 (PDT)
Received: by laar3 with SMTP id r3so6645859laa.3
	for <yocto@yoctoproject.org>; Fri, 05 Jun 2015 07:35:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=JO5CKfCJMjfB6OIt0BV4idBJv2ziVyqW63Z+ypj+S6k=;
	b=Hkq+5lpH7TRKCAlgfRldLwhaGSO7vW8iB9aH4QfO2wreOiL4rBUujYukOZiGQdZYwA
	hi3QQiVBUlPO9Xy3raUXlpf0Fv7s+NcjwEDP9FBLakdpsrLVEp6YtgbevAQXaX4I2vGV
	dVcgLj3OtK5N0dEBXLY0RzLbkc/OCzPmCrnddio99XQxhCUqFdI2BK31FVnO/vaIVoUu
	zgxirFDYW9T39ivToVJMaMO0xgs26C1f0IQhAwcQN7SJl0w0PXTYSr7qJtVR+vyrIwZA
	ng/SvVTqB/UrlkWUaDouIyW4c6Ckh0qKrNWFoECw0AgD+Mn8ZmDxN1oB0Y7gx82k0t9p
	lsSQ==
X-Gm-Message-State: ALoCoQl8bqJp4ayerVSKrw+sxt2EbxPFJyaNl6SJ7aeEguDc6UCmtQlLbSMhJM0StluObItN3XNz
X-Received: by 10.152.37.67 with SMTP id w3mr3639331laj.123.1433514928920;
	Fri, 05 Jun 2015 07:35:28 -0700 (PDT)
Received: from gmail.com (87-63-77-14-static.dk.customer.tdc.net.
	[87.63.77.14])
	by mx.google.com with ESMTPSA id g3sm1815088lam.28.2015.06.05.07.35.26
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Jun 2015 07:35:28 -0700 (PDT)
Date: Fri, 5 Jun 2015 16:35:22 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20150605143522.GD1829@gmail.com>
References: <1432302460-13086-1-git-send-email-twoerner@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1432302460-13086-1-git-send-email-twoerner@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] bcm2835: update SRC_URI
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
X-List-Received-Date: Fri, 05 Jun 2015 14:35:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 22, 2015 at 09:47:40AM -0400, Trevor Woerner wrote:
> It appears as though the location of this tarball has changed. The current
> SRC_URI works but is redirected to this new location.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>

Merged to master. Thank you.

--
Andrei Gherzan

