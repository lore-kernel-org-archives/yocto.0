Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe003.messaging.microsoft.com [216.32.181.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E074FE0030F
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 17:42:55 -0800 (PST)
Received: from mail96-ch1-R.bigfish.com (10.43.68.244) by
	CH1EHSOBE016.bigfish.com (10.43.70.66) with Microsoft SMTP Server id
	14.1.225.23; Sat, 28 Jan 2012 01:42:54 +0000
Received: from mail96-ch1 (localhost [127.0.0.1])	by mail96-ch1-R.bigfish.com
	(Postfix) with ESMTP id 0193C180439;
	Sat, 28 Jan 2012 01:42:54 +0000 (UTC)
X-SpamScore: -8
X-BigFish: VS-8(zzbb2dI9371I1432N98dKzz1202hzz8275bhz2dhc1bhc31hc1ah2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail96-ch1 (localhost.localdomain [127.0.0.1]) by mail96-ch1
	(MessageSwitch) id 1327714972692823_415; Sat, 28 Jan 2012 01:42:52 +0000
	(UTC)
Received: from CH1EHSMHS010.bigfish.com (snatpool2.int.messaging.microsoft.com
	[10.43.68.230])	by mail96-ch1.bigfish.com (Postfix) with ESMTP id
	A4CF51E0052;	Sat, 28 Jan 2012 01:42:52 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS010.bigfish.com
	(10.43.70.10) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Sat, 28 Jan 2012 01:42:52 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.86]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0355.003; Fri, 27 Jan 2012 19:42:51 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Joshua Lock <josh@linux.intel.com>
Thread-Topic: [yocto] understanding recipes
Thread-Index: AQHM3V4lO4lBhMyPEUyxq1fHbZzlBg==
Date: Sat, 28 Jan 2012 01:42:51 +0000
Message-ID: <CAEsOVNc1Fqm2buWjOg41AMd2sa7bO-v++OEdJH7m_ESdYNxDTQ@mail.gmail.com>
References: <4F2182E2.2030101@gmail.com> <4F21A1B4.60305@intel.com>
	<4F21C66C.408@gmail.com> <4F21C7E4.3070102@intel.com>
	<4F21CDDB.1040106@gmail.com> <4F21CF79.5060909@intel.com>
	<4F22F040.3000109@linux.intel.com>
In-Reply-To: <4F22F040.3000109@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: understanding recipes
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
X-List-Received-Date: Sat, 28 Jan 2012 01:42:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <1C7466AF34F4954B9B8623C1F2D89FD6@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 27, 2012 at 10:43 AM, Joshua Lock <josh@linux.intel.com> wrote:
> On 26/01/12 14:11, Scott Garman wrote:
>>
>> In this case, the LIC_FILES_CHKSUM is storing the md5sum of the COPYING
>> file, which is stored in the top-level directory of the extracted source=
s.
>>
>> So manually download the hello version you are trying to use, extract
>> the tarball locally, and run md5sum against the COPYING file. Then
>> update the LIC_FILES_CHKSUM field with that new md5 checksum.
>
>
> Or if you're lazy, like me, you can just run the build and let it fail th=
en
> run md5sum on the extracted source in the work directory.
>
> i.e. for qemux86 hello world I could bitbake helloworld then:
>
> md5sum tmp/work/i586-poky-linux/hello-world-2.7-r0/hello-world-2.7/COPYIN=
G

I think it even tells you what it should be, so you don't even need to
do this step. Just set the right file and the correct lines within the
file and run until failure.

-M=


