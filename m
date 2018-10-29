Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48E7FE00BC8; Mon, 29 Oct 2018 08:18:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AA97E00BBF
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 08:18:27 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id C31C612B468;
	Mon, 29 Oct 2018 16:18:25 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id Atzll5fkzmc7; Mon, 29 Oct 2018 16:18:25 +0100 (CET)
Received: from emcodev.nl (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id E813012A52B;
	Mon, 29 Oct 2018 16:18:24 +0100 (CET)
MIME-Version: 1.0
Date: Mon, 29 Oct 2018 16:18:24 +0100
From: Bas Mevissen <abuse@basmevissen.nl>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <31158489-66b5-4afd-4c27-75dd489beadd@windriver.com>
References: <CAEhQi8nL7haOo+ogungBB_1hR0rRqNszFkgEHyr_SYE1dq477w@mail.gmail.com>
	<CAEhQi8=Ocn_uVL5a4ri=9T9YKbNb1gcN3Y=cqK1-dATB7qea1A@mail.gmail.com>
	<6f0c2b95-348c-6cb0-dbb0-8a43da878eaa@windriver.com>
	<CAMKF1sq85puYF3C0T9sfNBVFOtHbwd9AkqVrXNYM9caFMN2nOg@mail.gmail.com>
	<7568962f-b428-6eee-2cb5-dc471610c1fe@windriver.com>
	<CAMKF1sq1Lyk_ymMw8Lj9o8+0o_s57kN6EqhpXdHbmyaB_Yys2A@mail.gmail.com>
	<31158489-66b5-4afd-4c27-75dd489beadd@windriver.com>
Message-ID: <31f15aa8b84113eaed970edb2b7b4b14@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
User-Agent: Roundcube Webmail/1.3.7
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [SDK] including kernel devsrc to the SDK failes
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
X-List-Received-Date: Mon, 29 Oct 2018 15:18:29 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

On 2018-10-29 16:14, Bruce Ashfield wrote:
> On 2018-10-29 11:12 AM, Khem Raj wrote:
>> On Mon, Oct 29, 2018 at 6:46 AM Bruce Ashfield
>> <bruce.ashfield@windriver.com> wrote:
>>>=20
>>>=20
>>>=20
>>> On 10/29/2018 9:10 AM, Khem Raj wrote:
>>>> On Fri, Oct 26, 2018 at 6:54 AM Bruce Ashfield
>>>> <bruce.ashfield@windriver.com> wrote:
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> On 10/26/2018 4:28 AM, M=C3=A5ns Zigher wrote:
>>>>>> So it looks like the number of /bin/awk have increased so the=20
>>>>>> patch will
>>>>>> fix one problem but there is more to fix. I have a "workaround"=20
>>>>>> evenYup. That works too (as would a variable from the env), but=20
>>>>>> we'll still
>> need a sed based patch in the short term.
>>>>>> though I am not so sure it is a workaround or not. The problem is=20
>>>>>> fixed
>>>>>> adding to kernel-devsrc.bbappend
>>>>>>=20
>>>>>> do_install_append() {
>>>>>> # This fixes the rpm dependency failure on install of=20
>>>>>> kernel-devsrc
>>>>>> depending on /bin/awk
>>>>>> cd ${D} || true
>>>>>> for i in $(grep -srI "!/bin/awk" | cut -d":" -f1); do
>>>>>> sed -i -e "s#!/bin/awk#!/usr/bin/env awk#g" $i
>>>>>> done
>>>>>> }
>>>>>>=20
>>>>>> The original solution can be found at
>>>>>>=20
>>>>>> https://gerrit.automotivelinux.org/gerrit/gitweb?p=3DAGL/meta-agl.=
git;a=3Dblobdiff;f=3Dmeta-agl-bsp/meta-ti/recipes-kernel/linux/linux-ti-s=
taging_%25.bbappend;h=3D43fa494a26c132b875c177acf0389163d5e34c06;hp=3Db2e=
5431400acef0a5372e5490ac4f464482d4b3b;hb=3D4bfc821810cdee47611c6d3e94d771=
971f51fa75;hpb=3D1cf6b17fd15fde569374c85d4df722784f4e9c67
>>>>>>=20
>>>>>> The best solution might be to add kernel patches but since the=20
>>>>>> number of
>>>>>> /bin/awk have increased I think that this is fine in the kernel=20
>>>>>> universe
>>>>>> but a problem in poky universe. So by adding it to kernel-devsrc=20
>>>>>> it will
>>>>>> make sure that when the kernel get's tainted in the future it will=
=20
>>>>>> not
>>>>>> break the rpm build. This is a "bug" only when using rpm ipk will=20
>>>>>> not
>>>>>> detect it as a problem.
>>>>>=20
>>>>> I'm ok with this type of solution as well, since this is similar
>>>>> to what we've had to do with perf in the past (sed and modify=20
>>>>> versus
>>>>> patching). I can always patch and fix things in linux-yocto, but=20
>>>>> then
>>>>> another other kernel still suffers the issue.
>>>>=20
>>>>=20
>>>> can we fix it in upstream kernel to use something like
>>>> #!/usr/bin/env awk
>>>> may be ?
>>>=20
>>>=20
>>> Yup. That works too (as would a variable from the env), but we'll=20
>>> still
>>> need a sed based patch in the short term.
>>>=20
>>=20
>> short term is fine, but I think this should be fixed in upstream=20
>> kernel.
>=20
> Also agreed. That was my primary suggestion as well, since even with
> that slow pace, we'd have it in all the kernel trees by the next
> Yocto release window.
>=20

