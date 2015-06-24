Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED14DE00A21; Wed, 24 Jun 2015 06:48:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 780A8E009D2
	for <yocto@yoctoproject.org>; Wed, 24 Jun 2015 06:48:39 -0700 (PDT)
Received: by igbiq7 with SMTP id iq7so97522317igb.1
	for <yocto@yoctoproject.org>; Wed, 24 Jun 2015 06:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=eEBF4A1FJJVbV2Ep/GeU5FdoSd26GgCVGHKYKn71Ngc=;
	b=rdr7JONGTOu3PxIMyQC+4HViGog3dboA2xQ+ZAli4+rK/JnLgrDtZJwSHi109aBv1o
	Wz11l5n5eN547kt2O44OrLK31dFeW/Fm+atMzRhSZxZMd/V0uay5Q6SSzoPWW1zYEbgV
	i7ApeTWSVMC62mfpxLlJBubrF0JNgfk9yt6wGmpQgo40MDQ5pSOhnot1eMSjGYAD+45z
	Ci8J0sGapyFHxl5+O/eMsNg+W4OjzcsSeOBbByjEcOspx8WUn3S3J5VTMcpUaI2jpW0B
	7HcH7rsvT4B9rOglOqPOSeozj72WXFP4Mf6hEWBxSN/alQG1WAvJ5IuFa6tYQvGVi/fA
	AW4w==
X-Received: by 10.107.7.142 with SMTP id g14mr32927922ioi.21.1435153719404;
	Wed, 24 Jun 2015 06:48:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.34.18 with HTTP; Wed, 24 Jun 2015 06:48:20 -0700 (PDT)
In-Reply-To: <558AACF7.2090107@dynamicdevices.co.uk>
References: <CAAPegz1a+Jf=DaTNnGDnGUrwZiEGCfc7f4F2tPpNvFmF3=M6Jg@mail.gmail.com>
	<558AACF7.2090107@dynamicdevices.co.uk>
From: Chris Morgan <chmorgan@gmail.com>
Date: Wed, 24 Jun 2015 09:48:20 -0400
Message-ID: <CAAPegz07fJ=rL2619-WZW1CUA4WNn6CEO8CT73B8GxESJYSX8Q@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-mono: Issue building 4.0.2.4
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
X-List-Received-Date: Wed, 24 Jun 2015 13:48:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 24, 2015 at 9:13 AM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
>
>
> On 24/06/2015 01:01, Chris Morgan wrote:
>> The double nested output folder looks odd to me but leaving that, it
>> looks like a file is being installed twice. Anyone else seeing this?
>>
>> meta
>> meta-skeleton     =3D
>> "(HEADdetachedat16caaab):16caaabfcc678b03a0cd88aaeac15f9b8d1c3dad"
>> meta-yocto
>> meta-yocto-bsp    =3D
>> "(HEADdetachedat16caaab):16caaabfcc678b03a0cd88aaeac15f9b8d1c3dad"
>> meta-mono         =3D "master:35e8ede514dd35eb3d645d5de22282d0e8204f86"
>> meta-oe
>> meta-webserver    =3D
>> "(HEADdetachedatdf6c7b1):df6c7b1279790d27ebfd58fbdfbac89bde5782ec"
>> meta-ti           =3D
>> "(HEADdetachedatb81014d):b81014dbb5cc39fdfa66af87d18b72eb9eb3c701"
>> meta-nodejs       =3D
>> "(HEADdetachedate724e27):e724e270bc23a14f12d4a0d73869199457a1b925"
>> bitbake-npm       =3D
>> "(HEADdetachedatd88833b):d88833bcf52da7d00e775ca8c2e63ca44cf6ace1"
>> meta-ros          =3D
>> "(HEADdetachedatbdc603b):bdc603b821eae5e1d966ec25e63f6832f6386dc8"
>> meta-rust         =3D
>> "(HEADdetachedat61708ed):61708ed85e76beafdb08b6caf340abeae13bf4b2"
>> meta-qt5          =3D
>> "(HEADdetachedat378dfc2):378dfc20ad0e024412da7f3be22efe04c3421c6d"
>> meta-ruby
>> meta-python
>> meta-networking   =3D
>> "(HEADdetachedatdf6c7b1):df6c7b1279790d27ebfd58fbdfbac89bde5782ec"
>>
>>
>> (output snipped)
>> | /usr/bin/install -c -c -m 644 frameworks/net_4.5.xml
>> /home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/mono-native/4.0=
.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/x86_64-linux/u=
sr/lib/mono/xbuild-frameworks/.NETFramework/v4.5/RedistList/FrameworkList.x=
ml
>> | /usr/bin/install -c -c -m 644
>> targets/Microsoft.WebApplication.targets
>> /home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/mono-native/4.0=
.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/x86_64-linux/u=
sr/lib/mono/xbuild/Microsoft/VisualStudio/v9.0/WebApplications
>> | mkdir -p -- /home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/m=
ono-native/4.0.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/=
x86_64-linux/usr/lib/mono/xbuild/14.0/bin/MSBuild
>> | /usr/bin/install -c -c -m 644
>> targets/Microsoft.Portable.Common.targets
>> /home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/mono-native/4.0=
.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/x86_64-linux/u=
sr/lib/mono/xbuild/Microsoft/Portable/v4.0/Microsoft.Portable.Common.target=
s
>> | /usr/bin/install -c -c -m 644
>> targets/Microsoft.WebApplication.targets
>> /home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/mono-native/4.0=
.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/x86_64-linux/u=
sr/lib/mono/xbuild/Microsoft/VisualStudio/v9.0/WebApplications
>> | /usr/bin/install: cannot create regular file
>> '/home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/mono-native/4.=
0.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/x86_64-linux/=
usr/lib/mono/xbuild-frameworks/.NETFramework/v4.5/RedistList/FrameworkList.=
xml':
>> File exists
>> | Makefile:42: recipe for target 'install-frameworks' failed
>> | make[6]: *** [install-frameworks] Error 1
>> | make[6]: *** Waiting for unfinished jobs....
>
> Hi Chris,
>
> Yes the double nesting does look odd.
>
> I did a test build of 4.0.2.4 here which worked for me. I've also been
> supporting another chap who wanted to build 4.0.2.4 rather than the
> default 3.12.1 build and he also let me know he had it building
> successfully
>
> Clearly there's some kind of issue though. I'm relocating between
> countries at the moment without access to a build system and so it'll be
> 1-2 weeks before I can investigate further myself I'm afraid.
>
> In the meantime do 4.0.1.34  and earlier versions build for you? Does -c
> cleansstate help?
>
> Regards,
>
> Alex
>
>

