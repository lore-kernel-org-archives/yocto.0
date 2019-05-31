Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D873CE00D67; Fri, 31 May 2019 00:06:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [178.32.97.215 listed in list.dnswl.org]
X-Greylist: delayed 601 seconds by postgrey-1.32 at yocto-www;
	Fri, 31 May 2019 00:06:04 PDT
Received: from 14.mo1.mail-out.ovh.net (14.mo1.mail-out.ovh.net
	[178.32.97.215])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 491F8E00D59
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 00:06:04 -0700 (PDT)
Received: from player728.ha.ovh.net (unknown [10.108.35.131])
	by mo1.mail-out.ovh.net (Postfix) with ESMTP id 17D2517BE18
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 08:49:51 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player728.ha.ovh.net (Postfix) with ESMTPSA id AF7F2642D6D7;
	Fri, 31 May 2019 06:49:49 +0000 (UTC)
To: Belisko Marek <marek.belisko@gmail.com>
References: <CAAfyv34HAOaAaO1cyiQbR8P6mQPp8p3gCT2jM=UyQDGfvV-fYw@mail.gmail.com>
	<CA+2YH7ud9TX=ohQSk8XY=GzpewzFsXo6Z2eBJ=bXacyAsojV9A@mail.gmail.com>
	<CAAfyv34jJ362tu3x_8J1+FuV3zFpchkB8Ft9w-WERrxCNPxbvg@mail.gmail.com>
	<CACKFPN1bgM_DPDRRDxkjekqZ9gQwV9S+1MkHF42z6MvczD81Jg@mail.gmail.com>
	<CAAfyv36-ykHu2Gfet1CeuR8tjNgernF4m01AjnQaOzcFb-BZaw@mail.gmail.com>
	<CACKFPN1q13OJfCcRCP6aLxGOC+cM+2zjwoTLNbkAn5dAS+J_DA@mail.gmail.com>
	<CAAfyv36hNk8CXYEfYASZJ-tOPEUwZ23i1zyDdLbVWk6r9ONkDA@mail.gmail.com>
	<CA+2YH7vhko+jG6UTKHJrXGnv7AsCJP=GT4=trUUgkQ8cNQ5-0Q@mail.gmail.com>
	<CACKFPN3XaUoY532vj1oxTd2Nd3QNsT1Lx6TVQTQEWY2ELXNRRw@mail.gmail.com>
	<CAAfyv35FO2+wBpWTB2muyXGUBG3pgCvcVXon1d0BNuzJ7g9uKA@mail.gmail.com>
	<CACKFPN2Zh9K4fymx+a-Ougw-H=CHKw=KxgimBpe40nOAgCESZg@mail.gmail.com>
	<CAAfyv35B773mjZtK4E7jDCLHrjkRW-JdhEqTPM1pUGbfNz7PcA@mail.gmail.com>
	<fe48d7dc-8421-3230-9043-f433cc4a8e02@3mdeb.com>
	<CAAfyv35Hw7JJshqSV7wx9NtTWdSi=kYEsSvZTaAOAbHJE2v32w@mail.gmail.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
	mQINBFy+vRwBEACs+tNUJ4aKRaJm4BDZxCRBTMRS/ng8XT9yEkH6xnaOroLtYM7Uwb2QqvtN
	uBR6Q6adYF/IcnzOuJeIlVEHloU+GyihHq1U4kJH6qI4FnnjjDhC3g7Tpms+R+yLGI1/lQ4x
	4wA7m1Mm1oNBF7ry+p640/1rj3xxa6UEv387/coVWNP6scxhcff+rYPCkquViKob96VF/XeY
	vav+DrBK96v9VyR3EK2DQjmw2FY/0Q95bOZ/CcfbmhIe4rCcRuZECR5zyvPVdTLtgfVJIteG
	bhHXDLXaKVXtshdUrAPiqY6Cd0alRjEnXi9QNoyx/Vcl8ChpYTLHYqZSfsjpJhnpXSfgS6YH
	iOhViUP5IB0kDvnDl/8fbUiBeUgXZqY4+j3NsL6FkbNch+7zMShj1cZwr0u5dO2MzcmLuYJm
	JwMM1dE9hwRTfPPQfagGfiAcLt6IuK0cVygU7WOtAVbBXgoqTE76qbAc3qmdSiSmVL53AK76
	meVEtt15lIZClulAMMqb23x0D+/bFCgmyywGjpWEyZA4q7ZRZomWxFr9BxKVQAyKGM5d6gQP
	lsFFFCbuDr/gOsrXg6DTUm3amEMwGobbtU/ZWzn8OW8wjNeQnB5efJBhzt/ORihaE+5KXfq5
	CwX9rurlIlUDT/t96VoBkYDeg36M0f7sP+7SVyPi1Qpum66h4wARAQABtC9NYWNpZWogUGlq
	YW5vd3NraSA8bWFjaWVqLnBpamFub3dza2lAM21kZWIuY29tPokCNwQTAQgAIQUCXL69HAIb
	AwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRDxQB0uHMsZ70SVEACI+qknq7ZImBXu7ha3
	mQ6IJwxa9UgDwExbDGdUv6OeHAV6fGoyRsKE7mV1Q1y/coJd4vQlQBTKT7sJFlIGcSmtcjPS
	2OShHy8IiNf1Hy/7juV2Oxs3fv1f9cdLIzLe/oF2uRdKRRM2pgYiz8SeS6Q+MPUmXN1qOpmD
	glvf6ODhAiTj84RaeR5ikmW+9/Ldpt2PAUKT2PkHTQOKTkAkE9w+VTxdo+bmj//QIJtFT41f
	2A7nDESzSo38Jw91jXdNb8f7lOd+RCl1hlf09agbQnKFB1LFdbGsLvYLUjIgvMF+rOOGjeXR
	WOqo8WoowA/FfJYC9Rw+9qqAJ6TvjkxeZrhXxCxgHuA60mWxn/NofbxtZSYuHw6Abwg71Nta
	SJ07qCCaSHlwouYcGgSatg1mmqqOkOPbp0sls54Go1FR3R9yJJR5fBJEl1amiu/ytLCbdEVT
	Y8bE6bcgwBk7mWzNmdmf/EykaNIPbwnPDtLIQ+9rDX34ACIJNbxdMCjmrocKVBTJ9cSOlOuQ
	xlQrrmdFKAnz0exvvE9YACgmlZ0LjzGFwm4U9G5BdJDkAeNQfbRs4CkCPgBpInmMjoelpFTW
	dCDoGilLikNjGfgfCc8ENccw9rZndmbuWKixVMRXU3R/Fxjc0xtJvL5Iz7HLxzvtmN/OBShG
	+iFROS+HC6tAkVYC1rkCDQRcvr0cARAAuQDEynwHXPMV54ZoBfLxURH63RzhIjYlX88HnqEn
	/mNY2FIwUtKS73LLl7ljH4XLFDGZCEFgYttddc9wwJXw9pDvVxLICV3nTKNyBipShj/LOGbf
	B4Pk0qlkKx5KpqSmVFZRM7mwK88tGhAILfu9IBSk/QOS1QRFztB0L2kkU/UslyJqoMD4qJqI
	QGwPf5drfK6c685yFhdDcHcXeNgnTap68wviPLBAhRPMd8qDxMIZMARi+wxb5w6OwDxetSJn
	kNkxCtMpiXbna/hTMIvRqC9VgwBrAINzsJMk4qVqy5CYXNJ/tkHAtTIHISliRkaZYBDdXCo9
	SltNctQGIK1IaqTf8iLq4pehm252NTVw8QYw2usErsHp3fZLNTcJhpr4prq4aIP8ERzbaBb/
	02i6VXAjVS5LNrIqXvkJkOeLfLRC2Fwbj6sdK5maRBGmtkGvhXJYIUlbQchY83dbQziQoMxM
	97ZQO0l5QZRJAIjIyYXx4AaZBxoHXr9jdle54Rj/+Lru54/yDT8zWxzO+PaotQxykgEsDTXv
	T8+kfpGOfd3ojfrKhX+bTym0TT/MVMI5CYqllQ3wF9QZFchj0I//8148Fanezj8sHbGNdNi6
	4mpKGpEBpaLBwySx+o7SaxLvlD4GbqETIwoOxMcpvo7nQKpgHeOEu81+SDc+9KKSFjEAEQEA
	AYkCHwQYAQgACQUCXL69HAIbDAAKCRDxQB0uHMsZ70tNEACA0ZKeJYPUHy+95d20N/i31Oze
	BzbMksMrd/j+qPOgeTjEytxrfeOVQY/gok0sOvhDYoFvLiip0lxrIS/tHZcaH/CQn0jZkaHA
	tGWy4hrb7wKnUEpAAwepYQyxxPy/upliLwmLX7oxdvJIY0A3T/m+8gLzR+OEJB4MfGUypSzT
	N2RY2xTyvXUQYgw/iRHucduCYv0ZNHCzs2CtKeZpcuuozClAjPywwItn0o3YJDdZWShd6WmO
	cOnklq9XjwxTOYWxn2i/NGv/BY7DOALzrFbp66hjMa0Vz7lCGKvSDVDcJLBnNd4Jf69DB1Ie
	pHx5jdJHqk61DZq4yYQBh/MM4oAP7MsUE02rnp+pXqAjJUhFp6+wLP1irRL+SzdYGdda1uio
	lhfvd/icZAEuMUnnaSkA28NjoIVwI5YmdDKuqmFWCA8PSHY8k+LLxuk/AZdV862OYCb1+r7l
	sc1l7tHAPHGGjG3i7Hh89FdAMQ0vSGTkGuOZIAKF7atKf7TVc7M3PPT3RACCXx0ABRA3/FqR
	lX18nOduQOSYS5LGRg4dHv5m9kgu6asXmwDP82sg8ca1RsxXuTLCrIYpGlGkThnzgqWxlC7M
	Ridv3wyyJp8CIgdeYl4oZaSFhz12B+VaM1n8y8Nsg1e9oHHNdEWT1/S5QJRb4Ig3LQOmUhZw
	0f2bcrTp9w==
