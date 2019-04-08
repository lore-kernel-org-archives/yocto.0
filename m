Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14080E00C44; Sun,  7 Apr 2019 22:23:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1913E00BB7
	for <yocto@yoctoproject.org>; Sun,  7 Apr 2019 22:23:51 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id e24so6869829pfi.12
	for <yocto@yoctoproject.org>; Sun, 07 Apr 2019 22:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=s+AWnj/pfQXeszRZsbbZ5I6KleJ4s6q/eHc+evLXBcA=;
	b=kX9eb78rPh9VLfmQxHhoqBKy5o/tfPLaRBwbnvrbVbTTGYy+aRJDe4HTLypgpEprP6
	jAh1hP2vuR0ENQ3FzVJfYt+e8ajeFFtGvJGYKeDKGSf3sRvUv6kovkx/2cxUxsm+ERZ2
	Es8Vvg80qB3YYmBn4D7AWeAFCvxCoRc1K6U122YQCyen0kDgu+gcmvAGEZf38y8QGeta
	Xy2uW+68Sg/vtW3rVbQ5LyJOsQ61IcR9azVwvM/WLAH/LICrGqEXUyUL+ew297kpYpTn
	ihEMlTQSTT77ykaAi8TT4hT+vDy+oIzEJN0FvGWwRL0amOKKHx7ri4VVRwMY+jhkkttm
	iVkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=s+AWnj/pfQXeszRZsbbZ5I6KleJ4s6q/eHc+evLXBcA=;
	b=o1xKwk2JFXCCjgsxOyV1LbqwlOpndB731ERLkIhBl1jt6y/o9KstSOK9ZNqomIN+9L
	BnUWX2yDGsoED7yuFV2THG0R5C6cxBkokL1y7ZJ7QKvlEu3tKp9Ng5T9+BZvN5s35gdh
	JlmWQW6Ko8r6hIs8IpaHWn+TrjRaGa8P9kIPhHXlpSbnNctGctkmhebQORkqplQeEkuo
	M/OH2x20NEWdjS9UIrQfuQbXPi0Kfl+zl2GuD2RKmC008Nf5UOC9+TNwbtZTb5QomtPE
	9jTmlVCsXGhollQgbeuf3gdQewKYWFP16QJE5bSg8Vc4GXq0VQF2bxhy068yv/Pdaz/P
	y4AA==
X-Gm-Message-State: APjAAAUaJgcjSUOvvwh0bJ4yTI00kU5sy5cjW+Z2FYHpZOXFP3/1k/ZD
	e548P4KELPf+no4DtSmKwVBzE+5y
X-Google-Smtp-Source: APXvYqzrBV4F21XXa3PfiYMV0d/58iUU/8vsBwaqP4i6a/9vYQowtAaEc2pi3CC59F0X9spwAhfvcg==
X-Received: by 2002:aa7:8284:: with SMTP id s4mr28246212pfm.235.1554701030949; 
	Sun, 07 Apr 2019 22:23:50 -0700 (PDT)
Received: from [10.80.244.24] ([182.72.92.62])
	by smtp.gmail.com with ESMTPSA id
	k124sm50448361pgc.65.2019.04.07.22.23.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 07 Apr 2019 22:23:50 -0700 (PDT)
To: Adrian Bunk <bunk@stusta.de>
References: <1554561940-31363-1-git-send-email-akuster808@gmail.com>
	<20190406150140.GA25634@localhost>
	<b0151407-4541-79ae-c05b-04198e4c7c57@gmail.com>
	<20190407051232.GA30195@localhost>
	<38978945-6890-3af5-206e-2e01396b099e@gmail.com>
	<20190407071601.GB30195@localhost>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <24805e8b-bd1e-395c-80f9-e21064ac3da1@gmail.com>
Date: Mon, 8 Apr 2019 10:53:46 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190407071601.GB30195@localhost>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] clamav: freshclam need bind to run
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
X-List-Received-Date: Mon, 08 Apr 2019 05:23:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 4/7/19 12:46 PM, Adrian Bunk wrote:
> On Sun, Apr 07, 2019 at 11:45:18AM +0530, akuster808 wrote:
>>
>> On 4/7/19 10:42 AM, Adrian Bunk wrote:
>>> On Sun, Apr 07, 2019 at 01:38:38AM +0530, akuster808 wrote:
>>>> On 4/6/19 8:31 PM, Adrian Bunk wrote:
>>>>> On Sat, Apr 06, 2019 at 08:15:40PM +0530, Armin Kuster wrote:
>>>>>> Add it to the rdepends for that package
>>>>>>
>>>>>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>>>>>> ---
>>>>>>  recipes-security/clamav/clamav_0.99.4.bb | 2 ++
>>>>>>  1 file changed, 2 insertions(+)
>>>>>>
>>>>>> diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-se=
curity/clamav/clamav_0.99.4.bb
>>>>>> index 6219d9e..dbe903f 100644
>>>>>> --- a/recipes-security/clamav/clamav_0.99.4.bb
>>>>>> +++ b/recipes-security/clamav/clamav_0.99.4.bb
>>>>>> @@ -152,3 +152,5 @@ RCONFLICTS_${PN} +=3D "${PN}-systemd"
>>>>>>  SYSTEMD_SERVICE_${PN} =3D "${BPN}.service"
>>>>>> =20
>>>>>>  RDEPENDS_${PN} +=3D "openssl ncurses-libncurses libbz2 ncurses-li=
btinfo clamav-freshclam clamav-libclamav"
>>>>>> +
>>>>>> +RDEPENDS_freshclam =3D "bind"
>>>>> freshclam depending on a DNS server looks very wrong.
>>>> got talk to clamav folks then.
>>>>
>>>>> What is the actual problem?
>>>> ClamAV update process started at Sat Apr  6 14:59:25 2019
>>>> WARNING: Can't query current.cvd.clamav.net
>>>> WARNING: Invalid DNS reply. Falling back to HTTP mode.
>>>> ERROR: Can't get information about database.clamav.net: Temporary fa=
ilure in name resolution
>>>> ERROR: Can't download main.cvd from database.clamav.net
>>>> Giving up on database.clamav.net...
>>>>
>>>> because=20
>>>>
>>>> Use DNS to verify virus database version. Freshclam uses DNS TXT rec=
ords
>>>> to verify database and software versions=20
>>>>
>>>> therefor I am including bind.
>>> freshclam needing DNS information makes sense, which means it must be=
=20
>>> configured how to access a DNS server.
>>>
>>> On the local machine you need only DNS client funtionality,
>>> just like every user needs for a web browser.
>>> Forcing installation of a DNS server is not the correct solution
>>> when the actual problem is just a configuration issue on the
>>> machine where you were trying it.
>> So I can expect a patch to provide such configuration. I would like to=

>> see how you would solve this.
> How are you configuring networking on your device?

I figured it out.
>
>> Maybe an FAQ we can add to the layer for this package?
> From the error message you gave it is not obvious that there is any
> problem that would be specific to this package.
>
> I would guess that DNS configuration is missing or incorrect on your=20
> device, and that "ping www.google.com" would also fail with a name=20
> resolution error.

The runtime test I added creates a /etc/resolve.conf , that allows me to
ping to the outside but I missed including the local ip ( 127.)=C2=A0=C2=A0=
 I am
running this two systems to verify this my flurry of changes. One system
in at home on real hardware and other in qemu my laptop while I am
traveling. With that being said, I can drop the bind requirement and I
need to update the runtime test.

I do appreciate the reviews , questions and push back.=C2=A0

Kind regards,
Armin
>
>> - armin
> cu
> Adrian
>



