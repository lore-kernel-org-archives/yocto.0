Return-Path: <juan.casafranca@kdab.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48F08E00857; Sat,  1 Jul 2017 08:39:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [176.9.126.58 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.kdab.com (mail.kdab.com [176.9.126.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF1CBE00857
	for <yocto@yoctoproject.org>; Sat,  1 Jul 2017 08:39:51 -0700 (PDT)
X-Virus-Scanned: amavisd-new at kdab.com
To: yocto@yoctoproject.org
References: <8fd08db1-eebb-f7ce-b258-cafa45891113@kdab.com>
	<053b4021-6d15-ccdb-ee77-13d244a99801@gmail.com>
From: =?UTF-8?Q?Juan_Jos=c3=a9_Casafranca?= <juan.casafranca@kdab.com>
Message-ID: <2839ff95-1ff1-5d4c-e28f-db282ecfdf48@kdab.com>
Date: Sat, 1 Jul 2017 17:40:09 +0200
MIME-Version: 1.0
In-Reply-To: <053b4021-6d15-ccdb-ee77-13d244a99801@gmail.com>
Subject: Re: Raspberrypi3 with Kodi (as an exercise)
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
X-List-Received-Date: Sat, 01 Jul 2017 15:39:55 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Ive just tried adding X11 as you suggested (opengl was already added) 
but still not working. Something strange I'm finding is that there isn't 
any libGL.so in /usr/lib (in the rpi device). There is a libGLESv2.

I'm not sure what I'm doing wrong. I have also tried to add Qt to the 
image to see if I can launch a qml example, but it's not even generating 
the image. It complains it cannot find any opengl or gles implementation :S


On 01/07/17 17:08, Khem Raj wrote:
> On 7/1/17 4:10 AM, Juan José Casafranca wrote:
>> Hi everybody,
>>
>> I'm completely new to the Yocto project, just started playing with it
>> and my rpi3 two days ago.
>>
>> As an exercise to learn how Yocto works, I'm trying to build a rpi image
>> which can launch kodi.
>>
>> Right now I'm able of building an image which contains kodi,but when I
>> try to launch it, it fails. It says that it cannot create the GUI. (I
>> have tried kodi, kodi --standalone and kodi-standadlone, same result)
>>
> do you have x11 and opengl in your DISTRO_FEATURES ? you can check it
> with bitbake -e kodi | grep -e "^DISTRO_FEATURES="
>
>
>> In order to build the image, I had to add
>>
>> MACHINE_FEATURES += "vc4graphics" so it gets mesa as egl, gl and opengl
>> provider.
>>
> it should work with both userland and vc4graphics.
>
>
>> If I dont add that feature, kodi complains about not finding egl during
>> configuration. I dont understand why it complains, since userland (the
>> default) its a egl provider (as it says in the recipe at least, probably
>> I am understanding something incorrectly).
>>
>> Could you please guide me a little bit with this? As I said, it's my
>> first time playing with embedded devices and with yocto, so some
>> explanations would be nice :-)
> This is good section to work on in OE in general.
>
>>
>> Thanks!
>>
>


