Return-Path: <s.stirtzel@googlemail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BEC2E00305
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 09:05:41 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@googlemail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fanq24 with SMTP id q24so4924753fan.35
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 09:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=p2UBm78B8ZVZVQCWHbjcM7hLsbMB/bLG/v9p1k9GvJk=;
	b=KmkzbBq7XrAu/mKwP2f/so42wAqfnk6LrPCrYGG4epfoKVkxiDYeYFIEPX/iq2bFl+
	HzeWei4uy0JEErLtjw03KB7icGSnagJMtjq5vpmgo7r1wOCX+lslt/G49lBceAU1+dup
	ahLfzgnvu49S4I2zF5LoO+STCE9xzuDNQofKM=
MIME-Version: 1.0
Received: by 10.180.96.72 with SMTP id dq8mr6489951wib.10.1324400740797; Tue,
	20 Dec 2011 09:05:40 -0800 (PST)
Received: by 10.223.78.136 with HTTP; Tue, 20 Dec 2011 09:05:40 -0800 (PST)
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A12ED757D77@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12ED44B7A4@shsmsx501.ccr.corp.intel.com>
	<CAGiJk9fSjJj+0M=xKX2=aeh=o3QadOf3VQz0=kG7HfBwk5qOkQ@mail.gmail.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A12ED757D77@shsmsx501.ccr.corp.intel.com>
Date: Tue, 20 Dec 2011 18:05:40 +0100
Message-ID: <CAGiJk9fLXB0FjHZ1eT4Aj5=PNbMmo8SWRsgoELmoJ9vQShPqVw@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
To: "Wang, Shane" <shane.wang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Uriel Liu <uriell@wicresoft.com>
Subject: Re: RFC: Web UI design for bitbake
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
X-List-Received-Date: Tue, 20 Dec 2011 17:05:42 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2011/12/20 Wang, Shane <shane.wang@intel.com>:
> Samuel Stirtzel wrote on=C2=A02011-12-20:
>
>> 2011/12/20 Wang, Shane <shane.wang@intel.com>:
>>
>> It sounds like you want to build it all from scratch, quite a lot of
>> work to build a fully featured web build system,
>> in this case compatibility to other systems would be nice.
>>
>>
>> For web builds with bitbake, Jenkins-CI (a fork of the continuous
>> integration system Hudson) [1] could be worth a look,
>> it is more than just a build tool.
>>
>> There is also Autobuilder, but I guess for end users it is too much
>> configuration effort?
>> Jenkins-CI was very easy to setup and with a plug-in it could be as
>> simple as pointing the web-UI to the Bitbake path,
>> managing cluster/cloud/slave-pc entities is easy too.
>>
>> Just my 0.02 cents in the case that you didn't already cast it in concre=
te.
>> IMHO it looks like Jenkins and the concept-pdf are very similar,
>> only difference seems to be: you want to invent it all by yourself?
>>
>>
>> [1] Jenkins-CI : http://jenkins-ci.org/
>>
>
> Thanks for the feedbacks. We considered autobuilder previously. But they =
are similar but different.
> Web HOB is going to provide a tool to deeply customize images from browse=
rs.
> At this point, autobuilder is weaker.

In the current state it is possible to use a so called parameterized
build for this purpose.
Here the user could choose between machines and images that where
configured in a selection and add a text based package list.

The architecture would make it possible to create a plug-in which
shows available machines, images and packages (with additional
informations).


The build result (rootfs or ipk/rpm) can be preserved for each build,
and it is possible to send them via e-mail, ftp, ssh+scp or any other way.


>
> We will have a look at your suggestions first.

For me the additional statistics of builds, like graphs that shows the
build time (file-size and whatever else) and easily customizable
functions,
give me the freedom of how I can build things and track the status of
my project in the way I want to do.


>
> --
> Shane


--=20
Regards
Samuel

