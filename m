Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E26CAE00D31; Tue, 28 May 2019 02:47:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [46.105.77.114 listed in list.dnswl.org]
X-Greylist: delayed 4535 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 May 2019 02:47:32 PDT
Received: from 8.mo7.mail-out.ovh.net (8.mo7.mail-out.ovh.net [46.105.77.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDE4FE00C36
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 02:47:32 -0700 (PDT)
Received: from player794.ha.ovh.net (unknown [10.108.42.196])
	by mo7.mail-out.ovh.net (Postfix) with ESMTP id D104E11EF1C
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 10:31:55 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player794.ha.ovh.net (Postfix) with ESMTPSA id 5EED0638D722;
	Tue, 28 May 2019 08:31:54 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CAAfyv34HAOaAaO1cyiQbR8P6mQPp8p3gCT2jM=UyQDGfvV-fYw@mail.gmail.com>
	<CA+2YH7ud9TX=ohQSk8XY=GzpewzFsXo6Z2eBJ=bXacyAsojV9A@mail.gmail.com>
	<CAAfyv34jJ362tu3x_8J1+FuV3zFpchkB8Ft9w-WERrxCNPxbvg@mail.gmail.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
	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
	0f2bcrTp9w==
Message-ID: <e6f8207c-755b-7e47-5398-117736bdd4c5@3mdeb.com>
Date: Tue, 28 May 2019 10:31:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAAfyv34jJ362tu3x_8J1+FuV3zFpchkB8Ft9w-WERrxCNPxbvg@mail.gmail.com>
X-Ovh-Tracer-Id: 17436530382670016204
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddruddvhedgtdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Cc: =?UTF-8?Q?Piotr_Kr=c3=b3l?= <piotr.krol@3mdeb.com>
Subject: Re: meta-sunxi maintained?
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
X-List-Received-Date: Tue, 28 May 2019 09:47:33 -0000
X-Groupsio-MsgNum: 45393
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="l6UnaNi8tivAksWbooRiKZwvkhHHEIE5j"

--l6UnaNi8tivAksWbooRiKZwvkhHHEIE5j
Content-Type: multipart/mixed; boundary="UwixRsfkgv053RIIn0zPzlk3u3NZqwggv";
 protected-headers="v1"
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: yocto@yoctoproject.org
Cc: =?UTF-8?Q?Piotr_Kr=c3=b3l?= <piotr.krol@3mdeb.com>
Message-ID: <e6f8207c-755b-7e47-5398-117736bdd4c5@3mdeb.com>
Subject: Re: [yocto] meta-sunxi maintained?
References: <CAAfyv34HAOaAaO1cyiQbR8P6mQPp8p3gCT2jM=UyQDGfvV-fYw@mail.gmail.com>
 <CA+2YH7ud9TX=ohQSk8XY=GzpewzFsXo6Z2eBJ=bXacyAsojV9A@mail.gmail.com>
 <CAAfyv34jJ362tu3x_8J1+FuV3zFpchkB8Ft9w-WERrxCNPxbvg@mail.gmail.com>
In-Reply-To: <CAAfyv34jJ362tu3x_8J1+FuV3zFpchkB8Ft9w-WERrxCNPxbvg@mail.gmail.com>

--UwixRsfkgv053RIIn0zPzlk3u3NZqwggv
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 27.05.2019 19:32, Belisko Marek wrote:
> Hi Enrico,
Hi,
>
> On Mon, May 27, 2019 at 5:44 PM Enrico <ebutera@users.sourceforge.net> =
wrote:
>> Hi,
>>
>> i try to keep it maintained, but now i just have a lime2 for testing
>> on real hardware, and i don't have the resources to do test builds for=

>> all the supported boards.
>> Your help would be welcome, i can't check right now if i have the
>> rights to add you as co-maintainer, anyway i will add you.
> Thanks I have few sunxi based boards so can do tests also on my setup.
> Pls ping me when you will add me. Thanks.
>> Thanks for the help!
>>
>> Enrico
> Marek
>> On Mon, May 27, 2019 at 4:50 PM Belisko Marek <marek.belisko@gmail.com=
> wrote:
>>> Hello,
>>>
>>> I'm just curious if meta-sunxi is still maintained? I was contributed=

>>> to layer back while and when look now thud branch is un-compilable
>>> (dri2proto not replaced) and warrior branch not created yet. There is=

>>> 14 issues + 6 pending pull requests. Added maintainers also in CC. I
>>> think it would be good to have sunxi properly maintained as boards
>>> with sunxi processors are popular. I can give a hand as co-maintainer=

>>> if necessary. Thanks a lot.
I think I have some of the dirty code for integration of the recent Mali
blobs
with the mainline kernel as described here:
https://bootlin.com/blog/more-opengl-binaries-for-the-mali-support-on-all=
winner-platforms-with-mainline-linux/
We were testing Qt + Wayland on mainline Linux IIRC.
Let me know if you think this could be beneficial to the community.
We are not actively using at the moment, though. meta-sunxi was not that
active when we worked on
that so maybe we were not motivated enough to polish things up and
submit a PR.

We use orange-pi-zero as a base for our product we use for on-hardware
validation:
https://3mdeb.com/products/open-source-hardware/rte/ so I believe we can
help
with maintenance of this platform / SoC (we use meta-sunxi for building
images for it:
https://github.com/3mdeb/meta-rte).
We have quite a number of other Allwinner platforms as well (H3 and A20
mostly).

>>>
>>> BR,
>>>
>>> marek
>>>
>>> --
>>> as simple and primitive as possible
>>> -------------------------------------------------
>>> Marek Belisko - OPEN-NANDRA
>>> Freelance Developer
>>>
>>> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
>>> Tel: +421 915 052 184
>>> skype: marekwhite
>>> twitter: #opennandra
>>> web: http://open-nandra.com

--=20
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com



--UwixRsfkgv053RIIn0zPzlk3u3NZqwggv--

--l6UnaNi8tivAksWbooRiKZwvkhHHEIE5j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJc7PH5AAoJEPFAHS4cyxnv4+8P/3sv4tqSBbkALQEgjfeSObV3
dzq/R+0qrvoyE6Ls7e1O2q0MatZjbue0wuX09L8L/Za24Mdt6xE6RUVzARxaJK1G
kHOU4s5u9sqNM29KaXU6iYv0VoGY8rjTfNPbhAz6mnIaCARs49ds6h8fmS00mc4T
Ld2rosVYiM2cb0h8YFx1FwO4ffZzvypohyoP7ga3g35ZEWkBaj74HLBwJEBaO1i0
pPrnxMKrhNiO91AMOiAssbBbYmnU5TKGt7EC3UbX7glrSFItIBMCKXptU4ZLurc6
XMZCLWK64QJWq+YaG1P5QRkyObNvQG1lfvbflf6hnYS+KYZcr5o5QmPRc/lrvq/S
yle/F2DBr5wkbYM8gD4vmO20oQj01GsZ19fDjQq4OmmPkxct++w8xCpsEoMYU7aF
7HRJcYz6sFcX1NDorv+pdpKaXYgqVuLVwLV3MiNYb3F1K4spNMEvrPz94KHTmswO
p1fLlKvvCBsL3iXzNb1/a5IRZBpWNMCdQX5NEsuCXTWtr8+r5QgVIdF9wS1Km+NR
biz1oLf7fY04tobPwLwFi3Z3f31B8kyaHCn5nol4tarLqd8FPQ9KtI3rUtEjYbn9
3wVSZepJ+zqepgRq9XmYR3C11CdDS3p8ZnTQY7mb3QTW7Tt9Lzq/uPAuEeNaIEED
xLIVETZpyTP6ZjC3fMIF
=r6Ud
-----END PGP SIGNATURE-----

--l6UnaNi8tivAksWbooRiKZwvkhHHEIE5j--
