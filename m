Return-Path: <Ryan.Meulenkamp@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5338E00C9E; Tue, 27 Mar 2018 04:45:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [213.160.213.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Tue, 27 Mar 2018 04:45:42 PDT
Received: from smtp4.nedap.com (smtp4.nedap.com [213.160.213.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79C1DE0084D
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 04:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1522151142; x=1553687142;
	h=to:from:subject:message-id:date:mime-version:
	content-transfer-encoding;
	bh=PZ9dhT3nKbloL18lVcyidfmheEVFfgpT4oFRCNquan0=;
	b=qmiiC+yHognnxi67/TOoEQQuYxS33BcB4mWtAoI/lXuH42MPaVe4uX9v
	dJ1QZw6/bkZoldAh5NOTVpyU6w7voUv7c3XqNvOPkNPrtNK6onshQTmoe
	9HcXwj/EuWdX17/+9u7IcUQNJOgFAPdK0NdpXgxdzYSPNKwy2tyeNZtbr s=;
X-IronPort-AV: E=Sophos;i="5.48,367,1517871600"; 
   d="scan'208";a="1277097"
Received: from nedap.nedap.local (HELO [10.2.16.212]) ([10.2.16.212])
	by smtp4.nedap.com with ESMTP; 27 Mar 2018 13:44:37 +0200
To: openembedded-core@lists.openembedded.org, yocto@yoctoproject.org
From: Ryan Meulenkamp <Ryan.Meulenkamp@nedap.com>
Message-ID: <12dbba60-2346-0020-64c8-db2dac948684@nedap.com>
Date: Tue, 27 Mar 2018 13:44:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
Subject: CPU Load
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
X-List-Received-Date: Tue, 27 Mar 2018 11:45:43 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi y'all,

I have some questions about CPU load and performance, but first some 
background information.

We have small embedded system running an openembedded classic (Angström) 
distro. Now to get ourselves up-to-date we started working on a new 
iteration of the OS based on openembedded core and Yocto. It is nearly 
finished now, if it weren't for one problem: The CPU load 
(/proc/loadavg) of the core/yocto based OS is more than double that of 
the classic/Angström OS.

So the way I see it this could be caused by a number of factors:

  - loadavg's calculation changed
  - certain newer versions of applications run heavier
  - The kernel itself is heavier (we upgraded from 2.6.35.14+ to 4.9.28+)
   - Possibly caused by some configs
  - ...

My question: is there something that changed since OE-classic that you 
know could be the cause of this? If not, how would I go about finding 
the cause? I don't think the top command is sufficient for this, because 
it's precision is such that many processes' CPU usage just become 0%. 
Also, both top and htop cause huge cpu loads themselves.

Any tips and tricks would be welcome!

Thanks in advance!

Ryan

