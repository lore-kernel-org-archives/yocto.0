Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 456BFE009E4; Fri, 28 Nov 2014 00:40:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 223CEE00972
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 00:40:30 -0800 (PST)
Received: from durham.keylevel.com ([88.97.63.243]:42134
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.84)
	(envelope-from <opensource@keylevel.com>)
	id 1XuH6G-002ztc-Hm; Fri, 28 Nov 2014 08:40:27 +0000
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CANusJLMn_0V4SskWVHQSWqik-KHCsHAh9sf9uBMt52-AfH261g@mail.gmail.com>
Date: Fri, 28 Nov 2014 08:40:25 +0000
Message-Id: <BE5DDCAC-2A40-4A50-BBD4-3D0C74BB7EAB@keylevel.com>
References: <CANusJLONn2JMy-7nLY4EbZsjx3RT+H5brRyqevtq-rxWB=AsSA@mail.gmail.com>
	<D4365608-70BA-4FF1-AF43-7C8334DA93BF@keylevel.com>
	<CANusJLMp8wQXPQrefRpwwNxTh=A0yjAxoS1Svyso=w8fT99Zaw@mail.gmail.com>
	<CANusJLMn_0V4SskWVHQSWqik-KHCsHAh9sf9uBMt52-AfH261g@mail.gmail.com>
To: Chan Kit Yu <yuchankit@gmail.com>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Creating a recipe to create /usr/local
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
X-List-Received-Date: Fri, 28 Nov 2014 08:40:51 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On 28 Nov 2014, at 01:55, Chan Kit Yu <yuchankit@gmail.com> wrote:

> I would also like to add that bitbaking that recipe alone was fine but
> bitbaking my image to include that package failed.

I'm not sure what's going on - can you post the error message (or at =
least the relevant part)?

> On Fri, Nov 28, 2014 at 9:43 AM, Chan Kit Yu <yuchankit@gmail.com> =
wrote:
>> Hi Chris,
>>=20
>> Thank you very much :-)
>> But it was no good. I still get the same error even with the =
"install" use.
>>=20
>> Here I attach the full recipe just in case I did wrong somewhere:
>>=20
>> SUMMARY =3D "Create /usr/local"
>> SECTION =3D "meta-networking"
>> LICENSE =3D "MIT"
>> LIC_FILES_CHKSUM =3D
>> =
"file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302"
>> #INSANE_SKIP_${PN} =3D "installed-vs-shipped"
>>=20
>> do_install(){
>>        install -d  ${D}${prefix}/local/
>> }
>>=20
>> Chan Kit
>>=20
>>=20
>>=20
>> On Fri, Nov 28, 2014 at 5:00 AM, Chris Tapp <opensource@keylevel.com> =
wrote:
>>>=20
>>> On 27 Nov 2014, at 07:09, Chan Kit Yu <yuchankit@gmail.com> wrote:
>>>=20
>>>> Hi all,
>>>>=20
>>>> I'm not sure if emailing this is the most appropriate way and I
>>>> apologize in advance if that's not.
>>>>=20
>>>> I have some scripts that require /usr/local to exist in Yocto and
>>>> therefore I need to a recipe to create /usr/local directory. I =
tried
>>>> to accomplish this with a simple recipe but that proved futile.
>>>>=20
>>>> Although bitbaking that particular recipe was fine, trying to =
include
>>>> that package in local.conf resulted errors and those errors are
>>>> gibberish (it listed all the packages inside the image that I was
>>>> trying to comple) . Here's my simple stupid recipe:
>>>>=20
>>>> SUMMARY=3D "...."
>>>> LICENSE =3D "something...."
>>>> ...
>>>> ...
>>>> INSANE_SKIP_${PN} =3D "installed-vs-shipped"
>>>>=20
>>>> do_install(){
>>>>    mkdir -p ${D}/usr/local
>>>> }
>>>=20
>>> You need to use 'install' rather than mkdir
>>>=20
>>>=20
>>>> Is there a better way (or preferably the canonical way) to do this?
>>>=20
>>> Yes, there are some definitions you can use. In your case it would =
be:
>>>=20
>>>   # Install the 'local' directory to make sure it exists
>>>   install -d ${D}${prefix}/local
>>>=20
>>>   # Install a file to this location
>>>   install -f ${WORKDIR}/myfile ${D}${prefix}/local
>>>=20
>>> The available definitions are shown at the top of =
meta/conf/bitbake.conf in your Poky installation.
>>>=20
>>> --
>>>=20
>>> Chris Tapp
>>> opensource@keylevel.com
>>> www.keylevel.com
>>>=20
>>> ----
>>> You can tell you're getting older when your car insurance gets real =
cheap!
>>>=20

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


