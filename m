Return-Path: <B29882@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe003.messaging.microsoft.com [213.199.154.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79250E0070C
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 08:35:37 -0700 (PDT)
Received: from mail75-am1-R.bigfish.com (10.3.201.232) by
	AM1EHSOBE004.bigfish.com (10.3.204.24) with Microsoft SMTP Server id
	14.1.225.23; Wed, 11 Apr 2012 15:35:35 +0000
Received: from mail75-am1 (localhost [127.0.0.1])	by mail75-am1-R.bigfish.com
	(Postfix) with ESMTP id 9023D4A047C;
	Wed, 11 Apr 2012 15:35:35 +0000 (UTC)
X-SpamScore: -13
X-BigFish: VS-13(zzbb2dI9371I936eK1432N98dKzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hbe9i)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail75-am1 (localhost.localdomain [127.0.0.1]) by mail75-am1
	(MessageSwitch) id 1334158533940420_16102;
	Wed, 11 Apr 2012 15:35:33 +0000 (UTC)
Received: from AM1EHSMHS001.bigfish.com (unknown [10.3.201.254])	by
	mail75-am1.bigfish.com (Postfix) with ESMTP id E134540043;
	Wed, 11 Apr 2012 15:35:33 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS001.bigfish.com
	(10.3.207.101) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 11 Apr 2012 15:35:30 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.132]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0355.003; Wed, 11 Apr 2012 10:35:29 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>
Thread-Topic: [yocto] autobuilder failure
	http://autobuilder.pokylinux.org:8010/builders/nightly-x86/builds/433
Thread-Index: AQHNF/i4hp0R9eybcEyAxyPtm0hxuw==
Date: Wed, 11 Apr 2012 15:35:28 +0000
Message-ID: <CAEsOVNcf_pe1oGLwdrvrwJn7_rSatrxW7wR_ZREiq8_-iwEkcA@mail.gmail.com>
References: <857BE142E5399E46B20FD45B9DB8A7BC0FD33D27@SHSMSX102.ccr.corp.intel.com>
	<4F84593D.7090109@intel.com>
	<857BE142E5399E46B20FD45B9DB8A7BC0FD3456F@SHSMSX102.ccr.corp.intel.com>
In-Reply-To: <857BE142E5399E46B20FD45B9DB8A7BC0FD3456F@SHSMSX102.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: autobuilder failure http://autobuilder.pokylinux.org:8010/builders/nightly-x86/builds/433
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Apr 2012 15:35:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <F7BC1FFCB488D349B840342ED073A6AA@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 10, 2012 at 8:40 PM, Lu, Lianhao <lianhao.lu@intel.com> wrote:
> Saul Wold wrote on 2012-04-11:
>> On 04/10/2012 08:16 AM, Lu, Lianhao wrote:
>>> Hi Saul,
>>>
>>> I think I might have some clues why the python-nativesdk failed at http=
://autobuilder.pokylinux.org:8010/builders/nightly-x86/builds/433.
>> It's due to the commit
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dstage=
/ma
>> ster_under_test&id=3Da1f1cc4c27b5091870b1dbd9ede7c24c38d 765dd.
>>>
>>> I guess the above commit which changed eglibc-nativesdk to version 2.15
>>> has some conflict to the sstate-cache the autobuilder used, which might
>>> contains content from old eglibc-nativesdk 2.13.
>>>
>> Yes, that would do it, I will hit the sstate reset button and do a build
>> that should clear this, but will cause problems for most people, I
>> wonder if we need a PR bump in eglibc also?
>>
>
> I think theoretically the PV change from 2.13 to 2.15 has the same effect=
 of PR bump. I guess maybe some -nativesdk packages(other than eglibc-nativ=
esdk) which was built upon eglibc-nativesdk 2.13 didn't get rebuilt somehow=
 and went from sstate-cache directly into sysroot.
>
> Since I can't reproduce this compile failure on my local build, do we hav=
e the failure environment on autobuilder which I can log on and check?

Should the new OEBasicHash force a rebuild of those packages though?

-M=


