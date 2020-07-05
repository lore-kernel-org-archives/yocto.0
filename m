Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web12.45141.1593983790390651392
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jul 2020 14:16:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tYSArIVC;
 spf=pass (domain: gmail.com, ip: 209.85.128.51, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wm1-f51.google.com with SMTP id j18so37128605wmi.3
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jul 2020 14:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=m0zMs+XjieNbgrEVLkraBAt6yXKqHHxutgXrBtAX2HY=;
        b=tYSArIVC+Os5mrSEYdt90zjCXIRb7fvV2dHAS384R+mZeTmt4MRTAkKrUoWxCqWV1o
         UeRx5viZOEXUw7gdFDA+Qbj0Z1nNljkFaG514rH9kO7OBgSZRMNT+X8xbHsTTGm+/gFG
         pDv1HySIC40yc0Kh1WrtU06kucmF9Nw9jXP3UOrMf8n+/btVhGghUYfgXqIMlqfqm7mt
         tv4RtgMC6cjZFtLev6fJjpbWfPPgnb9LbeRZh9OIFGquBesJtg08akOaQlb4pbA/NQ9i
         8wx80gI5iUzDX8Fo7XH+tT4g166fpYwTmEUf9iipRy0JA7lepemJsLSNFc5k9LWvlEP0
         8piw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=m0zMs+XjieNbgrEVLkraBAt6yXKqHHxutgXrBtAX2HY=;
        b=ujAQrnKFi9PvfkqjGvKmB0wulPmMwsxJvA4/Yo5qVuxnaSfE3xO8tYteENsm++Zq2+
         otAsHYQr01CGyojjGYBdrcQSgz2w8jjDOqV0QIrbxJKHbRT2GB1F36DVa9HylKOrWRF0
         aSHOl1IkNAcOMqcwOkKBv3WJFji4Rl6jaX0vjXXmmLlhfcbXIVAHN5/WhBN1iklOo5lf
         dTPEVXRZzGilhQ8ZVVd0iC3tjlDsRuUtFuJNafl1iFyH6k2veCVuUup75/A9HeHD7/in
         +E6ZigQnz4aXQ2gWTVM3VYGi9K9Rb/vNNDKsiZti8AxsGFzMtg5hEkQDVNgXwiNhQKvQ
         eyNA==
X-Gm-Message-State: AOAM53256wEG9GEY2kKAlr4b2GPoGiRBZWIcer91fDVjSm6lyyD6oyYA
	yPSdxFp2GsR89nuWz13VgkHbBg3k
X-Google-Smtp-Source: ABdhPJwcP6WYV04jmaSSeV3vr2IjUgogV1YOfZWp3AMX86kcvVy/GfNARjexb+GJmkg/elPW4NJkjw==
X-Received: by 2002:a7b:c94a:: with SMTP id i10mr23157709wml.183.1593983788799;
        Sun, 05 Jul 2020 14:16:28 -0700 (PDT)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-86-138-91.home.otenet.gr. [2.86.138.91])
        by smtp.gmail.com with ESMTPSA id m9sm20697606wml.45.2020.07.05.14.16.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Jul 2020 14:16:28 -0700 (PDT)
Subject: Re: [yocto] how does "bitbake meta-toolchain" map to a particular "image" when generating SDK?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, yocto@lists.yoctoproject.org
References: <20200705065053.Horde.NJDQhlsuiJNUkmbq-wIigE6@crashcourse.ca>
 <CAAnfSTu2mMMifGdTc0OtGfN8wXNQKddnZ9udTY0gbV0fQAvRRw@mail.gmail.com>
 <20200705152404.Horde.B3EKfbXBj697OSUtR4mf4S6@crashcourse.ca>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <6aa46c26-16a6-d674-3338-a5304ef76c56@gmail.com>
Date: Mon, 6 Jul 2020 00:16:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200705152404.Horde.B3EKfbXBj697OSUtR4mf4S6@crashcourse.ca>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi

My comments are in-line

On 05/07/2020 22:24, Robert P. J. Day wrote:
> 
>    i'd assumed as much, but is there a reason that the meta-toolchain 
> target
> is not mentioned at all in the SDK manual? Would that not be the right
> place to mention it, even briefly?

I guess it depends on the definition of the SDK vs. just the toolchain.

With a toolchain alone not much can be done. You need a sysroot as well 
to build against.

The SDK is built against some software stack and actually contains more 
headers and libs than what shows up in the image.

SDK is toolchain + sysroot

meta-toolchain buils only the toolchain. You'll need to install the 
sysroot manually somehow.

> 
> rday
> 
> 
