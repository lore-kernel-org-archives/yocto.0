Return-Path: <koen@beagleboard.org>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F6BBE01370
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2012 04:22:13 -0800 (PST)
Received: by wgbdq12 with SMTP id dq12so1470275wgb.11
	for <yocto@yoctoproject.org>; Thu, 09 Feb 2012 04:22:12 -0800 (PST)
Received: by 10.216.139.25 with SMTP id b25mr611124wej.28.1328790132131;
	Thu, 09 Feb 2012 04:22:12 -0800 (PST)
Received: from [172.20.1.36] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id n5sm7318110wiw.7.2012.02.09.04.22.10
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 09 Feb 2012 04:22:11 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@beagleboard.org>
In-Reply-To: <4F3302D3.7070507@linux.intel.com>
Date: Thu, 9 Feb 2012 13:22:10 +0100
Message-Id: <F3D9189D-F27C-4C90-AD58-5071F83FA2AF@beagleboard.org>
References: <4F323C52.8030304@intel.com> <20120208100718.GB8335@giant>
	<4F32C595.4040508@linux.intel.com>
	<alpine.DEB.2.00.1202082215320.8688@tvnag.unkk.fr>
	<4F3302D3.7070507@linux.intel.com>
To: Saul Wold <sgw@linux.intel.com>
X-Mailer: Apple Mail (2.1251.1)
X-Gm-Message-State: ALoCoQl1nAo9sCw/Q6JJae13zcvBm85ztqVm487K3KVZCmBwUfDpfPUuI6auQpw3rIYvC+AqjU5p
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 09 Feb 2012 12:22:13 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


Op 9 feb. 2012, om 00:18 heeft Saul Wold het volgende geschreven:

> On 02/08/2012 01:26 PM, Daniel Stenberg wrote:
>> On Wed, 8 Feb 2012, Saul Wold wrote:
>>=20
>>> If the author of curl would like to review and/or implement
>>> modification for OE that would be awesome, feel free to share the
>>> patches with them.
>>=20
>> I am the maintainer of curl.
>>=20
>> The curl patches Bj=F6rn mentioned are clearly not written in way =
intended
>> to be "upstreamable" so they cannot be accepted by the curl project =
and
>> nobody has tried to.
>>=20
> I am sure there are many patches like that in OE, they are written, =
tested and then forgotten about, our goal here is to not let them get =
forgotten.
>=20
>> This said, at least one of the patches fixes a problem that still =
exists
>> upstream but the yocto patch [*] is made in such a hard-coded way =
it'd
>> have to be seriously edited to get accepted. The flaw has not even =
been
>> discussed with or mentioned to the curl project AFAICR...
>>=20
>> So, room for improvements!
>>=20
>> [*] =3D
>> =
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-support/c=
url/curl/noldlibpath.patch
>>=20
>>=20
>=20
> Daniel,
>=20
> I think Khem has already said that we are taking incremental steps =
here, as I mentioned in my prior email, we have over 1200 patches =
lurking around in OE currently, initially we have about 460 as marked as =
pending.

I find the 'pending' confusing, is it 'pending submission' or 'pending =
approval'? I'm marking patches in meta-oe with 'Upstream-status: =
Unknown' as default instead of 'Pending' to make it a bit clearer. And =
patches marked 'inappropriate' won't go in, it's 'rejected', 'unknown' =
or 'needs work' in those cases. I'm not going to guess what upstream =
might think of it, since I can't speak for them.

All patches in OE-core now have an Upstream-status, but how many have an =
*incorrect* Upstream-status? I suspect only a small percentage, but I =
think it's worth rethinking the lingo used to be clearer to non-native =
speakers like me.

regards,

Koen=

