Return-Path: <PMcGougan@topcon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 532E4E00B76; Mon, 12 May 2014 16:31:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from smtpca.topcon.com (unknown [12.107.178.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12605E00B5D
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 16:31:24 -0700 (PDT)
X-ASG-Debug-ID: 1399937483-04a12b448b1829900001-yzSStA
Received: from LIV-EXCHCAS1.TOPCON.com (liv-exchcas1.topcon.com [10.1.4.56])
	by smtpca.topcon.com with ESMTP id aqSrCcKucDwLj6IM for
	<yocto@yoctoproject.org>; Mon, 12 May 2014 16:31:23 -0700 (PDT)
X-Barracuda-Envelope-From: PMcGougan@topcon.com
Received: from ADL-EXCHCAS2.TOPCON.com (10.48.4.103) by
	LIV-EXCHCAS1.TOPCON.com (10.1.4.56) with Microsoft SMTP Server (TLS) id
	14.3.123.3; Mon, 12 May 2014 16:31:23 -0700
Received: from ADL-EXCHMBX1.TOPCON.com ([169.254.1.232]) by
	ADL-EXCHCAS2.TOPCON.com ([10.48.4.103]) with mapi id 14.03.0123.003;
	Tue, 13 May 2014 09:01:19 +0930
From: Paul McGougan <PMcGougan@topcon.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Question / issue
X-ASG-Orig-Subj: RE: [yocto] Question / issue
Thread-Index: Ac9rQ7UAhL6Gq3gDT7KT8K1XExAUWAAAcm4AAJfqkSAAB03rgAAd7AZw
Date: Mon, 12 May 2014 23:31:19 +0000
Message-ID: <C7589FE7B0DE58488F2B9BF79840E9D90D66FB2D@ADL-EXCHMBX1.TOPCON.com>
References: <C7589FE7B0DE58488F2B9BF79840E9D90D66F51F@ADL-EXCHMBX1.TOPCON.com>
	<536CE9B4.6050303@windriver.com>
	<C7589FE7B0DE58488F2B9BF79840E9D90D66F94E@ADL-EXCHMBX1.TOPCON.com>
	<53711637.7070105@gmail.com>
In-Reply-To: <53711637.7070105@gmail.com>
Accept-Language: en-GB, en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.49.1.46]
MIME-Version: 1.0
X-Barracuda-Connect: liv-exchcas1.topcon.com[10.1.4.56]
X-Barracuda-Start-Time: 1399937483
X-Barracuda-URL: http://172.23.4.16:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at topcon.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.5760
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: Re: Question / issue
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
X-List-Received-Date: Mon, 12 May 2014 23:31:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: David Nystr=F6m [mailto:david.c.nystrom@gmail.com]
=20
> To me, Thats sound like a bug in the dependency parser.
> It should not parse for changes in comments, i.e. in this case do_install=
_append
> comments.
>=20
> Or perhaps in variable expansion, which could be avoided in commented
> sections.

Hi David.

Yes, I agree that the dependency parser should be altered.

I would suggest your 2nd suggestion would be the most appropriate, i.e. do =
not perform variable expansion in commented lines.

Regards,
Paul


Confidentiality Notice:  This message (including attachments) is a private =
communication solely for use of the intended recipient(s).  =0D
If you are not the intended recipient(s) or believe you received this messa=
ge in error, notify the sender immediately and then delete this =0D
message.  Any other use, retention, dissemination or copying is prohibited =
and may be a violation of law, including the Electronic =0D
Communication Privacy Act of 1986."

