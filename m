Return-Path: <costamagnagianfranco@yahoo.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4A64E00C44; Fri,  4 Aug 2017 03:59:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_MUA_MOZILLA, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (costamagnagianfranco[at]yahoo.it)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [77.238.179.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic309-26.consmr.mail.ir2.yahoo.com
	(sonic309-26.consmr.mail.ir2.yahoo.com [77.238.179.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ABC5E00C35
	for <yocto@yoctoproject.org>; Fri,  4 Aug 2017 03:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.it; s=s2048;
	t=1501844341; bh=AlOYaD/Xk322kDJlkOCxbowwUg2okTRw0jOnNYTr/7A=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=sGDspN5KyT2fq0bRXO9IpfkpJppVp0mUGhaeNKkF7wk7/UgpLr6pPcQafn9Blju5GtcYscxZ1LB6CAAjqDGp8bATqKUOJabaaefcmFBE8M0YWnvHffJkLCb9FpR9pAaP/27IYpFiM0bCDH79k9PJtFXhXWMnl4u4wUBGZAZeUkS+tM3XTVIyJHO9RdXtuAK6vlznG7gWDSdIBzS0u979swlU4Id+fN4FJRzapxQtmLoIe7gAgrMQDvyRFmIAsFk2Md0qi40BpuJIFKAv2rbHBI1XMWkgTM85e84F9jgXdEbUucUD9lOlB8MUB1G4sFcGqODr5eApLvp7XAPogOUR/A==
X-YMail-OSG: OCYkU54VM1lc90361r5VU8pSsqMpF096TdyLZF_m4FEIo4c91wrrbEmaBymoIt2
	KO0rrk4rpbJ_Urw5.FekMaTl0CUBchtXyfJ9sIj7yIlhpgTNxaFsh6ExCk8u93JfdO5h5Al7lqf0
	n6UqHfOjNWgADUqWJfB.8s2ELYV_otWddPyPChJqsdfnIwV6KO5CaHMvqFMI2udn8DJrQFKWLDgy
	JIFZna4d.FjY7bFyMz.5sp32KDDRSXY1njoZtHLHR9bL5FZ44fLghoVSumJ7YKa.w5kvw4zBRb6u
	_Zy_OWF2.zWy7LH1uFnbNU5SEnwWcuMjHCe3Lt_yDec3En2FVHO1hnndmMEw.GNXMrugVJ6FYS8N
	6ShMfuRoyKRtSZiQBqxCJsvRsMMHZT5Ln9CVnrLPIP_DXXucn0AwvP7RAAaDw4GG4ieGi9DG1NN5
	lwOV5Y_YIWN3hFHc7q8VkExoW8FaQbmwNm6shX3NYVIoRIb0IR1yZV88NK1_ZaHU6qhpbu85jTxd
	PH9ZtT9.4bBm3sE8FwPBRRGHqJT9hakxIpgeDt9Re
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic309.consmr.mail.ir2.yahoo.com with HTTP;
	Fri, 4 Aug 2017 10:59:01 +0000
Date: Fri, 4 Aug 2017 10:58:56 +0000 (UTC)
From: Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1452600482.2586512.1501844336709@mail.yahoo.com>
In-Reply-To: <1280838053.2327487.1501829336917@mail.yahoo.com>
References: <1280838053.2327487.1501829336917.ref@mail.yahoo.com>
	<1280838053.2327487.1501829336917@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.10181 YahooMailNeo Mozilla/5.0 (X11; Ubuntu;
	Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0
Subject: [feature request] avoid getting the server stuck because of high "-j" value
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 04 Aug 2017 10:59:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello Yocto developers!




recently I found a really nice make feature, that tunes at runtime the number of parallel

execution jobs, according to the current system load [1].


I think such a feature would be really nice on server were multiple yocto builds are run in parallel,

and when people forgets to put the correct number of parallel build jobs.


E.g., a number around CPU+1 is nice, but sometimes CPU*2 gives better results.

Unfortunately if somebody else starts a build in parallel, that CPU*2 locks really hard the server, specially

when building qt-based projects (e.g. qtbase, qtwebengine).


Tuning such value at runtime will probably end in faster compilation time and lower swapping on remote

servers.

(I would think also to something that checks the amount of free RAM)



is such a feature feasible?
should I open a bug for it?


[1] https://www.gnu.org/software/make/manual/html_node/Parallel.html#Parallel


thanks,


Gianfranco

