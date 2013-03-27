Return-Path: <sipke.vriend@xilinx.com>
Received: from db8outboundpool.messaging.microsoft.com
	(mail-db8lp0185.outbound.messaging.microsoft.com [213.199.154.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7479CE01473;
	Tue, 26 Mar 2013 17:45:27 -0700 (PDT)
Received: from mail79-db8-R.bigfish.com (10.174.8.235) by
	DB8EHSOBE023.bigfish.com (10.174.4.86) with Microsoft SMTP Server id
	14.1.225.23; Wed, 27 Mar 2013 00:45:25 +0000
Received: from mail79-db8 (localhost [127.0.0.1])	by mail79-db8-R.bigfish.com
	(Postfix) with ESMTP id ACADF4C00C6;
	Wed, 27 Mar 2013 00:45:25 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:149.199.60.83; KIP:(null); UIP:(null); IPV:NLI;
	H:xsj-gw1; RD:unknown-60-83.xilinx.com; EFVD:NLI
X-SpamScore: -1
X-BigFish: VPS-1(zzbb2dI98dI9371I1432I14ffIdb82h853kzz1f42h1ee6h1de0h1202h1e76h1d1ah1d2ahzz8275dh8275bhz2fh95h668h839h944hd24hf0ah119dh1220h1288h12a5h12a9h12bdh137ah13b6h1441h14ddh1504h1537h153bh162dh1631h1758h18e1h1946h19b5h1b0ah906i1155h)
Received-SPF: pass (mail79-db8: domain of xilinx.com designates 149.199.60.83
	as permitted sender) client-ip=149.199.60.83;
	envelope-from=sipke.vriend@xilinx.com; helo=xsj-gw1 ;
	helo=xsj-gw1 ; 
Received: from mail79-db8 (localhost.localdomain [127.0.0.1]) by mail79-db8
	(MessageSwitch) id 1364345123631219_23694;
	Wed, 27 Mar 2013 00:45:23 +0000 (UTC)
Received: from DB8EHSMHS015.bigfish.com (unknown [10.174.8.232])	by
	mail79-db8.bigfish.com (Postfix) with ESMTP id 8CBF840004C;
	Wed, 27 Mar 2013 00:45:23 +0000 (UTC)
Received: from xsj-gw1 (149.199.60.83) by DB8EHSMHS015.bigfish.com
	(10.174.4.25) with Microsoft SMTP Server id 14.1.225.23;
	Wed, 27 Mar 2013 00:45:20 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]
	helo=xsj-smtp1.xilinx.com)	by xsj-gw1 with esmtp (Exim
	4.63)	(envelope-from <sipke.vriend@xilinx.com>)	id 1UKeUR-0005nJ-Ff;
	Tue, 26 Mar 2013 17:45:19 -0700
From: Sipke Vriend <sipke.vriend@xilinx.com>
To: Mark Hatle <mark.hatle@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] TUNE_PKGARCH for Microblaze
Thread-Index: Ac4lGvRWCMgC7lCzQ3WJMTlC0IRu/QAVft2AARhDQ+AAL9rigAAGy0wA
Date: Wed, 27 Mar 2013 00:45:17 +0000
References: <3c725a86-09c2-4c5a-b9c8-541e4a70ee5f@DB8EHSMHS025.ehs.local>
	<7F713EA1-FD12-46CA-9F14-DF9F83585F9D@gmail.com>
	<e978f827-c688-48ed-ad53-346e3231e285@DB8EHSMHS017.ehs.local>
	<5151F495.6010201@windriver.com>
In-Reply-To: <5151F495.6010201@windriver.com>
Accept-Language: en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.162.153]
MIME-Version: 1.0
X-RCIS-Action: ALLOW
Message-ID: <e72bd7f9-604e-4495-8765-b96650040e11@DB8EHSMHS015.ehs.local>
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
X-List-Received-Date: Wed, 27 Mar 2013 00:45:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Mark!

