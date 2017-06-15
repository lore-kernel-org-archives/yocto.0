Return-Path: <Andrea.DiChiara@teseo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 273B9E00B8D; Thu, 15 Jun 2017 03:05:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.81.186.23 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.teseo.com (mail.teseo.com [195.81.186.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6685CE00B18
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 03:05:43 -0700 (PDT)
Received: from HAL09.TWPN09.NET (172.27.0.1) by JUPITER09.TWPN09.NET
	(172.27.0.10) with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Thu, 15 Jun 2017 12:05:42 +0200
Received: from [172.27.0.187] (172.27.0.187) by HAL09.TWPN09.NET (172.27.0.1)
	with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Thu, 15 Jun 2017 12:05:42 +0200
To: <yocto@yoctoproject.org>
From: Andrea Di Chiara <andrea.dichiara@teseo.com>
Message-ID: <8e6627c4-91cb-b857-2ca3-7d8f0b49e2c6@teseo.com>
Date: Thu, 15 Jun 2017 12:05:42 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: NFS filesystem rights
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
X-List-Received-Date: Thu, 15 Jun 2017 10:05:46 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hi,
with a filesystem generated with a recent Yocto version (Morty or Pyro)
I obtain the following error using it as a NFS filesystem

mount: only root can mount proc on /proc
mount: only root can use "--types" option (effective UID is 1000)

what could be the problem? I have never faced this error with previous
version of Yocto (Dizzy), how can I generate an image as root user?
thank you
best regards
Andrea


Software Department
software@teseo.com

---------------------------------------------------------------------------=
----------------------------------
TESEO spa            via Agnelli, 49              63900 FERMO (FM) ITALY
Tel. +39 0734 628818   --    Fax. +39 0734 628816

Disclaimer: This electronic mail transmission may contain legally privilege=
d and/or confidential information. Do not read this if you are not the pers=
on(s) named. Any use, distribution, copying or disclosure by any other pers=
on is strictly prohibited. If you receive this transmission by mistake dest=
roy the original transmission and its attachments without reading or saving=
 in any manner.

