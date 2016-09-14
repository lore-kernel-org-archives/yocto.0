Return-Path: <damir.anicic@psi.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F53DE009DF; Wed, 14 Sep 2016 05:43:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [82.130.99.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from edge20.ethz.ch (edge20.ethz.ch [82.130.99.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2671E009CD
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 05:42:56 -0700 (PDT)
Received: from CAS21.d.ethz.ch (172.31.51.111) by edge20.ethz.ch
	(82.130.99.26) with Microsoft SMTP Server (TLS) id 14.3.301.0;
	Wed, 14 Sep 2016 14:42:51 +0200
Received: from MBX114.d.ethz.ch ([fe80::4875:1a61:8b1c:148]) by
	CAS21.d.ethz.ch ([fe80::55ba:c4a5:d8a7:ab62%10]) with mapi id
	14.03.0301.000; Wed, 14 Sep 2016 14:42:55 +0200
From: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
To: Daniel. <danielhilst@gmail.com>
Thread-Topic: [yocto] Fetcher failure
Thread-Index: AdIOXOA5GKic+Ii1RS2D956AFIO9Bf//+UaAgABB8/aAABGWKP//4BeAgAAj8/s=
Date: Wed, 14 Sep 2016 12:42:54 +0000
Message-ID: <DB23C91B06C303459B24BC3208AF424A20F821C8@MBX114.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20F820DE@MBX114.d.ethz.ch>
	<CAJTo0LbmE1u1rfe8prA-Mv8bhyOkf2sKesEVQV42DqnLvc-8Lw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F8216B@MBX114.d.ethz.ch>
	<DB23C91B06C303459B24BC3208AF424A20F821AC@MBX114.d.ethz.ch>,
	<CAF3SDA6XyxtCNhKRZfPfdNVgvqAMyosBjfbUUpf=msjVPdyQPw@mail.gmail.com>
In-Reply-To: <CAF3SDA6XyxtCNhKRZfPfdNVgvqAMyosBjfbUUpf=msjVPdyQPw@mail.gmail.com>
Accept-Language: en-US, de-DE, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.129.145.249]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fetcher failure
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
X-List-Received-Date: Wed, 14 Sep 2016 12:43:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

This works:=0A=
wget http://www.exampe.com/=0A=
--2016-09-14 14:42:23--  http://www.exampe.com/=0A=
Resolving www.exampe.com... 69.172.201.153=0A=
Connecting to www.exampe.com|69.172.201.153|:80... connected.=0A=
HTTP request sent, awaiting response... 200 OK=0A=
Length: unspecified [text/html]=0A=
Saving to: =93index.html.1=94=0A=
=0A=
    [ <=3D>                                                                =
                                                ] 1,558       --.-K/s   in =
0s      =0A=
=0A=
2016-09-14 14:42:23 (20.8 MB/s) - =93index.html.1=94 saved [1558]=0A=
=0A=
=0A=
=0A=
But this does not:=0A=
wget https://www.exampe.com/=0A=
--2016-09-14 14:42:39--  https://www.exampe.com/=0A=
Resolving www.exampe.com... 69.172.201.153=0A=
Connecting to www.exampe.com|69.172.201.153|:443... connected.=0A=
Unable to establish SSL connection.=0A=
=0A=

