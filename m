Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DEEEE013A7
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2013 02:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=bydOJQnyZSIcihAy2MNzBzT5Zvl7/Wtouiwq6sYDWeI=; 
	b=Ltv0H4lwJwqPa4sK8TkLuA3QDskNQLPGOUIxASIzqOYBHmuQrk6IwOOHSToGkcGwqHPOyFpCRiUBdWYZ3bGfD+6fFZwf5r2z/Qna9wWp0ilbAydER/CD2k/wqrEZqsaK;
Received: from [109.224.129.17] (port=16019
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1UMbOZ-000Hep-DX; Mon, 01 Apr 2013 10:51:19 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <105A6073859D47C780306AD895453FC0@PAULD>
Date: Mon, 1 Apr 2013 10:51:22 +0100
Message-Id: <31349738-2C1E-437E-8719-5C61EF09B4D2@keylevel.com>
References: <C797901E086446C2A1E1C4637ED4262B@PAULD><8B53A185-C840-438C-B74B-D5267DD14F10@keylevel.com><09AEF6051AA14B28BF640910EA131219@PAULD><58D3047F74434B278AB3C73C399FF6F1@PAULD>
	<61CB2848-B7F6-4C0B-8644-65C0CD0DD6F8@keylevel.com>
	<105A6073859D47C780306AD895453FC0@PAULD>
To: Paul D. DeRocco <pderocco@ix.netcom.com>
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
Subject: Re: How to partition a flash drive (was: Problem creating bootable flash)
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
X-List-Received-Date: Mon, 01 Apr 2013 09:51:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On 1 Apr 2013, at 05:16, Paul D. DeRocco wrote:

>> From: Chris Tapp
>>=20
>> This should end
>>   of=3D/dev/sdb
>>=20
>> The hddimg file includes the partition info and both=20
>> partitions, so you don't need any of the other steps.
>=20
> Actually, the .hddimg is a single FAT16 volume, with no partition =
table,
> which contains files for creating a couple of different RAM disk =
images,
> which are part of the live-image mechanism.

Sorry, I was trying to do too many things late at night!

I confused myself with the image created using the 'install' boot option =
;-)

> I am leaning toward using this live-image mechanism in my project
> permanently, because it almost eliminates the possibility of anything
> corrupting the OS in any persistent way. My application does have a =
small
> amount of persistent data, and I don't want to use the union or =
overlay file
> system as a way of adding persistence to the live image, because that =
sort
> of defeats the security of the live image. So I do indeed want to use =
a
> truly partitioned flash drive, and put my application data on a =
separate
> small partition.

Good choice, as unionfs isn't supported in the 3.0 kernel in Yocto.
I've used it before to give persistence using a read-only partition with =
some
scripts to make it writeable to allow configuration files (etc) to be =
updated
whilst still giving a decent level of protection.

>=20
> What's going wrong is that the code in the MBR created by gparted (and =
I
> assume by parted) unconditionally uses drive number 0x80 (the first =
hard
> disk) when it tries to load the zeroth sector from the bootable =
partition.
> The BIOS, however, is treating this eUSB SSD as a removable drive, and
> calling it drive zero. So it's crashing at the point where the MBR =
code
> jumps to what is supposed to be the zeroth sector of the partition.
>=20
> The code in the boot sector for the FAT16 volume uses whatever drive =
number
> is in the DL register on entry, and this works fine when booting =
directly
> from the BIOS into this code with no intervening MBR, so the solution =
is to
> modify the MBR boot code to do the same thing. This simply involves =
NOP-ing
> out the MOV DL, 80H instruction. Then, it should successfully boot a
> partitioned flash drive as though it were a hard disk.
>=20
> --=20
>=20
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com=20
>=20
>=20

Chris Tapp

opensource@keylevel.com
www.keylevel.com




