Return-Path: <jfabernathy@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF492E0030F
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2012 10:19:02 -0800 (PST)
Received: by yhjj63 with SMTP id j63so465263yhj.35
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2012 10:19:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=references:in-reply-to:mime-version:content-transfer-encoding
	:content-type:message-id:cc:x-mailer:from:subject:date:to;
	bh=nlyO89zj0IcRZ9jM0Wcih/nb+UcFwcR3Sn2PHCPKGmk=;
	b=boQUBqbVeKyvs5Xlb0iqEgZucbsRf8/4KaSRZSFxScBtoDyvDwkxBhKXWGQ565dOlu
	dBlUcoNzZnAnFA/ifj4gbm2tF544WIXZf/pxOzjqysCz5iYbXqWY5NaVXNPZwFR5b3Y+
	Zv1kRTI0F3MuHoQQD0Z23lRqYpWHiRZDpbcGg=
Received: by 10.236.115.231 with SMTP id e67mr47359379yhh.16.1327083542240;
	Fri, 20 Jan 2012 10:19:02 -0800 (PST)
Received: from [10.3.79.87] ([166.137.15.150])
	by mx.google.com with ESMTPS id c44sm6477355yhm.5.2012.01.20.10.19.00
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 20 Jan 2012 10:19:01 -0800 (PST)
References: <CANFv2En8WfmoBpzqRYU9hhOH9aCMGTBgML41Ee+uaXc1MJrNjg@mail.gmail.com>
	<4F199299.4000003@gmail.com>
	<CADzUK1Lh9sDeiyXxo-K73FrHEz==kBDO=N_mH9GeGMSKYhPEzw@mail.gmail.com>
	<1641254.ZQ0cu1g22E@helios>
	<CADzUK1+XZL7hFPMXWDftE=uMYjv6wdpOazyUy+pYut0k9j_gAw@mail.gmail.com>
In-Reply-To: <CADzUK1+XZL7hFPMXWDftE=uMYjv6wdpOazyUy+pYut0k9j_gAw@mail.gmail.com>
Mime-Version: 1.0 (1.0)
Message-Id: <CD0BBD16-81B9-44DB-80F6-A8C6B67DC981@gmail.com>
X-Mailer: iPhone Mail (9A405)
From: Jim Abernathy <jfabernathy@gmail.com>
Date: Fri, 20 Jan 2012 13:18:53 -0500
To: autif khan <autif.mlist@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: core-image-sato-directdisk
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
X-List-Received-Date: Fri, 20 Jan 2012 18:19:02 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



Jim Abernathy
On Jan 20, 2012, at 1:00 PM, autif khan <autif.mlist@gmail.com> wrote:

> On Fri, Jan 20, 2012 at 12:15 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> On Friday 20 January 2012 11:54:44 autif khan wrote:
>>>> Did you file a bug on this?
>>>=20
>>> I have not. I am not sure I should. I am not even sure whoose call it
>>> should be weather or not this goes in README.hardware. I hope someone
>>> chimes in
>>=20
>> So I would say if any of our documentation is out-of-date or unclear, i=
t
>> should be fixed, no deliberation needed :)
>>=20
>> However, in Poky master, README.hardware has now been updated to remove
>> references to the old directdisk images. It could be that we need to
>> explicitly add something like what you have written about writing the i=
mage to
>> a hard disk, but for the moment it is at least no longer out-of-date.
>>=20
>> At the very least a great start would be to put your instructions up as=
 a page
>> on the Yocto Project wiki.
>=20
> I have created a new link titled "How Do I" on the main page and for
> now, this is the only entry.
>=20
> Please take a look.
>=20
> https://wiki.yoctoproject.org/wiki/Main_Page
> https://wiki.yoctoproject.org/wiki/How_do_I
>=20
Looks good to me.=20
>=20
>> Cheers,
>> Paul
>>=20
>> --
>>=20
>> Paul Eggleton
>> Intel Open Source Technology Centre

