Return-Path: <elvis.dowson@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4FADE0152B
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 20:48:03 -0700 (PDT)
Received: by mail-bk0-f48.google.com with SMTP id my13so2428106bkb.21
	for <yocto@yoctoproject.org>; Tue, 03 Sep 2013 20:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:mime-version:in-reply-to:content-type
	:content-transfer-encoding:message-id:cc:from:subject:date:to;
	bh=gNbS95TrxgIqwxOherqyUErj8BKmmb7YM75JmSbKBT0=;
	b=uIu1zIVnq2XzSH/YRJX9gZU5cgHkdYIdrSM9T5Dp8QgsCloQ6svn+Gq35O2TCxPPBf
	sma+pYYm4xJxF8lD5vaRsvsLFF0epzxVa7Dw8voMEosVhkWLeuaj0LRhAYsmeMknYyeE
	8cpJdEcqGkvCpYzO6z4hd4YSF5EQ2agesrcd5pGOXiTBIYT9pUqOd904FC3aMrfmS8Et
	QuoF1yMJ1hUZFMIyTppDl/wOENWEaV/A1uKjd8HsQtu6PZFLwC66qUu0Q1i4wo0cI544
	exMK2prhN6vvOc6Ggwaw8Y88/fP5j3E3l7timTJjwCC1s+xdWFwZtpShfyI3DNZDceLy
	GgFA==
X-Received: by 10.205.10.200 with SMTP id pb8mr326746bkb.16.1378266481761;
	Tue, 03 Sep 2013 20:48:01 -0700 (PDT)
Received: from ?IPv6:2002:5ecd:6a1a::3828:f85c:4014:6513?
	([2002:5ecd:6a1a:0:3828:f85c:4014:6513])
	by mx.google.com with ESMTPSA id rj5sm2185800bkb.9.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 03 Sep 2013 20:48:00 -0700 (PDT)
References: <52241C84.2090605@gna.org>
	<CAJTo0LZSkA5Gr4AkaFEAuG0irsLWfeUkO2jXmmBXHJ6qcaGN_w@mail.gmail.com>
	<522506F8.8060706@gna.org>
	<0C95222C-9247-4FDD-837C-83FB03A314AC@keylevel.com>
	<52251F60.9060804@gna.org>
	<90830908-76F2-4548-97F1-E9BF53E16597@keylevel.com>
	<52269EE1.5040801@gna.org>
Mime-Version: 1.0 (1.0)
In-Reply-To: <52269EE1.5040801@gna.org>
Message-Id: <4C0D3C42-2BDF-4F4A-BAF6-DA0615C57F28@gmail.com>
X-Mailer: iPhone Mail (11A4449d)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Wed, 4 Sep 2013 07:47:52 +0400
To: Christian Gagneraud <chgans@gna.org>
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
X-List-Received-Date: Wed, 04 Sep 2013 03:48:04 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable



> On Sep 4, 2013, at 6:45 AM, Christian Gagneraud <chgans@gna.org> wrote:
>=20
>> On 04/09/13 07:22, Chris Tapp wrote:
>>=20
>>> On 3 Sep 2013, at 00:29, Christian Gagneraud wrote:
>>>=20
>>>> On 03/09/13 10:16, Chris Tapp wrote:
>>>>> On 2 Sep 2013, at 22:45, Christian Gagneraud wrote:
>>>>>=20
>>>>>=20
>>>>> On 03/09/13 00:35, Burton, Ross wrote:
>>>>>=20
>>>>> Hi Ross,
>>>>>=20
>>>>>>> On 2 September 2013 06:05, Christian Gagneraud <chgans@gna.org> wrot=
e:
>>>>>>> So right now, I'm thinking about:
>>>>>>> - CPU: Xeon E5, maybe 2 x E5-2670/90, for a total of 16 cores (32 th=
reads)
>>>>>>> - Hard drives: 500GB, 1 TB or 2 TB (ideally with RAID if it can spee=
d up the
>>>>>>> builds)
>>>>>=20
>>>>> RAID-5 seems to be what i am after.
>>>=20
>>> Hi Chris,
>>>=20
>>>> Isn't RAID-5 going to be slower, especially if it's software? RAID 1
>>>> is probably better as you'll potentially double the write speed to disk=
.
>>>> I use a couple of Vertex SSDs in RAID 1 giving a theoretical write spee=
d
>>>> near to 1GBs. Write endurance is possibly a concern, but I've not had
>>>> any issues using them on a local build machine. I would probably look a=
t
>>>> some higher end models if I was going to run a lot of builds. A lot les=
s
>>>> noise than hard drives ;-)
>>>=20
>>> Thanks for the info, i will have a look at RAID-1, as you can see, I kno=
w absolutely nothing about RAID! ;)
>>=20
>> Did you see my correction to this? I meant to say RAID 0. Sorry for the c=
onfusion.
>=20
> No problem, at least it forces me to look at RAID-5, RAID-1 and now RAID-0=
, thanks! ;)

Sorry, my setup is a RAID0 striped SSDx2 configuration as well, not RAID1. I=
 have a 3TB standard drive for performing backup, since I can lose data anyt=
ime, if any one of the drives fail.

The cooling solution is from Corsair, and it's easy to install.

I think, CPU motherboard, SSD, RAM, case, power supply, etc was well within U=
SD$ 1500.

The apple display was the most expensive component.

The Mac Pro, when it comes out would be a perfect build server, though, with=
 PCIe SSD, XEON CPUs, etc.

Elvis Dowson


