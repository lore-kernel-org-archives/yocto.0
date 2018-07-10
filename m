Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC852E00AD8; Tue, 10 Jul 2018 01:32:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.156.101 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 Jul 2018 01:32:21 PDT
Received: from smtpcmd10101.aruba.it (smtpcmd10101.aruba.it [62.149.156.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F307E00A48
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 01:32:21 -0700 (PDT)
Received: from [10.0.3.79] ([78.6.3.122]) by smtpcmd10.ad.aruba.it with bizsmtp
	id 8wXJ1y01T2dwwGE01wXKbu; Tue, 10 Jul 2018 10:31:19 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <72f720d8-8638-808a-0433-316f83caa781@faresoftware.it>
Date: Tue, 10 Jul 2018 10:31:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1531211479; bh=e1CouDb2oXsqMJy6q7HPflUscg84K29fzv3CoXc7HzM=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=Rn/Bj2wC5yu5nlYKeCbF/Iu8Zgg1fzkkvhBACc2dC0ZWP2KHvysMQGVtUhJU2K6OW
	pD0iOljYp1XDJ730LmMg3LR+jtgoSo32zo+nm/MhiFb1hjiSsbO1lUFWVvXn23TriQ
	Duz6zu2WB5MLPFamqaOex13rL3RnA2OZMTcPeME3X5kaxt18MmaxJ/PG8c/QVJQWrn
	M/YvanSNBYdoO2+yzjLOpvAv+jTxZTATQEzm/eyvjyHSF8j2rMaRwvhCbI/HP8iqtF
	fVQlyLcrB/qgjDrSGnemRs8bl23T6Noe0suvhmUTLTRcI5tWEr8Xd6MPpWuYwySbvu
	LscaFstbcMhrA==
Subject: SRC_URI git from ssh fails
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
X-List-Received-Date: Tue, 10 Jul 2018 08:32:24 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all

I'm working with Krogoth and imx6dlsabresd board.

I'm in trouble fetching source code from a git repository via ssh.

If I get manually the source codes with

git clone ssh://user@server/repos.git -b 0.4

it works


If I put it in myrecipe_git.bb with


SRC_URI = " \

    git://user@server/repos.git;protocol=ssh;tag=0.4 \

"

S="${WORKDIR}/${PN}-${PV}"


the fecth task fails.


I try also SRCREV="0.4" outside SRC_URI and rev=0.4 in place of tag=0.4


Where I mistake?


Thanks


MZ



