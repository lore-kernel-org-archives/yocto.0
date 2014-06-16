Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32C43E00B88; Mon, 16 Jun 2014 02:04:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
Received: from mail-qc0-f175.google.com (mail-qc0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDEDAE00B20
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 02:04:38 -0700 (PDT)
Received: by mail-qc0-f175.google.com with SMTP id i8so7242058qcq.6
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 02:04:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=aTraQF74xf3uYDEUJHGpoSw1yTUppx0YduNpjG8VcSs=;
	b=JSBC07UTbw1AuXTO2XiyRtsIUZXEHv+poyeYhgRSQlu3paNb4Qs6LvyRcgWn/EvcK6
	DmdjY8+ASNH6M9q2KnaPEi6Gp5uIu0oj7YVJVtlUVPHXztVSAy27fQk0Ul9I2n8ZYHGC
	RUct7MJThcrs+RxWiztX4GZVGKRaS31im/Fd5V6WjjJkkMWXod0viAB00qDIsVqQLAoH
	fFtlweHgOHwBfiXW8/ghdNzzwQn7rQdtE0p5pH1lqj7bw+thBRmDAkn5W01iwgQPwjMo
	MQ/xCI1MRotL1XhLVdojBnDI29uwv+1Lqgt+pPaekMoa62Sq8Zv1bp7fCHBKgcHebduo
	trbw==
X-Gm-Message-State: ALoCoQnC7SVrEtdlpvVzWJ+pPzF1ee0rcGgQSt6pWzTXcUAbgUTghJJLEpYqHx+eOzJ96vhukUAQ
X-Received: by 10.140.48.161 with SMTP id o30mr23143982qga.68.1402909477681;
	Mon, 16 Jun 2014 02:04:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.91.138 with HTTP; Mon, 16 Jun 2014 02:04:17 -0700 (PDT)
In-Reply-To: <539D74D7.8080809@dynamicdevices.co.uk>
References: <539D7379.5000907@dynamicdevices.co.uk>
	<539D74D7.8080809@dynamicdevices.co.uk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 16 Jun 2014 10:04:17 +0100
Message-ID: <CAJTo0LaDMD90f4fNjaf9k8Gn=QAvh54qqUn=gh68HX7=ZNApBA@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Autotools, Init Script templates and configure.ac
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
X-List-Received-Date: Mon, 16 Jun 2014 09:04:46 -0000
Content-Type: text/plain; charset=UTF-8

On 15 June 2014 11:26, Alex J Lennon <ajlennon@dynamicdevices.co.uk> wrote:
> What I'm not understanding is if there's a standardised way to write the
> autotools configuration
> that would eliminate the need for Yocto update-rc.d

There is no cross-platform way of installing init scripts.  I'd
recommend that the upstream source simply provides a reference init
script that the recipe can then install to the right place and call
the right bitbake classes.

Ross

