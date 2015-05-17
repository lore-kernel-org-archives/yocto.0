Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32E2FE009E1; Sun, 17 May 2015 15:53:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.3 FSL_HELO_FAKE FSL_HELO_FAKE
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CB20E007B6
	for <yocto@yoctoproject.org>; Sun, 17 May 2015 15:53:43 -0700 (PDT)
Received: by lagv1 with SMTP id v1so194216433lag.3
	for <yocto@yoctoproject.org>; Sun, 17 May 2015 15:53:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=sJm1Wfbi6OWcLymyd5oIZEOiPp40NUbKFFN+GqHrl0w=;
	b=KLXPrGac2vcrkl04TphdNT1msBCqRthAemWZYpFTXzVSH7XnA4uiQqZzHflqgXVSoC
	8DCg8Peuk8Vxi0e8jCrV4epRS10lunYG9iDJNsGMsClTXRXyFoX+ihyz5UKARQ2B5u1x
	p44J1YsQIdv3jJ/sTM+Ysba6k8JmQ8nDmuxkvbGbTknEArBAFSkPjy50QFnz6MQlcgAV
	ezYT1edmV6MZTUtbg71Jszf6OehG9s5X+qRS4VE2ocF/KAwYJ7n/0tM4VK74NFZUwwFL
	XLjTE+1Kq/93e6thg7ykIdDIYPclhwVLdb8xuW2tuITbVL6jdInBCencB4EpvIiehApG
	xGYg==
X-Gm-Message-State: ALoCoQmn0tCs08aeXk7xePbGtgde2I+X89r5ykv3S6PuyjZhZstOSOcbi+chVbWHoDxQCFtQ16JH
X-Received: by 10.112.171.101 with SMTP id at5mr15530688lbc.66.1431903221860; 
	Sun, 17 May 2015 15:53:41 -0700 (PDT)
Received: from gmail.com (87-63-77-14-static.dk.customer.tdc.net.
	[87.63.77.14])
	by mx.google.com with ESMTPSA id ac6sm2220718lbd.41.2015.05.17.15.53.40
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 17 May 2015 15:53:41 -0700 (PDT)
Date: Mon, 18 May 2015 00:53:39 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20150517225339.GD3772@gmail.com>
References: <cover.1431121258.git.petter@technux.se>
	<f77554f3a424b1e0a9a43cede5ba642a45cf4255.1431121258.git.petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <f77554f3a424b1e0a9a43cede5ba642a45cf4255.1431121258.git.petter@technux.se>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 5/5] linux-raspberrypi: Update 3.12 branch to latest
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
X-List-Received-Date: Sun, 17 May 2015 22:53:49 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Fri, May 08, 2015 at 11:49:05PM +0200, Petter Mabäcker wrote:
> Update linux-raspberrypi_3.12 to latest revision.
>
> Remove sl030raspberrypii2ckernel.patch since it will not apply anymore
> and its content seems to be obsolite after
> '558d0bf Fix grabbing lock from atomic context in i2c driver' was
> merged to 3.12.
>
> [Support #60]
>
> Signed-off-by: Petter Mabäcker <petter@technux.se>

Patch merged to master. Thanks.

--
Andrei Gherzan