That information has been very useful. Looks like some python code will be =

the way we need to go.

>I think it's a good idea to have some standard tunes with functionality th=
at is =

>reasonable for a testable demo environment.  If the developers want to tai=
lor it =

>further, they should be able to either by manually selecting the features =
or =

>creating a custom tune file.
>
>This was the intent when the original tune system was introduced.  There w=
as no =

>way we would know every possible combination, so making a way the develope=
r =

>could specify it was the best answer we could come up with.  The TUNE_FEAT=
URES =

>adds the ability for the compiler and other packages to dynamically switch=
 based =

>on whatever the developer has configured.  It can be used for blacklisting=
 code, =

>changing optimizations, etc.

Agreed, we intend to have a 'full' and 'lite' as standard tunes for the use=
r to work =

with and build on as required.

Regards
Sipke


On Wednesday, 27 March 2013 5:19 AM, Mark Hatle wrote:
>
>On 3/26/13 1:12 AM, Sipke Vriend wrote:
>> Hi all,
>>
>> With help from Khem's email we have been able to perform 'some' sanity
>> checking against the microblaze architecture.
>>
>> The TUNECONFLICTS assist us in ensuring conflicting features are flagged=
 during
>> the bitbake sanity check, however because Microblaze's features are
>> independently configurable, we would like to do some additional 'sanity
>> checking'.
>>
>> Using a hierarchical method of features, like in arm, is not really viab=
le for
>> Microblaze, so if there are alternate existing ways we would like to use=
 them
>> rather than creating localised bb classes to do this for us.
>>
>> 1. Is there a way similar to TUNECONFLICTS for "paired" features, i.e. i=
f one
>>     feature exists another must also?
>>     (Certain microblaze versions must have a set of features if a partic=
ular
>>     feature is enabled).
>
>The values in the conflicts can be adjusted programatically.  It may be wh=
at you =

>need in this case.  Use inline python such as:
>
>TUNECONFLICTS[foo] =3D "${@bb.utils.contains("TUNE_FEATURES", "some_featur=
e", =

>"conflict_if_set", "conflict_if_not_set", d)}"
>
>> 2. Is there a way to define that certain features must exist, other than=

>>     defining multiple machines   (e.g. in endian case we would like to e=
nsure one
>>     of them is picked)?
>
>You can add a bit of python code that can again use the contains item.  Th=
e code =

>may need to be in a custom class though to execute.
>
>python() {
>     if <your arch selected>:
>         if <no endian selected>:
>             bb.fatal("You must select an endian")
>}
>
>> 3. Additionally (or instead of 1 and 2) is there a way we can introduce/=
append a
>>     'sanity check' into the bitbake layer model - i.e. inform bitbake to=

>>     run 'our complex sanity' check?
>
>See above.. it will require a custom class.. you can make your tunes/arch =
file =

>include the class using INHERIT +=3D "your_class.bbclass".
>
>> As a continuation from my last email, the following is a list of possibl=
e Microblaze
>> architecture features, which can be supplied in the machine and/or local=
.conf
>> file. Lack of  a hardware feature means the soft version is used.
>>
>> big-endian/little-endian
>> vXXX where XXX is a microblaze version (like v830)
>> barrel-shift
>> multiply-high multiply-low
>> pattern-compare
>> reorder
>> divide-hard
>> fpu-hard fpu-hard-extended
>>
>> Additionally we plan to modify the package name slightly, e.g.
>> microblazeel-v840-bs-ml-div-fe-cmp-re
>> microblazeel-v830-bs-mh
>> microblazeel-v830
>
>I think it's a good idea to have some standard tunes with functionality th=
at is =

>reasonable for a testable demo environment.  If the developers want to tai=
lor it =

>further, they should be able to either by manually selecting the features =
or =

>creating a custom tune file.
>
>This was the intent when the original tune system was introduced.  There w=
as no =

