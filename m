Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88A74E007AB; Sat, 31 Jan 2015 08:27:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EB45E003D4
	for <yocto@yoctoproject.org>; Sat, 31 Jan 2015 08:26:54 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 1231527E152;
	Sat, 31 Jan 2015 16:26:52 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id e052neNgo4JC; Sat, 31 Jan 2015 16:26:31 +0000 (UTC)
Received: from [192.168.1.39] (AMarseille-651-1-264-196.w90-8.abo.wanadoo.fr
	[90.8.255.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 00DB027E153;
	Sat, 31 Jan 2015 16:26:30 +0000 (UTC)
Message-ID: <54CD01EB.3080305@dynamicdevices.co.uk>
Date: Sat, 31 Jan 2015 17:25:15 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: peterengcomau001@adam.com.au, Martin Jansa <martin.jansa@gmail.com>, 
	Simon Bolek <simon.bolek@googlemail.com>
References: <34103b97e009ed7e6dde04713a1c2b9d4cdeeb0b@webmail.adam.com.au>
In-Reply-To: <34103b97e009ed7e6dde04713a1c2b9d4cdeeb0b@webmail.adam.com.au>
Cc: yocto@yoctoproject.org
Subject: Re: meta-qt5 problem in yocto 1.7
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
X-List-Received-Date: Sat, 31 Jan 2015 16:27:02 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit


On 31/01/2015 13:30, peterengcomau001@adam.com.au wrote:
>
> Hello Martin,
> Thanks for your reply.
> I managed to fix the problem of referring to 5.4 instead of 5.3.2 by
> checking out the master branch instead of the dizzy branch of meta-qt5.
>
> However my problem is with the do_fetch. Most of the do_fetch work
> fine but  I get the folliowing two errors:
> ERROR: Function failed: Fetcher failure for URL:
> 'http://download.qt-project.org/official_releases/qt/5.4/5.4.0/submodules/qtdeclarative-opensource-src-5.4.0.tar.xz'.
> Unable to fetch URL from any source
> ERROR: Function failed: Fetcher failure for URL:
> 'http://download.qt-project.org/official_releases/qt/5.4/5.4.0/submodules/qtbase-opensource-src-5.4.0.tar.xz'.
> Unable to fetch URL from any source.
>

Hi Lachlan, Martin,

I had the same problem on Friday. Investigating the issue it seems to be
that the master branch has disappeared from the git@gitorious.org:qt and
thus the specified commits are
not found. I had a similar problem with qt3d and qtsystem

Changing QT_MODULE_BRANCH = "dev" seems to get the recipes building.

However I still can't seem to get the examples packages building
whatever I do - any advice on that would be appreciated!

Regards,

Alex



