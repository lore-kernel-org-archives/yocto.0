Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76BF4E00CE2; Fri, 18 Jan 2019 07:07:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.236.60.154 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout1.han.skanova.net (v-smtpout1.han.skanova.net
	[81.236.60.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78991E00C94
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 07:07:39 -0800 (PST)
Received: from [95.197.4.133] ([95.197.4.133]) by cmsmtp with ESMTPA
	id kVkAgJk5ncCEokVkAgnoqz; Fri, 18 Jan 2019 16:07:39 +0100
Mime-Version: 1.0 (1.0)
From: Ulf Samuelsson <yocto@emagii.com>
X-Mailer: iPad Mail (15F79)
In-Reply-To: <6a6bfb8cc510a344b4ef40389ba33fbfe525afbd.camel@linuxfoundation.org>
Date: Fri, 18 Jan 2019 16:07:38 +0100
Message-Id: <54452C1F-B1CB-4916-9CFA-C8FB2191C583@emagii.com>
References: <d278856c-cba2-e63f-d50a-8f4b40365c88@emagii.com>
	<a778dc9409e589ee19f122db4069857513e3fe52.camel@linuxfoundation.org>
	<1DB4D7BE-E62D-4F13-8F8A-A5103ED5F767@emagii.com>
	<CAJTo0LZ6waQMNE_et9gJk+KOnHeriTw6u0xxFR8LROjMxjhUBQ@mail.gmail.com>
	<C23DECFB-A3E9-404F-BF7D-EEAD4BA23CE3@emagii.com>
	<7851f1d740f3a130e4ae5a1e9eb7f9e0273ee1f4.camel@linuxfoundation.org>
	<A6212BF5-A78A-4659-B876-BDC464B41B38@emagii.com>
	<6a6bfb8cc510a344b4ef40389ba33fbfe525afbd.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-CMAE-Envelope: MS4wfDIBANnvuJmSnyCQ4pSW3bXOnjFHZyOaPVkpbH2XOp3J0qiqZ2gPUMR6fciGJLqIXD+WYEk1rn6g5S3k7Dh58jrNxq7KsqqfRqVl6PUgti1oR0WxDVOe
	LRPq0CEPJmsMl49Xdc+O2i65R34LZ+8uE+9Qhi9FW33bP/CQlRQkM7faNAVjBmRNtQSX6X6ygfiWc0p3TeoDPQ9t26I71bBbw6VIZ9AaRFGm2wE+ijH+OYgj
	ySJzX4vc3ADa6mE4nf5UpQ==
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
X-List-Received-Date: Fri, 18 Jan 2019 15:07:41 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable



> 18 jan. 2019 kl. 15:40 skrev Richard Purdie <richard.purdie@linuxfoundatio=
n.org>:
>=20
> On Fri, 2019-01-18 at 15:16 +0100, Ulf Samuelsson wrote:
>>> 18 jan. 2019 kl. 12:29 skrev Richard Purdie <
>>> richard.purdie@linuxfoundation.org>:
>>>=20
>>>> On Fri, 2019-01-18 at 05:30 +0100, Ulf Samuelsson wrote:
>>>> So if KNOWN_TASKS is defined in a configuration file in oe-core,
>>>> it
>>>> would be OK?
>>>> It needs to be extended to check for KNOWN_TASKS =3D=3D None of
>>>> course.
>>>=20
>>> No, this is too fragile. We then have to maintain two different
>>> lists
>>> of tasks. If we did that we may as well just remove the generic
>>> tasks
>>> mechanism and hardcode the tasks list in the metadata.
>>>=20
>> Why do we need two lists?
>=20
> If we change one of these "generic" tasks, we then need to remember to
> also update KNOWN_TASKS. The same information is being encoded in two
> places.
>=20
> Maintaining the same information in two different places means one of
> those places inevitably ends up out of date.

We could insert a check if the KNOWN_TASKS is valid in a verification test.
When building core-image-minimal, the task order within core-image-minimal i=
s analyzed, (dependencies on all other recipes is filtered away).
Then you find out if there are tasks added, missing, and/or in the wrong ord=
er.

Best Regards,
Ulf Samuelsson

>=20
>> We need to know in what order the generic tasks are executed, that is
>> all.
>>=20
>> Then we need to see if an addtask is violating that order.
>> If the =E2=80=9Dafter=E2=80=9D or =E2=80=9Dbefore=E2=80=9D is not a gener=
ic task, the check cannot
>> catch that.
>>=20
>> If the user decides to not use the generic tasks, and create new ones
>> with the same name, as the generic tasks, but rearranges the order,
>> there will be a problem, but I do not see any other problems.
>>=20
>> Please enlighten me!
>=20
> This has the problem that the code will find some subset of the bugs
> but not all of them. We'll then get users reporting that the tests
> failed and asking for the checks to be improved.
>=20
> So no, we are not doing this, sorry.
>=20
> Cheers,
>=20
> Richard
>=20
>=20


