Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8E1CE00CDF; Fri, 18 Jan 2019 07:56:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65F60E008CE
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 07:56:44 -0800 (PST)
Received: by mail-wr1-f68.google.com with SMTP id s12so15666304wrt.4
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 07:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=zDOlxbCMR7T9F6OQx7ooPsLhvZ3x/KSQsNsrz8AlDf0=;
	b=pcBmX4AMpfcTHgooIev4qsipu9iYcqdrZHBLFozASAnSAqPPg++EvWEGcUYhHSl2Q7
	pkkeG2LczIaGWI5vCk3MGLFDlmtu64yJR/0InpRxDllU+6toKhCq+vwrsHlNxobfJi8p
	WHiVDHPazh2iDEgw6hSJwnASJ1ThxkfqDNMQIKi8TouVQato2h4aI/P/xBp8m92jvTD1
	Hk/V4rQUHjf8F5N2RmYqhtZWSvoE/inZwa6dYi+5C5BI1TbRul4nGUw8SA4Kp3hH+ToL
	Vo3mMvyqxU+M2MjPsyRPta3o0jtsGeMoxcuzckBNgas0sSKMRL/KjjFGZG4CrDTOOor4
	t2HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=zDOlxbCMR7T9F6OQx7ooPsLhvZ3x/KSQsNsrz8AlDf0=;
	b=Bk+Ii+aGzfTXjiZDcyU//s8MfN76HeQjkbNPV2N8HARNxm+6zgqC76brZ23Uz6XuDS
	AzL3lWNrfktWe3kZYHa6JbH9T6CnhFTnXdLaHHvfKC/eV01m/X5wBKCXl7/rfQZPnXsE
	nno+KvwKz/RDULUebrzijkKWQMHgZlckE7gc06dZIPqP779r5u4I3MICBxg+PBJ4BgNn
	6p63e0Xq6JCojxWCDuYhHLzkXteo5DCdYDrhfJoUj2viwtVVcZakSDJIC1h/DJX3mXFR
	NUOclLjlgqykx2ZnGIgAA7aeFvYiJ+URumvpBa+2PqqTaYrG63dZs5v8prE09yjATG6n
	W86Q==
X-Gm-Message-State: AJcUukdLAH2yA9TGga/UfvHov9bL6/1VhOaV7C+E6lEnBefMRFdJc9z5
	cSCJCAaey9Hlo6bcmXIkNWU=
X-Google-Smtp-Source: ALg8bN68xpDkXjFUCwrQen7IQsf2R2FKirLi0gArCye1A9FNbWJIzgcreS7DxPqpsxajzPEKh39Zow==
X-Received: by 2002:a05:6000:1251:: with SMTP id
	j17mr16687345wrx.315.1547827003397; 
	Fri, 18 Jan 2019 07:56:43 -0800 (PST)
Received: from ?IPv6:2a01:598:b105:1454:f95d:25bb:85b0:5959?
	([2a01:598:b105:1454:f95d:25bb:85b0:5959])
	by smtp.gmail.com with ESMTPSA id 3sm53242702wmw.46.2019.01.18.07.56.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 18 Jan 2019 07:56:42 -0800 (PST)
Mime-Version: 1.0 (1.0)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Mailer: iPhone Mail (16C101)
In-Reply-To: <CAJTo0LYQg9BOTEMyE-PyUQrayoZLcDgbijiFZpY5_h6jRnAbHQ@mail.gmail.com>
Date: Fri, 18 Jan 2019 16:56:41 +0100
Message-Id: <0295F92F-54D9-411E-A0C6-3DD0176C6041@gmail.com>
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
To: "Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Fri, 18 Jan 2019 15:56:45 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable



> On 18 Jan 2019, at 16.34, Burton, Ross <ross.burton@intel.com> wrote:
>=20
>> On Fri, 18 Jan 2019 at 15:08, Ulf Samuelsson <yocto@emagii.com> wrote:
>> We could insert a check if the KNOWN_TASKS is valid in a verification tes=
t.
>> When building core-image-minimal, the task order within core-image-minima=
l is analyzed, (dependencies on all other recipes is filtered away).
>> Then you find out if there are tasks added, missing, and/or in the wrong o=
rder.
>=20
> What about people who add new tasks?  Do they now need to go and
> extend KNOWN_TASKS correctly too?

I might be missing something, but isn=E2=80=99t the right moment to detect l=
oops when the task graph is fully formed? Then just run generic DFS on it, n=
ot a difficult or heavy algorithm.

Alex=

