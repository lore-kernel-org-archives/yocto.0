Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19025E00930; Wed, 10 Dec 2014 02:25:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90922E00922
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 02:25:01 -0800 (PST)
Received: by mail-lb0-f178.google.com with SMTP id f15so2225145lbj.23
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 02:25:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:organization:user-agent;
	bh=GcetWLNeTDpnypzOYRDKATMoqgJzW0nDIuR4osz0ajw=;
	b=TYB1QW/VHBk7i3z2DDCb1AcmVcMzpbIfDqvIYCnp/RnZx4wa/OuMFMVYECOkTJlHYb
	VewsO931qMEKOyvewFz/NpOmY8kXs+ZIZDcxm3uetlsfZXfMk9muTLVmUHJeM16q0l8j
	Ao25JDypsu9yzCQUh/9z8pt1I7te90s/XOZmJDSQXYObzl/pvYecEOO8/N2yUUDbCBXp
	TvDOry0yP/PFRDI1HUmM9js56lr4xuiETfZMSbo3ttdXBwp70AnL74IZ+jrce7jUWMV/
	jsZMMR3tWccx0k8cQR+y655mJWSuOm3/BtjpTHUGjbq0KYYzasmXXgBwQnHYy5Kevf7L
	IBbw==
X-Gm-Message-State: ALoCoQlFtrW4JbvRrRw17Nrjy4XDZ9U2sJJOyKwhYz0f5ilZu/GruDDJI7QQK9/HavqBRjIVs5bf
X-Received: by 10.112.150.71 with SMTP id ug7mr3181417lbb.73.1418207100099;
	Wed, 10 Dec 2014 02:25:00 -0800 (PST)
Received: from ad.chargestorm.se (81-232-163-241-no29.business.telia.com.
	[81.232.163.241])
	by mx.google.com with ESMTPSA id g10sm591256laa.12.2014.12.10.02.24.58
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 10 Dec 2014 02:24:59 -0800 (PST)
Date: Wed, 10 Dec 2014 11:24:13 +0100
From: Anders Darander <anders@chargestorm.se>
To: Matthias.Heise@atlas-elektronik.com
Message-ID: <20141210102413.GC14155@ad.chargestorm.se>
Mail-Followup-To: Matthias.Heise@atlas-elektronik.com,
	jimr@spectralogic.com, yocto@yoctoproject.org
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A77@MSSRVS5.atlas.de>
	<86196249137E0843B2E0673D4F731E0C0108E2916C@reactor.sldomain.com>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A78@MSSRVS5.atlas.de>
MIME-Version: 1.0
In-Reply-To: <4009F04F5925CD4C95FBD9BE756381FE02848F2A78@MSSRVS5.atlas.de>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: jimr@spectralogic.com, yocto@yoctoproject.org
Subject: Re: nfs-boot problem
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
X-List-Received-Date: Wed, 10 Dec 2014 10:25:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Matthias.Heise@atlas-elektronik.com <Matthias.Heise@atlas-elektronik.com> [141210 09:35]:
> As to the rootfs, this folder
> fsl-community-bsp/build/tmp/work/wandboard_quad-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs
> seems to be exactly the structure that is packed into the
> image.tar.bz2 so I thought it is a good idea to directly use it as nfs
> share. Is there some reason not to do so ?

Well, there're quite few. For instance file and directory ownership,
permissions etc. If you're not using devtmpfs, and thus would like
static device nodes, they wouldn't be created in the build directory.

Thus, you really should be using the tarball when you want to run an
nfsroot.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

