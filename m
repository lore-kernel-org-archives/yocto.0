Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 928BFE00283
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 05:14:03 -0700 (PDT)
Received: from mail-qa0-f45.google.com ([209.85.216.45])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 18 Jul 2012 05:13:43 -0700
Received: by qaeb19 with SMTP id b19so2722992qae.4
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 05:13:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=J4eVYcHX+uR3U/Vb4TgThoQl8TINH7l8bQ2Li9ndH38=;
	b=pww2kwgCCkXHNWu9H7oMmsfm0pcfmcO9nB7ARxrlSqSQzm2bv2Zyt4SalfYTeaaBWm
	8xJd68eOxD4/fIpbZbUlUo+wTGdk1tyJw5h5rPGn271SBNoNV9Ry8ROZ3gBQ0G7DFxYS
	yaRA3D0DOIFgmo82Cq+zdgFPKrYK7EQVZTp0wXZMPjTV5GvM/iXnAEJxh+xWnZkRpzPX
	8/5lx7zLcEvmzgOjKgbpZ+BJdqMJB5zVseP+gMeUjvOhzMW9Q4FzmsjyfucsyQ2aYmfV
	sI+xgZKJx9tWoiB6Vm2u2Z7RFXK/1SgzowfM03hjeesOoy/OMv7E0F4NEbFIrUBmcIhD
	VAmg==
Received: by 10.229.134.202 with SMTP id k10mr1358255qct.71.1342613622589;
	Wed, 18 Jul 2012 05:13:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.82.74 with HTTP; Wed, 18 Jul 2012 05:13:22 -0700 (PDT)
In-Reply-To: <5006A6F6.3040208@freenet.de>
References: <5006A190.6090508@freenet.de> <5006A6F6.3040208@freenet.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 18 Jul 2012 13:13:22 +0100
Message-ID: <CAJTo0LbGL6hakXLgVf8SuK6A-VxgnJM7JtRJObd4_amdongwWA@mail.gmail.com>
To: Axel Beierlein <belatronix@freenet.de>
X-Gm-Message-State: ALoCoQnkWpjQ8f1EFvv2f428KT++7YaRKZ19F7lMpargmCrAMofoW4IQwpQlGRU445ZV72oQ8MWU
Cc: yocto@yoctoproject.org
Subject: Re: [Solved] Re: Error: PATH contains '.' or '', which will break the build, please remove this.
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
X-List-Received-Date: Wed, 18 Jul 2012 12:14:03 -0000
Content-Type: text/plain; charset=UTF-8

On 18 July 2012 13:07, Axel Beierlein <belatronix@freenet.de> wrote:
> Hello,
>
> i've solved the Problem.
> A few posts ago there was a hint with a trailing : in a PATH Var.
> This was my Problem. Deleting the last : an it works!
>
> This hint could be also integrated in the error message.

I'm working on a patch to display the parsed PATH so you'll see the
trailing empty element in that case.

Ross

