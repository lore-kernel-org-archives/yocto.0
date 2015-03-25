Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82A15E008F6; Wed, 25 Mar 2015 10:38:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37071E008CF
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2015 10:38:19 -0700 (PDT)
Received: by padcy3 with SMTP id cy3so35647293pad.3
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2015 10:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=qvZ36KJydMJGhq4CP400PCsE7ExZGb+TCMErmfRaiEE=;
	b=LTpSmWFPLU3vM1B4oPriuvNIYde9BXmfTAyodtam0jXrVJHsPG657LBARhnLhO94OH
	74ExRMT7HWzpkkuvXZ9B89JjvmKtoeGvTgB+KeMtjOIfNZXWgyAgOT3mbqA3WDpJa3DQ
	UDCD9ajTXF5b/SqvvV3SGOAhFfVFiPDQtQDYRBQS/kB83G9J00b6Drrv60nv1kQRBiZ8
	MiBuvIoTfmjVex/hM3NNZJvYS7DEM4SMglGX/dYS6jRe7JMiTHq2WQeWVC1Su2d8QATk
	YSz1oK1yEjP5lWWCh+aVV28ljj0P8U02P5wbs+gzdEpiEQON0aF+NMhrihNm4PX0i8EK
	+Qcg==
X-Received: by 10.70.18.68 with SMTP id u4mr19728948pdd.38.1427305099398;
	Wed, 25 Mar 2015 10:38:19 -0700 (PDT)
Received: from [172.22.21.154] ([12.104.145.3])
	by mx.google.com with ESMTPSA id bt2sm3089432pad.12.2015.03.25.10.38.18
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 25 Mar 2015 10:38:18 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAK5mtewFh6rqfCkpUkBsuWJiZujgDvdSJS00ogKuDan133kCdg@mail.gmail.com>
Date: Wed, 25 Mar 2015 10:38:17 -0700
Message-Id: <79C05072-0DDF-4DEE-9DEA-FC2758FBDBCD@gmail.com>
References: <CAK5mtewFh6rqfCkpUkBsuWJiZujgDvdSJS00ogKuDan133kCdg@mail.gmail.com>
To: Victor Rodriguez <vm.rod25@gmail.com>
X-Mailer: Apple Mail (2.2070.6)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: GCC 4.9 to 5.0
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
X-List-Received-Date: Wed, 25 Mar 2015 17:38:22 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Mar 25, 2015, at 9:28 AM, Victor Rodriguez <vm.rod25@gmail.com> =
wrote:
>=20
> HI everyone
>=20
> Does anybody knows if there is a best known method/plan/test suite for
> moving from one version of gcc to another ?
>=20

we generate cross testing driver in the build tree for gcc-cross which =
should help
in running the dejagnu in cross env. Unfortunately it has stopped =
working after libgcc
was separated out. So it might need some fix. but you should see =
<cross>-testgcc script
generated in build tree.

> I am in the middle of that painful task and wonder if yocto community
> has a plan every time yocto do this switch
>=20
> Thanks a lot for all the help
>=20
> Regards
>=20
> Victor Rodriguez
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


