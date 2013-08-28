Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6824E0144E
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 11:22:58 -0700 (PDT)
Received: by mail-pa0-f50.google.com with SMTP id fb10so6573469pad.37
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 11:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=RxFPIHrmI4XUCU1eVMuB/ibf9JH9ccE19PSFjn0gt7k=;
	b=H9xkfx5QPfSZyykRQl1iETAr8GEQRvvAMaCLmjj8bty40bN5V+xisAIHGDe7C+rI4l
	cGF1QlEgUT3JVoYepZzVR+NP8e0qi1I1r1KdNYsN2+v3ZBhVt9Klp507TebvkY9/fxze
	/DvuOg48ZdGtYb9+uxwff+/rrXPA/5ypbLK5EOKccgxGAreQWpO/fKBh531yJ3hBsZ23
	70vBSttfcE5x6ttD9wwB9pmuT2YMNEfOJCFo1/5+I0Ugcuxq7bxNJWUvyjbvT9b3sdpe
	T+xdr6Wi2EY5oYO7c1KdazcXVDH8mZ2CszXr8ivhNOOCcBE3F81W9Xg/gsCqMEUS1ms+
	RxXw==
X-Received: by 10.68.135.101 with SMTP id pr5mr3847943pbb.196.1377714177848;
	Wed, 28 Aug 2013 11:22:57 -0700 (PDT)
Received: from [192.168.1.106] ([94.205.106.26])
	by mx.google.com with ESMTPSA id
	ha10sm9431181pbc.23.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 28 Aug 2013 11:22:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.1 \(1498\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <521E3C60.6060309@windriver.com>
Date: Wed, 28 Aug 2013 22:22:51 +0400
Message-Id: <B67A26A2-33DB-47F5-9EC9-1A56C79F6896@gmail.com>
References: <EE3AC7E0-3693-482F-94DB-278D1FD829D5@gmail.com>
	<521E38D9.8060102@windriver.com>
	<32CFCC88-EA28-4EFB-9F43-586780CAC54F@gmail.com>
	<521E3C60.6060309@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
X-Mailer: Apple Mail (2.1498)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: How to work with linux-yocto kernel
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
X-List-Received-Date: Wed, 28 Aug 2013 18:23:00 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Aug 28, 2013, at 10:07 PM, Bruce Ashfield =
<bruce.ashfield@windriver.com> wrote:

> On 13-08-28 02:05 PM, Elvis Dowson wrote:
>> Hi Bruce,
>>=20
>> On Aug 28, 2013, at 9:52 PM, Bruce Ashfield =
<bruce.ashfield@windriver.com> wrote:
>>=20
>>> There were some old bugs which caused the wrong board description to
>>> be picked up, the seems similar.
>>>=20
>>> But without seeing your exact changes, as they sit in the tree, I
>>> can't be sure.
>>>=20
>>> Did you also update the meta and machine branch SRCREVs ?
>>=20
>> No, I didn't.
>>=20
>> I've just done this now. It's only after you mentioned it
>> that I noticed the SRCREV_meta variable in linux-yocto_3.8.bb
>>=20
>> While obvious, once stated, it's better to explicitly document
>> this step in the kernel development guide, so that people remember to
>> do it:
>>=20
>> http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html
>=20
> If you have a moment, drop a quick bugzilla and we can make sure
> that happens.

I've just done this now.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5065

Best regards,

Elvis Dowson=

