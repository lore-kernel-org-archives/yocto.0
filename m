Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D94FE0073D; Thu,  8 May 2014 08:29:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.182 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1592 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 08:29:11 PDT
Received: from mail-we0-f182.google.com (unknown [74.125.82.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3811E00478
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 08:29:11 -0700 (PDT)
Received: by mail-we0-f182.google.com with SMTP id t60so2733500wes.27
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 08:29:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:content-type:mime-version:subject:from
	:in-reply-to:date:cc:content-transfer-encoding:message-id:references
	:to; bh=RA9XKDuN8W2khJPZ1rmCVCZ9BM7OLe3sU+T7+hS5hZQ=;
	b=HTIOoe/lfHaiVzv2YN416dGL1lfIdxLg/xhOB5uW0CatSE+ra0HWG7IePRxd/vC60c
	B9FRDcDLIB2PEOfuOxxQjFj2huMHR9HTrgqHqdHcCeqC+Nb++t1bsF2ObnyA5B5GBAtd
	BJRUBybPi2dKo8Iz9oShOxBf0dvtalguEwLQTr+UarheY7945j3E8LcRoKUAS9GKT+Qa
	XcfZ2D2fnAPvZlzDhNCvadrZ2Ws6Cfh+Bja6f8b6lAUxxhUgwfCoTwzCXZR3iBEMAjh5
	AAsfqo47N1Wsyw/i1vLaU7Y0CpTINGMtB5WpXeM+2bMHN5Qjm9NGxf2wVgZKA7fJqtqG
	SwKA==
X-Gm-Message-State: ALoCoQnaZYL+z1hcNMNT09MP9nO3DieL/L38L8tSpc3GzTD4bhFA5WcZbLCh1n8ULsHxedguivdb
X-Received: by 10.194.171.167 with SMTP id av7mr3706464wjc.32.1399561357569;
	Thu, 08 May 2014 08:02:37 -0700 (PDT)
Received: from ?IPv6:2001:610:612::d57a:d7dd:850d:82ea?
	([2001:610:612:0:d57a:d7dd:850d:82ea])
	by mx.google.com with ESMTPSA id km2sm1626372wjb.13.2014.05.08.08.02.35
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 08 May 2014 08:02:35 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <CAJTo0LZbPXzXyvKXGZZYDT1BDWg3XYrRO_NXsXmuHLMmmW_S3Q@mail.gmail.com>
Date: Thu, 8 May 2014 17:02:33 +0200
Message-Id: <A31D944B-B8FC-4ABC-A4EF-1450A2E9D117@dominion.thruhere.net>
References: <CAJTo0LZbPXzXyvKXGZZYDT1BDWg3XYrRO_NXsXmuHLMmmW_S3Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1874)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-devel <openembedded-devel@lists.openembedded.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] GStreamer 0.10's future
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
X-List-Received-Date: Thu, 08 May 2014 15:29:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 8 mei 2014, om 16:48 heeft Burton, Ross <ross.burton@intel.com> het =
volgende geschreven:

> Hi all,
>=20
> Sorry for the cross-post but I want this to have a wide audience.
>=20
> For the 1.7 release I want to move GStreamer 0.10 from oe-core into
> meta-multimedia, and ensure everything in oe-core has ported to
> GStreamer 1.x.  GStreamer 0.10 is considered dead upstream and is
> unmaintained so we don't need to be shipping both versions anymore.
>=20
> Everyone in agreement? =20

A plus one from me.

> Should I expect any hate mail over this?

This is the internet, of course you'll get hate mail :/=

