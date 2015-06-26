Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E5AAE0096A; Fri, 26 Jun 2015 13:06:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id DCC60E006C6
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 13:06:44 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0224.002; Fri, 26 Jun 2015 22:06:40 +0200
From: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
To: "Bian, Naimeng" <biannm@cn.fujitsu.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [meta-cgl][RFC]upgrade resource-agents
Thread-Index: AdCvI8M+OJIQei2sR4CSqfMLAQqcGwBJ8/bQ
Date: Fri, 26 Jun 2015 20:06:40 +0000
Message-ID: <DDB0C57E45663A458C5CACB7B5688BC21D8BAF00@SESTOEX04.enea.se>
References: <30DC4EDFD798C94083F3E083754532CC73E15CC4@G08CNEXMBPEKD02.g08.fujitsu.local>
In-Reply-To: <30DC4EDFD798C94083F3E083754532CC73E15CC4@G08CNEXMBPEKD02.g08.fujitsu.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.175]
MIME-Version: 1.0
Subject: Re: [meta-cgl][RFC]upgrade resource-agents
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
X-List-Received-Date: Fri, 26 Jun 2015 20:06:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

OK, thanks for that Bian

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Bian, Naimeng
Sent: Thursday, June 25, 2015 11:51 AM
To: yocto@yoctoproject.org
Subject: [yocto] [meta-cgl][RFC]upgrade resource-agents

Hi all

We have a recipe named cluster-resource-agents_1.0.3.bb which is a implemen=
tation for OCF Resource Agents, Is it same as Resource Agents which is bein=
g maintained in https://github.com/ClusterLabs/resource-agents.
If so, the cluster-resource-agents_1.0.3.bb is too old,  I want to upgrade =
it to the latest version.

Thanks
 Bian
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

