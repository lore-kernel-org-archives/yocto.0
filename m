Return-Path: <koen@dominion.thruhere.net>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3813E0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 13:51:39 -0700 (PDT)
Received: by yenq4 with SMTP id q4so799985yen.35
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 13:51:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=1idIhFhoScT0y8aMuH/dIfIVOzkWgPk//cEtaabzrVc=;
	b=l7chEMYKQQyL1z72KrFPoSeI9BWkMt1vpvJAda3l/90uDSaNOMZ+72ZMSCIKKbBtov
	DQg/1shHwTQtZ9V/7ZYfunNDW1tbIpOW3blzP6U11tNHKhk3nxtjGT1FcAPembmBNklu
	RxdKUj69CnsJpwZgup96FmnqmGcW2WvDE+gDnVUqUKxVjxjWP1AffAwDqpNhdeZrrccR
	xf7mUOGL3gFm9AHT4wQaBjdku7UrAGx3jFbxPzCsxY3KWpTnG/QPw7S0rrSUUcHhjsho
	MleEdM3gWX8mNd534XlRm1bav2R19gNdCmb++fcY0IA5XQ8sz5GQASwq7w5CKAWatKvU
	KQ4Q==
Received: by 10.68.218.134 with SMTP id pg6mr631162pbc.111.1333140698841;
	Fri, 30 Mar 2012 13:51:38 -0700 (PDT)
Received: from [10.61.32.129] ([69.38.219.78])
	by mx.google.com with ESMTPS id q5sm3570325pbp.28.2012.03.30.13.51.36
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 30 Mar 2012 13:51:37 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <20120330204516.GA11451@bill-the-cat>
Date: Fri, 30 Mar 2012 13:51:46 -0700
Message-Id: <681E6FE2-CE59-4D0C-BCF8-8163715310FF@dominion.thruhere.net>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com>
	<20120330204516.GA11451@bill-the-cat>
To: Tom Rini <tom.rini@gmail.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQkV33r+vTmYACceL+5BJWTlgsmPN5SMUIPe4coT8VbQmCNi02vovxrqzRvS0EUlm12cR5IM
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 30 Mar 2012 20:51:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 30 mrt. 2012, om 13:45 heeft Tom Rini het volgende geschreven:

> On Fri, Mar 30, 2012 at 03:18:06PM -0500, Mark Hatle wrote:
>> On 3/30/12 2:33 PM, Koen Kooi wrote:
>>>=20
>>> Op 30 mrt. 2012, om 12:26 heeft Mark Hatle het volgende geschreven:
>>>=20
>>>> On 3/30/12 1:44 PM, Koen Kooi wrote:
>>>>> Hi,
>>>>>=20
>>>>> RP said I should raise this on the yocto lists, so here it is:
>>>>>=20
>>>>> The Angstrom core team would like to move angstrom under the yocto =
banner so
>>>>> we can formally claim to be 'yocto'.
>>>>=20
>>>> For it to be on the yocto project web site, it just need to have =
the layers hosted on the git.yoctoproject.org.  But there is no =
"yocto".. It's the Yocto Project, Poky, or specific git repositories.  =
There is no reason we can't have an angstrom repository.  It could be in =
a similar format to the Poky repository (everything combined for a =
single download), or it could be a layer [or layers] that sit on top of =
Poky.
>>>=20
>>> Why on top of poky? I do not want poky, nor do my customers, oe-core =
is what
>>> we need and want. This proposal to move angstrom under yocto is =
targeted at
>>> eliminating 'poky' from the stack while still being able to say =
'yocto'.
>>=20
>> Poky is a repository made up of bitbake + oe-core + meta-yocto, as
>> well as a distribution definition (in meta-yocto).  I assume
>> angstrom has it's own distribution definition.
>>=20
>> So my question is why NOT on top of Poky (the repository, not
>> distribution definition)?
>=20
> What does being on top of poky buy the end user?  ${some_tool} will be
> grabbing the repositories so it's not easier to grab bitbake + oe-core
> as one.  It adds a barrier to end user to developer conversion since
> we'll have a lot of "OK, thanks for your contribution but next time
> please base against oe-core directly not poky".  Not to speak for =
Denys
> or Chase but for Arago, why would we want to have the poky sample =
distro
> around on top of our distro?
>=20
>>> We both know that saying it is 'yocto' is wrong and misleading, but =
that's
>>> what users are asking for and yocto advocates seem to push. Just =
watch the ELC
>>> videos for yocto related presentations, 'yocto' and 'poky' are used
>>> interchangeably in most of them.
>>>=20
>>> A 'reference' should be just that, a reference, not a mandated part.
>>=20
>> It's hard to call something Yocto Project based unless it used
>> something from the Yocto Project.  meta-yocto being on of those
>> components.
>=20
> So bitbake and oe-core don't count because they're external projects?

If oe-core doesn't count, that will go directly against the agreement =
the OE developers made with the yocto ones when deciding to drop OE =
classic and start oe-core.
If that's really the position of the yocto project I think the OE =
project will need to seriously reconsider the merge and its =
participation in the yocto project.

regards,

Koen


