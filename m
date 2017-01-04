Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D53CE00443; Wed,  4 Jan 2017 04:54:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95BF4E0043B
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2017 04:54:19 -0800 (PST)
Received: by mail-it0-f41.google.com with SMTP id k132so12971642ita.1
	for <yocto@yoctoproject.org>; Wed, 04 Jan 2017 04:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=jP1az5Nph+5GCT/j90A8jyQpZfGqDimPsLLqdZnWtQQ=;
	b=OHPAcW8t4muskhGbcT4H8GoKKsoG+tmfWFAxaYr8SAFAxqo1MWhumsecAssXkMbATx
	XyrI1LxGijzi281LZXgtS8hCLAJPAj3LCNC7JM+mIFmGwgeIgCYlHE7V3vsXnXeW5IM8
	Bu/JdhKYnbTQPzwr+Aka2XZAQsT9KtMPRtpccjmFBlT4FItq12IYnIwQS0jlLpnniQ7V
	bi85X3PTk84mv8VKuWi5oygy6DtoFUBpDbPsdt/TxI/eL/TkvN1hPn3YYIU/MN+gSsVC
	XZJ6IyoQtbQj0gLc1WzstvNbU4hrtpLwJw+Svjzkq4uqYezTEIkOlp+wkKmgBQWUpU95
	oAdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=jP1az5Nph+5GCT/j90A8jyQpZfGqDimPsLLqdZnWtQQ=;
	b=swjV9UC5nEh2FOaCRrJzthPHjdElocmt3nvbutxQdlo29GvdhaAaH1zDb6lFxikuLp
	02aw99pUIbMnzo77sz3x0xIuNU4KNayRV5aEYnjClxqHfxK8bhheIkkPOY8vvQ7bVndb
	nDDXDruTeWxlseT0/5hw9ntqNr/1smBUuNUSlmU9H6DQQhBImzG+izO9V1uhvGOUYqxN
	HdH9Xvy8pLrDf7Ti8GRRVXpdq5LrbNaNpgVIgeL0VhfYsqPXqVaiT6EW1tTZyfBEXlsI
	eFIL6M074SC+44KOPL041EQQywFhNzHqdkfvWvDlhEON/SQmQZmGD/xTP9Fa6aRLlRXs
	pRyg==
X-Gm-Message-State: AIkVDXKQk5rxMP2nOXF/CnXa1FT7tr6H0oxrDMgO2n8wS9d0d7oB7OqxuiRZrW4RHlaO8hna
X-Received: by 10.36.17.133 with SMTP id 127mr58638200itf.31.1483534459341;
	Wed, 04 Jan 2017 04:54:19 -0800 (PST)
Received: from pohly-mobl1 (p57A56308.dip0.t-ipconnect.de. [87.165.99.8])
	by smtp.gmail.com with ESMTPSA id
	n102sm35423118ioi.38.2017.01.04.04.54.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Jan 2017 04:54:18 -0800 (PST)
Message-ID: <1483534455.28169.46.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 04 Jan 2017 13:54:15 +0100
In-Reply-To: <d8c31717-b728-65ef-782c-10918fb331bb@mlbassoc.com>
References: <f13af171-a99e-cfb4-176b-4c1a5d459c44@mlbassoc.com>
	<3716500.351XhGvxqH@peggleto-mobl.ger.corp.intel.com>
	<fca382f4-53b0-55e2-e635-e78e93363a46@mlbassoc.com>
	<1539248.F6glg5RPsy@peggleto-mobl.ger.corp.intel.com>
	<d8c31717-b728-65ef-782c-10918fb331bb@mlbassoc.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: esdk without using Poky?
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
X-List-Received-Date: Wed, 04 Jan 2017 12:54:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2017-01-04 at 12:05 +0100, Gary Thomas wrote:
> On 2016-11-04 04:41, Paul Eggleton wrote:
> > On Wed, 02 Nov 2016 07:25:13 Gary Thomas wrote:
> >> I've tested your patches for this (from the OE-core mailing list)
> >> and I can now build and use the eSDK for my board :-)
> >
> > Great!
> >
> >> I do have a couple observations/questions:
> >>
> >> * I added my missing tool with this line in my local.conf
> >>       TOOLCHAIN_HOST_TASK_append = " nativesdk-ti-cgt-pru"
> >>    Why did this cause many of the nativesdk tools to have to be rebuilt?
> >
> > So just FYI this will only work for the standard SDK, it's not the right way
> > to add these tools for the eSDK - in fact it may break the eSDK due to
> > bringing things into the native sysroot that shouldn't be there.
> >
> > At the moment I think the only way to properly add this to the eSDK is to do
> > this:
> >
> > SDK_TARGETS += "ti-cgt-pru-native:do_populate_sysroot"
> >
> > We don't document this, and it's a little awkward in any case. I'll work on
> > it.
> 
> This was working great for me until I just upgraded to the latest [poky]
> master (rev dbb247cac5fbf7b037e4955f9793828451723924).  With the SDK_TARGETS
> line in my local.conf, I get this error:
> 
> ERROR: Error for /local/poky-cutting-edge/meta-rainier-am335x-p8701/packages/images/magicard-demo-image_1.0.bb, 
> dependency ti-cgt-pru-native:do_populate_sysroot:do_populate_sysroot
                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

>  does not contain exactly one ':' character.
>   Task 'rdepends' should be specified in the form 'packagename:task'
> 
> Any ideas what changed and how I get it working again?

I enhanced the error checking, and the rdepends varflag in your example
indeed isn't valid. ":do_populate_sysroot" got appended twice to the
recipe name. That error got ignored silently earlier.

populate_sdk_ext.bbclass appends ":do_populate_sysroot" when setting
do_sdk_depends[rdepends], so you should use just:

   SDK_TARGETS += "ti-cgt-pru-native"

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




