Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AEDDE0086E; Thu, 25 Sep 2014 03:19:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8325FE0086A
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 03:19:05 -0700 (PDT)
Received: by mail-qg0-f53.google.com with SMTP id e89so6722582qgf.26
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 03:19:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=JMTHuPIjZwckk0LBmBemvkLCiJztZJwxiDY5pmBK4lQ=;
	b=lKANmq6JPJm5sfSw2ga3B5Lq6/H3CF2fMAvxV26sPNpvQHRCW4HinOHaTGoqhyTt5B
	rZUX8olL+g23OHhP8LhqPwZNOOBWfdzybxLi501L6ogoujKLLsjnSj/APmyRy7fAaRHv
	Wn0CbVUTlU7NgRXBFaquAgFw68choNwLn2Bc8fH9wrGWVgsghmm5Rwb2O2WpzTVewrNe
	8pKFyEdIxz9+/CU/oVMf0abq9tTnpe5dTIPwPfeyTz7ovIiu9hFe58HyOsH/IcOnl8S5
	4FxFh9mhUbjm8eYH25TO9mob6O8F9ZCc9uC0gQ4BypKYcAShrv3AJSBhgk6mewGVUzgv
	iiQw==
X-Gm-Message-State: ALoCoQl+pJVvhfD3z7KUybcwjeIQwgMX02vZipDaq7AOQvcifa+UBScPc0AN8iy3BQeXGvKmI6jd
X-Received: by 10.224.121.80 with SMTP id g16mr12165659qar.64.1411640345368;
	Thu, 25 Sep 2014 03:19:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Thu, 25 Sep 2014 03:18:45 -0700 (PDT)
In-Reply-To: <CACjDgAMYTpdLF5YSJNVkceaYMXCVT1n-th1nJuTc=nYFu7EPDg@mail.gmail.com>
References: <CACjDgAMYTpdLF5YSJNVkceaYMXCVT1n-th1nJuTc=nYFu7EPDg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 25 Sep 2014 11:18:45 +0100
Message-ID: <CAJTo0La-_4byM=QnF8-_wT_JBaPs=P-vUjqvxHfBTBo2boaO-w@mail.gmail.com>
To: Albert K <alberk@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding OpenEmbedded layer
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
X-List-Received-Date: Thu, 25 Sep 2014 10:19:09 -0000
Content-Type: text/plain; charset=UTF-8

On 25 September 2014 11:00, Albert K <alberk@gmail.com> wrote:
> ExpansionError during parsing
> /yocto/poky/meta-openembedded/meta-oe/recipes-support/lzip/lzip_1.15.bb:
> Failure expanding variable do_fetch[file-checksums], expression was
> ${@bb.fetch.get_checksum_file_list(d)} which triggered exception
> MalformedUrl: The URL: '${SAVANNAH_GNU_MIRROR}/lzip/lzip-1.15.tar.gz'
> is invalid and cannot be interpreted

You're using poky 1.7.1 but meta-oe from git master, which depends on
some variables that have been added to poky master.

Switch the meta-oe clone to the daisy branch, and it will work.

Ross

