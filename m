Return-Path: <dl9pf@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B8DEE00B70; Tue,  5 Jan 2016 12:16:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_50,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dl9pf[at]gmx.de)
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4808]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.21 listed in list.dnswl.org]
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Tue, 05 Jan 2016 12:16:53 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F01A7E0078A
	for <yocto@yoctoproject.org>; Tue,  5 Jan 2016 12:16:53 -0800 (PST)
Received: from elrond.auenland.lan ([95.90.4.156]) by mail.gmx.com (mrgmx102)
	with ESMTPSA (Nemesis) id 0MBZ9u-1aOlQx2x5K-00AVKa;
	Tue, 05 Jan 2016 21:11:49 +0100
From: dl9pf@gmx.de
To: yocto@yoctoproject.org
Date: Tue,  5 Jan 2016 21:11:29 +0100
Message-Id: <1452024690-31461-1-git-send-email-dl9pf@gmx.de>
X-Mailer: git-send-email 2.6.2
X-Provags-ID: V03:K0:Cdhr35dSM5x5Bliw9IogpoXIRcpWMi5Tnvp1uTcxrYaCFNHZ+IL
	PT3nqHTVbf+tMQbdepEqZti32wypvF3Cu2fS118ZTraX4VLWQk4sC1tj0+WRfsBA4PF1vJZ
	6zD62dmdJQjCgkH2zDVsiy77Y4rZMhfl0LiOb0tLbKfv7ei/ziHiITPwO5IQIZ0Y02Ne6JJ
	YjreVuw5omrhtTRzGX3vw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:m4b9ySnUejU=:et0dJp0HGbUX2s13rirHOb
	BGuylKPYyAGjdrs/pRx2Hch8gI1NWj2iDguwI/2qXjVP4xlGJhcAq0mJ1gU2h0aADlHfgy+Lb
	CUxYAYfAzY2NNq7YRdgePnKrep/s/ng++ILPwt+rnIVDSqqSUfIp+3v+UajaT5/8L4nTdamsX
	nf7m76aktQGGX2f2LeL2c92tATagnFc2MO9xYW3T5G6TEB2/CgWeiySzIxKkZIX8ncSJt/2OG
	GqGaoJH5irVcW1NSYAZAadASqWO2xbRZhFr6Tb4fr+xekkSWLxTlYp+vG2KwJVfuhmMG9DAhn
	MrxDf7C2kh1OOUJH5CyAp0e01hWCrYU1uAoWOEKC3eELVVADn4oevPJb8TkD/NYFkMNiJqvR4
	RlEGTQpvaKUuqAo5oq1g5Zx7HLrFnpAeB1PJnr7wsHPR7Z4gHArfGDSIRv6Sg9PpltD3e3sVi
	rlaobK8xQ9WeWmba/85Qvhab8LHFwRu6DfX/6UPzMgvdCY/DTblHHFIhhPTgx7wu2eFjvb8Dd
	jaZ99zu4nmcv09VghIhqdI8TC74uQmxa/tgRx+ebirwMne0hft6sk9tq4gVHvH93NDubBthJO
	P3pZ7Frm8EerkWIHTmMw1Xl9nm/yW0U6AawAlxDYLzxsxIqSlyHQrI9lLEl6VCgKqbjt09ADc
	/acgu+CltvteMtEoX3oEw/mwCbq0Qrmey7287AQU0ZqqFLiquBbe7wSJNXgm9YTFSzc5z6ZVc
	Wubam+fdxIseBoIbXvww8e0KJRI9gaMUtUgU6bNRhOko6Ztl6Jj5PhTIRvs=
Subject: [PATCH] Fix connectivity check for BB_FETCH_PREMIRRORONLY case
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
X-List-Received-Date: Tue, 05 Jan 2016 20:16:57 -0000

Hi!

This patch fixes a bug in the sanity checker that is visible if
you set up a PREMIRROR and start a project from scratch using
BB_FETCH_PREMIRRORONLY set. In this case the sanity check would fail
as BB_NO_NETWORK is not set directly
(just indirectly in the fetcher by BB_FETCH_PREMIRRORONLY).

Reproduce: Set up a PREMIRROR in the local network. Disconnect from
$INTERNET and build a new project using the PREMIRROR on the local net only.

Expected result: Build works using the PREMIRROR

Actual result: Build fails due to CONNECTIVITY_CHECK

Best,
Jan-Simon

