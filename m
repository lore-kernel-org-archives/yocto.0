Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EE49E00D26; Wed,  7 Dec 2016 05:00:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [23.83.209.27 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0003]
Received: from butterfly.birch.relay.mailchannels.net
	(butterfly.birch.relay.mailchannels.net [23.83.209.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C564E00D12
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 05:00:54 -0800 (PST)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id EE12F1020C9
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 13:00:52 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-107-69-155.us-west-2.compute.internal
	[10.107.69.155])
	by relay.mailchannels.net (Postfix) with ESMTPA id 2BA7D1021CC
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 13:00:52 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.16.27.41])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.8); Wed, 07 Dec 2016 13:00:52 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1481115652402:4091944678
X-MC-Ingress-Time: 1481115652401
Received: from [37.228.244.105] (port=45462 helo=[192.168.0.60])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.87)
	(envelope-from <pidge@toganlabs.com>) id 1cEbq7-002Srv-KD
	for yocto@yoctoproject.org; Wed, 07 Dec 2016 14:00:52 +0100
Message-ID: <1481115648.19291.5.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: yocto <yocto@yoctoproject.org>
Date: Wed, 07 Dec 2016 13:00:48 +0000
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Subject: Ignoring Fetch errors for optional source.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: pidge@toganlabs.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 07 Dec 2016 13:00:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I've an odd use case that I wonder if anyone has a work around/way of
doing it.

I've a client who has contractors who can't have access to a certain
segment of the code base. So for example, a recipe will have a SRC_URI
for the main bit that everyone has access to, but an extra src_uri that
some people won't have access to.

I want to be able to just ignore any fetch/unpack errors if that extra
src is unfetchable. Thoughts on how to achieve this?

-b

-- 
Beth 'pidge' Flanagan <pidge@toganlabs.com>
www.toganlabs.com


