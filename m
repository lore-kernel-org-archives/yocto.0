Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 529C3E00B90
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 15:12:29 -0700 (PDT)
Received: by mail-qa0-f48.google.com with SMTP id m5so2929289qaj.7
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 15:12:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=50nmTL5dLz6NmmXUFvDffEg7SXoyLOC1CWNUXKv2ff0=;
	b=iy88hTRd5pC8HclMAwnjNn+Q/rPyUhjVuE6OA+kuiHxk2UYbuANGCkYQtV2oQR1n9a
	kdvhiHQlg+n1EAEJUM10mp56I4f6mI9eJSjjMgjYgpLZKE95vkYmlBydg5hAbF1S5egP
	grUrPY4vYn2g22Bf2Nvyto5KARO1BGot1rwabMIzm9sK2XpWe0iJV//NTp+Z6R0pKTCe
	nNU33DXW+haXF0w6Yi7m0eC12uFkZnWVlYC6EXF6XVx6l8LHoWrkE/3rpuQI44T+0SIZ
	za4/I1FqlOCsl/U9bOHb06QbaJNMJqTT/pfatC2TW/zFnGVXYI6/OeMw4r7aqzNIJRZV
	+UUg==
X-Gm-Message-State: ALoCoQnt92Wt8zDduBkp2lH4Yuc/E9Lj0SF371efhsMPHLkNkgvO+1f56CCCATkllLqTzUG5S520
X-Received: by 10.140.106.195 with SMTP id e61mr87427838qgf.66.1395871948717; 
	Wed, 26 Mar 2014 15:12:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Wed, 26 Mar 2014 15:12:08 -0700 (PDT)
In-Reply-To: <CAMKF1soKZqqmQUVCQnUqS1GV1FO5KictTO+=up=d7Jw3+QhXMw@mail.gmail.com>
References: <CAMKF1soKZqqmQUVCQnUqS1GV1FO5KictTO+=up=d7Jw3+QhXMw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 26 Mar 2014 22:12:08 +0000
Message-ID: <CAJTo0LYF0VNwy7=rhmr7U_=tXwJtPOax3AKttn66q3qD_QXd2w@mail.gmail.com>
To: OE-devel <openembedded-devel@lists.openembedded.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [oe] initial support for musl libc with OE/Yocto Project
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
X-List-Received-Date: Wed, 26 Mar 2014 22:12:30 -0000
Content-Type: text/plain; charset=UTF-8

On 26 March 2014 22:04, Khem Raj <raj.khem@gmail.com> wrote:
> There were interest in other threads in having musl as an alternative
> to eglibc/uclibc that we already have in OE, in that direction I have
> poured in my on and off work and put it into a contrib tree

Blimey Khem that was quick. :)

Ross

