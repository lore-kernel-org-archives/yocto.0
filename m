Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id C0A1F4C800E0
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2011 02:38:47 -0500 (CDT)
Received: by wyb36 with SMTP id 36so595878wyb.35
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2011 00:38:46 -0700 (PDT)
Received: by 10.216.61.77 with SMTP id v55mr4629154wec.114.1308555526438;
	Mon, 20 Jun 2011 00:38:46 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id ge4sm2952793wbb.64.2011.06.20.00.38.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 20 Jun 2011 00:38:45 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1308545617.2527.10.camel@eha.ulstruplund.dk>
Date: Mon, 20 Jun 2011 09:38:39 +0200
Message-Id: <A4210A7B-2830-4447-A056-FD55F35D2E33@dominion.thruhere.net>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A52800155@shsmsx501.ccr.corp.intel.com>
	<BANLkTik50B-LRcUB1U99HA0_1piHn0sD5w@mail.gmail.com>
	<1308513728.2527.2.camel@eha.ulstruplund.dk>
	<BANLkTi=taLE4t=1WDxEGoW-DsKRUrB04cQ@mail.gmail.com>
	<1308545617.2527.10.camel@eha.ulstruplund.dk>
To: Esben Haabendal <eha@dev.doredevelopment.dk>
X-Mailer: Apple Mail (2.1084)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: configure optimization feature update
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
X-List-Received-Date: Mon, 20 Jun 2011 07:38:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 20 jun 2011, om 06:53 heeft Esben Haabendal het volgende geschreven:

> On Sun, 2011-06-19 at 16:49 -0700, Khem Raj wrote:
>> On Sun, Jun 19, 2011 at 1:02 PM, Esben Haabendal
>> <eha@dev.doredevelopment.dk> wrote:
>>> On Wed, 2011-06-15 at 18:28 -0700, Khem Raj wrote:
>>>> On Wed, Jun 15, 2011 at 5:57 PM, Xu, Dongxiao =
<dongxiao.xu@intel.com> wrote:
>>>>> Hi Richard,
>>>>>=20
>>>>> Recently I was doing the "configure optimization" feature and =
collecting data for it.
>>>>>=20
>>>>> The main logic of this feature is straight forward:
>>>>>=20
>>>>> 1. Use the diff file as autoreconf cache. (I use command: "diff =
-ruN SOURCE-ORIG SOURCE", here "SOURCE-ORIG" is the source directory =
before running autoreconf, while "SOURCE" is the directory after running =
autoreconf).
>>>>> 2. Add SRC_URI checksum for all patches of the source code.
>>>>> 3. Tag each autoreconf cache file with ${PN} and the SRC_URI =
checksum of source code and all patches.
>>>>> 4. If the currently SRC_URI checksum matches the cached checksum, =
then we can patch the cache instead of running "autoreconf" stage.
>>>>>=20
>>>>=20
>>>> The autoconf'ing is sort of arbitrary at the moment. Depending on =
what
>>>> is staged the results may vary.
>>>=20
>>> Which can be properly fixed by using per-recipe (per-workdir) =
staging.
>>>=20
>>=20
>> you seem to be stuck in this tight while(1) loop
>> per recipe staging is not panacea
>=20
> Well, panacea is a very strong work.  But per recipe staging does
> improve build reproducability and reliability quite a bit.  As for =
what
> it is not, I think you might want to try it before speaking to =
strongly
> against it.
>=20
>> Do you have some prototypes ?
>=20
> Yes. OE-lite: http://oe-lite.org
>=20
> And it works so well, that I cannot understand why OE do not have a =
plan
> for how to achieve the same.=20

So why not send a patch to make OE-core have per recipe staging?=

