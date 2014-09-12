Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99207E00796; Fri, 12 Sep 2014 02:15:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.43 listed in list.dnswl.org]
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57213E00744
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 02:15:19 -0700 (PDT)
Received: by mail-qa0-f43.google.com with SMTP id x12so387475qac.16
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 02:15:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=VD6My8wGJ9RSrGU/uNGj6HZUnbVyVjxIu8PiRRN47bQ=;
	b=hRLv8rvJUdCbjjmOZXZHEbXbzz0hquVO9mMbI/RN3YAjSw3YxW9RflTrlMtZsx2UdC
	Bq9awa3X5yTgnU3AS0eU8tIabwLRRNc7emuyPp7Hdz2oWDdDxFlYq7OKgWjcxvmHzYM3
	yyWKx00rtFjIyEC1XTf4eLv/+SpOjNhCwruQQj5Osk6+CoF5yk9Q66om6GyxUah0wWOH
	9bJp/rRDuE1sM+Un5+KTWdc6qz4th5S2Ou42ljpYj/zM0rUEAs5dH3AYFrYA7CgwAndt
	e5dmQRBZ7BfXmBuJj0uVsgib9hE4+2fJi5BfQahaTLDAqTqoSWf82vXDrCNcVjVE2L6x
	EBBw==
X-Gm-Message-State: ALoCoQnn+nHNOjJm1oIBfeKCH5UIaDdyus1QIO7whbAjTH0cWulhCHh361r5Va9JpB27sNnW/eFU
X-Received: by 10.140.27.173 with SMTP id 42mr10175215qgx.59.1410513318238;
	Fri, 12 Sep 2014 02:15:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.29.183 with HTTP; Fri, 12 Sep 2014 02:14:58 -0700 (PDT)
In-Reply-To: <54128652.8030708@iki.fi>
References: <CALb224-2biSJpCoLBojkMgjGKX4a_YUayfUQwByFTDNYqVKeCA@mail.gmail.com>
	<540F4F0B.7010707@balister.org>
	<1548923.UYKtK7c5ZH@peggleto-mobl5.ger.corp.intel.com>
	<541033E3.2040804@iki.fi>
	<CAJTo0LaJhbaGZeKVqMaf1YX4SokzZuQ9BguvrjWWvf-TF-C3Og@mail.gmail.com>
	<54128652.8030708@iki.fi>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Sep 2014 10:14:58 +0100
Message-ID: <CAJTo0LaPrARuWwkDgZk4=Rtdbj7HMKLY-uCDpmZpwtpqafpBBQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 12 Sep 2014 09:15:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 12 September 2014 06:36, Dag Bj=C3=B6rklund <dag@iki.fi> wrote:
> Thanks, found this in the documentation now as well. Unfortunately I don'=
t
> see a difference.
> Should I find a /var/lib/opkg/status file after adding the feature and
> building?

Yes, assuming that you've told bitbake to use opkg and not dpkg or rpm
(PACKAGE_CLASSES).

Ross

