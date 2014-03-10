Return-Path: <Valentin.Cobelea@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id E4512E00AA3
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 04:20:29 -0700 (PDT)
Received: from localhost.enea.se (192.168.14.202) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.158.1;
	Mon, 10 Mar 2014 12:20:26 +0100
Message-ID: <531D9FFA.7060407@enea.com>
Date: Mon, 10 Mar 2014 13:20:26 +0200
From: Vali Cobelea <valentin.cobelea@enea.com>
Organization: ENEA
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Josef Holzmayr <jholzmayr@the-exact-steps.net>, <yocto@yoctoproject.org>
References: <1941676061.151463.1394449148860.open-xchange@email.1und1.de>
	<531D9C64.4010806@enea.com>
	<58476941.152432.1394449910667.open-xchange@email.1und1.de>
In-Reply-To: <58476941.152432.1394449910667.open-xchange@email.1und1.de>
X-Originating-IP: [192.168.14.202]
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
X-List-Received-Date: Mon, 10 Mar 2014 11:20:33 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

I would advise to use the official documentation of Python :=20
http://docs.python.org/2/library/stdtypes.html .
But if you do want to stick with the stackoverflow advises :
http://stackoverflow.com/questions/2988017/string-comparison-in-python-is-v=
s

The idea behind 'is' would be to have more safety and less crashes when=20
one of the arguments, in your case, is empty (eg None).
This discussion can go over and over, is more a flavor thing: being=20
pythonian or not.


Best regards,
Vali

On 03/10/2014 01:11 PM, Josef Holzmayr wrote:
> Hello Vali,
>
>> Vali Cobelea <valentin.cobelea@enea.com> hat am 10. M=C3=A4rz 2014 um 12=
:05
>> geschrieben:
>>
>> Looks ok at a first look, but my first suggestion would be to start
>> using the "is" operator instead of "=3D=3D" when it comes to comparing s=
trings.
>> Otherwise using your way with "=3D=3D" will crash if any of the variable=
s
>> (those "sys.argv[]") are None (void).
> Thanks for the quick input! However, this is one of the very rare points =
I
> intently did that way, because of the difference in meaning from "=3D=3D"=
 to "is"
> (see
> http://stackoverflow.com/questions/1504717/why-does-comparing-strings-in-=
python-using-either-or-is-sometimes-produce).
> But I'm curious, how would one then properly compare the content of two s=
trings?
> Checking both types first?
>
>> Best regards,
>> Vali
> Greetz
> Josef/Leto
>
>>
>> On 03/10/2014 12:59 PM, Josef Holzmayr wrote:
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
>>> https://github.com/LetoThe2nd/blubber
>>>
>>> Short excerpt from the README:
>>>
>>> But be warned first. Blubber is still in pre-pre-pre-alpha stage (more =
like
>>> a
>>> proof of concept), and has the following defects/bugs/non-features:
>>> - Horribly bad python code (Yes, its really that bad. Blame me, its my =
first
>>> attempt to use that language)
>>> - No error checking whatsoever
>>> - Largely incomplete feature set
>>> - Did I already mention the utterly bad code?
>>> - Only supports git sources so far.
>>>
>>> Despite that, it can already do some magic:
>>> - Getting poky and layers from git, and checking out branches/tags/comm=
its
>>> if
>>> needed
>>> - Accordingly setting up build/conf/bblayers.conf
>>> - Setting up build/conf/local.conf with a set of predefined options
>>> - Running arbitrary commands with proper shell setup (source-ed
>>> poky/oe-init-build-env) for the configured project.
>>>
>>> If anybody has feedback, just scream loudly. Or if anybody knows of a b=
etter
>>> solution making it all obsolete, please also scream. Thanks!
>>>
>>> Leto


