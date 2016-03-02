Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99C25E008DB; Wed,  2 Mar 2016 12:29:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8F09E0088B
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 12:29:20 -0800 (PST)
Received: from poczta.nazwa.pl (unknown [10.252.0.20])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id E9DB91CC73C;
	Wed,  2 Mar 2016 21:29:16 +0100 (CET)
Date: Wed, 2 Mar 2016 21:29:16 +0100 (CET)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: Rudolf J Streif <rudolf.streif@gmail.com>, ed.bartosh@linux.intel.com
Message-ID: <1620646557.248461.5e7b6350-4729-4603-9492-6e71d7843891.open-xchange@poczta.nazwa.pl>
In-Reply-To: <20160302064735.GA21419@linux.intel.com>
References: <5285202.8PW0mz0glJ@rjs-zotac.streifs.net>
	<20160302064735.GA21419@linux.intel.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.0-Rev20
X-Originating-Client: com.openexchange.ox.gui.dhtml
Cc: yocto@yoctoproject.org
Subject: Re: [wic] Creating sdimage-bootpart
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
X-List-Received-Date: Wed, 02 Mar 2016 20:29:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


> Dnia 2 marzec 2016 o 07:47 Ed Bartosh <ed.bartosh@linux.intel.com> napisa=
=C5=82(a):
>
>
> Hi Rudolf,
>
> Interesting. I thought that this commit shoud fix the issue:
> http://cgit.openembedded.org/openembedded-core/commit/?id=3D264c03e854f77=
c3b62acb710384f66716ccbf469
>
> Which branch do you use?
>

Ed, would it make sense to backport this commit to jethro?

--
Maciej Borz=C4=99cki
Senior Software Engineer at Open-RnD Sp. z o.o.
www.open-rnd.pl

