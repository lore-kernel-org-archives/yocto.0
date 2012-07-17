Return-Path: <B29882@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe002.messaging.microsoft.com [216.32.180.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAC32E00282
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 10:36:10 -0700 (PDT)
Received: from mail172-co1-R.bigfish.com (10.243.78.254) by
	CO1EHSOBE008.bigfish.com (10.243.66.71) with Microsoft SMTP Server id
	14.1.225.23; Tue, 17 Jul 2012 17:36:11 +0000
Received: from mail172-co1 (localhost [127.0.0.1])	by
	mail172-co1-R.bigfish.com (Postfix) with ESMTP id 5F8347001BD;
	Tue, 17 Jul 2012 17:36:10 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail172-co1 (localhost.localdomain [127.0.0.1]) by mail172-co1
	(MessageSwitch) id 1342546552561143_16866;
	Tue, 17 Jul 2012 17:35:52 +0000 (UTC)
Received: from CO1EHSMHS015.bigfish.com (unknown [10.243.78.244])	by
	mail172-co1.bigfish.com (Postfix) with ESMTP id 86F4F6C012F;
	Tue, 17 Jul 2012 17:35:52 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS015.bigfish.com
	(10.243.66.25) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 17 Jul 2012 17:35:51 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0298.005; Tue, 17 Jul 2012 12:35:50 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] 1.1.2 Full Pass consolidated Test Report
Thread-Index: AQHNY5/hbr5cKoixskGHFMBAm7dmyJctRywAgAAF0YCAAJiNgIAALCQA
Date: Tue, 17 Jul 2012 17:35:49 +0000
Message-ID: <CAEsOVNdz3oBUP0pee9fecN4Yk4vUQEZFyMbmyeY75vM66UKfXQ@mail.gmail.com>
References: <E16513A01CAAFF40B65178C63CE45EEC19154E26@IRSMSX102.ger.corp.intel.com>
	<CAEsOVNdtHsAaJX9NdtiWSa70aRcK+Q+dvUgV7FWXu_tEkSEQYg@mail.gmail.com>
	<CAEsOVNcas4rN6sRaZSOLjy-xNTONdRXaepTiANkpjVh9jr0P_A@mail.gmail.com>
	<CAMKF1srAY+iyR+oRTsCfWqEsHaBKV4OTFFhHQr7Reaha6p_--A@mail.gmail.com>
	<CAEsOVNcY1xBk83MeYaXLdjE+V4Bp1EruOR9LVTs=jAcWjHa8HQ@mail.gmail.com>
In-Reply-To: <CAEsOVNcY1xBk83MeYaXLdjE+V4Bp1EruOR9LVTs=jAcWjHa8HQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 1.1.2 Full Pass consolidated Test Report
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
X-List-Received-Date: Tue, 17 Jul 2012 17:36:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <A01BE81806D0044182A740340FF05259@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 17, 2012 at 9:57 AM, Matthew McClintock <msm@freescale.com> wro=
te:
> On Tue, Jul 17, 2012 at 12:51 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> On Mon, Jul 16, 2012 at 10:31 PM, McClintock Matthew-B29882
>> <B29882@freescale.com> wrote:
>>> }
>>> -       rm -rf ${SSTATE_BUILDDIR}
>>> +       strace rm -rf ${SSTATE_BUILDDIR}
>>
>> strace is probably eating the return value
>
> And you would be right....
>
> I want to point out running the
> ./tmp/work/ppc603e-poky-linux/eglibc-locale-2.13-r16/temp/run.sstate_crea=
te_package.17463
> generated script directly does not fail (without the strace
> modification)

Also, the follow does work:

diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index d2a45c3..92a1e4d 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -463,7 +463,14 @@ sstate_create_package () {
        mv $TFILE ${SSTATE_PKG}

        cd ${WORKDIR}
-       rm -rf ${SSTATE_BUILDDIR}
+       for i in `find ${SSTATE_BUILDDIR} -type f`; do
+               bbnote "deleting $i"
+               rm -rf $i
+       done
+       for i in `find ${SSTATE_BUILDDIR} -type d -depth`; do
+               bbnote "rmdir $i"
+               rmdir $i
+       done
 }

Still debugging....

-M=


