Received: from smtpcmd15177.aruba.it (smtpcmd15177.aruba.it [62.149.158.102])
 by mx.groups.io with SMTP id smtpd.web08.283.1612801427923768629
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Feb 2021 08:23:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=n55WEas+;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 62.149.158.102, mailfrom: mauro@faresoftware.it)
Received: from [192.168.24.172] ([93.38.119.136])
	by Aruba Outgoing Smtp  with ESMTPSA
	id 99KDlQWixBD2n99KDl5sSg; Mon, 08 Feb 2021 17:23:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1612801426; bh=h/ph3CM3Kji5+M5AU1Tr7JycTfRndVd3ttFOBIhttSg=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=n55WEas+KaGv0SEZgEoC195WI5UwJDHzH9YJwIL1fzYCWg55nd3L9S7pUbJTU/Qjs
	 7E1a9Jrk7YoLj2FNctj8Ypge67R+urZ3SqtJvnr/9bDQPp09Hwk+2fjZL0tUdaEFFg
	 BOmAdhmZ+lkdJjE4TLowsoBn3XApUm3u5ELcPdWJxm7g4xzcDHf+fGiT/yNUXJU8ed
	 ijvPd/xZwOWHpo5hcMmwtlN2cDaD/sEpc54Rx2HuRJvYpo1ucuDT8yy6RiIegbwwD+
	 J1yvA8v01qzRqdpWwlytDos0e92jKopsXPx7skM9Lbdd84eZTzaHg7qr2ZmWDKrKJq
	 qZN2nDZICDWXw==
Subject: Re: [yocto] PREFERRED_VERSION_pn-: which version is selected?
To: Josef Holzmayr <jester@theyoctojester.info>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <dce0933f-55a7-cdab-aec7-3662f130240b@faresoftware.it>
 <CAEt6Nwrtg1PPD8uiiox18v6Tjy7SHZvBv2GndaF9-EaxxoR4jg@mail.gmail.com>
From: "Mauro Ziliani" <mauro@faresoftware.it>
Message-ID: <81aceffd-691a-9a1b-9dc8-5dffeb4e2bf9@faresoftware.it>
Date: Mon, 8 Feb 2021 17:23:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CAEt6Nwrtg1PPD8uiiox18v6Tjy7SHZvBv2GndaF9-EaxxoR4jg@mail.gmail.com>
X-CMAE-Envelope: MS4wfFvDwjw1ObrOK/CN4sFhftYw3bQU2XddUTnnEeuMO0dX3oUqZ0KY2k8L6Ik6Eyr50Ux0YatS6qu/JrbAlgaoomAGlXyuXFoljWXU+ZW6IgcU7ntCFY25
 CzHoj9S9Agdc0y4gItf7is+zgSaBMeGO/P5F9zj27mXS/LsApWv8aJiUIPpSmVYbL2q4Dk5i6E0yL+sZ7rE6hVln5xQVKYLJcNurV6u6HoGjDehKgd2ppAKB
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

My purpose is this.

For image-recipe_1.0.0 I need recip1 version 0.9

For image-recipe_1.1.0 I need recip1 version 1.0


How I can solve this?


Best regards

   MZ


Il 08/02/21 12:09, Josef Holzmayr ha scritto:
> Howdy!
>
> Am Mo., 8. Feb. 2021 um 11:52 Uhr schrieb Mauro Ziliani <mauro@faresoftware.it>:
>> In the image recipe I put
>>
>> image-recipe.bb
>>
>> IMAGE_INSTALL_append := " \
>>       recipe1 \
>> "
>>
>> PREFERRED_VERSION_pn-recipe1 := "0.9"
> As usual, recipe data is local, conf data is global. Setting things
> that should affect other recipes (like PREFERRED_VERSION) does not
> work inside a recipe - and an image recipe is still just a recipe.
> This needs to go into the DISTRO config, usually.
>
> Greetz
