Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 9D60CE008D6
	for <yocto@yoctoproject.org>; Tue, 11 Mar 2014 04:41:34 -0700 (PDT)
Received: from [172.16.141.133] (172.16.141.133) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.158.1;
	Tue, 11 Mar 2014 12:41:30 +0100
Message-ID: <531EF654.4000608@enea.com>
Date: Tue, 11 Mar 2014 12:41:08 +0100
From: =?UTF-8?B?RGF2aWQgTnlzdHLDtm0=?= <david.nystrom@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Josef Holzmayr <jholzmayr@the-exact-steps.net>, <ferlandm@sonatest.com>
References: <1941676061.151463.1394449148860.open-xchange@email.1und1.de>	<20140310155225.GZ15075@marc-desktop>
	<727708959.176973.1394468103205.open-xchange@email.1und1.de>
In-Reply-To: <727708959.176973.1394468103205.open-xchange@email.1und1.de>
X-Originating-IP: [172.16.141.133]
Cc: yocto@yoctoproject.org
Subject: Re: [RFC] Blubber, a tool to set up yocto/poky projects easily
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
X-List-Received-Date: Tue, 11 Mar 2014 11:41:36 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2014-03-10 17:15, Josef Holzmayr wrote:
> Hello Marc,
>
>> Marc Ferland <ferlandm@sonatest.com> hat am 10. M=C3=A4rz 2014 um 16:52
>> geschrieben:
>>
>>
>> On Mon, Mar 10, 2014 at 11:59:08AM +0100, Josef Holzmayr wrote:
>>> Howdy!
>>>
>>> After looking more and more into yocto, one of the main issues for me i=
s the
>>> process to set up a project properly, including all layers and conf opt=
ions.
>>> Especially those which would be needed to set exactly the same way agai=
n and
>>> again every time somebody needs to reproduce a build.
>>>
>>> So I've come up with an idea: a small tool that can handle these things=
 for
>>> me.
>>> And here it is for your enjoyment/use/abuse/comments:
>>>
>> You should have a look at the 'repo' tool from the android
>> community. I think it already does part of what you're trying to do
>> here.
>>
>> The freescale yocto bsp already uses repo:
>> https://github.com/Freescale/fsl-community-bsp-platform
>
> Yes indeed, it is quite a nice tool for doing the first part of the job. =
Thanks
> for pointing out, will look into it more really soon.
>

Perhaps $TEMPLATECONF functionality may be relevant for the second part?


>> Cheers!
>>
>> Marc
>
> Greetz
> Josef/Leto
>


