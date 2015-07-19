Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88799E00A26; Sun, 19 Jul 2015 10:05:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW,URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 FSL_HELO_FAKE FSL_HELO_FAKE
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33751E009E6
	for <yocto@yoctoproject.org>; Sun, 19 Jul 2015 10:05:20 -0700 (PDT)
Received: by wgav7 with SMTP id v7so49464737wga.2
	for <yocto@yoctoproject.org>; Sun, 19 Jul 2015 10:05:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=v4H+tN6W5IZtX9xwe1DzjGwB8e2JppWmo3wpZjDtN6w=;
	b=YFNRUN7KyQ0K1WRVUgKWKLbZLJiARj6cfmA4U3NbjSVCACNNwg21CPVFtqbhNiuiIy
	Gof98K3wZA4Eh9TiNPp1NGC6ojidrLrj5CUA7gOHndznfSJ4/vJqtJxuxmoksDC+Jgys
	IfLCEUGY39mrUedX91la9Q8AS+6pyVpFQ1sfMYE3GE/CEa7KmEZhdYNq1/iHhs5G/fWC
	p9RjgaNW+oWOMtCw8NyhFSHnpwwlruefg7wNbS8RI5jeChN4H/dtQszR4eawtxNKq9ZZ
	3XLxcFW4VB3d+LpcGGImQA2r9OoH/nA0TCw0klVOiAwHDM6COdLVjWCfG0XM8V/jdfI5
	WCbw==
X-Gm-Message-State: ALoCoQkZ0++6Mifc2az/NSX/XkVJgHDbFkJuFe/ynU86nDGkjPgsVltQzWy6mNMrvwGkCNa9Y8ub
X-Received: by 10.181.13.36 with SMTP id ev4mr13927316wid.65.1437325520047;
	Sun, 19 Jul 2015 10:05:20 -0700 (PDT)
Received: from gmail.com ([2a02:8108:9b40:1710:3602:86ff:fe43:7ba5])
	by smtp.gmail.com with ESMTPSA id
	uo6sm27938914wjc.1.2015.07.19.10.05.19
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 Jul 2015 10:05:19 -0700 (PDT)
Date: Sun, 19 Jul 2015 19:05:17 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20150719170517.GB2725@gmail.com>
References: <cover.1436366548.git.petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <cover.1436366548.git.petter@technux.se>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 0/6] Update packages
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
X-List-Received-Date: Sun, 19 Jul 2015 17:05:28 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed, Jul 08, 2015 at 06:10:33PM +0200, Petter Mabäcker wrote:
> See http://redmine.gherzan.com/issues/60 for additional info.
>
> The following changes since commit c8532df1c2e4812b3520d32ed49be943bea2edd9:
>
>   If SERIAL_CONSOLE is already define by another layer, this value may not be good. (2015-06-05 16:38:14 +0200)
>
> are available in the git repository at:
>
>   git://git.yoctoproject.org/poky-contrib petmab/rpi_redmine_60_03
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi_redmine_60_03
>
> Petter Mabäcker (6):
>   bcm: Bump SRCREV
>   rpi-mkimage: Bump SRCREV
>   bcm2835: update version to 1.44
>   pi-blaster: bump to latest version
>   rpi-gpio: update version to 0.5.11
>   userland: bump SRCREV
>

Series tested and merged to master. Thanks.

--
Andrei Gherzan

