Return-Path: <koen@beagleboard.org>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 784ECE00593
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2012 06:51:19 -0800 (PST)
Received: by wibhq12 with SMTP id hq12so1642974wib.35
	for <yocto@yoctoproject.org>; Thu, 09 Feb 2012 06:51:18 -0800 (PST)
Received: by 10.181.11.227 with SMTP id el3mr3275970wid.18.1328799078273;
	Thu, 09 Feb 2012 06:51:18 -0800 (PST)
Received: from [172.20.1.36] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id eq5sm8488677wib.2.2012.02.09.06.51.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 09 Feb 2012 06:51:17 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@beagleboard.org>
In-Reply-To: <1636213.TrTs1YKXOm@helios>
Date: Thu, 9 Feb 2012 15:51:11 +0100
Message-Id: <3FF9BD4A-F07C-4958-8758-9D4DC02171A0@beagleboard.org>
References: <4F323C52.8030304@intel.com> <4F3302D3.7070507@linux.intel.com>
	<F3D9189D-F27C-4C90-AD58-5071F83FA2AF@beagleboard.org>
	<1636213.TrTs1YKXOm@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1251.1)
X-Gm-Message-State: ALoCoQnrgsF1FyXs1qVYEfqBYqlyktRpgWrKhDiuhCggu3siMoGhvym3GRq9WHs/Blc0BjyCbC37
Cc: yocto@yoctoproject.org
Subject: Re: Upstream-Status finally @ 100%
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
X-List-Received-Date: Thu, 09 Feb 2012 14:51:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 9 feb. 2012, om 13:30 heeft Paul Eggleton het volgende geschreven:

> On Thursday 09 February 2012 13:22:10 Koen Kooi wrote:
>> I find the 'pending' confusing, is it 'pending submission' or =
'pending
>> approval'? I'm marking patches in meta-oe with 'Upstream-status: =
Unknown'
>> as default instead of 'Pending' to make it a bit clearer. And patches
>> marked 'inappropriate' won't go in, it's 'rejected', 'unknown' or =
'needs
>> work' in those cases. I'm not going to guess what upstream might =
think of
>> it, since I can't speak for them.
>=20
> I think the distinction between Pending and Unknown is important. The =
status=20
> is not completely unknown - the person who set it made an assessment =
that the=20
> patch should be appropriate for sending upstream, even if it would =
need=20
> further cleanup beforehand. Maybe "Pending" isn't the best word, I'm =
not sure,=20
> but "Unknown" is not right either.
>=20
>> All patches in OE-core now have an Upstream-status, but how many have =
an
>> *incorrect* Upstream-status?
>=20
> The status ought to be correct with regard to the patch author's =
assessment of=20
> whether or not the patch can go upstream.

That's where I disagree, it's called 'Upstream-status', not =
'Perceived-upstream-status'. The field should reflect the status from an =
upstream perspective, not from the OE perspective. So both 'Pending' and =
'Inappropriate' boil down to 'Not submitted' currently. Maybe I'm =
overthinking all this :)

regards,

Koen=

