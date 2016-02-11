Return-Path: <bartosz.woronicz@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFC1DE00BB6; Thu, 11 Feb 2016 02:44:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [93.183.12.32 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from demumfd001.nsn-inter.net (demumfd001.nsn-inter.net
	[93.183.12.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BFE5E00B9C
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 02:44:55 -0800 (PST)
Received: from demuprx016.emea.nsn-intra.net ([10.150.129.55])
	by demumfd001.nsn-inter.net (8.15.2/8.15.2) with ESMTPS id
	u1BAioLx024098
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 10:44:50 GMT
Received: from [10.154.187.104] ([10.154.187.104])
	by demuprx016.emea.nsn-intra.net (8.12.11.20060308/8.12.11) with ESMTP
	id u1BAin1n022111
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 11:44:49 +0100
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Message-ID: <56BC6621.6000809@nokia.com>
Date: Thu, 11 Feb 2016 11:44:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for
	further information)
X-purgate-size: 357
X-purgate-ID: 151667::1455187490-000006B0-7E8FEAC2/0/0
Subject: valgrind-native
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
X-List-Received-Date: Thu, 11 Feb 2016 10:44:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Any ideas why I cannot build native valgrind ? http://pastebin.com/e2h6AWxN
"Missing or unbuildable dependency chain was: ['valgrind-native', 
'glibc-dbg-native']"

Also tried bitbake glibc-dbg . nothing provides that, but it is required 
in recipe


-- 
Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
NSN - PL/Wroclaw


