Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AD92E0092C; Wed, 25 Jan 2017 11:15:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 345F0E007EB
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 11:15:37 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Jan 2017 11:15:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,285,1477983600"; d="scan'208";a="35431092"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga002.jf.intel.com with ESMTP; 25 Jan 2017 11:15:28 -0800
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Wed, 25 Jan 2017 11:15:28 -0800
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.23]) by
	ORSMSX116.amr.corp.intel.com ([169.254.7.190]) with mapi id
	14.03.0248.002; Wed, 25 Jan 2017 11:15:28 -0800
From: "Bystricky, Juro" <juro.bystricky@intel.com>
To: "Hatle, Mark G (Wind River)" <mark.hatle@windriver.com>, Yocto Project
	<yocto@yoctoproject.org>
Thread-Topic: [meta-mingw] Morty branch?
Thread-Index: AQHSbDQXfArqCqMKjUqElPl/58gH/6FJiBpggACcVwD//4FrGQ==
Date: Wed, 25 Jan 2017 19:15:28 +0000
Message-ID: <6E51916E4A1F32428260031F4C7CD2B6118F782A@ORSMSX112.amr.corp.intel.com>
References: <04eb27c4-8d41-b866-1f88-6e64be6d5acf@windriver.com>
	<6E51916E4A1F32428260031F4C7CD2B6118F7794@ORSMSX112.amr.corp.intel.com>,
	<c3aa6eae-3bb6-96a1-d47f-515113290e36@windriver.com>
In-Reply-To: <c3aa6eae-3bb6-96a1-d47f-515113290e36@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.135]
MIME-Version: 1.0
Subject: Re: [meta-mingw] Morty branch?
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
X-List-Received-Date: Wed, 25 Jan 2017 19:15:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The LTO patch is needed, see for example:=0A=
https://lists.yoctoproject.org/pipermail/yocto/2016-October/032490.html=0A=
=0A=
The SDK builds without it just fine, but the error pops up while running un=
der Windows=0A=
=0A=
Juro=0A=
________________________________________=0A=
From: Mark Hatle [mark.hatle@windriver.com]=0A=
Sent: Wednesday, January 25, 2017 10:46 AM=0A=
To: Bystricky, Juro; Yocto Project=0A=
Subject: Re: [meta-mingw] Morty branch?=0A=
=0A=
On 1/25/17 9:29 AM, Bystricky, Juro wrote:=0A=
> Hello Mark,=0A=
> the meta-mingw morty branch was created a few moments ago.=0A=
> Please have a look.=0A=
=0A=
Great.  This seems to be the stuff that was working for me.=0A=
=0A=
One comment if anyone else comes on this in the future.  The LTO commit.  I=
t's=0A=
not completely clearly to me if this is actually needed or if there is a pr=
oblem=0A=
somewhere else (binutils perhaps).=0A=
=0A=
At some point, someone with a bit more knowledge of mingw/windows and=0A=
gcc/binutils probably should take a look at it -- if the LTO stuff is desir=
ed.=0A=
=0A=
--Mark=0A=
=0A=
> Thanks=0A=
>=0A=
> Juro=0A=
>=0A=
>=0A=
>> -----Original Message-----=0A=
>> From: Mark Hatle [mailto:mark.hatle@windriver.com]=0A=
>> Sent: Wednesday, January 11, 2017 9:57 AM=0A=
>> To: Yocto Project <yocto@yoctoproject.org>=0A=
>> Cc: Bystricky, Juro <juro.bystricky@intel.com>=0A=
>> Subject: [meta-mingw] Morty branch?=0A=
>>=0A=
>> I don't see any specific Morty branch available for meta-mingw.  Also ma=
ny=0A=
>> of=0A=
>> the patches that were in progress have not been integrated to the master=
=0A=
>> branch=0A=
>> either.=0A=
>>=0A=
>> I've posted the Wind River version of meta-mingw for use with Morty base=
d=0A=
>> products to:=0A=
>>=0A=
>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-mingw-contrib/=0A=
>>=0A=
>> git://git.yoctoproject.org/meta-mingw-contrib=0A=
>>=0A=
>> The 'mgh/morty' branch.=0A=
>>=0A=
>> --Mark=0A=
=0A=

