Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3096E00D63; Tue, 16 Jul 2019 08:03:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.40.44.208 listed in list.dnswl.org]
Received: from smtprelay.hostedemail.com (smtprelay0208.hostedemail.com
	[216.40.44.208])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44D79E00B33
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 08:03:31 -0700 (PDT)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 65197100E96E4
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 15:03:30 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: van52_3ba323fe67153
X-Filterd-Recvd-Size: 857
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf09.hostedemail.com (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 15:03:29 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Date: Tue, 16 Jul 2019 15:03:27 +0000
Message-Id: <emc0ba868c-6ea5-4403-85de-457b09e9cd3c@andys-imac.local>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Subject: Pre-installing node.js packages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Andy Pont <andy.pont@sdcsystems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 16 Jul 2019 15:03:31 -0000
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,=0A=0AIs there a way to add node.js packages into a build?  I=E2=80=
=99m trying to =0Aavoid having to include npm and compiler into my target i=
mage.=0A=0A-Andy.


