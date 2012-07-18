Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CD09E00283
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 04:59:05 -0700 (PDT)
Received: from mail-qc0-f180.google.com ([209.85.216.180])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 18 Jul 2012 04:59:04 -0700
Received: by qcmv28 with SMTP id v28so791525qcm.25
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 04:59:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=Exg8PiVKGkifWpEQ4DRzLHkSZolrVQmFu2nTxviiFOI=;
	b=jkWNhgtW++kdppYxyWwoJWXQwgB6Las2FPm9K5101MNiyPQVAVQQk14tgHGmYEeXiQ
	cYpbNOIdwZsKOtdLLKrDNKk3/lg55+Bp6VimfMQCa1nCoFa5xrZqZooV0hMfd1JukUEy
	uOBAH4CDBhm2b5wp7UOblcyfRS6Yh8wc8m2qFo7W0zQz+qxtdFt3ELZ/nJpzmYF9ifth
	8CwNffG2dQynyaaDfG2heDJSGEQyKGzJwBD5bTjFJnjl+KpipxGTOo9dv8a86M0M56b2
	fSRz00J7k8rVQXjzi0d2OEO3/gFRLUQzLDV9Er1S/G17ZDoUBc/JIw6lUwpOSTVtnvdC
	20LA==
Received: by 10.224.177.1 with SMTP id bg1mr5381368qab.68.1342612743549; Wed,
	18 Jul 2012 04:59:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.82.74 with HTTP; Wed, 18 Jul 2012 04:58:43 -0700 (PDT)
In-Reply-To: <CAJTo0La+k3hNQ_xDJO7ZXAxAdkQtyXqgNFi+Sv7eeGs2s=HXRw@mail.gmail.com>
References: <5006A190.6090508@freenet.de>
	<CAJTo0La+k3hNQ_xDJO7ZXAxAdkQtyXqgNFi+Sv7eeGs2s=HXRw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 18 Jul 2012 12:58:43 +0100
Message-ID: <CAJTo0LYd1tTDq6Db9QT2wb7zkhpuSPFjOfP1KT_kY4pM3P7zPQ@mail.gmail.com>
To: Axel Beierlein <belatronix@freenet.de>
X-Gm-Message-State: ALoCoQn0YoVqCyJbXe3RbaGXJ5lB93srkGXwsnDrQhJybb0QgUHY+f5uDlP0tA5AWBlGT1KDFYzW
Cc: yocto@yoctoproject.org
Subject: Re: Error: PATH contains '.' or '', which will break the build, please remove this.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Jul 2012 11:59:05 -0000
Content-Type: text/plain; charset=UTF-8

On 18 July 2012 12:55, Burton, Ross <ross.burton@intel.com> wrote:
>> when i start bitbake core-image-minimal i get the Error
>> "PATH contains '.' or '', which will break the build, please remove this."

Actually it's probably worth printing out the parsed PATH when this
warning fires to help solve the problem, I've seen a few people hit
this recently and it's not obvious what the problem is sometimes.

Ross

