Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2855EE00CE2; Fri, 18 Jan 2019 08:07:21 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 038E7E00C8B
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 08:07:19 -0800 (PST)
Received: from [10.175.196.109] ([37.123.169.62]) by cmsmtp with ESMTPA
	id kWfigYgEKHNTSkWfigXDIj; Fri, 18 Jan 2019 17:07:18 +0100
Mime-Version: 1.0 (1.0)
From: Ulf Samuelsson <yocto@emagii.com>
X-Mailer: iPad Mail (15F79)
In-Reply-To: <0295F92F-54D9-411E-A0C6-3DD0176C6041@gmail.com>
Date: Fri, 18 Jan 2019 17:07:06 +0100
Message-Id: <657D18B2-09CD-4447-AEE5-D634323EE3DF@emagii.com>
References: <d278856c-cba2-e63f-d50a-8f4b40365c88@emagii.com>
	<a778dc9409e589ee19f122db4069857513e3fe52.camel@linuxfoundation.org>
	<1DB4D7BE-E62D-4F13-8F8A-A5103ED5F767@emagii.com>
	<CAJTo0LZ6waQMNE_et9gJk+KOnHeriTw6u0xxFR8LROjMxjhUBQ@mail.gmail.com>
	<C23DECFB-A3E9-404F-BF7D-EEAD4BA23CE3@emagii.com>
	<7851f1d740f3a130e4ae5a1e9eb7f9e0273ee1f4.camel@linuxfoundation.org>
	<A6212BF5-A78A-4659-B876-BDC464B41B38@emagii.com>
	<6a6bfb8cc510a344b4ef40389ba33fbfe525afbd.camel@linuxfoundation.org>
	<54452C1F-B1CB-4916-9CFA-C8FB2191C583@emagii.com>
	<CAJTo0LYQg9BOTEMyE-PyUQrayoZLcDgbijiFZpY5_h6jRnAbHQ@mail.gmail.com>
	<0295F92F-54D9-411E-A0C6-3DD0176C6041@gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
X-CMAE-Envelope: MS4wfCb49N94Mse4D8gYLNGOLidoKw22GLXc9lKvwhYE1Sa5PmiURP+vgej9E32yRSzAARlZHiMim9c/hKBZOOgPKnYxnxaDyy4AOx8wyMmOWvKyYloULkST
	zikrMhv/xJzHHA3TudldQvNA0wgkcqSEtQ3TvRH0BJ9xxAkRZ+03rnSAYOvf0psoEyLP0HCwxugUMYUkxvJH+DT1fhi/qgnrPYq9AsE/g4GTKUSTLbqUOq+F
	QpztULMc+wCWvQ+Myf56HQ==
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
X-List-Received-Date: Fri, 18 Jan 2019 16:07:21 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable




> 18 jan. 2019 kl. 16:56 skrev Alexander Kanavin <alex.kanavin@gmail.com>:
>=20
>=20
>=20
>>> On 18 Jan 2019, at 16.34, Burton, Ross <ross.burton@intel.com> wrote:
>>>=20
>>> On Fri, 18 Jan 2019 at 15:08, Ulf Samuelsson <yocto@emagii.com> wrote:
>>> We could insert a check if the KNOWN_TASKS is valid in a verification te=
st.
>>> When building core-image-minimal, the task order within core-image-minim=
al is analyzed, (dependencies on all other recipes is filtered away).
>>> Then you find out if there are tasks added, missing, and/or in the wrong=
 order.
>>=20
>> What about people who add new tasks?  Do they now need to go and
>> extend KNOWN_TASKS correctly too?
>=20
> I might be missing something, but isn=E2=80=99t the right moment to detect=
 loops when the task graph is fully formed? Then just run generic DFS on it,=
 not a difficult or heavy algorithm.
>=20
> Alex

The problem in our system was that the build crashed before that.

Best Regards,
Ulf Samuelsson



