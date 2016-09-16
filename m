Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BE54E00C55; Fri, 16 Sep 2016 01:25:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oliver.graute[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A684E00A21
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 01:25:04 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id b187so7897313wme.0
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 01:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-disposition:user-agent;
	bh=Vjp4njFiyEzW90RwuHxzUh/iNE1sBHMf2uDQbPXH5FY=;
	b=JxZg9FSZWFEwDLLkdNpitbvwYHIIUtfjWbR4g9BcboK8otQtf7I8JtWGk/lWfYJ7QZ
	mY2BD+4q5jpp0UN0tkuZNGigWlEjOpnaGPL/i+AqNQcXYcEITb2wrb+iUoDw8xkXi6hT
	T7o+vwDOAmiFleemjotzMC3Ts+K1uFxngaNdtdpUNNxTpPpaYR4BFLjWr3DjK0DI4BS0
	QXM1W4IUM5Aem9mjsGF7bcWjoI+HYwUGmakFvPxZEO4EVy30ByL+ldO5cYLgxiAxLZih
	LBXNWxPCBM2TdOSkyvc7UYvJF3sKOIuDacfBptcfe+oyCUy91Xywu1XPoie+sEqmSS8w
	3P3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:mime-version:content-disposition:user-agent;
	bh=Vjp4njFiyEzW90RwuHxzUh/iNE1sBHMf2uDQbPXH5FY=;
	b=Mn/CeY9+J9zMmcBvQvJk9BDN3QFh8eiqHUt+JiHbxX8m8/vXV3Kq+95ajkUa2qIPvf
	bm7LkoP6Nko6sxgUlOSFUEY3lhjdoWX0hfv4kr0iZMQpSilP/i9mDTTWRBzzfGCzWOt9
	5jUbyijwqzxVSWZtCiWGt2lieh73Dx8KbWRe2B4qqlfihI9uXChqWXYYSdomxLU2wg3b
	ihk9tKo5DTtaDYDN745ynyEoz6HSRDBC3LwbwWsRf2qaS5BQiY4QPoeySvNnn8b0JTYD
	7JR0BYYxvhJNyOD0N23ztk2ZNZYjJi3Q1xNsSNiiLEy1wj5C8HG88d3o5ErkcbaUHDe9
	vkUA==
X-Gm-Message-State: AE9vXwN3JlLR8IoNtEM9XA7p3gBhk+0jOWLUuY9u+VNlbPKN4j91x/tciC7bpidbWEpVWw==
X-Received: by 10.194.11.100 with SMTP id p4mr9881706wjb.125.1474014303762;
	Fri, 16 Sep 2016 01:25:03 -0700 (PDT)
Received: from localhost (x4e360bb9.dyn.telefonica.de. [78.54.11.185])
	by smtp.gmail.com with ESMTPSA id
	u64sm6186862wmd.20.2016.09.16.01.25.02 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Fri, 16 Sep 2016 01:25:02 -0700 (PDT)
Date: Fri, 16 Sep 2016 10:24:06 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20160916082406.GB27958@graute-opti>
Mail-Followup-To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: build ntp with openssl support
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
X-List-Received-Date: Fri, 16 Sep 2016 08:25:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

how can I build ntp with openssl support?

I already created a ntp_%.bbappend file to extend the recipe ntp_4.2.8p4.bb.

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
PACKAGECONFIG += "openssl"

is this sufficant to enable openssl?

How can I determine if ntp supports sha1?

Best regards,

Oliver

