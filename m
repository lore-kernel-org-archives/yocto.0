Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C700AE00B5E; Fri, 20 Nov 2015 07:34:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [54.187.51.154 listed in list.dnswl.org]
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7F73E00B30
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2015 07:34:14 -0800 (PST)
Received: from [192.168.0.19] (unknown [181.120.163.21])
	by lists.s-osg.org (Postfix) with ESMTPSA id 83D46462EB;
	Fri, 20 Nov 2015 07:34:11 -0800 (PST)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <1447166720-13316-1-git-send-email-javier@osg.samsung.com>
From: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <564F3D6F.7020601@osg.samsung.com>
Date: Fri, 20 Nov 2015 12:34:07 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1447166720-13316-1-git-send-email-javier@osg.samsung.com>
Cc: Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>, yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v3 0/2] Add support for 4.2 kernel with vc4 DRM/KMS driver
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
X-List-Received-Date: Fri, 20 Nov 2015 15:34:17 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 11/10/2015 11:45 AM, Javier Martinez Canillas wrote:
> Hello Andrei,
> 
> This series adds support for Eric Anholt's v4.2 kernel, that has support
> for the vc4 DRM/KMS driver, which is the new open source graphics driver
> stack for the Raspberry Pi to be used instead of the userland driver.
> 
> This is a third version of the series which addresses feedback provided
> by Andreas Müller, Khem Raj and you. The first version and second version
> of the series can be found at [0] and [1]. Some of the v2 patches have
> been dropped since are no longer necessary so the delta is smaller in v3.
> 

Any comments about this series?

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America

