Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE21DE0097C; Mon,  8 Jul 2019 05:53:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 598 seconds by postgrey-1.32 at yocto-www;
	Mon, 08 Jul 2019 05:53:34 PDT
Received: from 15.mo4.mail-out.ovh.net (15.mo4.mail-out.ovh.net [91.121.62.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD0E3E0090E
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2019 05:53:34 -0700 (PDT)
Received: from player711.ha.ovh.net (unknown [10.108.35.158])
	by mo4.mail-out.ovh.net (Postfix) with ESMTP id 8D93A1FBDBB
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2019 14:37:20 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player711.ha.ovh.net (Postfix) with ESMTPSA id 97FBA79BEBED;
	Mon,  8 Jul 2019 12:37:15 +0000 (UTC)
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
References: <CAPS7gLxyG+AXjcDOe9m4j-fqPBRXN2CfVgCmmB3jhntLwYhNAA@mail.gmail.com>
	<a0462c99-a785-1e25-7bec-3fa922e99de1@3mdeb.com>
	<CAGAf8LwyrExLqOPUAh-xwZBi0WYm6RG5jn7evexPhAU9EtJk9Q@mail.gmail.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
	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
	0f2bcrTp9w==
Message-ID: <dc2de6e5-38b9-4513-bc2d-e2745bcc542b@3mdeb.com>
Date: Mon, 8 Jul 2019 14:37:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAGAf8LwyrExLqOPUAh-xwZBi0WYm6RG5jn7evexPhAU9EtJk9Q@mail.gmail.com>
X-Ovh-Tracer-Id: 4107282861071019724
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrgedtgdehhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: Yocto Project <yocto@yoctoproject.org>,
	=?UTF-8?Q?Piotr_Kr=c3=b3l?= <piotr.krol@3mdeb.com>,
	devendradevadiga01@gmail.com
Subject: Re: Ddcutil
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
X-List-Received-Date: Mon, 08 Jul 2019 12:53:36 -0000
X-Groupsio-MsgNum: 45878
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="6mLWx7PM2qX7GNGiCqqJdVdpKJbShMiiO"

--6mLWx7PM2qX7GNGiCqqJdVdpKJbShMiiO
Content-Type: multipart/mixed; boundary="m6txNIXpwZS0TAXU6dLzNJ1AUTHi3ZyOZ";
 protected-headers="v1"
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>, devendradevadiga01@gmail.com,
 =?UTF-8?Q?Piotr_Kr=c3=b3l?= <piotr.krol@3mdeb.com>
Message-ID: <dc2de6e5-38b9-4513-bc2d-e2745bcc542b@3mdeb.com>
Subject: Re: [yocto] Ddcutil
References: <CAPS7gLxyG+AXjcDOe9m4j-fqPBRXN2CfVgCmmB3jhntLwYhNAA@mail.gmail.com>
 <a0462c99-a785-1e25-7bec-3fa922e99de1@3mdeb.com>
 <CAGAf8LwyrExLqOPUAh-xwZBi0WYm6RG5jn7evexPhAU9EtJk9Q@mail.gmail.com>
In-Reply-To: <CAGAf8LwyrExLqOPUAh-xwZBi0WYm6RG5jn7evexPhAU9EtJk9Q@mail.gmail.com>

--m6txNIXpwZS0TAXU6dLzNJ1AUTHi3ZyOZ
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 08.07.2019 14:20, Zoran Stojsavljevic wrote:
>>> It was never polished for upstream...
> Why? Any viable reason(s)?
Simply no resources and use-case for that.

I've used the ddcutils project only once and never touched it since then.=

>
>>> ... and it likely have some issues with the latest ddcutil releases.
> Which issues? Could you, Maciej, please, explain/elaborate
> theme/problems observed by you in more details?
I have no idea. I'm just guessing that an old, dirty recipe might not
work properly now.
I've pushed what I found here:
https://github.com/3mdeb/meta-openembedded/commit/4d6e491cfa4197626eb1b89=
7cd5417a0cc14ff4a
If anyone is interested, please feel free to try.
I'm not sure if it will build properly now.
I can provide some support and explanation if needed to make the proper
recipe.

>
> Thank you,
> Zoran
> _______
>
> On Mon, Jul 8, 2019 at 1:12 PM Maciej Pijanowski
> <maciej.pijanowski@3mdeb.com> wrote:
>>
>> On 04.07.2019 19:02, Devendra Devadiga wrote:
>>
>> Hi,
>>
>> Hi
>>
>>
>> I am working on i.MX6 platform.
>> I got the BSP by yocto build.
>> I need the "ddcutil" package.
>> By yocto how I can get this package?
>> In openembedded, layers list I checked for ddcutil, but I didn't get t=
hat.
>> If source code for "ddcutil" is available can you share it with me?
>> If you share the source then it will be more helpful for me.
>>
>> I have an old recipe for this tool somewhere.
>> It was never polished for upstream, and it likely have some issues
>> with the latest ddcutil releases. How about I push the patch and
>> you will help me with testing / improving that?
>>
>> Thanks,
>>
>>
>> In the below mailing list, I came to know that someone built the recip=
es for "ddcutil".
>> https://lists.yoctoproject.org/pipermail/yocto/2017-April/035740.html
>>
>> But I can't able to get that.
>> Please can you share the source code of "ddcutil"?
>>
>> Thanks and regards,
>> Devendra
>>
>> --
>> Maciej Pijanowski
>> Embedded Systems Engineer
>> https://3mdeb.com | @3mdeb_com
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

--=20
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com



--m6txNIXpwZS0TAXU6dLzNJ1AUTHi3ZyOZ--

--6mLWx7PM2qX7GNGiCqqJdVdpKJbShMiiO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJdIzj6AAoJEPFAHS4cyxnvL4AP/iKf1JfN+d4Q2yZwRaO+uJ6m
wOT/TgSUy7b/2L+V2xnZjMfPh1OK19n+qg1KuTHmgyA9y4AG0gxw4MFn+ryTQ8T3
mO06DiBOhdL1BG9SlnLALmdwlSHtLUmB0HJ+qpLsIyixAA0L8fmXxIsrybGwpVIv
cag1tUjfeLxXiwNrkb8I41SBMz/A5y5OaUTZI9wj8jG0mxYXrCluYyMnbPZ7yc/Z
W3me/BtBudwdEZy0/mbvea+aYo6XUsn12Z3esO0ki058YMKkQdymPWKOkDeZIoQv
NT9KsvTaSFHACMyXykxOEmckPZhWOH62Nnz/mm0Jh0HlG+ctyUcOW0QLE9Xdrm65
ct4A7y/o2nRh41kSlDjjcDyRXlLjBLQkFZ/H8kKiRPDmP+RIW5GE/LWGwAlu7cU3
k34SF4jexcVh4/3AeYUyApQ/+1dJMSV/wWWxsFQxHq3jqtUha/WQ+v7xgJg2ofZX
bQECNnjhujlcVWc7IXr7NwPopG6JipbhW5CVJl+YKSdBlw+kcaS0dAPTka+hnJrL
5+54d9v3hDPZdy1wdWrGt9SrABL0JcRzVfsxOTYhoPeOrwvvFaiJZutVUaUOJ8CM
CxwqEkQ2L11uFz00PsiNLG8BhXbVg35zUtHg40Al2co9ujGI0EIpWHS2tOzMJ2nV
HI2QCPmSMaIZi5qMxCa0
=f44h
-----END PGP SIGNATURE-----

--6mLWx7PM2qX7GNGiCqqJdVdpKJbShMiiO--
