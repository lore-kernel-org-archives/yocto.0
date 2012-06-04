Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 477AAE0044A
	for <yocto@yoctoproject.org>; Mon,  4 Jun 2012 01:11:48 -0700 (PDT)
Received: from [172.16.140.132] (172.16.140.132) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.2.247.3; Mon, 4 Jun 2012
	10:11:46 +0200
Message-ID: <4FCC6DD9.50801@enea.com>
Date: Mon, 4 Jun 2012 10:12:09 +0200
From: =?UTF-8?B?RGF2aWQgTnlzdHLDtm0=?= <david.nystrom@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <4FC74DF9.3070401@enea.com>
	<CAMKF1soZ7Ss7s245Y4xtGBypheW5RSDgJMCRAr1FG2xF5cE3-w@mail.gmail.com>
	<4FC89AB1.40706@enea.com>
	<CAEsOVNc8n1yqOxc12osvmUB1+qCAxZFo077WEk4+AnaaN6KCgg@mail.gmail.com>
In-Reply-To: <CAEsOVNc8n1yqOxc12osvmUB1+qCAxZFo077WEk4+AnaaN6KCgg@mail.gmail.com>
X-Originating-IP: [172.16.140.132]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PR and bbappends
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 04 Jun 2012 08:11:49 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

On 06/01/2012 09:32 PM, McClintock Matthew-B29882 wrote:
> On Fri, Jun 1, 2012 at 5:34 AM, David Nystr=C3=B6m<david.nystrom@enea.com=
>  wrote:
>> On 05/31/2012 04:01 PM, Khem Raj wrote:
>>> On Thu, May 31, 2012 at 3:54 AM, David Nystr=C3=B6m<david.nystrom@enea.=
com>
>>>   wrote:
>>>> Hi All,
>>>>
>>>> Is there a good way to get the layer name ?, I want to add
>>>> PR .=3D "+${LAYER_NAME}.0" to my bbappends for clarity and versioning =
when
>>>> having multiple meta layers.
>>>> Where a bbappend:s on package X can reside in one, two or more layers.
>>>>
>>> you could look into  bitbake-layers tool
>>> bitbake-layers show-overlayed will show the recipes overlays
>>> if thats the problem you are trying to solve
>>>
>> Thanks, I was unaware of that script. But not really want I want to do.
>> We are going to have multiple BSP layers sourced from BSP suppliers, and
>> customer specific layers on top of this.
>> When it comes to testing, we want our test-objects(binary packages) to
>> differ depending on which layers appended them,
>> so that we can easily automate a testing procedure, and reduce possible
>> permutations of testobjects.(For unit testing).
>>
>> Also, when you see bash_4.2-r2+meta-fsl-ppc.0+meta-ti.2_ppce500mc.ipk, y=
ou
>> directly see who manipulated the contents
>> of the bash package. And where eventual failures could originate from.
> Some based layers should not modify certain packages. Which
> meta-fsl-ppc is guilty of doing which I would like to cleanup. Changes
> to packages should be moved up to a distro layer I believe?
>
> -M
I don't mind BSP layers modifying packages, as long as its called for.
It would be helpful if BSP maintainers could try to enforce
those bbappends only on machines in the BSP layer itself. i.e.

Bugfix and other similar bbappends on generic stuff could be placed in a
separate directory which can be easily BBMASK:ed.

Best Regards,
David





