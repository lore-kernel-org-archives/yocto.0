Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D860CE00D7E; Tue, 19 Nov 2019 01:39:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,BODY_URI_ONLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [46.105.59.196 listed in list.dnswl.org]
	* 1.0 BODY_URI_ONLY Message body is only a URI in one line of text or
	for *      an image
X-Greylist: delayed 52049 seconds by postgrey-1.32 at yocto-www;
	Tue, 19 Nov 2019 01:39:47 PST
Received: from 7.mo6.mail-out.ovh.net (7.mo6.mail-out.ovh.net [46.105.59.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAC74E0079A
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2019 01:39:47 -0800 (PST)
Received: from player778.ha.ovh.net (unknown [10.109.146.132])
	by mo6.mail-out.ovh.net (Postfix) with ESMTP id ED5D31EC769
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2019 09:20:11 +0100 (CET)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player778.ha.ovh.net (Postfix) with ESMTPSA id F1B51C32BF5E;
	Tue, 19 Nov 2019 08:20:09 +0000 (UTC)
To: Chandana Kalluri <ckalluri@xilinx.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <MWHPR02MB2576FB71F9655C67BB76963EB04C0@MWHPR02MB2576.namprd02.prod.outlook.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
	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
	0f2bcrTp9w==
Message-ID: <c76ae069-31e4-b2d1-7b29-2679841bf07b@3mdeb.com>
Date: Tue, 19 Nov 2019 09:20:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <MWHPR02MB2576FB71F9655C67BB76963EB04C0@MWHPR02MB2576.namprd02.prod.outlook.com>
X-Ovh-Tracer-Id: 11942138840651411113
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudegjedguddulecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjqdffgfeufgfipdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefuvfhfhffkffgfgggjtgesghdtrefotdefjeenucfhrhhomhepofgrtghivghjucfrihhjrghnohifshhkihcuoehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmqeenucffohhmrghinhepfehmuggvsgdrtghomhdpghhithhhuhgsrdgtohhmnecukfhppedtrddtrddtrddtpdekhedrvddvvddruddujedrvddvvdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeejkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheshihotghtohhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
Subject: Re: patches to upgrade meta-jupyter layer packages
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
X-List-Received-Date: Tue, 19 Nov 2019 09:39:50 -0000
X-Groupsio-MsgNum: 47321
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="iL81LYiiDtnuNiIEV45crDCybTPyhDo2c"

--iL81LYiiDtnuNiIEV45crDCybTPyhDo2c
Content-Type: multipart/mixed; boundary="WNO9WUc5JYcJVX8UsQBeZDMcScVCEpo2k";
 protected-headers="v1"
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: Chandana Kalluri <ckalluri@xilinx.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <c76ae069-31e4-b2d1-7b29-2679841bf07b@3mdeb.com>
Subject: Re: [yocto] patches to upgrade meta-jupyter layer packages
References: <MWHPR02MB2576FB71F9655C67BB76963EB04C0@MWHPR02MB2576.namprd02.prod.outlook.com>
In-Reply-To: <MWHPR02MB2576FB71F9655C67BB76963EB04C0@MWHPR02MB2576.namprd02.prod.outlook.com>

--WNO9WUc5JYcJVX8UsQBeZDMcScVCEpo2k
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 19.11.2019 01:15, Chandana Kalluri wrote:
> Hello all,
>
> I have upgraded python packages from meta-jupyter layer to work with th=
e zeus branch.
> I am planning to send out the patches to this yocto project mailing lis=
t yocto@yoctoproject.org Please let me know if this is alright or if I ne=
ed to send them to a different mailing list.
May be a good idea to add maintainers on CC:
https://github.com/Xilinx/meta-jupyter#maintainers-patchessubmissions-com=
munity
>
> Thanks,
> Chandana
>
--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: F1401D2E1CCB19EF
https://3mdeb.com | @3mdeb_com



--WNO9WUc5JYcJVX8UsQBeZDMcScVCEpo2k--

--iL81LYiiDtnuNiIEV45crDCybTPyhDo2c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJd06W4AAoJEPFAHS4cyxnvRSoQAKD/Qbah5XVze0t2EBR7ouwt
bqbXCynEogzsqCpkC89WWcJjDfsRpuCYtIyvdIFLOQwICCW+gv6OuMHg0MEOdiqI
EwFbQ5BhwVUqKLnc81VD2BEPquTvGvzvUePuKdYykgLvaSMQlGNYqUxKvGQ3pCvs
REdHHd7bt3F9zjkftHEhMrKWQWv12j2qBozNvDIe9vKH35TfQyrrNvqtzeWfZbpS
0qpfTr2kYzu8GjYZ5b+dJ5Z16MHnIm0UcjfXHUaKjYcti4WEyKkEXv1BZ/PwS2G5
/POtUfRKiyyLjA6rspX+XllLYFU+KqE4S8YZQRUYba09qO0qvVvlDZHdvcwCrliY
xHSmOslBRReM+TNkfdB8lOXFx4JdpWLESnvooHyReiIvCRywG7wlVZI0BTdY+U9y
U97Vo8lph0pT0lKHZCdRWO/IbFtGPZ4I2PL/CpQJQz+xObVnk8OZgBA3RFD6DV/F
bkrMOkVKfBnm37mPLmVZE50Pgw74SrL7ZT+bEMiju7m+Y5DL1Wv9bpLQG5byvoKS
mwfIZqnjHQ+uVYjLAOQJ46Bu4O66sJnS/3jzsQn4LMfsUXsaPZfX61UCuH911plM
jmFYPPFozvuvQ5Q+vQbj5+PzhMdBsdtYgnAwo9yyj1cazmmsf4SnDQ9flHGQqA3n
DDjUnh/lwWjNTHXMD+um
=MrkF
-----END PGP SIGNATURE-----

--iL81LYiiDtnuNiIEV45crDCybTPyhDo2c--
