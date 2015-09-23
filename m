Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 142C9E01010; Wed, 23 Sep 2015 15:41:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A03AAE0055C
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 15:41:04 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so89548204wic.0
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 15:41:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=/gUDi8/CIk6XbWP9YBN+QdSzDaEGbyszSmPL74ztOsM=;
	b=fIyVWmakRU6+mu1bVnuDjjXEAsa0572CWTObSlJqkarkcvMTKV+Wrc/PESBufuRsGT
	U935DEuCiseCwrxiMwtk9TnVkzPt4lTHcC9Sy8QgLJM+o1Ss2hfqs73DtiG6o69V2wbt
	zAvHNjqRPoj7+tuQPk39ZdQdx+PZMeUAEIxCN5ilpCNuh3QVegGKjGk9bHK+v9EUL17u
	IDvv6UR8okbSvfvwQtUaFvQy4WF3eM+UVWDJtMgVBXsuAZWh/rAx5rNrKAMNsVec5/an
	p4zMPG+0MbpwN3fBRFE2gbuDB1qKKZj5u6VAiMt3sa94DWCsllGufbN8MD71lJ37LAH5
	MUDQ==
X-Gm-Message-State: ALoCoQlXU0sy5BAZk5HEYGcsdUHnFzfmKwXuNPUZrunNGA4gt0oR/AZXCn2IUDyJPPSnA/NrzIVH
X-Received: by 10.180.206.83 with SMTP id lm19mr6686646wic.63.1443048063457;
	Wed, 23 Sep 2015 15:41:03 -0700 (PDT)
Received: from resin (dslb-088-067-185-139.088.067.pools.vodafone-ip.de.
	[88.67.185.139])
	by smtp.gmail.com with ESMTPSA id fu5sm318416wic.0.2015.09.23.15.41.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 23 Sep 2015 15:41:02 -0700 (PDT)
Date: Thu, 24 Sep 2015 01:41:00 +0300
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20150923224100.GE23493@resin>
References: <1439651308-12048-1-git-send-email-net147@gmail.com>
	<55D5B2B2.5020900@gmail.com>
MIME-Version: 1.0
In-Reply-To: <55D5B2B2.5020900@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] rpi-config: fix setting decode_WVC1 in config.txt
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
X-List-Received-Date: Wed, 23 Sep 2015 22:41:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

On Thu, Aug 20, 2015 at 08:57:54PM +1000, Jonathan Liu wrote:
> On 16/08/2015 1:08 AM, Jonathan Liu wrote:
> >Signed-off-by: Jonathan Liu <net147@gmail.com>
> >---
> >  recipes-bsp/bootfiles/rpi-config_git.bb | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> >diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
> >index 29ced34..45b9f1d 100644
> >--- a/recipes-bsp/bootfiles/rpi-config_git.bb
> >+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> >@@ -26,7 +26,7 @@ do_deploy() {
> >          sed -i '/#decode_MPG2/ c\decode_MPG2=${KEY_DECODE_MPG2}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> >      fi
> >      if [ -n "${KEY_DECODE_WVC1}" ]; then
> >-        sed -i '/#decode_WVC1/ c\decode_MVC1=${KEY_DECODE_WVC1}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> >+        sed -i '/#decode_WVC1/ c\decode_WVC1=${KEY_DECODE_WVC1}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> >      fi
> >      if [ -n "${DISABLE_OVERSCAN}" ]; then
> >          sed -i '/#disable_overscan/ c\disable_overscan=${DISABLE_OVERSCAN}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> Bump. It's a simple typo fix. Notice MVC1 should be WVC1.
>
> Regards,
> Jonathan

Merged to master. Thanks.

--
Andrei Gherzan

