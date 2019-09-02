Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 149F3E0097C; Mon,  2 Sep 2019 07:50:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [188.165.33.109 listed in list.dnswl.org]
X-Greylist: delayed 1801 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 Sep 2019 07:50:16 PDT
Received: from 10.mo4.mail-out.ovh.net (10.mo4.mail-out.ovh.net
	[188.165.33.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BF30E00890
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2019 07:50:16 -0700 (PDT)
Received: from player711.ha.ovh.net (unknown [10.109.159.157])
	by mo4.mail-out.ovh.net (Postfix) with ESMTP id 9A512204AFA
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2019 16:12:36 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player711.ha.ovh.net (Postfix) with ESMTPSA id 4B8509431E75
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2019 14:12:36 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CAJKO-ja632JpvyfytYme9tGn3RWx5pBHr9Up59gXtw_bqmP-9g@mail.gmail.com>
	<CANNYZj84SKy5dX+2ZEGDXxXf_qMBisfKaNzBHJPL+TtqKYwEqQ@mail.gmail.com>
	<20190902135144.ut63a3c4gd35qajv@jholzmayr.localdomain>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
	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
	0f2bcrTp9w==
Message-ID: <3d7148dc-130a-c7b3-eb7b-448905201342@3mdeb.com>
Date: Mon, 2 Sep 2019 16:12:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902135144.ut63a3c4gd35qajv@jholzmayr.localdomain>
X-Ovh-Tracer-Id: 2545659690265489065
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudejtddgjeegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc
Subject: Re: Fetching Yocto layers
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
X-List-Received-Date: Mon, 02 Sep 2019 14:50:17 -0000
X-Groupsio-MsgNum: 46486
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="0PXZj9981TR239goBPDRzvPVs1PVnUGAw"

--0PXZj9981TR239goBPDRzvPVs1PVnUGAw
Content-Type: multipart/mixed; boundary="cIHYIc09AXo36XB0N4MSTG4u44iWJtQ0d";
 protected-headers="v1"
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: yocto@yoctoproject.org
Message-ID: <3d7148dc-130a-c7b3-eb7b-448905201342@3mdeb.com>
Subject: Re: [yocto] Fetching Yocto layers
References: <CAJKO-ja632JpvyfytYme9tGn3RWx5pBHr9Up59gXtw_bqmP-9g@mail.gmail.com>
 <CANNYZj84SKy5dX+2ZEGDXxXf_qMBisfKaNzBHJPL+TtqKYwEqQ@mail.gmail.com>
 <20190902135144.ut63a3c4gd35qajv@jholzmayr.localdomain>
In-Reply-To: <20190902135144.ut63a3c4gd35qajv@jholzmayr.localdomain>

--cIHYIc09AXo36XB0N4MSTG4u44iWJtQ0d
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 02.09.2019 15:51, Josef Holzmayr wrote:
> I'd like to throw kas into the discussion too, I've been using it quite=

> successfully.
>
> https://github.com/siemens/kas
+1 for kas. Previously I was using repo, custom scripts and custom
Docker container for running=C2=A0 the build. kas does all of that
and makes significantly faster for me to start a new project.

I have described my repo vs kas experience a while ago
if someone would be interested: https://blog.3mdeb.com/2019/2019-02-07-ka=
s/
I hope it's fine to link to one's blog post there?
>
> Greetz
>
> On Mon, Sep 02, 2019 at 03:34:28PM +0200, Alexander Kanavin wrote:
>> On Mon, 2 Sep 2019 at 15:05, Brian Silverman <bri@readysetstem.com> wr=
ote:
>>
>>> The tags chosen above are based on what we test and ship.  So my issu=
e is
>>> that someone has to correctly follow the above instructions for diffe=
rent
>>> versions of multiple layers if they want a reproducible build of a sp=
ecific
>>> version of mylayer-image.
>>>
>>> Is there a canonical why to encode this information within my layer?
>>> Obviously I could script the above, store it in my layer, and have th=
e user
>>> run that script.  But, that seems very unyocto-like.
>>>
>> At the moment Yocto project does not have an off-the shelf setup for
>> multiple layers. You are welcome to provide and maintain one, until th=
en it
>> is indeed custom scripts, or tools like Google's 'repo', or maybe git
>> submodules could work.
>>
>> Alex
>> --=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
--=20
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com



--cIHYIc09AXo36XB0N4MSTG4u44iWJtQ0d--

--0PXZj9981TR239goBPDRzvPVs1PVnUGAw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJdbSNTAAoJEPFAHS4cyxnv5OQP/3At/IB0Yy9mQHrx3lEApAKi
Z+Jbt2YbxJH7IqHuLMrSdrVCoPgKg/dh7wqdt/LtMwLTLfUR2f6Sh3oTcxbjCdax
pSOz5Le51xcsSNi7cjI86zrGEACTL9cE7xZaPgrINH+7sQzq1HG9Afte7kow4wa1
A7Vcsgs31jCK9ToNwsmd2t/6L+/O0MPd3e1eLju47ur3PSKCPjUzdWYpMyb4/6dK
iGMDY81GQF+SlKslCKNZqGB3hKG8dP66bHIDCM6lwiv8YMoika2pFjtrhooIoiwo
u9agG0IhNosKAGnp1WyqcOCmjg4CGHhJfsBAqEQGuj4QsjpKRv6GLYNyUYybqfIw
PxOdMqgISGTb+b6Gml/QRX8dv1ONhJ2YNEuur7UMaE7fXgKsZgPJ2zkGXs0gQMSm
Qn/tITPNb1RZx0q8hm3vlMi5t4yHO/4/bfAn5uq5fZZoH67EqahF0IV3ZrEzxQdp
nOBiBpaBq+akc+mumtyBqAp6RRR8ggr/+w0Ds+hadAMGlYPLqgO4ytNqKZItCPEC
HPLOcQSwzUOEi8PPLdXubCkcKn4tsqF6ZsC+j1ekemL7Cb1MJ1PzAdkhe8DEw7Ya
mQlJVqzuqmLrhVE4I4JHRd+S3q7Ow2bS9fwKXYsigV+YvGTng4GS71RPYkdai3b7
BTEpWDXNwrEM0K5tsTCU
=RAuY
-----END PGP SIGNATURE-----

--0PXZj9981TR239goBPDRzvPVs1PVnUGAw--