Tried the cleansstate with 4.0.2.4 before sending the initial email.

Similar issue with 4.0.1.34 but a different file and a different
section of the code:

| /usr/bin/install -c -c -m 644
targets/Microsoft.Portable.Common.targets
/home/cmorgan/projects/yocto-cybex/build/tmp/work/x86_64-linux/mono-native/=
4.0.1.34-r0/image/home/cmorgan/projects/yocto-cybex/build/tmp/sysroots/x86_=
64-linux/usr/lib/mono/xbuild/Microsoft/Portable/v4.5/Microsoft.Portable.Com=
mon.targets
| /usr/bin/install -c -c -m 644
targets/Microsoft.WebApplication.targets
/home/cmorgan/projects/yocto-cybex/build/tmp/work/x86_64-linux/mono-native/=
4.0.1.34-r0/image/home/cmorgan/projects/yocto-cybex/build/tmp/sysroots/x86_=
64-linux/usr/lib/mono/xbuild/Microsoft/VisualStudio/v11.0/WebApplications
| /usr/bin/install -c -c -m 644
targets/Microsoft.WebApplication.targets
/home/cmorgan/projects/yocto-cybex/build/tmp/work/x86_64-linux/mono-native/=
4.0.1.34-r0/image/home/cmorgan/projects/yocto-cybex/build/tmp/sysroots/x86_=
64-linux/usr/lib/mono/xbuild/Microsoft/VisualStudio/v11.0/WebApplications
| /usr/bin/install: cannot create regular file
'/home/cmorgan/projects/yocto-cybex/build/tmp/work/x86_64-linux/mono-native=
/4.0.1.34-r0/image/home/cmorgan/projects/yocto-cybex/build/tmp/sysroots/x86=
_64-linux/usr/lib/mono/xbuild/Microsoft/VisualStudio/v11.0/WebApplications/=
Microsoft.WebApplication.targets':
File exists
| Makefile:70: recipe for target 'install-web-targets' failed
| make[6]: *** [install-web-targets] Error 1
| make[6]: *** Waiting for unfinished jobs....


Its as if mono is installing the same files multiple times.


Chris

