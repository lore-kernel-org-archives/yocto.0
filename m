Return-Path: <dbjorklu@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D368E00790; Thu, 11 Sep 2014 22:36:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFDDEE006EF
	for <yocto@yoctoproject.org>; Thu, 11 Sep 2014 22:36:22 -0700 (PDT)
Received: by mail-lb0-f175.google.com with SMTP id v6so249904lbi.6
	for <yocto@yoctoproject.org>; Thu, 11 Sep 2014 22:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=9imvuYNMZf5SuLW69RSlB2ExHQKJJefV7X6IjaQPfd4=;
	b=q106GU9tDGH7IFuXv9RCq8z+xrjC1DrwyaFbRFRGh/h+oPyD3SuftULkci6MhitBzY
	e8RZ6ELS4iN59EJIfRMw/omIPk75TGh2ZpLVHlD3M5e7fVPCpe09prAXQsBBVos5SJ1D
	qrMP714pALel24SyhteWbUdg2OM17C50SKCRSXO0yWOVQNis9kLKeJk5X/uPlKxXz6I0
	40jV21V49qCHv1Eqln4/w7QZQbZRGXJphKabuJJSxNZYm8UwpdvArmbJSkSFX3Tu/l+x
	6QWnlryDWeiLWsc2Xh90PB+b2zzKS1G+j1yfIQrzjRReKk5zrBDWj+MmJesPeVyD4NaV
	78Qw==
X-Received: by 10.112.184.161 with SMTP id ev1mr5700550lbc.82.1410500181246;
	Thu, 11 Sep 2014 22:36:21 -0700 (PDT)
Received: from [10.0.16.61] (an229.netikka.fi. [213.250.75.229])
	by mx.google.com with ESMTPSA id zc10sm951029lbb.40.2014.09.11.22.36.20
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Sep 2014 22:36:20 -0700 (PDT)
Sender: =?UTF-8?Q?Dag_Bj=C3=B6rklund?= <dbjorklu@gmail.com>
Message-ID: <54128652.8030708@iki.fi>
Date: Fri, 12 Sep 2014 08:36:18 +0300
From: =?UTF-8?B?RGFnIEJqw7Zya2x1bmQ=?= <dag@iki.fi>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <CALb224-2biSJpCoLBojkMgjGKX4a_YUayfUQwByFTDNYqVKeCA@mail.gmail.com>
	<540F4F0B.7010707@balister.org>
	<1548923.UYKtK7c5ZH@peggleto-mobl5.ger.corp.intel.com>
	<541033E3.2040804@iki.fi>
	<CAJTo0LaJhbaGZeKVqMaf1YX4SokzZuQ9BguvrjWWvf-TF-C3Og@mail.gmail.com>
In-Reply-To: <CAJTo0LaJhbaGZeKVqMaf1YX4SokzZuQ9BguvrjWWvf-TF-C3Og@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Populate /var/lib/opkg/status
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
X-List-Received-Date: Fri, 12 Sep 2014 05:36:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10.09.2014 14:50, Burton, Ross wrote:
> On 10 September 2014 12:20, Dag Björklund <dag@iki.fi> wrote:
>> How do I populate /var/lib/opkg/status so that all .ipk packages that Yocto
>> has installed for me are seen if I e.g. say 'opkg list-installed'?
> The IMAGE_FEATURE "package-management" controls whether images have
> this data preserved, so you probably need to add that to your image.
>
> Ross
Thanks, found this in the documentation now as well. Unfortunately I 
don't see a difference.
Should I find a /var/lib/opkg/status file after adding the feature and 
building?

Dag


