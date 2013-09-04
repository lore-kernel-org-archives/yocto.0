Return-Path: <jc@vtkloud.com>
Received: from mail-bk0-f54.google.com (mail-bk0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFDC5E01206
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 02:36:53 -0700 (PDT)
Received: by mail-bk0-f54.google.com with SMTP id mz12so34656bkb.41
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2013 02:36:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=0ysVlc1xJstP2C8Q0J0FFuXiFwV6aJAGfdC2ABVqgF0=;
	b=TfCE5FjaQOwYzyvhelasYl02qpUQjII4ehHCqbSMhXk0IENcyxQpW9KIkS9OTjRBj3
	Y+uE1Ves5YXxZGmkcGxZwIfUICC43oFxD7pTXk4MekTBxQmaxCTwRoCevNl4KJ9M6EWO
	clHjieDeDitmzmxDMsoQlK3nGHBV8JiULdiO4KmSJbiQ0Nrt6bfEkMuWEoERNNEEsR82
	RodDYQd5zIXEO8kyf+prh9sOwuYjyDohB7j8TCkJo3Trr7snOPAOEtBYN8LJ1JukfmKR
	0Jv4gt7WmbxYPMEAolxMGYq2pqAmJtzxdE+7i9hav9fLNlfFVNVgXlYDmtcMhDy3hv8a
	njcA==
X-Gm-Message-State: ALoCoQkUZ3CcuEGenbdtG0DiYvPAgkMdeoY2A7vMqqgdYy4cLB4oggKUZ0wogX/4GE/qLUyctomj
X-Received: by 10.204.71.133 with SMTP id h5mr1616490bkj.0.1378287412082;
	Wed, 04 Sep 2013 02:36:52 -0700 (PDT)
Received: from [172.24.63.121] ([94.103.137.126])
	by mx.google.com with ESMTPSA id zl3sm5944966bkb.4.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 04 Sep 2013 02:36:51 -0700 (PDT)
Message-ID: <5226FF30.9010000@vtkloud.com>
Date: Wed, 04 Sep 2013 11:36:48 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAFyqS9ph4qdURC517N7cDr_05KS3kQJMgoQ-tMV+vLUXwMd70A@mail.gmail.com>
	<CAFyqS9qZAsFnXn2CF7-K6fWK3yEMLAZbDTkx_a81=s+Nj=ugUw@mail.gmail.com>
In-Reply-To: <CAFyqS9qZAsFnXn2CF7-K6fWK3yEMLAZbDTkx_a81=s+Nj=ugUw@mail.gmail.com>
Subject: Re: libtool problem?
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
X-List-Received-Date: Wed, 04 Sep 2013 09:36:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 04/09/2013 11:24, Hans Beckérus wrote:
> On Wed, Sep 4, 2013 at 9:53 AM, Hans Beckérus <hans.beckerus@gmail.com> wrote:
>> Hi. I recently discovered that our populated SDK can not properly
>> build much at all :(
>> libtool complains about .la files that have been moved and not being
>> able to find dito.
>> The rootfs builds fine however. What I did noticed was that in our .la
>> files we get lines like this:
>>
>> dependency_libs=' =/usr/lib/libxcb.la =/usr/lib/libXau.la =/usr/lib/libXdmcp.la'
>>
>> Is that '='-sign really supposed to be there? Is that why many builds
>> fails to properly locate the .la files?
>>
> The '='-sign is still a mystery to me. But it does not seem to matter much.
> If I configure my packages (built from the SDK toolchain) using
> '--with-libtool-sysroot=/home/toolchain/sysroots/cortexa9-vfp-poky-linux-gnueabi/'
> it works! But should that really be needed? Is the path to be used by
> libtool not supposed to be automatically resolved to point at the
> toolchain sysroot in cross-compilation environment?

In my case '--with-libtool-sysroot' is correctly resolved by the SDK 
setup, but ./configure complains it does not recognize it, so I end up 
not being able to test generated (dynamically linked) binaries. The 
common "hello world" template says it cannot find ld-linux, and indeed 
it's in the path of libtool-sysroot.

Googling it did not helped me to resolve the issue :(

Jay


