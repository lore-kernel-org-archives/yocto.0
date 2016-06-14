Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 684D8E00A7B; Tue, 14 Jun 2016 06:18:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.251.71.2 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx26-02.smtp.antispamcloud.com (mx26-02.smtp.antispamcloud.com
	[148.251.71.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70B39E009CD
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 06:18:27 -0700 (PDT)
Received: from 100-208.ftth.onsbrabantnet.nl ([88.159.208.100]
	helo=TOP-EX01.TOPIC.LOCAL)
	by mx26.antispamcloud.com with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.85) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1bCoEa-0003Z5-4O; Tue, 14 Jun 2016 15:18:25 +0200
Received: from [192.168.80.121] (192.168.80.121) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 14 Jun 2016 15:18:22 +0200
To: Christopher Larson <clarson@kergoth.com>, Jeffrey D Boyer
	<Jeffrey.D.Boyer@jci.com>
References: <f732c861dc8642279465a6e9707f8b83@BN3PR97MB0132.062d.mgd.msft.net>
	<CABcZANkeE_RumUN=6D8n8zFQW8hEb-nRQgXBbc5ZMPkZniPLjA@mail.gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <5760041E.1010809@topic.nl>
Date: Tue, 14 Jun 2016 15:18:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <CABcZANkeE_RumUN=6D8n8zFQW8hEb-nRQgXBbc5ZMPkZniPLjA@mail.gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarwwXW6ykJtePZQ8GUv0lmyriQMQf8FYQA882I/zAiDSnloPx4yxn0/nJkKjvnkEcuNiPL
	7pxro+JxyHRDCppgPfTDpJxxYwML4QEFO4rejcoTB1ON6HovqIvxtmjUuhcoviuLs85zA/yHEgrq
	vKfKLjPw+Lxqd/jtI5dgi/GqPWkFFA0m2PO8nVwvvtYcFiyKWIyY8Gyrh5dcaydCjh55fziT6L31
	7/p6ioncOp25t+mRVjRUy0x2AKc9FHMbmlOoMvGX+ObfaU6whL8xq/xH+avyvQ7CbINIDcS5wpWy
	+I5YvF3K7LgeiuH5eCStSiiSVJeFB9XoTpMnYKYB1MU+b9NrzOR53mK2sN34HMy+JoRFY4+4QY0s
	jn2opeJJeXfjJME2PcThwZvQzlAUa/De200n/t9mSP8PaFvoZGGW7zDZn0Omwyz83+od6yXM3xg5
	3lJa8Sow8yJBTz7nPOPnRKhbLPp9n350Mbemie5JWWm/nCVm/AhWHHHCeRDROo40UY9D2cFVeTvb
	bla5RrV04KsyFJGu1KuteTIpNas3M99P9sA1bpq1kbtcn4wFfZA5vK0hIR8cIf6lYHZizJx95IFo
	h9VoIekQHpwUfpYnEThm28255xp92yCh00dIPzg1xAwBM+jtfJKPf5O2qlJYN1JIA9KaOYgo8Znc
	cQYAY4RwkFGbSwuCRP+egHh4WzRqYA==
X-Report-Abuse-To: spam@mx99.antispamcloud.com
X-Originating-IP: 88.159.208.100
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 88.159.208.100
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=88.159.208.100@topic.nl
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.15)
X-Recommended-Action: accept
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Mounting USB drives on a "read-only-rootfs" based system
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
X-List-Received-Date: Tue, 14 Jun 2016 13:18:32 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFYup, even mdev based images do that with current OE.

I'd expect "/media" to symlink to "run/media" on most devices (regardless=20
whether the rootfs is read-only or not). Check if that's the case on your s=
ystem.

On 14-06-16 00:01, Christopher Larson wrote:
> Afaik usb storage is already automounted by udev on /run/media/, so there=
's no
> need to use /media for that purpose.
>
> On Mon, Jun 13, 2016 at 2:22 PM, Jeffrey D Boyer <Jeffrey.D.Boyer@jci.com
> <mailto:Jeffrey.D.Boyer@jci.com>> wrote:
>
>     Hello,____
>
>     __ __
>
>     New to the list here, so I=E2=80=99m sorry if this question has been =
asked before,
>     but I couldn=E2=80=99t find a direct answer to it. ____
>
>     __ __
>
>     I have a yocto image that was built using the following bb script lin=
e:
>     IMAGE_FEATURES +=3D " read-only-rootfs". ____
>
>     __ __
>
>     As this image eventually resides on a static flash device, it must be
>     read-only.  However, the system hardware supports removable media (SD=
 card
>     and USB drives), and I=E2=80=99d like to be able to mount and write t=
o those
>     removable drives / partitions for data logging purposes.  What needs =
to be
>     done in order to make the /media directory auto-mountable when a
>     =E2=80=9Cread-only=E2=80=9D image is specified by the build script?__=
__
>
>     __ __
>
>     Thanks.____
>
>     __ __
>
>
>     --
>    =20

Kind regards,

Mike Looijmans
System Expert

TOPIC Embedded Products
Eindhovenseweg 32-C, NL-5683 KH Best
Postbus 440, NL-5680 AK Best
Telefoon: +31 (0) 499 33 69 79
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail





_______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics
>
>


