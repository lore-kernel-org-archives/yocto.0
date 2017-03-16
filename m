Return-Path: <vincent.arvis@transport.alstom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39D51E0098A; Thu, 16 Mar 2017 02:37:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [159.245.16.221 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from MCEGSMTP1.alstom.com (mcegsmtp1.alstom.com [159.245.16.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79F7FE0094C
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 02:37:53 -0700 (PDT)
Received: from 041-smtp-out.Alstom.com (unknown [141.251.119.146]) by
	MCEGSMTP1.alstom.com with smtp
	(TLS: TLSv1/SSLv3,256bits,ECDHE-RSA-AES256-SHA384)
	id 1012_4001_47c0b1c5_7815_4449_9d55_a2781a6277a3;
	Thu, 16 Mar 2017 10:37:25 +0100
Received: from AM3PR48MB0099.041d.mgd.msft.net (141.251.119.147) by
	AM3PR48MB0098.041d.mgd.msft.net (141.251.119.146) with Microsoft SMTP
	Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.961.17; Thu, 16 Mar 2017 09:37:24 +0000
Received: from AM3PR48MB0099.041d.mgd.msft.net ([141.251.119.147]) by
	AM3PR48MB0099.041d.mgd.msft.net ([141.251.119.147]) with mapi id
	15.01.0961.022; Thu, 16 Mar 2017 09:37:25 +0000
From: ARVIS Vincent <vincent.arvis@transport.alstom.com>
To: "Zheng, Ruoqin" <zhengrq.fnst@cn.fujitsu.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Yocto Jetro / ls1046 : SDK with toolchains for both 32
	and 64 bits
Thread-Index: AdKb2dxJPPlDJWvDSMyceOiXLEccUQCXkuQg
Date: Thu, 16 Mar 2017 09:37:24 +0000
Message-ID: <91fa1d42a3634ea99a93f232450ca1d7@AM3PR48MB0099.041d.mgd.msft.net>
References: <33D4DBCAC5F2D74E96B07F6E7632BF73244DC934@G08CNEXMBPEKD01.g08.fujitsu.local>
In-Reply-To: <33D4DBCAC5F2D74E96B07F6E7632BF73244DC934@G08CNEXMBPEKD01.g08.fujitsu.local>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [141.251.119.133]
x-ms-office365-filtering-correlation-id: f41f92b4-15f4-45a0-6224-08d46c500dc2
MIME-Version: 1.0
Subject: Re: Yocto Jetro / ls1046 : SDK with toolchains for both 32 and 64 bits
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
X-List-Received-Date: Thu, 16 Mar 2017 09:37:58 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi


>    I didn't meet the same problem with you, here is my stdout log:
>    $ . /opt/poky/2.0.3/environment-setup-armv7a-vfp-neon-pokymllib32-linu=
x-gnueabi
>    $ $CC
>   -bash: arm-pokymllib32-linux-gnueabi-gcc: command not found
We are on the jetro 2.0.0 and should evolved to the 2.0.3.
If you have the environment file, this confirms that there are corrections =
around this. But not enough to get a complet 32/64 bits SDK.

>    And I can find gcc for arm32 in /opt/poky/2.0.3/sysroots/x86_64-pokysd=
k-linux/usr/bin/arm-poky-linux-gnueabi
> ....
>        So I think SDK do provide gcc for arm 32bit, but it can't be found=
 in the SDK environment.Yes me too, but it seems that Yocto does not put it=
 in the SDK for ARM processors.
I read that it works well for X86 targets.
And I heard that it work with Yocto Morty for ARM processors.
Perhaps will need to change of baseline.
Let me know if you find a solution on Yocto Jethro, because we would like t=
o stay and this branch for now.

On my side, I did a lot of tests and patch update without success.

Regards
Vincent ARVIS

________________________________
CONFIDENTIALITY : This e-mail and any attachments are confidential and may =
be privileged. If you are not a named recipient, please notify the sender i=
mmediately and do not disclose the contents to another person, use it for a=
ny purpose or store or copy the information in any medium.

