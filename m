Return-Path: <koen@beagleboard.org>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30B09E00596
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2012 14:09:21 -0800 (PST)
Received: by werc1 with SMTP id c1so3038198wer.35
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2012 14:09:20 -0800 (PST)
Received-SPF: pass (google.com: domain of koen@beagleboard.org designates
	10.180.95.34 as permitted sender) client-ip=10.180.95.34; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of koen@beagleboard.org
	designates 10.180.95.34 as permitted sender)
	smtp.mail=koen@beagleboard.org
Received: from mr.google.com ([10.180.95.34])
	by 10.180.95.34 with SMTP id dh2mr26060681wib.15.1330466960177
	(num_hops = 1); Tue, 28 Feb 2012 14:09:20 -0800 (PST)
Received: by 10.180.95.34 with SMTP id dh2mr20637451wib.15.1330466960125;
	Tue, 28 Feb 2012 14:09:20 -0800 (PST)
Received: from [172.20.1.36] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id 9sm53811116wid.2.2012.02.28.14.09.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 28 Feb 2012 14:09:19 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@beagleboard.org>
In-Reply-To: <alpine.DEB.2.02.1202281651040.8024@oneiric>
Date: Tue, 28 Feb 2012 23:09:18 +0100
Message-Id: <D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
References: <alpine.DEB.2.02.1202281349020.2440@oneiric>
	<4F4D457F.7000306@windriver.com>
	<alpine.DEB.2.02.1202281651040.8024@oneiric>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQmJG6KQvmXbrDzQDYLF8mt9bqldnBFlEryi+CFK5WGwSM+5x0+IE9AjJ8wYdarHH5mosBXi
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: proper recipe for building for beagle xM? meta-ti?
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
X-List-Received-Date: Tue, 28 Feb 2012 22:09:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 28 feb. 2012, om 22:55 heeft Robert P. J. Day het volgende =
geschreven:

> On Tue, 28 Feb 2012, Bruce Ashfield wrote:
>=20
>> It is true that the beagleboard is a hardware reference board in the
>> yocto consolidated kernel tree and meta-yocto layers. That means
>> that it gets the yocto standard QA builds and boot testing.
>>=20
>> That being said, if you are looking for the latest + specific
>> features then you've been pointed in a good direction .. meta-ti
>> will meet your needs.
>>=20
>> As for disentangling and reducing questions in this area .. rest
>> assured, we are working on it.
>=20
>  ok, that's perfectly reasonable -- meta-yocto provides a generic,
> well-tested product, while the meta-ti layer provides more
> leading-edge content, correct?=20

No, the amount of testing is not the difference, the amount of support =
for the board is. Meta-ti supports the camera interfaces, 3d engine, =
dsp, crypto engines, expansion boards, etc. Meta-yocto lacks all that =
for beagleboard.=

