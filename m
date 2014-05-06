Return-Path: <koansoftware@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D373E00B7A; Tue,  6 May 2014 00:42:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (koansoftware[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
Received: from mail-ee0-f53.google.com (mail-ee0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8C8AE00480
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 00:41:56 -0700 (PDT)
Received: by mail-ee0-f53.google.com with SMTP id c13so355368eek.12
	for <yocto@yoctoproject.org>; Tue, 06 May 2014 00:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:reply-to:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=MluToyL34ZqUwc36Rvz5R0NqnMEdTbuvATp0db4d31M=;
	b=XU/zA2pZ9w1kW73RzOfVgnqmc9ZQJ8da/eQ7I5DUSO9NrX/7USDBiZJvFAmRnOw4JY
	am2ykKldC/NCF2D/f5I8MdMvPw9a+eGqld0DFc7XXtvQhAwd4fsXFDPR3ryS22zGvMek
	053ts8WHf/bTjBSv4BfwGRpU69EdR2vhoBfYFhJtYDKXDWRcJyblZrlfVzJ+qEFNOzSv
	qNnzvXx/dduz6S4iESsTqBE8dPzK8HvJ3v/mpEpSvBB7DV0Wl8lhymS6frLGo3BJ+6hm
	4O9vPZGikH3FO+1X484Z/9xPqsveDEuMDc+W61VXod3lnSSN9wps5qXd2VV8za8J/QQC
	BExg==
X-Received: by 10.14.95.8 with SMTP id o8mr37296862eef.15.1399362114855;
	Tue, 06 May 2014 00:41:54 -0700 (PDT)
Received: from [192.168.0.5]
	(host56-7-static.30-87-b.business.telecomitalia.it. [87.30.7.56])
	by mx.google.com with ESMTPSA id t4sm36168546eeb.29.2014.05.06.00.41.53
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 06 May 2014 00:41:53 -0700 (PDT)
Message-ID: <5368923F.9060003@gmail.com>
Date: Tue, 06 May 2014 09:41:51 +0200
From: Marco <koansoftware@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [RFC] Upgrade to a package with all its dependency without network
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: koansoftware@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 06 May 2014 07:42:00 -0000
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hello,
I need to be able to upgrade to a package with all its dependency chain 
on a target system that does not have access to the network.

I'm trying to understand what may be the best and also the simplest 
solution.
Perhaps there is already this functionality in OE/Yocto?

I thought to implement a new opkg feture so that I can to generate the 
list of dependencies of a package and then extract the packages from 
OE/Yocto using a script or an application.

Another possibility would be to extend the operation of bitbake so I 
pull out the package and dependencies putting them in a dedicated 
directory to be moved on the target for the update.

For now I'm just analyzing what may be the possibilities and I'd love to 
have any comments or advice from someone more experienced than me on 
this topic.

Thanks
-- 
Marco Cavallini | KOAN sas | Bergamo - Italia
  embedded and real-time software engineering
Phone:+39-035-255.235 - Fax:+39-178-22.39.748
       http://www.KoanSoftware.com

