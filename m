Return-Path: <jean-paul.saman@m2x.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A43CC44501
	for <webhook@archiver.kernel.org>; Sun, 12 Jul 2026 15:07:22 +0000 (UTC)
Received: from www.m2x.eu (www.m2x.eu [217.21.240.105])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.15438.1783868839302096983
 for <yocto@lists.yoctoproject.org>;
 Sun, 12 Jul 2026 08:07:19 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: m2x.nl, ip: 217.21.240.105, mailfrom: jean-paul.saman@m2x.nl)
Received: from [192.168.0.5] (82-168-56-144.fixed.kpn.net [82.168.56.144])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by www.m2x.eu (Postfix) with ESMTPSA id D791E61CE;
	Sun, 12 Jul 2026 17:07:16 +0200 (CEST)
Message-ID: <604c19ed-bbfa-467a-b5ba-640af60558e8@m2x.nl>
Date: Sun, 12 Jul 2026 17:07:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: jean-paul.saman@m2x.nl
Subject: Re: [yocto] Howto solve pseudo abort issue? #bitbake #fakeroot #linux
 #raspberrypi #scarthgap
To: Yoann Congal <yoann.congal@smile.fr>, yocto@lists.yoctoproject.org
References: <OJgj.1783672463587758202.vk0n@lists.yoctoproject.org>
 <DJURCP56FOJD.V88LBYAABFID@smile.fr>
Content-Language: en-US
From: Jean-Paul Saman <jean-paul.saman@m2x.nl>
Autocrypt: addr=jean-paul.saman@m2x.nl; keydata=
 xsDiBES/Ug0RBADAmAI3ZFGeEMHk8GcibKRhO9lmwHUdi7EOn3+se7OISDd1cG4kMaDOuNKB
 UnGiVaIzrRgGgev38XfSrfw8XYCgvfIEMHhwh+zfXek8szvh/biomLVrhNRcYVglZjS8ujS0
 toK9bSqtclny82vVp5aiMNVEtwWlC7yFv2f677d9rwCgsl1pT88Pu0LTFZTnlAodhkS8ew0D
 /j0lpwVA0boqVDz1xmvMgd+uVeiEb+3WxDwTQmOPKoacDdUHUDAKsJego5ecXMJ+p5AnryBQ
 NK080tdtTCHItSLy0VkmatJCkz1oOmMf5+Lu9W03D4WmFyGt8YRcy0PUXE5xjMJRLvzdu+Pz
 yPlUPK+7dNp1nQcPIW76FjZyISQxBACFnFq5/qssV0b31+glG1fYnfYGcEKxyx/+w8WJVZz7
 iUe1TatiN3n9477THT/VbCWTvlEiyyO1TAlC/9KwE8j8MPacjU5kss6ycYglBXIkBkekG9+L
 il4tVrhOS8aiSaYrIIH3Wl0BhzTQMAkMYrTxcjVSe3nnoaw9aUXgdF3XRs1JSmVhbi1QYXVs
 IFNhbWFuIChNdWx0aW1lZGlhIE5ldHdvcmtpbmcgRW1iZWRkZWQpIDxqZWFuLXBhdWwuc2Ft
 YW5AbTJ4Lm5sPsJgBBMRAgAgBQJEv1INAhsDBgsJCAcDAgQVAggDBBYCAwECHgECF4AACgkQ
 a1fBOulIyvBgwwCfUSDWn5dISmxkslIy5siHqGhepRMAn10EmrS2W0bak1l7Irni8gqfmsGQ
 zsFNBES/UhMQCAC1djDBrwWyl90gVgxsn9pXWtXDheA4JNP2Dq2/haOOy+a6WNUllCg4MMw9
 IZvfOTby8D2i7hsJopu5Yq8/V699dqW7EnpUaWbluy+28k0wV19FNQBmbadxPLP0+9XrjSCF
 AD4QTcEpm/j9DfSFbCv5WsiL0bjc5CF1f+yfVtt6uJN4WOYb4Ih0y/I7B3aysNdHilfn4trQ
 eylmeZOtoJU8tfSz5sM55C3wuNDO2YAwZm7zhFgUJDnnNYrA2D5z9/b3bOZMI4YY8AUUTnVP
 weEUZj9ZM4exMGlylQY2xUduO1SeZrbq2D5oe9gTzybHb3CDwTFBR0vEmdfm7OvcI9CPAAMF
 CACnuhHnwbaiA5OyEhTtSCEXHUv8oXexyJYPvofKKhQtYN9cKwj6W3D8ldkf+TY3VFn8bv78
 aIaGTwjOKd3t/o2MkUQ3VjtBm8dMrK04DfBo+aSkH6zNEPvQgEw27vvsXMmVjpeH9M083dkC
 K7VTsD1DSY41gR43p60FsE47DfaeLNJiPW0O07+R34Hl9Q/W+vjMfyYFjoTk/17j4ThuTKQC
 v4y2mvMJuAgujDonFffCxvowapFeRBnboxEWSAZlZWkbGw5bxIw7wsiMoMLKwn1iyYyDht0K
 iCOEXvVucYL5gAyFLJGBanh0eYwGI0DTUNYn74Rmp5ZH/1vm2BiHNJ3gwkkEGBECAAkFAkS/
 UhMCGwwACgkQa1fBOulIyvBQ0gCfT8PpeZzqxakUY1Qa+6EuGXS8WfcAoJdjxu0D3LByC7jq
 4z91LUP9bdQ0
