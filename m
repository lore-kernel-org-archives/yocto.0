Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CB2FE00DAF; Thu, 10 Oct 2019 05:32:36 -0700 (PDT)
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
	*      [209.85.128.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FBDFE00DA7
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 05:32:35 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id v17so6592326wml.4
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 05:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=P7MQz4KuCr5p3nVU/P66WPFUL7BIMCpYljQHAof/+IQ=;
	b=W/TvZ7DPF0x3jm9kJejv71ayvrhY/zktvhXHqFYvEO/aem/BM83KRsgQqyTVNnYyJ0
	YCdbcaWNjvkI4kxZKEUsqcSyPnTZU/dmDQKKXHDaHqAgTR1GAegMpUohTrFub4G2JkE8
	HB9beIHPqAfM667MgmUlGrecX4oUTsH0oBjaU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=P7MQz4KuCr5p3nVU/P66WPFUL7BIMCpYljQHAof/+IQ=;
	b=htrWyblNzSGrNRrj9yE6SxZAhG/Uy2JxPLC8OUhA8Rvrz1V21aSOWKePSZO9q5RuPl
	cB81yMI7q2NVBnQgS0NSbvmyIhIWw3ITeJlxB/99ka+lYtc+rEPDXhdoCrcq4OEbtX1o
	HLgDFbmbKJm/w66Kkt9PembE77bM8caFcqH6tHq3HtKBDlr7MqJoSZMx2siiMHBpX3bg
	Sh97f68HEyXj2pIMXa3qIKIx+EX0O9UCjOtFZn8V0v9Knnzg38V8HkUlGsm8Owr/Eavm
	JcaD74mevuBaOETFE8OfDkFov+8xGfL4/5FzwwmcijjJsU9GXTHmrDYJ/8u07x2K9em5
	9hMA==
X-Gm-Message-State: APjAAAXdps/cnIU4EhJUwyvmwTPY2TTlP1Q42xtoe+kUyE5rbkTEvjMh
	cSQ3ktV7Zx08VMNE998AMeixTg==
X-Google-Smtp-Source: APXvYqzzYN3QIYYIlQhqqo7A2N4fHmbp5gAtH7N4XpZeJ9UfQDHDorl6fTO7wmZPDweRshyTJfQy5A==
X-Received: by 2002:a7b:c006:: with SMTP id c6mr7645060wmb.45.1570710754621;
	Thu, 10 Oct 2019 05:32:34 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id r2sm10012005wma.1.2019.10.10.05.32.29
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 10 Oct 2019 05:32:33 -0700 (PDT)
Message-ID: <ed9d546a22d969afac413e43db8e308b3b247883.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 10 Oct 2019 13:32:26 +0100
In-Reply-To: <BN6PR11MB187632286B529991AE50E0F3E3940@BN6PR11MB1876.namprd11.prod.outlook.com>
References: <20191010041128.E627F6912C@fedora30-ty-2.yocto.io>
	<9DDD2658D1FE414E99172D2DB1E4D0434824BD95@PGSMSX109.gar.corp.intel.com>
	<BN6PR11MB187632286B529991AE50E0F3E3940@BN6PR11MB1876.namprd11.prod.outlook.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-3.0.rc2)
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
X-List-Received-Date: Thu, 10 Oct 2019 12:32:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-10-10 at 07:37 +0000, Jain, Sangeeta wrote:
> Hello All,
> 
> Intel and WR YP QA is planning for QA execution for YP build yocto-
> 3.0.rc2.
> We are planning to execute following tests for this cycle:
> 
> OEQA-manual tests for following module:
> 1. OE-Core
> 2. BSP-hw
> 3. BSP-Qemu
> 
> Runtime auto test for following platforms:
> 1. MinnowTurbot 32-bit
> 2. Coffee Lake
> 3. NUC 7
> 4. NUC 6
> 5. Edgerouter
> 6. MPC8315e-rdb
> 7. Beaglebone
> 
> ETA for completion is next Tuesday, October 15.

Thanks Sangeeta!

There were some failures in the build, specifically the build
performance results didn't merge to the repo correct and an oe-selftest 
failed.

I fixed the performance results manually and pushed them. The oe-
selftest in the reproducibility test is a known issue with perl from
the host system.

I don't believe either issue should affect the release.

Cheers,

Richard




