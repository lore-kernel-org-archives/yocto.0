Return-Path: <Georg.PIEWALD@frequentis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A58C4E0071C; Wed, 21 Oct 2015 11:18:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [195.20.158.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.frequentis.com (mail1.frequentis.com [195.20.158.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA8B6E006D5
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 11:18:23 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.20,178,1444687200"; d="scan'208";a="12327539"
Received: from vie190nt.frequentis.frq ([172.16.1.190])
	by mail1.frequentis.com with ESMTP; 21 Oct 2015 20:18:23 +0200
Received: from vie196nt.frequentis.frq ([172.16.1.196]) by
	vie190nt.frequentis.frq ([172.16.1.190]) with mapi id 14.03.0266.001;
	Wed, 21 Oct 2015 20:18:22 +0200
From: PIEWALD Georg <Georg.PIEWALD@frequentis.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Modifying the OE-internal Python code
Thread-Index: AdELez5v3r9R+0lcQmCqlihvMDGqXgAcfWsAAA6azsA=
Date: Wed, 21 Oct 2015 18:18:21 +0000
Message-ID: <7858CE2B355E1A438F13002DDE9D639401110E4337@vie196nt>
References: <7858CE2B355E1A438F13002DDE9D639401110E3132@vie196nt>
	<4449982.pFjXl0Qf24@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <4449982.pFjXl0Qf24@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US, de-AT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.19.4.23]
MIME-Version: 1.0
Subject: Re: Modifying the OE-internal Python code
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
X-List-Received-Date: Wed, 21 Oct 2015 18:18:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> Paul Eggleton wrote:
> On Tuesday 20 October 2015 21:07:15 PIEWALD Georg wrote:
>> I'm trying to do some modifications in the OE-internals (just some perso=
nal
>> customizations), in the Python code. In particular, I changed the file
>> oe-core/meta/lib/oe/terminal.py
>> I also compiled it into a terminal.pyc file. However, the modifications
>> don't seem to be picked up by bitbake. Is there something more I have to
>> do? Does the .pyc file have to be installed somewhere?
>
> There should be no need to explicitly build the pyc nor do anything speci=
al=20
> for any changes to be recognised (assuming you're not using oe-init-build=
-env-
> memres). Something must be going wrong in your setup somewhere. Perhaps a=
n=20
> unusual python path?

Thanks for your answer! I looked at it more careful now, and indeed you are=
 right, all changes are recognized implicitly. The problem was in the code =
that I modified, which was a no-op (and I learned something about Python).

BR Georg


