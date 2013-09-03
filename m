Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6622BE01358
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 12:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=HN0JPcDCIwtWfd2DV9Aqzxd/3qSl+p4XA5S7jrD4bRs=; 
	b=jA/5XLA6zuvey8vpRX8L8FaTOkqsdxL21Rdbdvu/k6jLBAoOB+/MSKdCsfW10+h0wBUJ2Mw1P8rgHC6qbeV0yfmV2epx2zDNnh7TKQJjJys8KpFNT3CK2YNmIJ2LIv/q3K51X96hIYBciJdmBXHZhhtaNWa8E+xvraIZmsK0wu4=;
Received: from [82.113.183.55] (port=53385
	helo=macbook-pro.crosscountrywifi.co.uk)
	by r109.websiteservername.com with esmtpa (Exim 4.80.1)
	(envelope-from <opensource@keylevel.com>)
	id 1VGw73-002KgK-L6; Tue, 03 Sep 2013 20:18:06 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <0124f45705241361176f9e323c716763@denx.de>
Date: Tue, 3 Sep 2013 20:17:59 +0100
Message-Id: <461B573D-2F12-4625-9A30-680C423ED01C@keylevel.com>
References: <52241C84.2090605@gna.org>
	<CAJTo0LZSkA5Gr4AkaFEAuG0irsLWfeUkO2jXmmBXHJ6qcaGN_w@mail.gmail.com>
	<522506F8.8060706@gna.org>
	<0C95222C-9247-4FDD-837C-83FB03A314AC@keylevel.com>
	<0124f45705241361176f9e323c716763@denx.de>
To: lothar@denx.de
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: yocto@yoctoproject.org
Subject: Re: Server specs for a continuous integration system
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
X-List-Received-Date: Tue, 03 Sep 2013 19:18:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 3 Sep 2013, at 12:57, lothar@denx.de wrote:

> Am 2013-09-03 00:16, schrieb Chris Tapp:
>> On 2 Sep 2013, at 22:45, Christian Gagneraud wrote:
>>> On 03/09/13 00:35, Burton, Ross wrote:
>>> Hi Ross,
>>>> On 2 September 2013 06:05, Christian Gagneraud <chgans@gna.org> =
wrote:
>>>>> So right now, I'm thinking about:
>>>>> - CPU: Xeon E5, maybe 2 x E5-2670/90, for a total of 16 cores (32 =
threads)
>>>>> - Hard drives: 500GB, 1 TB or 2 TB (ideally with RAID if it can =
speed up the
>>>>> builds)
>>> RAID-5 seems to be what i am after.
>> Isn't RAID-5 going to be slower, especially if it's software? RAID 1
>> is probably better as you'll potentially double the write speed to
>> disk. I use a couple of Vertex SSDs in RAID 1 giving a theoretical
>> write speed near to 1GBs. Write endurance is possibly a concern, but
>> I've not had any issues using them on a local build machine. I would
>> probably look at some higher end models if I was going to run a lot =
of
>> builds. A lot less noise than hard drives ;-)
>=20
> Hi, this sounds interesting to me.
>=20
> Having a brief look into wikipedia ( http://en.wikipedia.org/wiki/RAID =
)  tells me that RAID-1 gives no increase in write speed at all (for =
sequentioal operations), by theory: 1x   ...while a RAID-5 at least in =
theory, should give you: (n-1)x, assumed the hardware is fast enough to =
support it (RAID controller!).

Quite right. That'll teach me to hack out an e-mail late at night whilst =
packing for a road-trip :-( I meant to say RAID 0.

>=20
> Having had a small conversation here, I was told we even made =
experiences on having HW RAID being slowed down by the RAID controller, =
and its limitation of I/O-operations, that still could be handled. So, =
it seems to me one motivation why using SW RAID instead of HW RAID is =
exactly to overcome this limitations of having the bottleneck of a RAID =
controllers.
>=20
> Question, running RAID-5, have you tried to adjust the chunck size? In =
our case most I/O operations are on relatively small text files and may =
require some adjustment to the RAID chunck size value in respect to that =
fact.

No, mainly because two SSDs for RAID 0 was enough cash to spend ;-)

>=20
> BR,
> Lothar Rubusch
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