Organization: M2X BV
In-Reply-To: <DJURCP56FOJD.V88LBYAABFID@smile.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 12 Jul 2026 15:07:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66638

On 7/10/26 10:45, Yoann Congal wrote:
> On Fri Jul 10, 2026 at 10:34 AM CEST, Jean-Paul Saman via lists.yoctopr=
oject.org wrote:
>> The problem:
>>
>> Our yocto build system suddenly started failing on =E2=80=98do_package=
=E2=80=99 due to a pseudo abort issue. Even packages that have not been c=
hanged recently. The same happened on my local development system.
>>
>> Searching in Yocto discussions or other sources did not provide a solu=
tion that works in our case. I tried the following solutions (NOTE: this =
package was not changed when the problem started):
>>
>> 1. bitbake -c cleanall miniflex-generate-salt && bitbake miniflex-gene=
rate-salt
>> 2. bitbake -c cleansstate miniflex-generate-salt && bitbake miniflex-g=
enerate-salt
>> 3. examine with bitbake -c devshell miniflex-generate-salt
>> 4. set parallel jobs to '-j 1=E2=80=99 in conf/local.conf
>> 5. remove build/tmp and rebuild entire distribution
>>
>> The logfile suggests there is a path mismatch.
>>
>> I have =C2=A02 questions basically:
>>
>> 1. What I do not understand is how this can happen, suddenly without a=
 clear (at least for me) cause?
>> 2. How to solve this situation?
>>
>> ---
> [...]
>> tar: ./usr/share/licenses/miniflex-generate-salt: Cannot mkdir: No suc=
h file or directory
>> got *at() syscall for unknown directory, fd 4
>> unknown base path for fd 4, path share
>> couldn't allocate absolute path for 'share'.
>> got *at() syscall for unknown directory, fd 4
>> unknown base path for fd 4, path share
>> couldn't allocate absolute path for 'share'.
>> tar: ./usr/share: Cannot mkdir: Bad address
>> tar: ./usr/share/licenses/miniflex-generate-salt/xxxxx-LICENSE: Cannot=
 open: No such file or directory
>> tar: Exiting with failure status due to previous errors
>=20
> Hello,
>=20
> That looks like https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D161=
43
> I think you just need to upgrade OE-core/poky on a more recent
> scarthgap. Specifically, you want pseudo >=3D 1.9.4.
>=20
> For the explanation, Ubuntu based-distro recently got a tar upgrade tha=
t
> add a new syscall that pseudo needs to handle. Some user worked around
> that by changing their host tar version.
>=20
> Does that helps?

Yes, it helps. Thanks for the swift reply.

I downgraded tar to the version (1.34+dsfg-1build3) of the official=20
release image and Yocto builds our image correctly now. Next version=20
I'll upgrade scarthgap to a more recent version, but for now the quick=20
fix is preferred.

--=20

Kind greetings,

       Jean-Paul Saman


