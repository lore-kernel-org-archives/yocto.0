Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15E81E01217
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 05:00:28 -0800 (PST)
Received: by qauh8 with SMTP id h8so3995820qau.14
	for <yocto@yoctoproject.org>; Mon, 06 Feb 2012 05:00:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=W/H6VCngUaABd3u1tPRIXjgUsJrp/1nGy9+IGBWABik=;
	b=haeSDViQtSd+ZXHN6cJOCLT2/+hdGUyW4cIjAQiJFQ3t5uU0PjJCsQuVhgCUgmBRqm
	RXTQE0f5qj6Tns8bzN6JIxw4VIEHS/qZh75oSwjrUqseg+KIkMowRugZ11hGEDb8Qdu/
	KkESNux6JQyFoqFxDiRoL3fdSAlPZGI5WeRL8=
Received: by 10.224.116.144 with SMTP id m16mr20157336qaq.19.1328533228377;
	Mon, 06 Feb 2012 05:00:28 -0800 (PST)
Received: from [10.0.1.26] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	k19sm27191661qak.4.2012.02.06.05.00.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 06 Feb 2012 05:00:27 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: James Abernathy <jfabernathy@gmail.com>
In-Reply-To: <4F2EE44C.7090809@linux.intel.com>
Date: Mon, 6 Feb 2012 08:00:47 -0500
Message-Id: <F23113B0-A013-4723-A4D9-09FC4FB5FA38@gmail.com>
References: <4F2D4D12.3060500@gmail.com> <4F2ED655.5020808@linux.intel.com>
	<2779C8B7-F034-4F86-8BCF-0CC6374AD803@gmail.com>
	<4F2EE44C.7090809@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1251.1)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: HOW DO I - new one added for EMGD and Crownbay
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
X-List-Received-Date: Mon, 06 Feb 2012 13:00:29 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Feb 5, 2012, at 3:19 PM, Darren Hart wrote:

>=20
>=20
> On 02/05/2012 11:44 AM, James Abernathy wrote:
>>=20
>> On Feb 5, 2012, at 2:19 PM, Darren Hart wrote:
>>=20
>>> On 02/04/2012 07:21 AM, jfabernathy wrote:
>>>> I just added and EMGD example to the How Do I in the wiki.
>>>=20
>>> Jim, really appreciate your work here. For those of us not following
>>> quite as closely, please provide links to the pages you update so we
>>> don't have to go hunting for them.
>>>=20
>> It's the How Do I link on the wiki page:
>>=20
>> https://wiki.yoctoproject.org/wiki/How_do_I
>=20
> I see. This Question heading seems a bit inconsistent with what you =
are
> actually doing. Step 1 of getting EMGD on Crownbay is adding alsa to
> MACHINE_FEATURES for a BSP called meta-mymachine?
>=20
> This appears to be just trying to get commercial codecs working with
> accelerated graphics.
>=20
> The reason I raise this, is that while it's good to have these sorts =
of
> "Tactical" guides, if we aren't careful they can dilute the
> documentation space and end up confusing users more than they help. =
The
> README for crownbay covers what is necessary to enable EMGD =
accelerated
> graphics. Please consider renaming the title to someting more =
consistent
> with what you're trying accomplish.
>=20

Look, I'm not a documentation expert or understand what the project team =
is trying to accomplish with their documentation or wiki.  A user on the =
mailing list asked me to summarize what I did to get all the issues =
resolve related to media acceleration and decoder.  What I put in  the =
How Do I was a summation of the questions and answers that were in the =
email thread.   I can just as easily email that user the summary, if =
it's not appropriate for the wiki.

Please feel free to edit what I put there or remove it.

Jim A
=20
> --
> Darren
>=20
>>=20
>>> I'm interested to see what more was needed for EMGD and Crownbay =
than is
>>> already in the BSP README.
>>>=20
>>>>=20
>>>> In my opinion, we need to think about breaking this one big edit up =
into=20
>>>> individual How Do I's.  It would simplify editing and make getting =
to=20
>>>> the individual How Do I's much easier and quicker.
>>>>=20
>>>> I don't know how to do that, but I think it needs doing.
>>>>=20
>>>> Jim A
>>>>=20
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>=20
>>> --=20
>>> Darren Hart
>>> Intel Open Source Technology Center
>>> Yocto Project - Linux Kernel
>>=20
>=20
> --=20
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel


