Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7E14E00D13; Thu, 28 Mar 2019 05:15:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f176.google.com (mail-it1-f176.google.com
	[209.85.166.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08D8CE00BAF
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 05:15:39 -0700 (PDT)
Received: by mail-it1-f176.google.com with SMTP id 139so5660193ita.4
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 05:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=s8ju8sHF/3MQMSt1Ofpll1W65LjKmZPfRvJky1HP948=;
	b=HIyXGwvtUzd3hFp2dZVlIBeRQFpcN1ZtU346udcy7zzBT92UDj+sV4st3UNCR0PyQH
	uxw4p73djfwzoBWQWgK1skGaYA6OzXWENfdWA2LZomm8A2c7A3NZ1aN3lvg+mXMVO1Pb
	rBB3hVhRMANlhGFt/ORfgU5H3Ht2JmfUST6nFyBqgwr51OZr2vrTlUyQ7rqONZzalPN4
	8BfcTQ21x+P0JL3qYTvBkAqMk+mRgzJwdMOeJNKbeMvAbaAksntzGD1gd2XhP1roTCQW
	emGafVOi8R+oO7sDzEIsmCAL4DSL9MyxsPHFm5BO6N+UNftnlcO0LQ48y/ap8rDMWKiA
	X7UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=s8ju8sHF/3MQMSt1Ofpll1W65LjKmZPfRvJky1HP948=;
	b=OafwJz8BKzkssdPtmtUWwUs9UdXNXltxT3N1nB1wS3ZWNHhM0Y+dDljtwUYbjPlgSb
	ZQ1uSdD+4Uk5x+pJbknBkh5NBRNr9m4GYNPZ8kuAtb8o33T9PrxFR9494NMY2fU7q2om
	Cwmdu+W6YhnEPOTjQHnwCGyGaQswbSd0Ad89uXrHm74spPnaWA8nh9kpsxybw6/N61F7
	h7oBgemugogsxdZcqkVb/UpyiVBbDFTKkttZREKWCc+qyOgQLHw0DqpcrOPzO0P0L5lb
	wUsDkiFDlbTWDGaIkIsEzAw3uvHG/H/VaKmrgDyX8i0ewL32zAQVs3nnmj8Q+h+u0/68
	ho2g==
X-Gm-Message-State: APjAAAU71kxi321XWiPhtv9llHDgDSboXUXBoAaATkVmQfW87B8XcYbw
	h1gerRNNAEOtyHWHgDHTmC9PrbEwvIeZJ4udyUHm6g==
X-Google-Smtp-Source: APXvYqxCOY43QI0ekoDBSUr6EHGyvDHCs65PUlwuscbXGQAdkBP1kFZRupxfaitO7+O5N2XESW+TrdOq9W7B+A3IkHU=
X-Received: by 2002:a02:7654:: with SMTP id z81mr31470084jab.79.1553775339525; 
	Thu, 28 Mar 2019 05:15:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaAdc8r6O=Z=BmoC4g1Jmsf4vLj-mk_QgYxggBsMEEQ10w@mail.gmail.com>
In-Reply-To: <CAAx3WaAdc8r6O=Z=BmoC4g1Jmsf4vLj-mk_QgYxggBsMEEQ10w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Mar 2019 12:15:27 +0000
Message-ID: <CAJTo0LanMdOJG3tihWDhEFmjrSkWqmkxdfcn8B80HujvJDRFoA@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Trimming BOOST libraries installed
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
X-List-Received-Date: Thu, 28 Mar 2019 12:15:40 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 28 Mar 2019 at 10:59, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> I'm building a custom image that install boost libraries:
>
> IMAGE_INSTALL_append = " boost"
>
> How can I trim the installed libraries? I see inside meta/recipes-support/boost/boost.inc a variable called BOOST_LIBS that lists all the boost components, so in my custom-image.bb I tried:

The easy solution is to not do that.  The application you're building
should DEPEND on boost and then the RDEPENDS will be populated for
you, and be the required set not the full set.

If you really want to explicitly install some packages, then don't
install "boost" which is a meta-package depending on all boost
libraries.  The sub-libraries are called eg boost-atomic.

Ross

