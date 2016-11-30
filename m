Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F184E00503; Wed, 30 Nov 2016 08:33:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF46EE00498
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 08:33:28 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id A5B6B27EDF9;
	Wed, 30 Nov 2016 16:33:26 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 2sts6wr01a77; Wed, 30 Nov 2016 16:32:53 +0000 (UTC)
Received: from [192.168.0.167] (unknown [51.179.151.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 300C227EDE8;
	Wed, 30 Nov 2016 16:32:53 +0000 (UTC)
To: Barry Grussling <barry@grussling.com>
References: <20161106042304.3357-1-barry@grussling.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <d8464baf-c167-bc90-2106-2ac09a91b214@dynamicdevices.co.uk>
Date: Wed, 30 Nov 2016 16:32:50 +0000
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.0
MIME-Version: 1.0
In-Reply-To: <20161106042304.3357-1-barry@grussling.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mono][PATCH 0/7] Updates to meta-mono layer
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
X-List-Received-Date: Wed, 30 Nov 2016 16:33:30 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 06/11/2016 04:22, Barry Grussling wrote:
> I have a need to run Mono 4.6.1 on an ARM system.  The last commit to
> the yocto meta-mono tree is over six months old so I figured I would take
> a crack at it myself.  Hopefully these patches help somebody else.

Merged and tested on qemux86. Many thanks Barry

