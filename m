Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CB22E006C7; Wed,  6 Apr 2016 08:45:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.1.164 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from DUB004-OMC2S25.hotmail.com (dub004-omc2s25.hotmail.com
	[157.55.1.164])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A64BEE0048B
	for <yocto@yoctoproject.org>; Wed,  6 Apr 2016 08:45:06 -0700 (PDT)
Received: from DUB130-W30 ([157.55.1.138]) by DUB004-OMC2S25.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Wed, 6 Apr 2016 08:45:05 -0700
X-TMN: [nPao470hUJs5EWtsL7WrpmO5a+5mI1sB]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W30F71C6509C95E9FA2606EDA9F0@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Apr 2016 16:45:04 +0100
Importance: Normal
In-Reply-To: <CAJTo0Lbg10pM7VT0ZiaqC7r5YwvdX9_c3X9P=vrPdFX3C6maLQ@mail.gmail.com>
References: <DUB130-W48119310217EFF39E1E035DA9F0@phx.gbl>,
	<CAJTo0LbdXCPtc7PF_25Yc00T0pt=Ptq12whkehT5LVnnwS7RtA@mail.gmail.com>,
	<DUB130-W492E3B0F53AE2AA9EE0F0ADA9F0@phx.gbl>,
	<CAJTo0Lbg10pM7VT0ZiaqC7r5YwvdX9_c3X9P=vrPdFX3C6maLQ@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 06 Apr 2016 15:45:05.0460 (UTC)
	FILETIME=[4A3EC740:01D1901B]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python GObject Errors on yocto-2.1_M3.rc2
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
X-List-Received-Date: Wed, 06 Apr 2016 15:45:08 -0000
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

=0A=
________________________________=0A=
> From: ross.burton@intel.com=0A=
> Date: Wed=2C 6 Apr 2016 12:22:39 +0100=0A=
> Subject: Re: [yocto] Python GObject Errors on yocto-2.1_M3.rc2=0A=
> To: christrobridge@hotmail.com=0A=
> CC: yocto@yoctoproject.org=0A=
>=0A=
>=0A=
> On 6 April 2016 at 12:19=2C Chris Trobridge=0A=
> <christrobridge@hotmail.com<mailto:christrobridge@hotmail.com>> wrote:=0A=
> This did the trick for python 2.7=2C and "from gi.repository import=0A=
> GObject" works too.=0A=
>=0A=
> Can you send a patch to add this dependency to the pygobject package?=0A=
>=0A=
> Ross=0A=
=0A=
I will try to sort that out tomorrow (poky@yoctoproject.org=2C right?).=0A=
=0A=
Regarding python3=2C whenever I change=A0the "--with-python" option to some=
thing other than "python2.7" then I get an error.=0A=
=0A=
If I specify python3.5 then the error is that the build cannot find python3=
.5. =A0If I set it to python3.4 (which is installed on the host) then I get=
 an error about system directory poisoning.=0A=
=0A=
This suggests to me that the recipe seems to need both host and target pyth=
on for this to work. =A0It worked before so I will look tomorrow at the exp=
erimental branch and see what's different=2C if anything. =A0I've deleted t=
hat branch here and it is gone from git.=0A=
=0A=
Regards=2C=0A=
Chris=0A=
=0A=
 		 	   		  =

