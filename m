Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0067CE014F7
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 22:58:54 -0700 (PDT)
Received: by mail-pd0-f169.google.com with SMTP id r10so815542pdi.0
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 22:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=vTCisqWbIeRCcunRHDUJyU1+nY5CVPHa2LRZ4VH/xJE=;
	b=EPMZLSWqgXRWpSvMw/UVbDcWGrdliTbl9COK5eGOq3G0m4HNF2b1HR8fup+wMEbg6M
	/wcNlHFkqyOcV7VXR0TnDLLkKX+Yf0HRCKuwGoy/4BLLJWDZbWVc2Ig73xWKoNOfFCRP
	cAjBrMaPvFlQQivIW30Hibh5+pg+FU79je3tsl7P4B+DdpKB+yNIobdtyOcoxw6q2+kr
	Hd73I6BmzfNFQYN262drna6CRO4boEz0v1XnCs66cijZsOzrQQHwN7lksdK9p+Ydhy+w
	4n2pyQ540stE6QXumdqm/OG466gWFKmxCFu3yp6Eg8nptvQa/BtVFHxRb/amjeK/HquV
	dsaA==
X-Received: by 10.68.178.163 with SMTP id cz3mr179952pbc.185.1379051933863;
	Thu, 12 Sep 2013 22:58:53 -0700 (PDT)
Received: from [192.168.0.104] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPSA id oh2sm9284436pbb.3.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 12 Sep 2013 22:58:52 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <4C0D3C42-2BDF-4F4A-BAF6-DA0615C57F28@gmail.com>
Date: Thu, 12 Sep 2013 22:58:58 -0700
Message-Id: <1CEEA8CA-1D57-492A-98DC-13B410404E10@gmail.com>
References: <52241C84.2090605@gna.org>
	<CAJTo0LZSkA5Gr4AkaFEAuG0irsLWfeUkO2jXmmBXHJ6qcaGN_w@mail.gmail.com>
	<522506F8.8060706@gna.org>
	<0C95222C-9247-4FDD-837C-83FB03A314AC@keylevel.com>
	<52251F60.9060804@gna.org>
	<90830908-76F2-4548-97F1-E9BF53E16597@keylevel.com>
	<52269EE1.5040801@gna.org>
	<4C0D3C42-2BDF-4F4A-BAF6-DA0615C57F28@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
X-Mailer: Apple Mail (2.1508)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 13 Sep 2013 05:58:57 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Sep 3, 2013, at 8:47 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:

>=20
>=20
>> On Sep 4, 2013, at 6:45 AM, Christian Gagneraud <chgans@gna.org> =
wrote:
>>=20
>>> On 04/09/13 07:22, Chris Tapp wrote:
>>>=20
>>>> On 3 Sep 2013, at 00:29, Christian Gagneraud wrote:
>>>>=20
>>>>> On 03/09/13 10:16, Chris Tapp wrote:
>>>>>> On 2 Sep 2013, at 22:45, Christian Gagneraud wrote:
>>>>>>=20
>>>>>>=20
>>>>>> On 03/09/13 00:35, Burton, Ross wrote:
>>>>>>=20
>>>>>> Hi Ross,
>>>>>>=20
>>>>>>>> On 2 September 2013 06:05, Christian Gagneraud <chgans@gna.org> =
wrote:
>>>>>>>> So right now, I'm thinking about:
>>>>>>>> - CPU: Xeon E5, maybe 2 x E5-2670/90, for a total of 16 cores =
(32 threads)
>>>>>>>> - Hard drives: 500GB, 1 TB or 2 TB (ideally with RAID if it can =
speed up the
>>>>>>>> builds)
>>>>>>=20
>>>>>> RAID-5 seems to be what i am after.
>>>>=20
>>>> Hi Chris,
>>>>=20
>>>>> Isn't RAID-5 going to be slower, especially if it's software? RAID =
1
>>>>> is probably better as you'll potentially double the write speed to =
disk.
>>>>> I use a couple of Vertex SSDs in RAID 1 giving a theoretical write =
speed
>>>>> near to 1GBs. Write endurance is possibly a concern, but I've not =
had
>>>>> any issues using them on a local build machine. I would probably =
look at
>>>>> some higher end models if I was going to run a lot of builds. A =
lot less
>>>>> noise than hard drives ;-)
>>>>=20
>>>> Thanks for the info, i will have a look at RAID-1, as you can see, =
I know absolutely nothing about RAID! ;)


you want RAID-1 if you want full redundancy. so if 1 of the disks die =
then you are still OK. This is generally slow
since data is written to two locations. For faster build you would want =
RAID-0 striped so the writes happen in parallel
to both disks but if any of the disks go away the whole data is lost.

>>>=20
>>> Did you see my correction to this? I meant to say RAID 0. Sorry for =
the confusion.
>>=20
>> No problem, at least it forces me to look at RAID-5, RAID-1 and now =
RAID-0, thanks! ;)
>=20
> Sorry, my setup is a RAID0 striped SSDx2 configuration as well, not =
RAID1. I have a 3TB standard drive for performing backup, since I can =
lose data anytime, if any one of the drives fail.
>=20
> The cooling solution is from Corsair, and it's easy to install.
>=20
> I think, CPU motherboard, SSD, RAM, case, power supply, etc was well =
within USD$ 1500.
>=20
> The apple display was the most expensive component.
>=20
> The Mac Pro, when it comes out would be a perfect build server, =
though, with PCIe SSD, XEON CPUs, etc.
>=20
> Elvis Dowson
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


