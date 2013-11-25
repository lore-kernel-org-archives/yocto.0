Return-Path: <SRS0=jtOswn=VC=xstreamworship.com=darcy@yourhostingaccount.com>
Received: from mailout07.yourhostingaccount.com
	(mailout07.yourhostingaccount.com [65.254.253.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55E6BE00476
	for <yocto@yoctoproject.org>; Sun, 24 Nov 2013 22:55:59 -0800 (PST)
Received: from mailscan04.yourhostingaccount.com ([10.1.15.4]
	helo=mailscan04.yourhostingaccount.com)
	by mailout07.yourhostingaccount.com with esmtp (Exim)
	id 1Vkq5P-00019R-0W
	for yocto@yoctoproject.org; Mon, 25 Nov 2013 01:55:59 -0500
Received: from impout01.yourhostingaccount.com ([10.1.55.1]
	helo=impout01.yourhostingaccount.com)
	by mailscan04.yourhostingaccount.com with esmtp (Exim)
	id 1Vkq5O-0003XG-CM; Mon, 25 Nov 2013 01:55:58 -0500
Received: from authsmtp01.yourhostingaccount.com ([10.1.18.1])
	by impout01.yourhostingaccount.com with NO UCE
	id tivw1m00L01P85W01ivw5M; Mon, 25 Nov 2013 01:55:57 -0500
X-Authority-Analysis: v=2.0 cv=Sc11h4tu c=1 sm=1
	a=PBjNgDHI42ZMOZT2qNRUiA==:17 a=udp3vUpmobkA:10 a=8MyIFKFgNwsA:10
	a=kj9zAlcOel0A:10 a=UMyGM1t-AAAA:8 a=KEIUF2QC27cA:10 a=6ohNodAXAAAA:8
	a=hNRtDBUP4rGIl1v0tLYA:9 a=CjuIK1q_8ugA:10 a=qnMJrnbeHU4A:10
	a=YGpRsdE7uqoA:10 a=ilymawf/5WNU8sTmGLp1gQ==:117
X-EN-OrigOutIP: 10.1.18.1
X-EN-IMPSID: tivw1m00L01P85W01ivw5M
Received: from [70.68.129.247] (port=56418 helo=darcypc)
	by authsmtp01.yourhostingaccount.com with esmtpsa
	(TLSv1:AES128-SHA:128) (Exim)
	id 1Vkq5M-00055D-AY; Mon, 25 Nov 2013 01:55:56 -0500
From: "Darcy Watkins" <darcy@xstreamworship.com>
To: <yocto@yoctoproject.org>
Date: Sun, 24 Nov 2013 22:55:55 -0800
Message-ID: <000501cee9ab$65f6de00$31e49a00$@xstreamworship.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: Ac7pqwcrgreANfzATnmNK+aRutVOLw==
X-EN-UserInfo: 9718c98d0dcf33dd6a452bac2a172d62:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: dwatkins@pop.powweb.com
Sender: "Darcy Watkins" <darcy@xstreamworship.com>
X-EN-OrigIP: 70.68.129.247
X-EN-OrigHost: unknown
Subject: Java on Yocto 1.5 on i.MX6
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
X-List-Received-Date: Mon, 25 Nov 2013 06:56:00 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us

Anyone build and running openjdk-7 in the yocto 1.5 environment on i.MX6?

I tried adding meta-java layer and ran 'bitbake openjdk-7' and it blows up
in do_configure classpath-native.  The log file is attached to my post at
Freescale community.

https://community.freescale.com/message/364691#364691

I want to run this on my Wandboard-Quad.

Thanks in advance.

-- 

Regards,

Darcy

Equipping worship teams and worshipers
http://xstreamworship.com
[M1]



