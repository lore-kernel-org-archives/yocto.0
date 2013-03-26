Return-Path: <sipke.vriend@xilinx.com>
Received: from db8outboundpool.messaging.microsoft.com
	(mail-db8lp0188.outbound.messaging.microsoft.com [213.199.154.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B041CE00740;
	Mon, 25 Mar 2013 23:12:07 -0700 (PDT)
Received: from mail138-db8-R.bigfish.com (10.174.8.244) by
	DB8EHSOBE011.bigfish.com (10.174.4.74) with Microsoft SMTP Server id
	14.1.225.23; Tue, 26 Mar 2013 06:12:06 +0000
Received: from mail138-db8 (localhost [127.0.0.1])	by
	mail138-db8-R.bigfish.com (Postfix) with ESMTP id 9330480109;
	Tue, 26 Mar 2013 06:12:06 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:149.199.60.83; KIP:(null); UIP:(null); IPV:NLI;
	H:xsj-gw1; RD:unknown-60-83.xilinx.com; EFVD:NLI
X-SpamScore: 0
X-BigFish: VPS0(zz98dI9371I1432I14ffIdb82h853kzz1f42h1ee6h1de0h1202h1e76h1d1ah1d2ahzz8275dh8275bhz2fh95h668h839h944hd24hf0ah119dh1220h1288h12a5h12a9h12bdh137ah13b6h1441h14ddh1504h1537h153bh162dh1631h1758h18e1h1946h19b5h1b0ah906i1155h)
Received-SPF: pass (mail138-db8: domain of xilinx.com designates 149.199.60.83
	as permitted sender) client-ip=149.199.60.83;
	envelope-from=sipke.vriend@xilinx.com; helo=xsj-gw1 ;
	helo=xsj-gw1 ; 
Received: from mail138-db8 (localhost.localdomain [127.0.0.1]) by mail138-db8
	(MessageSwitch) id 1364278325363502_12610;
	Tue, 26 Mar 2013 06:12:05 +0000 (UTC)
Received: from DB8EHSMHS017.bigfish.com (unknown [10.174.8.232])	by
	mail138-db8.bigfish.com (Postfix) with ESMTP id 561944C0045;
	Tue, 26 Mar 2013 06:12:05 +0000 (UTC)
Received: from xsj-gw1 (149.199.60.83) by DB8EHSMHS017.bigfish.com
	(10.174.4.27) with Microsoft SMTP Server id 14.1.225.23;
	Tue, 26 Mar 2013 06:12:04 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]
	helo=xsj-smtp1.xilinx.com)	by xsj-gw1 with esmtp (Exim
	4.63)	(envelope-from <sipke.vriend@xilinx.com>)	id 1UKN76-0008I0-9G;
	Mon, 25 Mar 2013 23:12:04 -0700
From: Sipke Vriend <sipke.vriend@xilinx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, Khem Raj
	<raj.khem@gmail.com>
Thread-Topic: [yocto] TUNE_PKGARCH for Microblaze
Thread-Index: Ac4lGvRWCMgC7lCzQ3WJMTlC0IRu/QAVft2AARhDQ+A=
Date: Tue, 26 Mar 2013 06:12:02 +0000
References: <3c725a86-09c2-4c5a-b9c8-541e4a70ee5f@DB8EHSMHS025.ehs.local>
	<7F713EA1-FD12-46CA-9F14-DF9F83585F9D@gmail.com>
In-Reply-To: <7F713EA1-FD12-46CA-9F14-DF9F83585F9D@gmail.com>
Accept-Language: en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.162.153]
MIME-Version: 1.0
X-RCIS-Action: ALLOW
Message-ID: <e978f827-c688-48ed-ad53-346e3231e285@DB8EHSMHS017.ehs.local>
X-OriginatorOrg: xilinx.com
Cc: "meta-xilinx@yoctoproject.org" <meta-xilinx@yoctoproject.org>
Subject: Re: TUNE_PKGARCH for Microblaze
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
X-List-Received-Date: Tue, 26 Mar 2013 06:12:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

With help from Khem's email we have been able to perform 'some' sanity
checking against the microblaze architecture.

The TUNECONFLICTS assist us in ensuring conflicting features are flagged du=
ring
the bitbake sanity check, however because Microblaze's features are =

independently configurable, we would like to do some additional 'sanity =

checking'. =


Using a hierarchical method of features, like in arm, is not really viable =
for =

