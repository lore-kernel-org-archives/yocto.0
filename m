Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47072E00EC6; Thu, 30 Jun 2016 16:03:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D673BE00A7B
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 16:03:09 -0700 (PDT)
Received: by mail-pa0-f53.google.com with SMTP id bz2so32449537pad.1
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 16:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=JdyA5e9e8cGPSPva1gKfq9rs7DpFmLWV//og5oxYWKM=;
	b=WOO8wEwo2MAl3Rjc0JR7Ax3WHFP+Un2BoM99L5DOwsnEdqlGUF2EYIYgGILC5Djc4y
	sfhOkONj6yTOwjhpjqzPyNJJfDLuMO89jESah3yVM0f4yAIXg0evQ6nLYBoQOlU3Egz8
	LmD7+IiYU2FzNaIZm9inUEqezL3jOtpp5MCXU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=JdyA5e9e8cGPSPva1gKfq9rs7DpFmLWV//og5oxYWKM=;
	b=UGKwMHxfLfHOcOVtavGLe2wm2JJAfqxvchPe4XBUsN8gZWARj2Kg5BvlycPZk8SvMG
	wdoQ+0J3l3LD23NnlMVHqUIxuInzeBnR7mna6UzE+EtXL6uF2Rz3d+rbnu5ZqC4kVPKV
	TbnPPdwAGH/T/ZbnKz7GNv4hFrNmmZl48OYG2qLn5NKPHOL65QOPjXJ2dDgQXBQI508W
	gK+aSTh+EUQv9empkshj227+9HI1LUbfxY4zIXpcRlGyJaxyoh1AzZvWpjoxsyXA3Dli
	iItUg0dhv0EWj2QCgo+N3uUHAQhdgwFVjZ5Z3vec0udhfPOnmA6DMqNR34TLj7Lq8WZ5
	RNhg==
X-Gm-Message-State: ALyK8tKP1s+GE/pBKe4VKV5DnPObAgBLORY+czMM2yog5QJUCQ5dFXs3Po3WP4WkK3BKUX0L
X-Received: by 10.66.234.65 with SMTP id uc1mr25495792pac.81.1467327788549;
	Thu, 30 Jun 2016 16:03:08 -0700 (PDT)
Received: from yct-desktop.lan ([2001:470:b:16e:222:4dff:fe50:c906])
	by smtp.gmail.com with ESMTPSA id s12sm168716pfj.57.2016.06.30.16.03.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Jun 2016 16:03:07 -0700 (PDT)
To: bitbake-devel@lists.openembedded.org,
	Openembedded-core@lists.openembedded.org,
	Openembedded-devel@lists.openembedded.org, yocto@yoctoproject.org
From: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <ae4e2654-ca20-85d1-d53b-b0b05ab25a26@linuxfoundation.org>
Date: Thu, 30 Jun 2016 16:03:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.1.1
MIME-Version: 1.0
Subject: Patchwork upgrade tonight
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
X-List-Received-Date: Thu, 30 Jun 2016 23:03:12 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

After 2 weeks of testing and some performance tuning we are going to
proceed with the Patchwork upgrade. Data entered into the current
version in the next few hours may need to be re-entered after the upgrade.

All features of the current Patchwork install work in the new version.
So while there are still issues surrounding detection of patch series
there are no known regressions. Series detection can be addressed after
the upgrade.

The rollback plan can be executed very quickly if needed.

Please reach out if you have concerns.

-- 
Michael Halstead
Linux Foundation / SysAdmin

