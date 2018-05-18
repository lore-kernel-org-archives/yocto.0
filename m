Return-Path: <mamta0925@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 312BBE00CDD; Fri, 18 May 2018 10:55:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mamta0925[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.137.65.147 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic309-21.consmr.mail.gq1.yahoo.com
	(sonic309-21.consmr.mail.gq1.yahoo.com [98.137.65.147])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8106EE00C36
	for <yocto@yoctoproject.org>; Fri, 18 May 2018 10:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1526666098; bh=Kd5wp8X3hvWStLCsHFiuYTWVjrOWqlFi3/Wo7A22i1I=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From:Subject;
	b=I8+DQxPW5kQ2MQvJ5UiP4VArp8olF4MB73B5kx30E4ZuXIIAQYwciIoQRJCiI8VKb3fJTDrbLMapyMo+AOc2A0MCqhywYn+V3tyJHXY3xs/NwyXbtJbSOh6YzAVX43YhmEpFmZeUo0owP54dsPMeSfHnhI4D2ZV+fGe7AE+BvZ7Ulom6G2UXmysHrpusYjrCChc1BneL9YF/6i13n9Xvwf+4r4c/MYy3uqnAiUvRmsxX+jhxfoJdsGOJxd7digNXRiSo9uNpzc2BiPwvfRGANOjs+e2wBR9vB+rW8JnoR7OofHCYdnKlvgfG93ZrYmHxS5J+n118WQY2B6TCtO8nnQ==
X-YMail-OSG: uu9LWVUVM1kv3DJLfDvE9j_mLjsa3RA758T6MaizTTngozmeCrUgI02pMw_K0DP
	X24BG0Smxzyht35FCj0.RocRAAcdpgrFba89PjCHazRJZizUz_1R6VlStynsRskH5XxAHGoBY9m5
	EQCOZ6gZeswWvrnmoKASxytNhbjyxlbKS8aDcnj9HAb9f1tAy57woiqpr6fBAQ8bLgEuCtr_hbIo
	SFXE1cmEm9Wx_NNgjHFOi0XVzHfuYSd0zliLufXldgNUh42ex.HAdvzj58mRu9StEijz64oY9En3
	o4k.e3ygxQzrXR14197ALfa.k7PG_1k2Eg9B6Jm9FN1SPKhYWAvXhXC66Cc9ndnKle_NiCyNidHf
	94K.d6Nk.Axvqm7Q24I.dzn_n63fZ3QgvBTPwy9fjhU6aQQ5PkCn9KD7ckOKnOR371i83CiZE1Xz
	zzoDUBtdsqn__A1S7ANMYNdmj_KNyE9pdJCf4LL8gAqASyqsQ1RwlEMLS2xeX2S.W7Dx6qQSPNqT
	v9DFA5_mi7IQYwdKdGINonEMe7CXme_coPFRE9xkbpFaRjEIEUx2xrw2XFCL0UGGdAcdqooBp3mU
	D5TfqqOlOLiPuPKSdO5j6t7bmyt7K9Pr50FKzeh33ApydIryawRjmxs4V5RcvuzMl8ltqIgSsVMM
	Y4EzN71W6KM1B.wZygwT4F4RpCA--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic309.consmr.mail.gq1.yahoo.com with HTTP;
	Fri, 18 May 2018 17:54:58 +0000
Received: from c-73-2-139-94.hsd1.tn.comcast.net (EHLO [10.0.1.102])
	([73.2.139.94])
	by smtp412.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
	4a50a1cd085cefea96dc290cb6a78212; 
	Fri, 18 May 2018 17:54:54 +0000 (UTC)
Mime-Version: 1.0 (1.0)
From: mamta0925@yahoo.com
X-Mailer: iPhone Mail (15C153)
In-Reply-To: <d6281d13-2350-da9a-ade8-390f130da458@gmail.com>
Date: Fri, 18 May 2018 12:54:53 -0500
Message-Id: <09AEDEF0-253E-452B-B252-8189E20F74B8@yahoo.com>
References: <396AD4CF-B81A-48EC-9641-068B3B6D6F59@yahoo.com>
	<4bd6eee5-0af7-1cbb-f6f4-38de9ed329ea@linux.intel.com>
	<d6281d13-2350-da9a-ade8-390f130da458@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Using yocto as a build system
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
X-List-Received-Date: Fri, 18 May 2018 17:55:00 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Thanks Alex and Khem. There are no specific open source packages we want to=
 build. We want a build infrastructure which we can pass on to our internal=
 dev teams, so they can build packages themselves=20
> On May 18, 2018, at 11:15 AM, Khem Raj <raj.khem@gmail.com> wrote:
>=20
>=20
>=20
>> On 5/18/18 7:12 AM, Alexander Kanavin wrote:
>>> On 05/18/2018 12:06 AM, mamta0925@yahoo.com wrote:
>>> Apologies if these are basic questions but thought this will be the
>>> best place to find answers to the point
>>>=20
>>> So our requirement is to build open source packages in Linux, windows
>>> and Mac on a build system. Currently we have an internal build system
>>> which is quite cumbersome to manage. Hence we are looking for outside
>>> options
>>>=20
>>> Given our situation, is Yocto our best solution? Does it even provide
>>> for building windows and Mac open source packages?
>=20
> I would suggest to look into something like cmake, if you do not build p=
latforms. it might be good for building apps across platforms
>=20
>> Generally speaking, no. Yocto is aimed at embedded Linux use cases.
>> If you elaborate about your product and what are the 'open source packa=
ges', maybe someone can suggest other options.
>> Alex