Microblaze, so if there are alternate existing ways we would like to use th=
em =

rather than creating localised bb classes to do this for us.

1. Is there a way similar to TUNECONFLICTS for "paired" features, i.e. if o=
ne =

   feature exists another must also?
   (Certain microblaze versions must have a set of features if a particular=
 =

   feature is enabled).
2. Is there a way to define that certain features must exist, other than =

   defining multiple machines   (e.g. in endian case we would like to ensur=
e one =

   of them is picked)?
3. Additionally (or instead of 1 and 2) is there a way we can introduce/app=
end a =

   'sanity check' into the bitbake layer model - i.e. inform bitbake to =

   run 'our complex sanity' check?

As a continuation from my last email, the following is a list of possible M=
icroblaze =

architecture features, which can be supplied in the machine and/or local.co=
nf =

file. Lack of  a hardware feature means the soft version is used.

big-endian/little-endian =

vXXX where XXX is a microblaze version (like v830) =

barrel-shift =

multiply-high multiply-low =

pattern-compare =

reorder =

divide-hard =

fpu-hard fpu-hard-extended =


Additionally we plan to modify the package name slightly, e.g.
microblazeel-v840-bs-ml-div-fe-cmp-re
microblazeel-v830-bs-mh
microblazeel-v830

Regards
Sipke

>On Mar 20, 2013, at 4:44 PM, Khem Raj <mailto:raj.khem@gmail.com> wrote:
>
>
>On Mar 19, 2013, at 9:08 PM, Sipke Vriend <sipke.vriend@xilinx.com> wrote:=

>
>
>Hi all,
> =

>We are seeking some feedback regarding common practices for defining TUNE_=
PKGARCH within Yocto.
> =

>
>usually its dictated by architecture, ABI and other processor features. th=
e current tune files have good ways to express the relationships =

>you would translate the below table into set of TUNE_FEATURES and define P=
ACKAGE_EXTRA_ARCHS if you need to express compatibility between different t=
unes
>
>Look at arm tunes they are the best examples of complexity
>
>
>We need to define a unique TUNE_PKGARCH for the possible configuration of =
Microblaze architecture.
>Our proposal is short unique string for each HW feature which is enabled i=
n Microblaze.
> =

>For 'extensive hardware usage' architecture, this would result in somethin=
g like:
>mbebv730-bs-mh-div-fb-cmp
>mbebv840-bs-mh-div-fb-cmp-re
>mbelv840-bs-ml-div-fe-cmp-re
>and for architecture with no 'hardware usage':
>mbebv730
>mbebv840
>mbelv840
> =

>The table below details the unique strings and their relation to compiler =
and hardware flags, and a couple of versions of Microblaze architecture.
>(If this table does not show cleanly switch to fixed width font)
>-------------------
>String Compiler Flag        Hardware Flag         CPU versions
>       -mcpu=3DvX.YY.Z                              v7.30.a v8.40.a
> =

>mbel   -mlittle-endian      C_ENDIANNESS (LITTLE) -       o
>mbeb   -mbig-endian         C_ENDIANNESS (BIG)    x       o
> =

>bs     -mxl-barrel-shift    C_USE_BARREL          o       o
> =

>ml     -mnoxl-soft-mul      C_USE_HW_MUL (MUL32)  o       o
>mh     -mxl-multiply-high   C_USE_HW_MUL (MUL64)  o       o
> =

>div    -mnoxl-soft-div      C_USE_DIV             o       o
> =

>fb     -mhard-float         C_USE_FPU (BASIC)     o       o
>fe     -mxl-float-convert   C_USE_FPU (EXTENDED)  o       o
>fe     -mxl-float-sqrt      C_USE_FPU (EXTENDED)  o       o
> =

>cmp   -mxl-pattern-compare  C_USE_PCMP_INSTR      o       o
> =

>re    -mxl-reorder          C_USE_REORDER_INSTR   -       o
> =

>Where '-' means unavailable 'x' is only option and 'o' is optional.
>-------------------
> =

>
>
>you can express this with TUNECONFLICTS and TUNEVALID
>
>and may be create heirarchy of tune files which builds upon common tunings=
.
>
>
>Note the table rows have hardware feature 'groupings', which means only on=
e of the strings should be present within the TUNE_PKGARCH. For example the=
 Floating Point Unit hardware feature can be defined by either fb (for basi=
c mode) or fe (for extended mode).
> =

>Regards
>Sipke
> =

> =

> =

>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto
>
>



