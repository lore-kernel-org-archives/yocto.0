Return-Path: <tom@ewsting.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0717AE00B85; Thu,  5 Jun 2014 13:09:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.177 listed in list.dnswl.org]
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A783AE00A44
	for <yocto@yoctoproject.org>; Thu,  5 Jun 2014 13:09:37 -0700 (PDT)
Received: by mail-ob0-f177.google.com with SMTP id wp4so1609582obc.8
	for <yocto@yoctoproject.org>; Thu, 05 Jun 2014 13:09:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=SN9eIzroTDM9p4ZDNFxjMTmYwFOG8iYT4Y53xYCqQmY=;
	b=eD2L3cNff3SSuLdc4DGI7TuGdLbCK7jwrmWirJRNkyOaFVL8fO/6eWcqPjqWSfew6L
	VhRW4ERDbv4Q+NQa2xSYIvpgRgDKaZhgBiFfzJKFmAWxM1LU3bHm7UdkZ2DgWS+MBdsm
	0WZD34JKgbrhzis8Y/0FSJW8FQPKPUcOVDwkU56dETu8EfDiFUEl3/qMDJODoiFtLOoF
	hNU6Sbwa2yEgrr9AnB67qj6wAnmJ3QoNt/ZaEVDW57oNkI9sxzRx2AOz6f1X0LXObsHH
	Np8rR6XZ213Vf424QRj/tPlpEtb7Lx+QfhljS91veYAYUDDgQ5P+qTXG97J5kT74CIwv
	VtwQ==
X-Gm-Message-State: ALoCoQlCn3AlDpEOdgqcwX/srQhqm4y/DAOUi1D28BVTJKpOxQtf3GGaBdG1CfIjM2IUJAoSQiRm
MIME-Version: 1.0
X-Received: by 10.60.52.207 with SMTP id v15mr71040307oeo.19.1401998977113;
	Thu, 05 Jun 2014 13:09:37 -0700 (PDT)
Received: by 10.202.84.67 with HTTP; Thu, 5 Jun 2014 13:09:37 -0700 (PDT)
X-Originating-IP: [81.99.113.17]
In-Reply-To: <20140605195602.GN7521@gmail.com>
References: <1401791135-11672-1-git-send-email-tom@ewsting.org>
	<20140605195602.GN7521@gmail.com>
Date: Thu, 5 Jun 2014 21:09:37 +0100
Message-ID: <CAMNOm+gNDiJd2BT9omKUGj=A5z00yWCA7qd7YDLqvZSL+k6fLw@mail.gmail.com>
From: Tom Ingleby <tom@ewsting.org>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "Le Foll, Brendan" <brendan.le.foll@intel.com>, yocto@yoctoproject.org,
	opkg-devel@googlegroups.com, Thomas Ingleby <thomas.c.ingleby@intel.com>,
	paul.eggleton@linux.intel.com
Subject: Re: [PATCH V2] opkg-build: add detection if using GNU tar.
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
X-List-Received-Date: Thu, 05 Jun 2014 20:09:43 -0000
Content-Type: text/plain; charset=UTF-8

Great!,

Have a good evening,
Tom

On 5 June 2014 20:56, Paul Barker <paul@paulbarker.me.uk> wrote:
> On Tue, Jun 03, 2014 at 11:25:35AM +0100, tom@ewsting.org wrote:
>> From: Thomas Ingleby <thomas.c.ingleby@intel.com>
>>
>> * Some options of GNU tar do not exist on other implementations
>>
>> Signed-off-by: Thomas Ingleby <thomas.c.ingleby@intel.com>
>
> I've made a couple of slight further changes, hope you don't mind.
>
> I've changed the subject to:
>
>     opkg-build: Detect if tar supports '--format' option
>
> I've also added a comment before the block of code which sets tarformat:
>
> +# Determine if tar supports the --format argument by checking the help output.
> +#
> +# This is needed because:
> +#    - Busybox tar doesn't support '--format'
> +#    - On some Linux distros, tar now defaults to posix format if '--format'
> +#      isn't explictly specified
> +#    - Opkg doesn't currently support posix format archives
> +#
> +# It's easier to check for mention of the '--format' option than to detect the
> +# tar implementation and maintain a list of which support '--format'.
>
> I've merged this to master with those changes. Sadly I made an error writing the
> comment and pushed too soon so I've pushed another commit to fix that.
>
> Many thanks,
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk

