Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D6EFE011C5
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2013 08:37:20 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 14 Oct 2013 08:37:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,493,1378882800"; d="scan'208";a="374516454"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by azsmga001.ch.intel.com with ESMTP; 14 Oct 2013 08:36:26 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.69]) by
	IRSMSX103.ger.corp.intel.com ([163.33.3.157]) with mapi id
	14.03.0123.003; Mon, 14 Oct 2013 16:36:25 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: Christian Gagneraud <chgans@gna.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Yocto Project 1.5_M5.rc6
Thread-Index: AQHOxHbIskK4La3j10Ch1nQygX7nA5nuaDaAgAAGywCAAAbUAIAAGnaAgAAIgACAABTEAIAAArQAgAADeoCABalL8A==
Date: Mon, 14 Oct 2013 15:36:25 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F8032D@IRSMSX104.ger.corp.intel.com>
References: <CAPhnLPBDr_LhzOpjs7-sOsf7ujKGDcchxirH45kfHcyqnUaxoA@mail.gmail.com>
	<52571E27.70308@gna.org>
	<CA+YB3raEO5Ek5EdkAuezyW+D3tj5-Aod2k+BRg5UWF_UWUHmtg@mail.gmail.com>
	<52572994.4050006@gna.org>
	<CAP9ODKoaV71QNHnqfwqnajhORu=1m82YaUiFo41HhcvUn6E-Rg@mail.gmail.com>
	<CA+YB3rZOFCTdJ0wtVa_qTt1QRZuT=nE2MZ2EXEqUs55Lyfiruw@mail.gmail.com>
	<52575854.6080302@linux.intel.com>
	<CAP9ODKooi3-gBELD86fsipqc98FCJt_jMPBNjd9gndaZjpefMw@mail.gmail.com>
	<52575D83.9010405@gna.org>
In-Reply-To: <52575D83.9010405@gna.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: Yocto Project 1.5_M5.rc6
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
X-List-Received-Date: Mon, 14 Oct 2013 15:37:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Christian Gagneraud
Sent: Friday, October 11, 2013 05:08
To: yocto@yoctoproject.org
Subject: Re: [yocto] Yocto Project 1.5_M5.rc6

On 11/10/13 14:55, Otavio Salvador wrote:
> On Thu, Oct 10, 2013 at 10:45 PM, Saul Wold <sgw@linux.intel.com> wrote:
>>
>> Sorry for the top post here. The real reason we still have Qt3 is=20
>> because it's required part of the LSB spec.  OE-Core contains Qt4 and=20
>> we know that
>> meta-qt5 exists from Otavio and Martin.
>>
>> I know that Richard and Paul have been watching what's going on with=20
>> meta-qt5.
>
> The biggest missing feature at meta-qt5 is the lacking of toolchain=20
> support; I am still looking for someone to sponsor me to work on this=20
> (as it is not a small task), a critical need from my side for it or=20
> someone step on and do it :)

Yes, and ideally it would be nice if this toolchain would be easy to use wi=
th QtCreator.
Some weeks ago, I had a look at writing a Yocto plugin for QtCreator (using=
 Danny/Qt4), and the biggest problem was how you "activate" the toolchain, =
sourcing the env setup is good when you work in a shell, but it would be be=
tter if the toolchain comes with a machine friendly manifest file, this wou=
ld allow as well to use several yocto toolchains (eg, for different archite=
ctures/machines) from within QtCreator.

[Alex] Just an FYI, the current Eclipse Plugin has multiple profile support=
.


My 2 cents.

Chris
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

