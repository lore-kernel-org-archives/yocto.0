Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 497A3E0077E; Tue,  8 Nov 2016 12:55:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09B95E006EA
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 12:55:09 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id D2BEE12B021
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 21:55:07 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id jYjqA_QRlMZF for <yocto@yoctoproject.org>;
	Tue,  8 Nov 2016 21:54:48 +0100 (CET)
Received: from [192.168.178.10] (541CD0EC.cm-5-5d.dynamic.ziggo.nl
	[84.28.208.236]) (Authenticated sender: bas@emcodev.nl)
	by hosting.emcodev.net (Postfix) with ESMTPSA id 6286D12B003
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 21:54:48 +0100 (CET)
To: yocto@yoctoproject.org
References: <f9a57cb411c94c0c8f191bad3d391b35@SI-MBX1022.de.bosch.com>
	<56D865D5.2010702@windriver.com>
	<CAGMdoFkRJbK=YXzm2GDxEd-oLh2hWh+OHNQ9RoOgvB6Dwm2DYA@mail.gmail.com>
	<CAEjjReLCNOKCq5dawyvbFyH=M5B1eot36SLuwCXMFJ1r_o-fUg@mail.gmail.com>
From: Bas Mevissen <abuse@basmevissen.nl>
Message-ID: <070bcb00-90fc-56af-5522-c1318b15fef0@basmevissen.nl>
Date: Tue, 8 Nov 2016 21:54:45 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAEjjReLCNOKCq5dawyvbFyH=M5B1eot36SLuwCXMFJ1r_o-fUg@mail.gmail.com>
Subject: Re: How to handle meta-intel/openembedded repos with multiple developers
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
X-List-Received-Date: Tue, 08 Nov 2016 20:55:14 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 07/11/2016 20:31, Chris Z. wrote:
> Hi,
> 
> How you store your project configuration ? How you prepare workspace
> (download each layer separately)?
> Basic stuff, SW release should be reproducible (in easy way). Store
> somewhere used hash of each piece or use tags. Non company assets should
> be already somehow tagged or you use HEAD or master/-next ?
> 

I think the best option is to use the Google Repo tool. You write an xml
file that specifies the layers to download and which commit, branch or
tag to checkout. The Freescale official and community project do it like
this, just like Android.

-- 
Bas.

