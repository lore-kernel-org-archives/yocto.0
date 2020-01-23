Received: from 7.mo69.mail-out.ovh.net (7.mo69.mail-out.ovh.net [46.105.50.32])
 by mx.groups.io with SMTP id smtpd.web11.9674.1579795004548507392
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 07:56:45 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 46.105.50.32, mailfrom: piotr.krol@3mdeb.com)
Received: from player796.ha.ovh.net (unknown [10.108.54.87])
	by mo69.mail-out.ovh.net (Postfix) with ESMTP id DFD2181DAF
	for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 16:56:41 +0100 (CET)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: piotr.krol@3mdeb.com)
	by player796.ha.ovh.net (Postfix) with ESMTPSA id 09453E81882B;
	Thu, 23 Jan 2020 15:56:40 +0000 (UTC)
To: yocto@lists.yoctoproject.org
Cc: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
From: "Piotr Kr?l" <piotr.krol@3mdeb.com>
Subject: Confusing requirements for Yocto Participant badge
Autocrypt: addr=piotr.krol@3mdeb.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <26585384-784f-bb75-feaf-082ce07e5ccc@3mdeb.com>
Date: Thu, 23 Jan 2020 16:56:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
X-Ovh-Tracer-Id: 13995498793147026478
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrvddvgdehudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefvhffukffffgggtgfgsehtkeertddtfeejnecuhfhrohhmpefrihhothhrpgfmrhpklhcuoehpihhothhrrdhkrhholhesfehmuggvsgdrtghomheqnecuffhomhgrihhnpeihohgtthhophhrohhjvggtthdrohhrghdpfehmuggvsgdrtghomhenucfkpheptddrtddrtddrtddpkeehrddvvddvrdduudejrddvvddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeeliedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehpihhothhrrdhkrhholhesfehmuggvsgdrtghomhdprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrgh
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi all,
We noticed that there are confusing requirements about maximum number of
employees for small-business applying for Yocto Participant badge.
Registration form say up to 60 employees [1] logo guidelines say up to
80 employees [2]. What is the correct value?

[1]
https://www.yoctoproject.org/ecosystem/branding/participant-registration/
[2] https://www.yoctoproject.org/logos-and-guidelines/

Best Regards,
--=20
Piotr Kr=C3=B3l
Embedded Systems Consultant
GPG: B2EE71E967AA9E4C
https://3mdeb.com | @3mdeb_com
