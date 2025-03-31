Return-Path: <G.Kautzmann@PRIMES.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0290EC36011
	for <webhook@archiver.kernel.org>; Mon, 31 Mar 2025 08:16:30 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by mx.groups.io with SMTP id smtpd.web10.47146.1743408980446343824
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Mar 2025 01:16:21 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: domain mismatch" header.i=g.kautzmann@primes.de header.s=s1-ionos header.b=PfxInISw;
 spf=pass (domain: primes.de, ip: 212.227.126.130, mailfrom: g.kautzmann@primes.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=PRIMES.de;
	s=s1-ionos; t=1743408978; x=1744013778; i=g.kautzmann@primes.de;
	bh=EEOXCkmvrb8/zD33Pj5GoWfkqSBsCeEbMcHGzarU/fs=;
	h=X-UI-Sender-Class:From:To:Subject:Date:Message-ID:Content-Type:
	 Content-Transfer-Encoding:MIME-Version:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=PfxInISwuE7BbBRbANjc6jVVkX5Pcgz+z1KMEWA4vc3sXKcgGHdCo4FoeB8NdBB4
	 mlmbu86aCVBsyolmMirScEQ8oNnLmoq+0+5rDvKS1J6eHvWBRJFVxKVXDF/eZarQC
	 827REPNaJT2SYODTSjUs/FXvGATcaaLn17JrcsLQ/0UHSFREJJODqbOaHbZCv6WUY
	 04ogKroBLTbVNznGKcCSzJ/pamIBi/BITMFdntzhOPbX9LxkAQzKCU8hRdap13Dhf
	 6VDP1PFvUSrD+gPUsCXZUgx0piBVhJca45if6vNV3F84UhOVbQ/48eEeV4mdry9No
	 XezAMbqgwlg+yqAw3A==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from Exchange2013.PRIMES.local ([80.154.17.250]) by
 mrelayeu.kundenserver.de (mreue009 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MFK8H-1tssnL2ihl-005SKa for <yocto@lists.yoctoproject.org>; Mon, 31 Mar 2025
 10:16:18 +0200
Received: from EXCHANGE2013.PRIMES.local ([192.168.116.253]) by Exchange2013.PRIMES.local ([192.168.116.253]) with mapi id 14.03.0513.000; Mon, 31 Mar 2025 10:16:17 +0200
From: Gerd Kautzmann <G.Kautzmann@PRIMES.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: OT: Message, can not  'unsubscribe'
Thread-Topic: Message, can not  'unsubscribe'
Thread-Index: AduiFO1RmYzLOc1ESMC65wjhV3OgQw==
Date: Mon, 31 Mar 2025 08:16:16 +0000
Message-ID: <1619D009AA8C9E469331A8EE22395AEC014788D6F6@Exchange2013.PRIMES.local>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.117.128]
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Provags-ID: V03:K1:1zvGEXC3ZVtHnj5vubRRP1SrLcjrqCX5J278kvRauubqUt2MsK7
 3teQvq0Zq2RTQIIxcLlcqONIZilzi+GwNq8+m14DXkY/CmUcuC5HS0lvqPFZSbaMLGfF7cJ
 yO9tZSuHkfrf2IdfaA/YOzyeTnuMTVJmJB+k4PIteREO8eW/RAyb1e+HRgp7H9H8fiVe3oI
 960tZD+DsE+90+m37gNNA==
UI-OutboundReport: notjunk:1;M01:P0:HRUulnAVc9Q=;kAVKNoWuW0T1mX5lpMIxSN37WvS
 vpQdU0cNdmP3OlFlHJiVqhnnOm2sgckmZoCn8oAOI/STJtlv2Jotkije6M6zvJ819RoN4Ikql
 IMDQKmqQ5wmHb4lqUvT78WCybk2/eGZfZ1D5NPZ1ZqAzMsdRC4Qu/lrFU59OcfYzYtqPpVF1C
 sM+YHQwsfNXEZBvJNP3kH+dE/tPFhk0voKOOkACTosTHwjDjK+/yUorOE+Yg/vVrJODaNTZQc
 mcYwWyOFPMcBg49fTM9YNy+2vK9peZs+9UKNBziTcU/1MaOJ6e5D4HCrwnNyspi5lgBUe7NdS
 bYtxykgPN/Rkg8JuuFHmX2zJR3/1HjcH5LXaTeSzb86Y6SnamQsH6rMTdGMRpR+6Gw5FrHJQ4
 0cROIbi7yzOcwr3VNgCQUjqpkrMIeVgyuoLmD7O6uA5hQnEsKkanHskH6WgOQ+roklD5Y2+Eg
 MZ7djzH90iP0ThJf5Hzu+VI95r/hAZEBSbE07ZJQ+lQc9B5QQNpzzrpj6NE9rHNcjNsAkLqMN
 ffZDcZjLDY1hq7YB1FWcJDnmmABIJ4JkrBbu6TIaaoUiMwfoNrH8HcEXbsUmZdeNRmqF9FKAC
 TBcM35y6VcyVlGKa+AcESwpaHuUtAd/xbFBIy+jf9GJmipufpbLrr+tKCr9T9yAIJ2ZcxgIfa
 5VcyJRVt28SpTiV1XITQeOxdefZqMvWqt0Hswt+58Rjt+d6+eGFm+DOrjh1g2Q//0rUl4SqDj
 1U6q/YBrOhheHukshJbaz7JDwoU3wwtM1Uxux8eZmiUB0nDrRwkOe9HG9nTOwA969IE8BmXDI
 SM3ZmqbX5z4GjYPx6jycji3I0gYNB/btmdHveAYHptoTeCQGKv2VvgwmYHbnjTXmL7TbnXhK2
 wMzUkryLB5i9W45JOie7haKJhLc6zHevc6Oq/ck+EN6awiQBOBrX8u/aWvnzJM4SX0vC73AMj
 4fig7aGrNNlURgn0cfMYVGVwjWafFLFkjfvghA1O7/S3Ygo9T9Zu20kLuCYxbv4IrFK/v6uym
 C0Tt6RBLe+Q1pT0Wfg5OW7S9Fm43WXxXDKgKGRUOYIGyBa/4ncX76An2ovhPjeGCPrhpi/I/X
 HyDSQdManmbLE8HoMcQVOKMx6Ymudr5gi1c67oadcVrr4wrtIvEv4kkP50dLaIt619ad6XDhU
 CWvk8JhG8K2yLuv366c64zgjzZazwXGSokifNfn8XFEzYfMwqN/SPB7fPyO/4bSlTWLLf6NNB
 3LLjAsUI06ClfL+a6uoIoRG7MGla99YvMra+QwaI3bF2bf+/c/FtfPeWaM9brqIxG/TYaxjrw
 goG/QAi+BpqbEb3L6ks2B/8VOG9I0DNGsBnM0rbEGjYL6Da7wKV8m5OcW6jCbNGbBoFOA/ej8
 FtQ18/QGeIHTXq7HjREXJ6yp0EmoGgPeIEBHw=
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Mar 2025 08:16:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65037

RXhjdXNlIG1lIGZvciB0aGlzIE9UIE1lc3NhZ2UgDQoNCg0KSSBzZW50IHRoZSB1bnN1YnNyaWJl
IG1lc3NhZ2Ugb24gbXVsdGlwbGUgb2NjYXNpb25zIGJ1dCBzdGlsbCBnb3QgbWFpbCwgdGhpcyBp
cyBteSBsYXN0IG1haWwgZnJvbSB0aGlzIGFkZHJlc3MsIA0KDQptYXliZSB0aGUgYWRtaW4gY2Fu
IHVuc3Vic2NyaWJlIG1lDQo=


