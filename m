Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBB7BE00CC4; Tue,  1 Nov 2016 03:36:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
X-Greylist: delayed 352 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 Nov 2016 03:36:43 PDT
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 981D3E00C9B
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 03:36:43 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 2B79F12ADA2
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 11:30:50 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id f-mVYwdoiIn0 for <yocto@yoctoproject.org>;
	Tue,  1 Nov 2016 11:30:31 +0100 (CET)
Received: from whisper.local (541CD0EC.cm-5-5d.dynamic.ziggo.nl
	[84.28.208.236]) (Authenticated sender: bas@emcodev.nl)
	by hosting.emcodev.net (Postfix) with ESMTPSA id 5532B12AD66
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 11:30:31 +0100 (CET)
To: yocto@yoctoproject.org
References: <061E8AE63BCA5A41B92BC90F19C8225237AE71B6@CHN-SV-EXMX05.mchp-main.com>
	<4177938.GHPXVAbNun@peggleto-mobl.ger.corp.intel.com>
	<061E8AE63BCA5A41B92BC90F19C8225237AE71F2@CHN-SV-EXMX05.mchp-main.com>
	<16244336.UgYXzEjrtG@peggleto-mobl.ger.corp.intel.com>
	<061E8AE63BCA5A41B92BC90F19C8225237AE722C@CHN-SV-EXMX05.mchp-main.com>
From: Bas Mevissen <abuse@basmevissen.nl>
Message-ID: <7e657315-c5e4-bd73-5083-5bdb31bfd96f@basmevissen.nl>
Date: Tue, 1 Nov 2016 11:30:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <061E8AE63BCA5A41B92BC90F19C8225237AE722C@CHN-SV-EXMX05.mchp-main.com>
Subject: Re: how to copy a tar file to Root file system
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
X-List-Received-Date: Tue, 01 Nov 2016 10:36:46 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/11/16 05:03, Swapna.Gurumani@microchip.com wrote:
> With the attached recipe I get the following error:

 From the recipe:

> inherit pkgconfig

Why do you inherit pkgconfig and aren't you inheriting bin_package?


Regards,

Bas.
-- 
Bas.

