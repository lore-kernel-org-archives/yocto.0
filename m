Return-Path: <rohit2.jindal@aricent.com>
Received: from jaguar.aricent.com (jaguar.aricent.com [180.151.2.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73AEDE015AB
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 02:06:14 -0700 (PDT)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 6340E36B85;
	Tue, 17 Sep 2013 14:35:54 +0530 (IST)
Received: from GUREXHT02.ASIAN.AD.ARICENT.COM (gurexht02.asian.ad.aricent.com
	[10.203.171.138])
	by jaguar.aricent.com (Postfix) with ESMTP id 578B136B63;
	Tue, 17 Sep 2013 14:35:54 +0530 (IST)
Received: from GUREXMB01.asian.ad.aricent.com ([10.203.171.134]) by
	GUREXHT02.ASIAN.AD.ARICENT.COM ([10.203.171.138]) with mapi;
	Tue, 17 Sep 2013 14:35:54 +0530
From: Rohit2 Jindal <rohit2.jindal@aricent.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 17 Sep 2013 14:35:53 +0530
Thread-Topic: [yocto] yocto query on SR_URI creation
Thread-Index: Ac6zhJyZOAkY1mIPTt6O+lLzdwsQCwAACOaw
Message-ID: <17797116383D4341B029FDF34C22BF6A5D7F898B2A@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.7042.1376600669.19864.yocto@yoctoproject.org>
	<4616187.FgK0ETbC70@helios>
	<17797116383D4341B029FDF34C22BF6A5D7F898B21@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<16622177.NMr0mASBTi@helios>
In-Reply-To: <16622177.NMr0mASBTi@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-TM-AS-MML: No
Subject: Re: yocto query on SR_URI creation
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
X-List-Received-Date: Tue, 17 Sep 2013 09:06:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

SRC_URI  =3D "git://ep-code.xtz.com/u-boot.git;branch=3Dxxx-ep-20130823-3.0=
-alpha;protocol=3Dssh;subpath=3Duboot"
SRC_URI  =3D "git://ep-code.xtz.com/x-load.git;branch=3Dxxx-ep-20130823-3.0=
-alpha;protocol=3Dssh;subpath=3Dxload"

Regards,
Rohit Jindal
-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
Sent: Tuesday, September 17, 2013 2:32 PM
To: Rohit2 Jindal
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] yocto query on SR_URI creation

On Tuesday 17 September 2013 14:28:36 Rohit2 Jindal wrote:
> The way you mentioned to put option inSRC_URI doesnot work it allows
> to download first repository in SRC_URI and gives error not allowing
> to download Second one. Gives error branch checkout id is not a valid
> id for second src_uri.
>
> Please suggest me the alternative to handle the same.

Could you please show the SRC_URI lines you are using now?

Thanks,
Paul

PS Please also keep the discussion on the mailing list, thanks.

--

Paul Eggleton
Intel Open Source Technology Centre




=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
Please refer to http://www.aricent.com/legal/email_disclaimer.html
for important disclosures regarding this electronic communication.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

