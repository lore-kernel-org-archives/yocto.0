Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7650BE0083A; Mon, 19 Jan 2015 12:44:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01080E00571
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 12:44:27 -0800 (PST)
Received: from durham.keylevel.com ([88.97.63.243]:19117
	helo=srv-192-168-1-40.ukfast.net)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.84)
	(envelope-from <opensource@keylevel.com>)
	id 1YDJBM-00454c-Fu; Mon, 19 Jan 2015 20:44:23 +0000
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <2824987.9YqDdImYNk@peggleto-mobl5.ger.corp.intel.com>
Date: Mon, 19 Jan 2015 20:43:58 +0000
Message-Id: <F80F1DAE-6829-4D7F-BFB2-D44B79D35957@keylevel.com>
References: <60148DA2-CAB2-416A-BDEE-783705B3E24E@keylevel.com>
	<CADkTA4MDLvwaGp_rcuUsOaXEC46_dxd6QH9k0PZmofhnxNLBoQ@mail.gmail.com>
	<AB3518D3-AE10-4889-ADB6-8A662EF8C458@keylevel.com>
	<2824987.9YqDdImYNk@peggleto-mobl5.ger.corp.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: yocto@yoctoproject.org
Subject: Re: Kernel configuration
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
X-List-Received-Date: Mon, 19 Jan 2015 20:44:34 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On 19 Jan 2015, at 14:37, Paul Eggleton <paul.eggleton@linux.intel.com> =
wrote:

> On Saturday 03 January 2015 00:57:50 Chris Tapp wrote:
>> If I change my bbappend to use lines of the form:
>>=20
>>  SRC_URI_valleyisland-64 +=3D " file://enable-R8169.cfg"
>=20
> Note that this probably doesn't do what you think it does - it'll be =
_setting_=20
> the value to "  file://enable-R8169.cfg" rather than appending to the =
existing=20
> value when MACHINE is "valleyisland-64".

I thought I had this sorted as it was doing _what_ I wanted ;-)

> Overrides and +=3D don't really work=20
> together because they operate at different times - the +=3D happens =
immediately=20
> and then later the override is applied. The correct way to do a =
conditional=20
> append with an override is to use _append, e.g.:
>=20
>  SRC_URI_append_valleyisland-64 =3D " file://enable-R8169.cfg"

Thanks for the heads-up - I'll go and update my file and add a comment =
so I remember next time round :-)

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com