I would recommend to keep some kind of automated hot patching in as not=20
all vendor kernels will catch up that quickly, if ever.

-- Bas.

> Bruce
>=20
>>=20
>>> Bruce
>>>=20
>>>>=20
>>>>>=20
>>>>> It would be better if folks with this problem also send patches=20
>>>>> upstream
>>>>> to allow us to vary the location of awk via a variable, since that=20
>>>>> would
>>>>> eventually fix all kernels without needing any modifications .. but=
=20
>>>>> that
>>>>> is a medium term time play, versus doing the sed operation.
>>>>>=20
>>>>> If you have a patch to kernel-devsrc in master, feel free to send=20
>>>>> it
>>>>> and cc' me, and I can pull it into my queue, test and then send it=20
>>>>> in
>>>>> my next pull request.
>>>>>=20
>>>>> Bruce
>>>>>=20
>>>>>>=20
>>>>>> BR
>>>>>> M=C3=A5ns Zigher
>>>>>>=20
>>>>>> Den tors 25 okt. 2018 kl 13:19 skrev M=C3=A5ns Zigher=20
>>>>>> <mans.zigher@gmail.com
>>>>>> <mailto:mans.zigher@gmail.com>>:
>>>>>>=20
>>>>>>       Hi,
>>>>>>=20
>>>>>>       I am trying to add the kernel devsrc to the SDK but I am=20
>>>>>> getting the
>>>>>>       following error
>>>>>>=20
>>>>>>       Problem: conflicting requests
>>>>>>          - nothing provides /bin/awk needed by=20
>>>>>> kernel-devsrc-1.0-r0.imx8mqevk
>>>>>>=20
>>>>>>       I have applied the following patch to try and fix this=20
>>>>>> problem.
>>>>>>=20
>>>>>>      =20
>>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto/commit/?id=3D=
8af11c1cdd8fa08217e702b57cf96e9030db52b2
>>>>>>=20
>>>>>>       I have verified that it was applied and run kernel-devsrc=20
>>>>>> works. The
>>>>>>       error is from do_populate_sdk and I am suspecting that the=20
>>>>>> problem
>>>>>>       is related to me using rpm. I believe rpm might be to smart=20
>>>>>> in this
>>>>>>       case detecting the dependency and resulting dnf from failing=
=20
>>>>>> when
>>>>>>       running the task do_populate_sdk. Any suggestion on how to=20
>>>>>> get
>>>>>>       forward on this error. I would like to run dnf manually to=20
>>>>>> check any
>>>>>>       dependency of the kernel-devsrc rpm package but cannot=20
>>>>>> figure out how.
>>>>>>=20
>>>>>>       BR
>>>>>>       M=C3=A5ns Zigher
>>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>> --
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto


