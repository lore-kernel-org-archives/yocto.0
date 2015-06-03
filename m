Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86504E00A26; Wed,  3 Jun 2015 01:42:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 0A3B8E009E5
	for <yocto@yoctoproject.org>; Wed,  3 Jun 2015 01:42:16 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0224.002; Wed, 3 Jun 2015 10:42:13 +0200
From: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Smart package manager problems
Thread-Index: AdCdSSeUcCzqNNvLRx2ZwuPjolKMuAAd2McAAAYIgtA=
Date: Wed, 3 Jun 2015 08:42:13 +0000
Message-ID: <DDB0C57E45663A458C5CACB7B5688BC21D8AB022@SESTOEX04.enea.se>
References: <DDB0C57E45663A458C5CACB7B5688BC21D8AAC26@SESTOEX04.enea.se>
	<1934442.fZaNR3y9Jt@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <1934442.fZaNR3y9Jt@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.175]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Smart package manager problems
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
X-List-Received-Date: Wed, 03 Jun 2015 08:42:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Paul,

I will do that, but the smart package manager cannot be used as a rootfs pa=
ckage.
The fact that is does not correctly identify which of the dependencies are =
already installed could cause further problems.


Alex

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Wednesday, June 03, 2015 10:46 AM
To: Alexandru Vaduva
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Smart package manager problems

Hi Alex,

On Tuesday 02 June 2015 15:50:20 Alexandru Vaduva wrote:
> I experiences a problem related to smart package manager that I wanted=20
> to discuss with you. I was interested in your feedback, knowledge of=20
> this and maybe advices on how should we proceed further.
>=20
> The bug I experienced can be duplicated with the information available=20
> in the "patch-info.txt" file attached to this email. I also attached=20
> the log of the error for easier read in the "image-build-info.txt" file.
>=20
> After some careful investigation I discovered that the problem is=20
> caused by the smart package manager, after the install_complementary=20
> function call when it in fact tries to call smart with "install --attempt=
 -y" arguments.
> It is not able to see the fact that those packages were already=20
> installed and tries to do it again. This error behavior might also be=20
> related to the problems mentioned here:
> https://www.mail-archive.com/yocto@yoctoproject.org/msg24279.html
> and https://bugs.launchpad.net/smart/+bug/1238492

Would you mind filing a bug in the Yocto Project bugzilla to cover this? I =
think the likely solution will be just to whitelist the warnings.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

--=20

Paul Eggleton
Intel Open Source Technology Centre

