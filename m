Return-Path: <john.rama01@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3BD6E00E02; Mon, 19 Dec 2016 02:50:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (john.rama01[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f45.google.com (mail-pg0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1302E00D0C
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 02:50:09 -0800 (PST)
Received: by mail-pg0-f45.google.com with SMTP id p66so60142049pga.2
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 02:50:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=PYP1xr3XnY9IXI3RlV4xzZW07YsLp9pu4xDAhJK4dRM=;
	b=XrTg5oeEHVdQL73PsgRJptkzQuoGvpumS9/xJFWIDrS0j6jj5VLQMY/N+TU7atPVrC
	/trmu8hgdr+iC08K0tVga8gBIwhYU7LtvTfQFclbX/RuwHO/aiK9cqkbGUWXLsGweQ3i
	0zgc4J+N0cqPxTdki73HnjM3sn15qPsx17qXqh3xw9RIN0qIMUkHYv8Ivz8J25mu655Y
	W6gEHXkR/lp2Pt4Ge8VnFwvje1SXaoFWF/OYbCdQdbTqKG880kv9SX/ST5R9qgbubQj6
	NKaFs0EAVE52kFXEveahU9PyiO3MTg7srwB0dzLIigG8806ZxRTBaBqRqrWpZAlJyjtI
	Qf2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=PYP1xr3XnY9IXI3RlV4xzZW07YsLp9pu4xDAhJK4dRM=;
	b=Wmvqky8rZsrN/Qd/54yB6k1BZukWEB9FsEiPZXPv5a/jssEbzzLVYcDjzt5kLkE11o
	3Cnc9BryOqGKSVXYkVVIzCAb7LflrUDO/D0ITcPa430ZjcIfLkzkWIvHgKPj8jCYtwwf
	46nNyI0q/yJlgS4+YmVAyLOMOcgrIooxaj9ca7S9YUTMdX5boWpULozVJ4YEVT8gYmwy
	DfqREW0oPAVlBvP/6ofXSxfEDYD355oJMeLzTw6nCSCjKz8IZJGzWkbKZmDjuk18Gj0x
	AJijW+jwt6ZWsuawXok9+7qQQqihnpa1Nad4FczQdCFTznrzvxXGSTfjy2XsuUC6d9bx
	YoNw==
X-Gm-Message-State: AKaTC03RJm9h1qMXZ7FLwrhftqwGaLOHY2JMZ5Oi64V26DUYI353VN/CRw3kCtyUcOuI+Q==
X-Received: by 10.98.107.136 with SMTP id g130mr14407897pfc.20.1482144608144; 
	Mon, 19 Dec 2016 02:50:08 -0800 (PST)
Received: from [192.168.10.3] (KD118155101045.ppp-bb.dion.ne.jp.
	[118.155.101.45]) by smtp.googlemail.com with ESMTPSA id
	c71sm30616901pga.22.2016.12.19.02.50.06 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Dec 2016 02:50:07 -0800 (PST)
To: yocto@yoctoproject.org
References: <5851F18E.3020401@gmail.com>
	<20161215140913.5vx5ulxby74mp4rz@ad.chargestorm.se>
	<CAF3SDA5yne+Qz=K9dt7_t_1KmUa73qbgVZM96n8OK-gUk8N6zg@mail.gmail.com>
From: John Rama <john.rama01@gmail.com>
Message-ID: <5857BB71.8010206@gmail.com>
Date: Mon, 19 Dec 2016 19:50:25 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <CAF3SDA5yne+Qz=K9dt7_t_1KmUa73qbgVZM96n8OK-gUk8N6zg@mail.gmail.com>
Subject: Re: NFS rootfs: mount: only root can mount proc on /proc
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
X-List-Received-Date: Mon, 19 Dec 2016 10:50:12 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Thanks everyone for the feedback.
I got #3 would be the best way. 

Kind Regards,
John Rama

On 2016/12/16 0:20, Daniel. wrote:
> 2016-12-15 12:09 GMT-02:00 Anders Darander <anders@chargestorm.se>:
>> Hi,
>>
>> * John Rama <john.rama01@gmail.com> [161215 02:58]:
>>
>>> The ideas I can come up with are followings, but those of them are not perfect..
>>> 1. Run the bitbake as root account
>>>   - would not run as root since the all of generated files are root permission even for the log files.
>>
>> Never do this. You've got no idea what bitbake might do to your
>> computer...
>>
>>
>>> 2. Change UID and GID whenever generating new image
>>>   - I guess next build would fall into the trouble because of the owner change.
>>
>> Yes, that'll get you problems later on.
>>
>>> 3. Untar the tar ball under  {YOCTO_BUILD_DIR}//tmp//deploy/image/{TARGET}/*rootfs.tar.bz2 to  the export dir
>>>   - takes additional time.. Not good.
>>
>> This is the right way to do it.
>>
>> If it takes to much time, create a script that runs bitbake and then
>> untars the rootfs.
> 
> I do this all the time and have faced no problems regarding exploding
> the tar. You may want to generate a .tar instead of a .tar.bz2. This
> will safe the CPU from decrompressing so it should be faster...
> 
> Regards,
>>
>> Cheers,
>> Anders
>>
>> --
>> Anders Darander, Senior System Architect
>> ChargeStorm AB / eStorm AB
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 


