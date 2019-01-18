Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8C9AE00CED; Thu, 17 Jan 2019 20:30:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [81.236.60.156 listed in list.dnswl.org]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout3.han.skanova.net (v-smtpout3.han.skanova.net
	[81.236.60.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CDC8E00CE6
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 20:30:16 -0800 (PST)
Received: from [10.175.196.109] ([37.123.169.62]) by cmsmtp with ESMTPA
	id kLnJgWWnYHNTSkLnJgW2Hm; Fri, 18 Jan 2019 05:30:13 +0100
Mime-Version: 1.0 (1.0)
From: Ulf Samuelsson <yocto@emagii.com>
X-Mailer: iPad Mail (15F79)
In-Reply-To: <CAJTo0LZ6waQMNE_et9gJk+KOnHeriTw6u0xxFR8LROjMxjhUBQ@mail.gmail.com>
Date: Fri, 18 Jan 2019 05:30:13 +0100
Message-Id: <C23DECFB-A3E9-404F-BF7D-EEAD4BA23CE3@emagii.com>
References: <d278856c-cba2-e63f-d50a-8f4b40365c88@emagii.com>
	<a778dc9409e589ee19f122db4069857513e3fe52.camel@linuxfoundation.org>
	<1DB4D7BE-E62D-4F13-8F8A-A5103ED5F767@emagii.com>
	<CAJTo0LZ6waQMNE_et9gJk+KOnHeriTw6u0xxFR8LROjMxjhUBQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-CMAE-Envelope: MS4wfD/Y9KXpkDp4BIkoBFzVUHZTXQJC3fph1Md6GqrvwohlbKyJ7aBQtYv2xCpke+BY8UDUXJDHPmW/FzD77VPUJP0ExQ/XJ6XwWj4q3YkNY5fUOIKWL80f
	zajo5WeV/ZAVqBt2/T8zJTkePqYyNgxYfYLoT+HS/6BXlxkugYIXf/iRs+gWrBATrtFcvHbFE+oPaZQkCx+wkrDK+K0aNZvfSXnk6ThqarlwiUIwWCghbJld
	luR6s+WXC33buR/n8Ld7JA==
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [PATCH] bb.build.addtask: add simple check for circular dependency
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
X-List-Received-Date: Fri, 18 Jan 2019 04:30:18 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

So if KNOWN_TASKS is defined in a configuration file in oe-core, it would be=
 OK?
It needs to be extended to check for KNOWN_TASKS =3D=3D None of course.

Best Regards,
Ulf Samuelsson
+46 722 427 437

> 18 jan. 2019 kl. 00:17 skrev Burton, Ross <ross.burton@intel.com>:
>=20
> On Thu, 17 Jan 2019 at 22:50, Ulf Samuelsson <yocto@emagii.com> wrote:
>>> We really can't hardcode a list of tasks like this in bitbake :(
>>>=20
>>> The list is also incorrect (at a quick look its packagedata and
>>> populate_sysroot is missing).
>>=20
>> I would say it may be incomplete, but it is only wrong, if they are in th=
e wrong order.
>=20
> Richard's point was that those task names are oe-core specific.
> Bitbake doesn't know or care about the specific names.
>=20
> Ross


