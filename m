Return-Path: <hans.beckerus@gmail.com>
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5244DE0158E
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 09:41:00 -0800 (PST)
Received: by mail-la0-f41.google.com with SMTP id fo12so1938837lab.28
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 09:40:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:references:mime-version:in-reply-to:content-type
	:content-transfer-encoding:message-id:cc:x-mailer:from:subject:date
	:to; bh=rdb0BBb2rW8bNkHN8+jCae6FlsTcJnHb3fOk7+YAzvw=;
	b=HmwiMRVLzRyCdQfTLtAsj3avwiCIPP8S6DUmH+F9nNcB1LR49hh4c0oIn18bUCJLGn
	ZpaoB4FUD4ZpzLFWTM2iefXZIFAUf8iGW+L+Wfx06P93z1jKpiTcWoPZRjmrVD8SpzR+
	svvokKNOBF6If56ieD+aTMq3t2a0LbCmZCualObkZRgXSrWC7VXCnLDC32kZTp129hC4
	t44U83MtRi0KYMFeqnvV5qvggezRnwDKE2cVSvAX/MUkkd5qW4Nx/Swwdt20jdINf99C
	FRzm/0cnTfYYKXjfNQQlLrrKfPXwqiazX8hhqgTVe7o2tHLumZd9KZPF4WJ4HqjYRSf7
	LsuQ==
X-Received: by 10.112.100.166 with SMTP id ez6mr1350064lbb.86.1362764458767;
	Fri, 08 Mar 2013 09:40:58 -0800 (PST)
Received: from [10.18.91.70] (c-5eeaaa29-74736162.cust.telenor.se.
	[94.234.170.41])
	by mx.google.com with ESMTPS id k15sm1881953lbd.6.2013.03.08.09.40.56
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 08 Mar 2013 09:40:57 -0800 (PST)
References: <CAFyqS9qFQ+kHrjmDAw4mCKop6RMzH7Ws1V6tt0_A2gM2a5UmYg@mail.gmail.com>
	<513A1C1A.4030506@windriver.com>
Mime-Version: 1.0 (1.0)
In-Reply-To: <513A1C1A.4030506@windriver.com>
Message-Id: <D967AA79-E5DE-44D1-9268-D47506B6BD21@gmail.com>
X-Mailer: iPhone Mail (10B146)
From: =?utf-8?Q?Hans_Beck=C3=A9rus?= <hans.beckerus@gmail.com>
Date: Fri, 8 Mar 2013 18:40:53 +0100
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "<yocto@yoctoproject.org>" <yocto@yoctoproject.org>
Subject: Re: How do I control what kernel modules are being loaded?
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
X-List-Received-Date: Fri, 08 Mar 2013 17:41:00 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable



8 mar 2013 kl. 18:12 skrev Bruce Ashfield <bruce.ashfield@windriver.com>:

> On 13-03-08 07:08 AM, Hans Beck=C3=A9rus wrote:
>> Hi. I have built some custom kernel modules (.ko) using a .bb that
>> inherits from the module.bbclass. There is one main kernel module and
>> the rest are dependent on the first. Building and installing the
>> modules to the rootfs works fine. Next question is how do I control
>> what actual modules are loaded at boot, or actually how do I control
>> this through Yocto? To my surprise one of the kernel module loaded
>> automatically!? How could this happen? I did not have an entry for it
>> in /etc/modules. And what do I need to do to actually add entries to
>> /etc/modules? Or is there some other mechanism that I should use. I
>> tried going through the module.bbclass but must admit I lost it
>> somewhere in the middle ;) Any guidance would be appreciated.
>=20
> module_autoload_<module package name>, in your module recipe, will
> trigger the load on boot.
>=20
> Cheers,
>=20
> Bruce
>=20
Great! But there must be a catch? My actual module package builds six module=
s. One mandatory and the rest are optional. How can it know which modules th=
at should actually be loaded? For some to me unknown reason the mandatory on=
e was loaded on boot even though I did nothing to my    .bb?

Hans

>>=20
>> Hans
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20

