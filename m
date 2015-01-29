Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6062E00827; Wed, 28 Jan 2015 19:11:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DAE0E00753
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 19:10:56 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="56795887"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 29 Jan 2015 11:07:21 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t0T3AAmO030895;
	Thu, 29 Jan 2015 11:10:10 +0800
Received: from G08CNEXMBPEKD01.g08.fujitsu.local ([10.167.33.81]) by
	G08CNEXCHPEKD01.g08.fujitsu.local ([10.167.33.80]) with mapi id
	14.03.0181.006; Thu, 29 Jan 2015 11:11:00 +0800
From: "Lei, Maohui" <leimaohui@cn.fujitsu.com>
To: Yi Zhao <yi.zhao@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Help -- Where can I get the LSB test log
Thread-Index: AdA7ZzGsiXXhU73MQaKLa0hwYEWPEv//g6GA//9xFPA=
Date: Thu, 29 Jan 2015 03:11:00 +0000
Message-ID: <1B56A49860EB2D45ADE3731B15C959FDAE79E2@G08CNEXMBPEKD01.g08.fujitsu.local>
References: <1B56A49860EB2D45ADE3731B15C959FDAE7982@G08CNEXMBPEKD01.g08.fujitsu.local>
	<54C99C23.5060706@windriver.com>
In-Reply-To: <54C99C23.5060706@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.48]
MIME-Version: 1.0
Subject: Re: Help -- Where can I get the LSB test log
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
X-List-Received-Date: Thu, 29 Jan 2015 03:11:01 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hi Yi

> The log should be in /var/opt/lsb/test/manager/results/
>

sorry=1B$B!$=1B(Bmy expression is not very clear=1B$B!#=1B(B

From https://wiki.yoctoproject.org/wiki/Yocto_1.7_Overall_Test_Plan , I kne=
w LSB test was executed on target that made by yocto 1.7.1 release.

So , I want to get the LSB test history of the yocto 1.7.1 release.

Lei=20


> -----Original Message-----
> From: Yi Zhao [mailto:yi.zhao@windriver.com]
> Sent: Thursday, January 29, 2015 10:34 AM
> To: Lei, Maohui/=1B$BMk=1B(B =1B$BLP7E=1B(B; yocto@yoctoproject.org
> Subject: Re: [yocto] Help -- Where can I get the LSB test log
>=20
> The log should be in /var/opt/lsb/test/manager/results/
>=20
> Yi
>=20
> =1B$B:_=1B(B 2015=1B$BG/=1B(B01=1B$B7n=1B(B29=1B$BF|=1B(B 10:04, Lei, Mao=
hui =1B$B<LF;=1B(B:
> > Hi all
> >
> > Was LSB test executed  in yocto 1.7.1 release=1B$B!)=1B(B Where can I g=
et the LSB test
> log and result?
> >
> > Best Regards,
> > Lei Maohui


