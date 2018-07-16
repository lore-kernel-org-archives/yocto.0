Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AF85E0125D; Mon, 16 Jul 2018 02:05:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [38.101.164.234 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 511 seconds by postgrey-1.32 at yocto-www;
	Mon, 16 Jul 2018 02:05:11 PDT
Received: from smtp1.genivi.org (smtp1.genivi.org [38.101.164.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62842E00887
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 02:05:11 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id 8F0054E4E;
	Mon, 16 Jul 2018 01:56:39 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tI--gHlt3UDS; Mon, 16 Jul 2018 01:56:38 -0700 (PDT)
Received: from android-a8ad607dc99b25c1 (h-244-80.A137.corp.bahnhof.se
	[176.10.244.80])
	by smtp1.genivi.org (Postfix) with ESMTPSA id A755F4B1A;
	Mon, 16 Jul 2018 01:56:37 -0700 (PDT)
Message-ID: <1531731312.27561.135.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: "S, Karthikeyan" <Karthikeyan.S@trane.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
In-Reply-To: <3d2df8a5ae76426ebc9562d88615fff3@BN3PR73MB0070.mgdir.irco.com>
References: <3d2df8a5ae76426ebc9562d88615fff3@BN3PR73MB0070.mgdir.irco.com>
Organization: GENIVI Alliance
Date: Mon, 16 Jul 2018 10:55:12 +0200
Mime-Version: 1.0
X-Mailer: Evolution 3.26.6 (3.26.6-1.fc27) 
Subject: Re: Regarding build Yocto offline
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
X-List-Received-Date: Mon, 16 Jul 2018 09:05:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2018-07-13 at 08:58 +0000, S, Karthikeyan wrote:
> Greetings,
>              Initially I was able to built with github access, but our
> requirement is to build offline(without Internet), I followed the steps
> given in https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_create_my
> _own_source_download_mirror_.3F
> I added following lines in conf/local.conf (Git enabled machine)
> SOURCE_MIRROR_URL ?= "file:///source_mirror/sources/"
> INHERIT += "own-mirrors"
>  BB_GENERATE_MIRROR_TARBALLS = "1"
> and copied download directory to network disabled system and added
> following in conf/local.conf(network disabled system).
> SOURCE_MIRROR_URL ?= "file:///source_mirror/sources/"
>  INHERIT += "own-mirrors" 
>  BB_GENERATE_MIRROR_TARBALLS = "1" 
>  BB_NO_NETWORK = "1"
> It was throwing error, saying that "Network is disabled through
> BB_NO_NETWORK=1" and build was failed. Please share me the exact procedure
> to build yocto offline.

I used to run into this also.  Please check, and reply to list, if you are
using a tag in any of the recipes, and if changing to SRCREV=<hash> in all
recipes solves the problem.  

Here is a reference to an earlier discussion - I think it is commonly 
recurring question.  (Maybe you can propose a change to the docs, to
indicate this near the description of the BB_NO_NETWORK variable?)

https://lists.yoctoproject.org/pipermail/yocto/2012-September/009586.html

Hope this helps,
- Gunnar

-- 
Gunnar Andersson <gandersson@genivi.org>
Development Lead
GENIVI Alliance



