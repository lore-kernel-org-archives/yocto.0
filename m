Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EA3BE00563; Wed, 10 Sep 2014 04:50:59 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27185E0049D
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 04:50:54 -0700 (PDT)
Received: by mail-qg0-f53.google.com with SMTP id q108so1694619qgd.12
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 04:50:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=TlzYIiHeWI6w71mzfQgTj2FOi711vhNVAbCeyEDC/8o=;
	b=aoxM2ocRMwh02mYOYop4CFtyNAUUW35s/az60zMx0cCQy8f99rTaMyvwK4fI99K7RG
	iot6MAaO4yGIqcbCEKbK5efH06Mp88uh1bixl4lLAro0VKa7IHoAHsSB2UhU+MTzC8hZ
	2Zt/4aBoL2otZHoHHD1gi6RCB0LZYSUTShW0X41FZVMkieh0Dcw3hXE1RVLNECshHjWg
	DLRVkyLytqTDuY3Xa5DnN1E4Ci+aVa8Cn3G6n6sgJQIYDpk0r4A0iUsyBgXfe+QbEha5
	aebG/PE/H1LkaD1VkWZj/iACz0DYFhSGGl+GePpPweCGCEpVvXgHqGmxsytnsiZLfZgJ
	8aAg==
X-Gm-Message-State: ALoCoQmvIKcBO7RimGVoOclx8Jg2VDh8C26o6k7hgXdszMtoOjFPoz7/ptMvN0gh6xgqxjXZwaGf
X-Received: by 10.224.103.65 with SMTP id j1mr60708039qao.17.1410349854086;
	Wed, 10 Sep 2014 04:50:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.29.183 with HTTP; Wed, 10 Sep 2014 04:50:34 -0700 (PDT)
In-Reply-To: <541033E3.2040804@iki.fi>
References: <CALb224-2biSJpCoLBojkMgjGKX4a_YUayfUQwByFTDNYqVKeCA@mail.gmail.com>
	<540F4F0B.7010707@balister.org>
	<1548923.UYKtK7c5ZH@peggleto-mobl5.ger.corp.intel.com>
	<541033E3.2040804@iki.fi>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 10 Sep 2014 12:50:34 +0100
Message-ID: <CAJTo0LaJhbaGZeKVqMaf1YX4SokzZuQ9BguvrjWWvf-TF-C3Og@mail.gmail.com>
To: =?UTF-8?Q?Dag_Bj=C3=B6rklund?= <dag@iki.fi>
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
X-List-Received-Date: Wed, 10 Sep 2014 11:50:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 10 September 2014 12:20, Dag Bj=C3=B6rklund <dag@iki.fi> wrote:
> How do I populate /var/lib/opkg/status so that all .ipk packages that Yoc=
to
> has installed for me are seen if I e.g. say 'opkg list-installed'?

The IMAGE_FEATURE "package-management" controls whether images have
this data preserved, so you probably need to add that to your image.

Ross

