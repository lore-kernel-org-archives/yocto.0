Return-Path: <raj.khem@gmail.com>
Received: from mail-gw0-f41.google.com (mail-gw0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D83C6E004D1
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 07:38:00 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gwaa12 with SMTP id a12so2785731gwa.28
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 07:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=mRtid+wIO8keC7rWiSHQokVYJhOWZFlpoqOEzc9GhdY=;
	b=GWCdVkBPIAUhzZ1A1hbD1nyY6e2rZFXUuyI8DzzDUrLorLtzV7JHKeh4DQeOpgyck8
	6yjBeSNv4xizRAc531fh5wFGOJMHbvEkOUIi9IS7PYIJ/JO0JPCroyF2FRs5abNwGTXQ
	ZR8HKf8eXBMB0/PfZHcsojZX6O/MKqtPfvswk=
Received: by 10.68.16.132 with SMTP id g4mr1473848pbd.168.1316615879498; Wed,
	21 Sep 2011 07:37:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.42.98 with HTTP; Wed, 21 Sep 2011 07:37:29 -0700 (PDT)
In-Reply-To: <4E79DFB0.3060405@windriver.com>
References: <1316584904.17177.53.camel@localhost.localdomain>
	<4E79DFB0.3060405@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 21 Sep 2011 07:37:29 -0700
Message-ID: <CAMKF1sqW2u5gCEg63hmSJ_94RCQVSidHFH+Kf_rGfT5vTz6jtQ@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: why the version of "linux-libc-headers-yocto_git" stay on 2.6.37 ?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Sep 2011 14:38:01 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 21, 2011 at 5:59 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 11-09-21 02:01 AM, Ni Qingliang wrote:
>>
>> the linux-yocto was updated to 3.0.4, but why linux-libc-headers still
>> 2.6.37?
>
> They should match. In the past Khem has done the update on the
> header packages, since there are nearly as many toolchain issues
> with the headers as with the kernel.
>
> I thought Khem was down as the maintainer for the libc-headers
> package, but in my coffee deprived state I can't find evidence
> of that.
>
> I can bump the package, unless Khem wants to, or has different
> plans.

Please go ahead. I dont have cached copy of 3.x sources here and site
it still down
thats why I am restricted.

