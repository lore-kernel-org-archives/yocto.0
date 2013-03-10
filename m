Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f47.google.com (mail-pb0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EBFAE0048C
	for <yocto@yoctoproject.org>; Sun, 10 Mar 2013 13:12:18 -0700 (PDT)
Received: by mail-pb0-f47.google.com with SMTP id rp2so2981695pbb.34
	for <yocto@yoctoproject.org>; Sun, 10 Mar 2013 13:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=xbkRpMFCmdMZjGw87KD9a2vvjjRAofkZSVx9Q4K+gtk=;
	b=oHRZLrY+oI0LM9vK8l069VPZH7Kxo2a1AC8W9Zmqh83YuXI/IBoCLcL8pOfxZwkDUO
	CeQHMN24muKM89MSTTMn5LHOpk2KfAWNx3t4rCOImwNGZ6bOvja/hq5aKOfdBcg3AYNY
	4wbfsMO6HkmyKSPMgrPCvtR+rqjG1KPARUSBCzVUWyRXH8VJtV2lh3SyeRaBT5+0OLQr
	qyHimqBUBGz9YRVx6jdBezxlFHpd/d4oZ7Jmu3Adg3IoQthb95F0vzOPURURZI8x17bl
	QowLDUtb5iO2qo0F3QiKeXG0p7ulpJn1Mc70A6n5t2IAm2I4Wqpla/TCyou5nbulXspW
	a8Mg==
X-Received: by 10.68.231.164 with SMTP id th4mr21547084pbc.198.1362946337796; 
	Sun, 10 Mar 2013 13:12:17 -0700 (PDT)
Received: from sa-nc-apg-191.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPS id 1sm16784297pba.32.2013.03.10.13.12.15
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 10 Mar 2013 13:12:16 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <513C850A.3070208@gmail.com>
Date: Sun, 10 Mar 2013 13:12:14 -0700
Message-Id: <8F70DAE7-02FD-40C9-AAE5-63E53A37763B@gmail.com>
References: <513B9F69.5010109@gmail.com> <513BDA2B.1010704@balister.org>
	<513C850A.3070208@gmail.com>
To: Hans Beckerus <hans.beckerus@gmail.com>
X-Mailer: Apple Mail (2.1499)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FUSE user-space library
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
X-List-Received-Date: Sun, 10 Mar 2013 20:12:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Mar 10, 2013, at 6:05 AM, Hans Beckerus <hans.beckerus@gmail.com> =
wrote:

> On 2013-03-10 1:56, Philip Balister wrote:
>> On 03/09/2013 03:45 PM, Hans Beckerus wrote:
>>> Hi. Anyone started to look at including the FUSE user-space library =
as
>>> part of Yocto?
>> There are some fuse related recipes in meta-oe.
>>=20
>> Philip
> Ok, I will take a look. Is the meta-oe 100% compatible with a Yocto =
reference system?
>=20

it s a well maintained layer over oe-core and yocto uses oe-core too so =
I don't see much
problem with it being compatible. Time to time metadata changes in =
oe-core affect this layer like any other layers but as long they are =
resolved thats normal.

> Hans
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