Message-ID: <3959b399-1868-83fa-1081-10a04381e153@3mdeb.com>
Date: Fri, 31 May 2019 08:49:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAAfyv35Hw7JJshqSV7wx9NtTWdSi=kYEsSvZTaAOAbHJE2v32w@mail.gmail.com>
X-Ovh-Tracer-Id: 14883833821482200745
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrudeftddguddugecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: meta-sunxi maintained?
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
X-List-Received-Date: Fri, 31 May 2019 07:06:05 -0000
X-Groupsio-MsgNum: 45441
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="WlelZa3dGNNPIGrwHOKIKF3t8xyCBSuaX"

--WlelZa3dGNNPIGrwHOKIKF3t8xyCBSuaX
Content-Type: multipart/mixed; boundary="hJyG0ydwWM6ML2DKjiR5PNq5S2CHCRUtM";
 protected-headers="v1"
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Message-ID: <3959b399-1868-83fa-1081-10a04381e153@3mdeb.com>
Subject: Re: [yocto] meta-sunxi maintained?
References: <CAAfyv34HAOaAaO1cyiQbR8P6mQPp8p3gCT2jM=UyQDGfvV-fYw@mail.gmail.com>
 <CA+2YH7ud9TX=ohQSk8XY=GzpewzFsXo6Z2eBJ=bXacyAsojV9A@mail.gmail.com>
 <CAAfyv34jJ362tu3x_8J1+FuV3zFpchkB8Ft9w-WERrxCNPxbvg@mail.gmail.com>
 <CACKFPN1bgM_DPDRRDxkjekqZ9gQwV9S+1MkHF42z6MvczD81Jg@mail.gmail.com>
 <CAAfyv36-ykHu2Gfet1CeuR8tjNgernF4m01AjnQaOzcFb-BZaw@mail.gmail.com>
 <CACKFPN1q13OJfCcRCP6aLxGOC+cM+2zjwoTLNbkAn5dAS+J_DA@mail.gmail.com>
 <CAAfyv36hNk8CXYEfYASZJ-tOPEUwZ23i1zyDdLbVWk6r9ONkDA@mail.gmail.com>
 <CA+2YH7vhko+jG6UTKHJrXGnv7AsCJP=GT4=trUUgkQ8cNQ5-0Q@mail.gmail.com>
 <CACKFPN3XaUoY532vj1oxTd2Nd3QNsT1Lx6TVQTQEWY2ELXNRRw@mail.gmail.com>
 <CAAfyv35FO2+wBpWTB2muyXGUBG3pgCvcVXon1d0BNuzJ7g9uKA@mail.gmail.com>
 <CACKFPN2Zh9K4fymx+a-Ougw-H=CHKw=KxgimBpe40nOAgCESZg@mail.gmail.com>
 <CAAfyv35B773mjZtK4E7jDCLHrjkRW-JdhEqTPM1pUGbfNz7PcA@mail.gmail.com>
 <fe48d7dc-8421-3230-9043-f433cc4a8e02@3mdeb.com>
 <CAAfyv35Hw7JJshqSV7wx9NtTWdSi=kYEsSvZTaAOAbHJE2v32w@mail.gmail.com>
