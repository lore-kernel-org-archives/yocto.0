Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DA9EE005B7; Wed,  2 Dec 2015 14:06:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8ED0E00404
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 14:06:00 -0800 (PST)
Received: by wmuu63 with SMTP id u63so233868588wmu.0
	for <yocto@yoctoproject.org>; Wed, 02 Dec 2015 14:06:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=HyK3ibJnniMIjVLErCazR/yiLs56CZ8GgBv6zUop+M8=;
	b=qHktqM5+h2TJ4BpOAK7w8sNLpHcLyBLEsy3O6BnL8/nZWN4MIhJ2Umlsdz/sqepUam
	qQFtCh7MS5iHyEF4niT3i8JbRusEsErVvaKX4Xf19/61nBaHTN27gJqcaCSBO1tRPBEa
	DEyv7nvWayCZIjeSJLrOck1VkWSixVuV/hu30TVE7bUI2YjqeSaPN9IEksaC8ZbQ7Jvf
	0g31rdwLA1o58CgCYTIZ2xt30SBkLN4PrFxEjYmpEQsaSB4AR9L0Ld7iEwHvKTUpO4Aa
	QClQqtOkM4YCcitaBOeDy74AX70cVwUzsWuyCQe2wAUjdRgVtambzXOdD0Lz7q2h7qE9
	Rdkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=HyK3ibJnniMIjVLErCazR/yiLs56CZ8GgBv6zUop+M8=;
	b=HlYtbXqf+Uq1IZYhAiK86f9b6oUFVqhBggJ/QO4MqbG2r+rLi9ktGdXsY9VjHLhTGV
	fKUtEwW7kS4czlHpOvuOQa8zrPlBB1m8Niqx78Axf7naM1GnhUsk0gSfC9umadz/Dww3
	coqSxTiUmj4iPCvL+AOAWX+KmA+UxT2DoYqS1HbeNo24xzt2h18nEkQYUiOuXg4EHpqK
	O7Sj/qr9e42Qdavd+5FoSTx8kbiRVImJAfUUeDpE+mdZ+fGGS8Mk8n6/LKkos6lKbINT
	2OA28Yug2mWjoZMJWeqlwjr8vz15D8DJA6KkQnQyDO2T8d11B0zX3iUYGGZPmPUT6AfK
	8SFw==
X-Gm-Message-State: ALoCoQmtK+gBx+5Nu7PXbxvBYmp5yItPv+q3q2UFmpPpJiD5M7bP4q17BO2jOE6ZdzT9f3H1RCCK
X-Received: by 10.28.142.205 with SMTP id q196mr49287550wmd.42.1449093960037; 
	Wed, 02 Dec 2015 14:06:00 -0800 (PST)
Received: from resin (ipservice-092-217-115-210.092.217.pools.vodafone-ip.de.
	[92.217.115.210]) by smtp.gmail.com with ESMTPSA id
	t64sm32868604wmf.23.2015.12.02.14.05.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 02 Dec 2015 14:05:58 -0800 (PST)
Date: Wed, 2 Dec 2015 23:05:56 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20151202220556.GC8209@resin>
References: <1447590685-8145-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1447590685-8145-1-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v5] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Wed, 02 Dec 2015 22:06:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Nov 15, 2015 at 11:31:25PM +1100, Jonathan Liu wrote:
> [Support #16]
> 
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---

Merged to master. Thank you.

-- 
Andrei Gherzan

