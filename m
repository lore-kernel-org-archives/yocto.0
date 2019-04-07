Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1469BE00CDF; Sat,  6 Apr 2019 23:15:24 -0700 (PDT)
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
	*      [209.85.215.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3979E00994
	for <yocto@yoctoproject.org>; Sat,  6 Apr 2019 23:15:23 -0700 (PDT)
Received: by mail-pg1-f195.google.com with SMTP id z9so2491356pgu.10
	for <yocto@yoctoproject.org>; Sat, 06 Apr 2019 23:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=XK9ThxiYf+zGrIiRwcGIO7Vnaoo/plEPaBHLF67rCTw=;
	b=fYP550/F445DxP5Sf2plh69gyHGlCLQuWbe4Y28h9NDBQNSjz+1ueavu1ZL3XFEoEO
	8PgEQ/6R7HDvb6KlPQY3DgI1RYcwiZgKL2R+QzhVkPAnANNOpIwJ1uL6DTmKqhdG9Ztx
	IvInDDHhcAnXfiJJ2GbdG3afsnO+0tSLY2V/au08oRLWmzR05OwUMvcM50gN81ieoWQU
	yEFnrudggOqa/Spcz+x5JE6jDmGTOUoGLHCeuYj0xTMcnGUnJZAXCRN5wtuDFa4v4c0u
	r/gzxH6guyrXdSR1Wm1ZeY1z71/T/l82nOkbcm21wLDJeNEZmo4qofW4elxqNwoyQlOG
	6m/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=XK9ThxiYf+zGrIiRwcGIO7Vnaoo/plEPaBHLF67rCTw=;
	b=X4IYaHnyWRp1KgrbeyU7sXn4hH4SVg/SuYfHd85G/Cfo+4wh3ixoRri2qfkUxC8iTj
	BwHWVBwIO2U0Cwj2BRbl1Wj9apoTMU5zf+t7V21+1e5yeMGf9/nc8TR7xBy9GQ1gzMFv
	WPL9dZdM+asxF1bYaEx5vNQ/MV8fCHu5o34nFEWIEaH4zNwHCZkiu+fepnRxOrK/Uvj2
	jFE2NgLnGaxaJ20fsj5dXbO/WoFsopoauWbQQ171hlAqwe/wl0yvya0gnlDE+fZ8rxhw
	rtY/nvvS2ihsIl4dZKtb0BXC21VZhaNeaZKqudhk8lGVj6ugN0OhUtN2MpNqkcHhYUYB
	gjSQ==
X-Gm-Message-State: APjAAAXuTpo1l38mGSpqWhWOZWcdukysxAqjsvI6l4TVNTdFZZFiMlXA
	UnzbutvJy2nfBQhckT9WSiohTDYUstg=
X-Google-Smtp-Source: APXvYqzw9Iq1MaCh186/Z/348ZPjX61JDxaylxJUBwQx1stuL3o4IeT+GtSwCSsPVppqDj68e3bG8g==
X-Received: by 2002:aa7:8083:: with SMTP id v3mr22832635pff.135.1554617722795; 
	Sat, 06 Apr 2019 23:15:22 -0700 (PDT)
Received: from [10.240.241.171] ([116.212.180.67])
	by smtp.gmail.com with ESMTPSA id
	q11sm38553290pgs.94.2019.04.06.23.15.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 06 Apr 2019 23:15:21 -0700 (PDT)
To: Adrian Bunk <bunk@stusta.de>
References: <1554561940-31363-1-git-send-email-akuster808@gmail.com>
	<20190406150140.GA25634@localhost>
	<b0151407-4541-79ae-c05b-04198e4c7c57@gmail.com>
	<20190407051232.GA30195@localhost>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <38978945-6890-3af5-206e-2e01396b099e@gmail.com>
Date: Sun, 7 Apr 2019 11:45:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190407051232.GA30195@localhost>
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
X-List-Received-Date: Sun, 07 Apr 2019 06:15:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 4/7/19 10:42 AM, Adrian Bunk wrote:
> On Sun, Apr 07, 2019 at 01:38:38AM +0530, akuster808 wrote:
>>
>> On 4/6/19 8:31 PM, Adrian Bunk wrote:
>>> On Sat, Apr 06, 2019 at 08:15:40PM +0530, Armin Kuster wrote:
>>>> Add it to the rdepends for that package
>>>>
>>>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>>>> ---
>>>>  recipes-security/clamav/clamav_0.99.4.bb | 2 ++
>>>>  1 file changed, 2 insertions(+)
>>>>
>>>> diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-secu=
rity/clamav/clamav_0.99.4.bb
>>>> index 6219d9e..dbe903f 100644
>>>> --- a/recipes-security/clamav/clamav_0.99.4.bb
>>>> +++ b/recipes-security/clamav/clamav_0.99.4.bb
>>>> @@ -152,3 +152,5 @@ RCONFLICTS_${PN} +=3D "${PN}-systemd"
>>>>  SYSTEMD_SERVICE_${PN} =3D "${BPN}.service"
>>>> =20
>>>>  RDEPENDS_${PN} +=3D "openssl ncurses-libncurses libbz2 ncurses-libt=
info clamav-freshclam clamav-libclamav"
>>>> +
>>>> +RDEPENDS_freshclam =3D "bind"
>>> freshclam depending on a DNS server looks very wrong.
>> got talk to clamav folks then.
>>
>>> What is the actual problem?
>> ClamAV update process started at Sat Apr  6 14:59:25 2019
>> WARNING: Can't query current.cvd.clamav.net
>> WARNING: Invalid DNS reply. Falling back to HTTP mode.
>> ERROR: Can't get information about database.clamav.net: Temporary fail=
ure in name resolution
>> ERROR: Can't download main.cvd from database.clamav.net
>> Giving up on database.clamav.net...
>>
>> because=20
>>
>> Use DNS to verify virus database version. Freshclam uses DNS TXT recor=
ds
>> to verify database and software versions=20
>>
>> therefor I am including bind.
> freshclam needing DNS information makes sense, which means it must be=20
> configured how to access a DNS server.
>
> On the local machine you need only DNS client funtionality,
> just like every user needs for a web browser.

>
> Forcing installation of a DNS server is not the correct solution
> when the actual problem is just a configuration issue on the
> machine where you were trying it.

So I can expect a patch to provide such configuration. I would like to
see how you would solve this.
Maybe an FAQ we can add to the layer for this package?

- armin
>> - Armin
> cu
> Adrian
>