In-Reply-To: <CAAfyv35Hw7JJshqSV7wx9NtTWdSi=kYEsSvZTaAOAbHJE2v32w@mail.gmail.com>

--hJyG0ydwWM6ML2DKjiR5PNq5S2CHCRUtM
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 31.05.2019 08:47, Belisko Marek wrote:
> Hi Maciej,
>
> On Wed, May 29, 2019 at 1:08 PM Maciej Pijanowski
> <maciej.pijanowski@3mdeb.com> wrote:
>>
>> On 29.05.2019 09:39, Belisko Marek wrote:
>>> Hi Dimitris,
>>>
>>> On Wed, May 29, 2019 at 9:03 AM Dimitris Tassopoulos <dimtass@gmail.c=
om> wrote:
>>>> Hi Marek,
>>>>
>>>> that's correct. I have a branch though which I've started to experim=
ent and add support for Mali. I didn't finished because I've tried to do =
this by myself from the scratch and soon I've hit a wall. Nevertheless, I=
've done the same for the rk3399 for nanopi-neo4 and during this process =
I've learned a lot on how to do it with some help from other people from =
the open source scene. The graphics stack was too complicated for me in t=
he beginning.
>>> You can maybe look to meta-sunxi there is sunxi-mali driver +
>>> libraries which will add support for that. When I've set that package=