>way we would know every possible combination, so making a way the develope=
r =

>could specify it was the best answer we could come up with.  The TUNE_FEAT=
URES =

>adds the ability for the compiler and other packages to dynamically switch=
 based =

>on whatever the developer has configured.  It can be used for blacklisting=
 code, =

>changing optimizations, etc.
>
>--Mark
>
>> Regards
>> Sipke
>>
>>> On Mar 20, 2013, at 4:44 PM, Khem Raj <mailto:raj.khem@gmail.com> wrote=
:
>>>
>>>
>>> On Mar 19, 2013, at 9:08 PM, Sipke Vriend <sipke.vriend@xilinx.com> wro=
te:
>>>
>>>
>>> Hi all,
>>>
>>> We are seeking some feedback regarding common practices for defining TU=
NE_PKGARCH within Yocto.
>>>
>>>
>>> usually its dictated by architecture, ABI and other processor features.=
 the current tune files have good ways to express the relationships
>>> you would translate the below table into set of TUNE_FEATURES and defin=
e PACKAGE_EXTRA_ARCHS if you need to express compatibility between differen=
t tunes
>>>
>>> Look at arm tunes they are the best examples of complexity
>>>
>>>
>>> We need to define a unique TUNE_PKGARCH for the possible configuration =
of Microblaze architecture.
>>> Our proposal is short unique string for each HW feature which is enable=
d in Microblaze.
>>>
>>> For 'extensive hardware usage' architecture, this would result in somet=
hing like:
>>> mbebv730-bs-mh-div-fb-cmp
>>> mbebv840-bs-mh-div-fb-cmp-re
>>> mbelv840-bs-ml-div-fe-cmp-re
>>> and for architecture with no 'hardware usage':
>>> mbebv730
>>> mbebv840
>>> mbelv840
>>>
>>> The table below details the unique strings and their relation to compil=
er and hardware flags, and a couple of versions of Microblaze architecture.=

>>> (If this table does not show cleanly switch to fixed width font)
>>> -------------------
>>> String Compiler Flag        Hardware Flag         CPU versions
>>>        -mcpu=3DvX.YY.Z                              v7.30.a v8.40.a
>>>
>>> mbel   -mlittle-endian      C_ENDIANNESS (LITTLE) -       o
>>> mbeb   -mbig-endian         C_ENDIANNESS (BIG)    x       o
>>>
>>> bs     -mxl-barrel-shift    C_USE_BARREL          o       o
>>>
>>> ml     -mnoxl-soft-mul      C_USE_HW_MUL (MUL32)  o       o
>>> mh     -mxl-multiply-high   C_USE_HW_MUL (MUL64)  o       o
>>>
>>> div    -mnoxl-soft-div      C_USE_DIV             o       o
>>>
>>> fb     -mhard-float         C_USE_FPU (BASIC)     o       o
>>> fe     -mxl-float-convert   C_USE_FPU (EXTENDED)  o       o
>>> fe     -mxl-float-sqrt      C_USE_FPU (EXTENDED)  o       o
>>>
>>> cmp   -mxl-pattern-compare  C_USE_PCMP_INSTR      o       o
>>>
>>> re    -mxl-reorder          C_USE_REORDER_INSTR   -       o
>>>
>>> Where '-' means unavailable 'x' is only option and 'o' is optional.
>>> -------------------
>>>
>>>
>>>
>>> you can express this with TUNECONFLICTS and TUNEVALID
>>>
>>> and may be create heirarchy of tune files which builds upon common tuni=
ngs.
>>>
>>>
>>> Note the table rows have hardware feature 'groupings', which means only=
 one of =

>>> the strings should be present within the TUNE_PKGARCH. For example the =
Floating Point =

>>> Unit hardware feature can be defined by either fb (for basic mode) or f=
e (for extended mode).
>>>
>>> Regards
>>> Sipke
>>>
>>>
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto
>
>



