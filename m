Return-Path: <PMcGougan@topcon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20680E00B76; Mon, 12 May 2014 16:29:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from smtpca.topcon.com (unknown [12.107.178.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC8EAE00B5D
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 16:29:50 -0700 (PDT)
X-ASG-Debug-ID: 1399937389-04a12b448b1829880001-yzSStA
Received: from LIV-EXCHCAS2.TOPCON.com (liv-exchcas2.topcon.com [10.1.4.57])
	by smtpca.topcon.com with ESMTP id ZEYZNTozOErGPiK5 for
	<yocto@yoctoproject.org>; Mon, 12 May 2014 16:29:49 -0700 (PDT)
X-Barracuda-Envelope-From: PMcGougan@topcon.com
Received: from ADL-EXCHCAS1.TOPCON.com (10.48.4.102) by
	LIV-EXCHCAS2.TOPCON.com (10.1.4.57) with Microsoft SMTP Server (TLS) id
	14.3.123.3; Mon, 12 May 2014 16:29:49 -0700
Received: from ADL-EXCHMBX1.TOPCON.com ([169.254.1.232]) by
	ADL-EXCHCAS1.TOPCON.com ([10.48.4.102]) with mapi id 14.03.0123.003;
	Tue, 13 May 2014 08:59:46 +0930
From: Paul McGougan <PMcGougan@topcon.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Question / issue
X-ASG-Orig-Subj: RE: [yocto] Question / issue
Thread-Index: Ac9rQ7UAhL6Gq3gDT7KT8K1XExAUWAAAcm4AAJfqkSD//7ongIAAAdAA//6SsHA=
Date: Mon, 12 May 2014 23:29:46 +0000
Message-ID: <C7589FE7B0DE58488F2B9BF79840E9D90D66FB1D@ADL-EXCHMBX1.TOPCON.com>
References: <C7589FE7B0DE58488F2B9BF79840E9D90D66F51F@ADL-EXCHMBX1.TOPCON.com>
	<C7589FE7B0DE58488F2B9BF79840E9D90D66F94E@ADL-EXCHMBX1.TOPCON.com>
	<5370AA9B.3040308@windriver.com>
	<1818117.JRLN250oSp@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1818117.JRLN250oSp@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-GB, en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.49.1.46]
MIME-Version: 1.0
X-Barracuda-Connect: liv-exchcas2.topcon.com[10.1.4.57]
X-Barracuda-Start-Time: 1399937389
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
X-List-Received-Date: Mon, 12 May 2014 23:29:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]


> Er, if DATETIME is in the dependencies for this task and that is a bug in=
 the core
> recipe, we should fix it in the core. The question is how is it getting i=
n there?
>=20

The DATETIME was being introduced in my bbappend, not the core recipe. So I=
 don't think a change is needed to the core recipe.

But see my response to David's email.

Regards,
Paul

Confidentiality Notice:  This message (including attachments) is a private =
communication solely for use of the intended recipient(s).  =0D
If you are not the intended recipient(s) or believe you received this messa=
ge in error, notify the sender immediately and then delete this =0D
message.  Any other use, retention, dissemination or copying is prohibited =
and may be a violation of law, including the Electronic =0D
Communication Privacy Act of 1986."