>>> to PREFERRED_PROVIDER_virtual/gles2 I get issues with compilation
>>> gtk3+ and others. I've spend 2 hours looking and trying yesterday but=

>>> without any success. Also pls look at this communication:
>>> https://github.com/linux-sunxi/meta-sunxi/issues/144 (looks like we
>>> can use opensource drivers + libs later). Thanks.
>> What are you trying to achieve? Which kernel version are you using?
>> Isn't the mali recipe in meta-sunxi quite dated already? Can it work
>> with mainline kernel correctly?
>>
>> I would suggest to try the recent blobs as described in this post:
>> https://bootlin.com/blog/mali-opengl-support-on-allwinner-platforms-wi=
th-mainline-linux/
>>
>> As I've written previously, I have been using the Wayland / Qt with
>> good performance on H3 using the mainline kernel. Is it something you
>> are looking for?
>> You can take a look at my dirty branch - maybe this will be any help:
>> https://github.com/3mdeb/meta-sunxi/tree/weston-with-kms/recipes-graph=
ics/mali
> I've took some patches and now core-image-sato can be build. I have
> just one question for mali kernel module. Does it need some dts
> changes or it will work out of the box (I didn't see any dts changes
> in your branch thus I'm asking).
> Thanks.
Depending on the board. I think since then, most of the baords
already have mali node in the devicetree. Especially all the H3
baords should have it.
>> Unfortunately, I had stopped working on that and presently do not have=
 much
>> time to clean up / get back to it. I can provide some support and / or=
 get
>> back to it if it seems valuable and there is some interest.
>>>> Therefore now that I feel much more confident with it I'm going to r=
e-try and finish with my branch. Armbian does have support, so I'll try t=
o stick to the Armbian backend for maintenance reasons.
>>>>
>>>> I hope that this will be rather easy, because the dri driver should =
already be there, so the only thing I believe is needed is the blobs and =
to create symlinks for the various so libs to that blob.
>>>>
>>>> Anyway, I'll try to do that also. In the meantime I will also wait a=
 bit to see if that merge between those two layers is possible and doable=
, which will help to short the time and effort to do that.
>>>>
>>>> Regards,
>>>> Dimitris
>>> BR,
>>>
>>> marek
>>>> Belisko Marek <marek.belisko@gmail.com> schrieb am Mi., 29. Mai 2019=
, 08:37:
>>>>> Hi Dimitris,
>>>>>
>>>>> On Tue, May 28, 2019 at 1:07 PM Dimitris Tassopoulos <dimtass@gmail=
=2Ecom> wrote:
>>>>>> Hi Enrico,
>>>>>>
>>>>>> I'm totally positive to any possibility for such integration. Pers=
onally, that was the first thing I've tried to do before I start this lay=
er, but I've failed as it got really complex and the overhead was too muc=
h after some point (at least for me). If you have look it's actually a mi=
x of meta-sunxi and armbian, but I had to remove or change many stuff to =
fit the armbian in the layer.
>>>>>>
>>>>>> If you have time to have a look to my layer and you think that suc=
h kind of integration is possible and can be done in a more easy way, the=
n from my side I'm all in.
>>>>>> I believe that re-using the armbian patches is easier as it makes =
maintenance much easier, there are more supported SBCs and also there is =
much more testing involved in armbian and frequent updates fix those bugs=
=2E
>>>>> I did check your layer and it seems that you're not using sunxi-mal=
i
>>>>> for opengl HW acceleration only mesa so SW rendering? Thanks.
>>>>>> Please consider it and I can help as much as I can and my time all=
ows for that integration.
>>>>>>
>>>>>> Regards,
>>>>>> Dimitris
>>>>>>
>>>>>>
>>>>> Marek
>>>>>> On Tue, May 28, 2019 at 12:56 PM Enrico <ebutera@users.sourceforge=
=2Enet> wrote:
>>>>>>> On Tue, May 28, 2019 at 12:06 PM Dimitris Tassopoulos <dimtass@gm=
ail.com> wrote:
>>>>>>>>> I was thinking about this also, too. The only reason is that in=
 meta-sunxi they do a great job and they keep their layer clean, which is=
 great I think. The other layers are just based on the armbian distro, wh=
ich is a lot different, but for me it was much easier to integrate their =
patches, patching scripts and bootloader scripts to a Yocto layer. That w=
ay the only thing I do is that from time to time I just integrate their n=
ew patches and that's it. There's no development in the layer is just re-=
use of the armbian work and a wrapper around it. Therefore, it's hard, ev=
en no doable to put those different architectures together. But definitel=
y that decision also bothered me a lot before I create the layer and I al=
so don't like time to be spend on the same thing from different people. N=
evertheless, from my point of view I couldn't find a way to put those thi=
ngs together. I've tried but I couldn't do it.
>>>>>>>>>
>>>>>>>>> Therefore, it was easier for me to do it the way I've done it. =
And after all, although it doesn't seem right, at the same time this is t=
he beauty of the open source. I think the layers are just incompatible in=
 the way that they are do things. Also it's not bad to have alternatives.=

>>>>>>>>>
>>>>>>>>> Sunxi is a great community and I believe many of the armbian pa=
tches are coming from there. Others not. Of course, having them all toget=
her would be nice. But I don't think that it's possible because of the di=
fferent approach.
>>>>>>> It would be great to integrate all those different layers in
>>>>>>> meta-sunxi,the main problem is that usually they come with their =
own
>>>>>>> bootloader/kernel/etc.... so you have to *maintain* all these
>>>>>>> different configurations.
>>>>>>> Infact in the past i refused to do such things because i didn't h=
ave
>>>>>>> the time to maintain all those different versions, it was just ea=
sier
>>>>>>> to support what was already in mainline uboot/kernel.
>>>>>>>
>>>>>>> But of course if someone wants to do it then it's welcome, the wo=
rst
>>>>>>> thing that can happen is that once an arch gets unmaintained it w=
ill
>>>>>>> be removed.
>>>>>>>
>>>>>>> One thing that can be done anyway is to have those external layer=
s
>>>>>>> linked in the readme, so at least people will know they exist.
>>>>>>>
>>>>>>> Enrico
>> --
>> Maciej Pijanowski
>> Embedded Systems Engineer
>> https://3mdeb.com | @3mdeb_com
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> BR,
>
> marek

--=20
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com



--hJyG0ydwWM6ML2DKjiR5PNq5S2CHCRUtM--

--WlelZa3dGNNPIGrwHOKIKF3t8xyCBSuaX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJc8M6MAAoJEPFAHS4cyxnv1icQAJ74CfUnK/YWpxTnbMStS7Z8
ZxUVs/l3CXInqrPrZuBd++ir3hixTqtoR1hCfyscwV4pzd3MEvzxqjgYEmksxLw7
5ypU17T3G8ZO19eIJ4+OIRuElwpONleuvzS3b0a8z7dzGSYoz5PwY+/QLowY6Gjc
74vmTMbSOTEx8tYrTI1KnBchxxNjVt0rRMsTVqpC2LBe6EO75Jq/JXkhBrRgX79Y
oKNDgryrPSwy1SXvT8A6nBxdAlMWjdTFMitN9hhR2dCUwUo3v4ceDHNPKcpNQZ2w
teyFtSz9AodZk9+lYGpfUc67jkbhMJ7S5HpfQm8VA6pWFijoEAMcD7ncnhMF4GYD
xAak5IIJodF/zPyL5eGX+Oq6fwRQ2yxaaWRGLEcG+mTE76ofLrrAW893a5hQAz0x
PEquqdKKu4n9751fx7K+edZg0kfwWqjwdz8eW37pMO5t6yII3bbYLipY+4Q+Vgdi
BA9jFatbUexSoGMYv4bl+2aBX3D/fosSKuK1PpRkKEiU+nsqw0GEK/GgTlNwZTfL
VKIqHrBVQcXI2qzfIMShUZzRQTo1tB4hL2jsboA8GF1mV6sgWMlOHBNNDNXU6DZZ
gsQ/V+5tQR64EdkwVeXDTDDU522AiYpaIt57eXVaRnapKwmQOB63SHCfQ3APzL5Y
ixaE8a+ujDUvZXojgaVm
=f7uZ
-----END PGP SIGNATURE-----

--WlelZa3dGNNPIGrwHOKIKF3t8xyCBSuaX--
