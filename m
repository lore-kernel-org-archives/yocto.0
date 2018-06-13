Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B5D4E018FD; Wed, 13 Jun 2018 09:30:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 585 seconds by postgrey-1.32 at yocto-www;
	Wed, 13 Jun 2018 09:29:47 PDT
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1974E01A8F
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 09:29:47 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 8C16635CE96;
	Wed, 13 Jun 2018 16:20:01 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id VAUs61gWSn1J; Wed, 13 Jun 2018 16:19:54 +0000 (UTC)
Received: from [127.0.0.1] (unknown [185.135.104.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 15B4035C14D;
	Wed, 13 Jun 2018 16:19:54 +0000 (UTC)
To: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
References: <20180612141024.25961-1-adrian.ratiu@ni.com>
From: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <ec050ea6-5612-ebe1-fe6b-96c30a28406d@dynamicdevices.co.uk>
Date: Wed, 13 Jun 2018 17:19:49 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <20180612141024.25961-1-adrian.ratiu@ni.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mono][PATCH] layer.conf: define LAYERSERIES_COMPAT_mono = "sumo"
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
X-List-Received-Date: Wed, 13 Jun 2018 16:30:02 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB



On 12/06/2018 15:10, Ioan-Adrian Ratiu wrote:
> Newer versions of bitbake require each layer to explicitely state
> their OE/Yocto release compatibility. The consensus is for each layer
> to use the latest released version codename for the master branch.

Applied, thanks Ioan


