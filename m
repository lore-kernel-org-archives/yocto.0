Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00B09E0086F; Tue,  9 Dec 2014 07:32:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f169.google.com (mail-yk0-f169.google.com
	[209.85.160.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEE7BE0082F
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 07:32:45 -0800 (PST)
Received: by mail-yk0-f169.google.com with SMTP id 79so355644ykr.0
	for <yocto@yoctoproject.org>; Tue, 09 Dec 2014 07:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=zidPhi7WPz0IRkOTfDrNeERUEvceGZH6nmvBy59F3Lo=;
	b=hCk0MX/nJbhOAIC0I1JqWtldfpuLulKhCeoCzHJVCV0VGcPrNE5DjGbSMNOVWWTQv9
	PpUEdyTcLyFQhDMce9TOVlpjhfPrQFR+7xcqtTEp65293e9MAsNeDmS+LbklSKCTAKgJ
	LNb+8yOsZoFUyqshbXzXXybeoICv/JSslpQMcgZd48CHxlC9P3JcJZ57YvCrD2W5aj+1
	/b7APY4R9XS8le1OcF/etmdS9mbrXxT+y9fjnnQwvlwFsCwFEqs5uk8J4I13l9ndXMt9
	6t1Eu2HQA5tQyh/lLt8yc3SSkd7nRSzJjoDPh0gdj0xsYJ0JVJcQsx6oSdjNHDeVxMlm
	npzQ==
MIME-Version: 1.0
X-Received: by 10.170.129.147 with SMTP id v141mr3990091ykb.110.1418139164764; 
	Tue, 09 Dec 2014 07:32:44 -0800 (PST)
Sender: otavio.salvador@gmail.com
Received: by 10.170.171.132 with HTTP; Tue, 9 Dec 2014 07:32:44 -0800 (PST)
In-Reply-To: <20141209152907.GB18757@axis.com>
References: <1418135572-5521-1-git-send-email-otavio@ossystems.com.br>
	<20141209152907.GB18757@axis.com>
Date: Tue, 9 Dec 2014 13:32:44 -0200
X-Google-Sender-Auth: 7nuzKiWhgNnb6fAX8IROr7tpO2Y
Message-ID: <CAP9ODKqOJs0yh4q0FrKkYKsYQGMhM-X+LU5y=k+0-itumS=jZQ@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Olof Johansson <olof.johansson@axis.com>
Cc: Yocto Project Mailing List <yocto@yoctoproject.org>
Subject: Re: [PATCH v2] distro/poky: Add Debian 8 (Jessie) as sanity tested
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
X-List-Received-Date: Tue, 09 Dec 2014 15:32:49 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Dec 9, 2014 at 1:29 PM, Olof Johansson <olof.johansson@axis.com> wrote:
> On 14-12-09 15:32 +0100, Otavio Salvador wrote:
>> The Debian 8 (codename Jessie) is frozen and has been in use in our
>> machines for some time. It has been working fine and as it is about to
>> be released it is better to whitelist it and remove the ugly warning
>> from build logs.
>>
>> Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
>> ---
>>  meta-yocto/conf/distro/poky.conf | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
>> index 0e66e84..6aff7b9 100644
>> --- a/meta-yocto/conf/distro/poky.conf
>> +++ b/meta-yocto/conf/distro/poky.conf
>> @@ -81,6 +81,7 @@ SANITY_TESTED_DISTROS ?= " \
>>              Fedora-20 \n \
>>              CentOS-6.5 \n \
>>              Debian-7.* \n \
>> +            Debian-GNU-Linux-8 \n \
>
> Where did you get that name from? Bitbake calls it Debian-8.0 for
> me:
>
> | WARNING: Host distribution "Debian-8.0" has not been validated
> | with this version of the build system; you may possibly
> | experience unexpected failures. It is recommended that you use a
> | tested distribution.
>
> I would propose
>
>    Debian-8.* \n
>
> instead. But yeah, I've been running Jessie for some weeks, and I
> support its inclusion at this point (it's in its pre-release
> feature freeze).

This was my first patch and failed on me.

Ahhhh we need lsb-release for it to work.

Richard, can you pick the v1 or want me to send a v3?

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

