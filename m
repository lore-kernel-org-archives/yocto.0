Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45697E00D28; Fri, 29 Sep 2017 03:43:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.2 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mailrelay3-2.pub.mailoutpod1-cph3.one.com
	(mailrelay3-2.pub.mailoutpod1-cph3.one.com [46.30.212.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EAB1E00C77
	for <yocto@yoctoproject.org>; Fri, 29 Sep 2017 03:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=XDrbpEMmE464UbFEFBkV1Fs/4/Qlo3ZcMZt48cczVSA=;
	b=Rh9aEW6bryv1xBZEQF6NfQA+vw9sfh8gv/0md/dB4KSTx86SHHEEyuCjaQCR7uDBktCXA1SuHJQA+
	goIDRPCSCpJiUyau0c4swmVuK4juXvohGIhk3h7i5Fk1f0sivzYDSYdGCjaQScl/B5ap46zHcvGWVj
	W4ZApn/qA5MwE/pA=
X-HalOne-Cookie: 93249e6e6f7d950f7f4d6199e568ad4aff44f627
X-HalOne-ID: 05f5ea28-a503-11e7-9212-b82a72d06996
Received: from [192.168.1.68] (unknown [145.236.74.125])
	by smtpfilter3.public.one.com (Halon) with ESMTPSA
	id 05f5ea28-a503-11e7-9212-b82a72d06996;
	Fri, 29 Sep 2017 10:43:26 +0000 (UTC)
To: yocto@yoctoproject.org
References: <DM5PR05MB29545649D8FAD14D890F96C4BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
	<06d955af-4522-212a-71f7-94429f388e89@rsi-elektrotechnik.de>
	<5a720867-59b1-6f6d-6741-01b649d84dcd@rsi-elektrotechnik.de>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <7cb02a24-8c2c-7942-fcf3-9fca7f9f3303@embexus.com>
Date: Fri, 29 Sep 2017 12:43:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <5a720867-59b1-6f6d-6741-01b649d84dcd@rsi-elektrotechnik.de>
Subject: Systemd Journal log persistence
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
X-List-Received-Date: Fri, 29 Sep 2017 10:43:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi all,

I'm trying to get my Journald logs persisting on the filesystem (on 
seprated partition) but no luck so far, it seems that :

/var/log is a symlink to /var/volatile/log and the /var/volatile is a 
tmpfs mount so the logs will not persist.

I tried to change this behaviour by appending base-files recipe and 
remove the symlink above but it still appearing on the filesystem !

Any tipps ?

Regards

-- 
Ayoub Zaki
Embedded Systems Consultant

Vaihinger Straße 2/1
D-71634 Ludwigsburg

Tel.     : +4971415074546
Mobile   : +4917662901545
Email    : ayoub.zaki@embexus.com
Homepage : https://embexus.com


