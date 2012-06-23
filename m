Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1185EE00739
	for <yocto@yoctoproject.org>; Sat, 23 Jun 2012 08:17:02 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so5698371pbb.35
	for <yocto@yoctoproject.org>; Sat, 23 Jun 2012 08:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=w5ibifdRPF0pFIO2ZJUdAurCwYyIOHAVhkfTGVpCNmw=;
	b=rucL8UDAxXGtxDXbBrdaf5OotPSSm+xhOv/RY8cdjy+flLo+XAGgI1GmA30oolACia
	jQXpujFtPYs3eDORzkqfkTQzx+OvdTjiPLW8cU6SCXuvd2E/u8aqgRQtRxTVmsTRKtbm
	QCcjFk8rWcwaHEgNdpCTg/hY03acjtavFOarM1IYaEE9k0TWGp39MPCyJJHkIj8Ee/78
	JnTOi2UCoSFJFDPBWXIPNwJK6s94+FCpbzlXY8oYrf1/NkmRACy7BubqvKbOgljaJMH6
	49geh+Kk/bOO3RehvtKGLf6TiEfQWzVhkthLOaC9wppVsDExvM+xKMnfidmcsHBXmkY3
	lT2Q==
Received: by 10.68.200.101 with SMTP id jr5mr5234028pbc.153.1340464621835;
	Sat, 23 Jun 2012 08:17:01 -0700 (PDT)
Received: from [192.168.1.71] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id tk1sm2583815pbc.8.2012.06.23.08.17.00
	(version=SSLv3 cipher=OTHER); Sat, 23 Jun 2012 08:17:00 -0700 (PDT)
Message-ID: <4FE5DDF2.8040908@gmail.com>
Date: Sat, 23 Jun 2012 08:17:06 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1;
	rv:13.0) Gecko/20120614 Thunderbird/13.0.1
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <2E8A3DA3-EC31-4CE7-979D-E842AFFAB8CA@gmail.com>
	<42D532F4-5629-4BE6-B8AD-3E28A192327D@gmail.com>
	<CAMKF1srTFrW4VwF5ApQFW+oNs_4CiRiEvnZn6EiVCWBC_7DNTQ@mail.gmail.com>
	<6C530CF7-A92F-495A-8472-B2D46EBBDFCD@gmail.com>
In-Reply-To: <6C530CF7-A92F-495A-8472-B2D46EBBDFCD@gmail.com>
X-Enigmail-Version: 1.4.2
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: SRCREV spec not working for kernel git recipes
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
X-List-Received-Date: Sat, 23 Jun 2012 15:17:02 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 6/23/2012 12:57 AM, Elvis Dowson wrote:
> Hi Khem,
> 
> On Jun 23, 2012, at 11:29 AM, Khem Raj wrote:
> 
>>> I found out that if I specify SRCREV_pn-${PN}, it works and
>>> picks up the correct commit id, as follows:
>>> 
>>> SRCREV_pn-${PN} = "a5556fb251253ccb674bd22d9703c37f6f8807a8"
>>> 
>>> However, if you simply specifying SRCREV =
>>> "a5556fb251253ccb674bd22d9703c37f6f8807a8", it has no effect
>>> and it always picks up the latest commit from the git
>>> repository.
>>> 
>>> It would be great if someone could please explain why this is
>>> so, because I search through the Yocto documentation and it
>>> isn't mentioned anywhere. The OE classic way of doing things,
>>> it used to pick up the correct commit by just specifying
>>> SRCREV. Now I find that you have to specify SRCREV_pn-${PN} to
>>> get it to work.
>>> 
>>> Is this documented somewhere?
>> 
>> ? can you port bitbake -e virtual/kernel output with and without
>> change somewhere ?
> 
> 
> The output files are rather large.
> 
> 
> 
> 
> 
> BTW, I do not have a PROVIDES += "virtual/kernel" entry in the
> linux-xilinx kernel recipes. Is that necessary to get SRCREV to
> work?
> 
hmm I see
SRCREV = "AUTOINC" in faulty case which is your problem comes from
meta-xilinx layer it sets SRCEREV in
conf/distro/include/xilinx-default-revisions.inc

SRCREV_pn-u-boot-xilinx ?= "${AUTOREV}"
SRCREV_pn-linux-xilinx ?= "${AUTOREV}"

that setting up SRCREV to be top of tree and its using pn-${PN} override
so whatever you set without override will be overwritten by this the
reson why SRCREV_pn-${PN} worked is because this is a weak assignment so
when you defined yours that one took precedence.

> Best regards,
> 
> Elvis Dowson
> 


-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (MingW32)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk/l3fIACgkQuwUzVZGdMxRyLQCeP7mdXN/95Nkm264x7ENSpfYe
f/EAoIZsF0yE0HbOD90iz0jYAwrlPmjJ
=GzN2
-----END PGP SIGNATURE-----

