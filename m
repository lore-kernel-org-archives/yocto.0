Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
 by mx.groups.io with SMTP id smtpd.web10.1914.1576269810806933929
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 12:43:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MbhvA/9Q;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.210.48, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-ot1-f48.google.com with SMTP id h20so590446otn.5
        for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2019 12:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=p7e/v8D13WZPgQLOoH87gBDuefrfiIltvQRyugwCs6M=;
        b=MbhvA/9QohmWNAWvIIMoqXK4UZ4KwgeAyV0QXl/G5kD7Wo7VVBgE2Z2QKYhZdNC42S
         LUm9/vVvP7rfWnlfHI+GxkKRUMiCai1G+w7aHat/V+/yPdbrcgoZsE7DcWXbIZpvh+Y+
         +pRGJC5UB9/vUp61/wA6IgJjtYY7Utr5UKvJw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=p7e/v8D13WZPgQLOoH87gBDuefrfiIltvQRyugwCs6M=;
        b=cAeJhhHcO46opOpyAkJDXKc5tpzTj5IE53fGGkKjM4TOohncUJ14DHLIM4P1j9fiBE
         6c96YmXdVoqum1MjMHEQpqOb/rzU3LB8ASeaYKBAlFRZnbOZz4+0kASyOcCAKHl06ynu
         5EPN1+TGF94rZy/jwJThWk0hVYELuSg6oBA0NXostAyGr0ji/IWa7AH1x4vQLhKf0dMX
         p+8kwobh6aRG8rS0ndjqWh10vOgHzd+BF9uR+ZOLaex5epqfyKFf4B8WnkoZdCOGPLQM
         s1gihCJgueAJvA0SDQ17SBMP9aHAtDya2HwyyPnRVhInT2c4FLN8q4DT14AjZD8dc/Bf
         QhdA==
X-Gm-Message-State: APjAAAUqgb5Me4BNj92aQMJGh31gcGc8AVqbM5F0B8IiZZG1Iflo4+Xn
	mU0fryJ9OTksP1xdx9Z+cgEPcnujJSfDOKNovhwqjw==
X-Google-Smtp-Source: APXvYqwuACceYYY8d2tK8kzrL3nqEJf6npD130sfuzGqYZfTqUBe0iYgF1wOzjFoBJJRdidE/aboNaai4pJ9uSr1JrA=
X-Received: by 2002:a9d:518b:: with SMTP id y11mr15976479otg.349.1576269810056;
 Fri, 13 Dec 2019 12:43:30 -0800 (PST)
MIME-Version: 1.0
References: <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
 <48c351bc-7116-e7d7-bad8-9d595eedbcdf@mvista.com> <CAGhBkzzSOPkOW2LHjhh4P0_By3CB9Ev9R+vDa=naB2JEBpCVBA@mail.gmail.com>
 <CADfgfoYzGW5jGKd2ru1wKsomuFbSgOthPhGGRYQ8g7tBavp8zw@mail.gmail.com> <CAGhBkzxH3c_mUtdJF2wYRe3ovdb4TO73T6wYM1vPZZWvAbsw9w@mail.gmail.com>
In-Reply-To: <CAGhBkzxH3c_mUtdJF2wYRe3ovdb4TO73T6wYM1vPZZWvAbsw9w@mail.gmail.com>
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
Date: Fri, 13 Dec 2019 12:43:18 -0800
Message-ID: <CADfgfobNxJMcdBLPoXCFRavt5tA0PshHR+fTKhiZtZZVATx_3g@mail.gmail.com>
Subject: Re: [yocto] Yocto server is down
To: FLoraVLogs <eripflo@gmail.com>
Cc: akuster <akuster@mvista.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Configuration is complete and these services are online.

On Fri, Dec 13, 2019 at 11:55 AM FLoraVLogs <eripflo@gmail.com> wrote:
>
> Ok, thanks for the update :)
>
> On Fri., Dec. 13, 2019, 2:43 p.m. Michael Halstead, <mhalstead@linuxfoundation.org> wrote:
>>
>> Update: Spare hardware is racked and cabled. Data center staff is beginning configuration. I expect service to be restored in 30 to 40 minutes.
>>
>> On Fri, Dec 13, 2019 at 10:53 AM FLoraVLogs <eripflo@gmail.com> wrote:
>>>
>>> Thank you for your response. Kindly keep me posted.
>>>
>>> Regards,
>>> Ripu
>>>
>>> On Fri., Dec. 13, 2019, 12:36 p.m. akuster, <akuster@mvista.com> wrote:
>>>>
>>>>
>>>>
>>>> On 12/13/19 7:46 AM, FLoraVLogs wrote:
>>>>
>>>> Hi,
>>>>
>>>> I went to "http://downloads.yoctoproject.org/" and I get the following message:
>>>>
>>>> Gateway Timeout
>>>>
>>>> Server error - server 198.145.29.63 is unreachable at this moment.
>>>>
>>>> Please retry the request or contact your administrator.
>>>>
>>>> Kindly assist here.
>>>>
>>>>
>>>> Thanks. The LF IT department is aware of  this and working towards a solution.
>>>>
>>>> No ETA.
>>>>
>>>> Regards,
>>>> Armin
>>>>
>>>> Regards,
>>>>
>>>> Ripu
>>>>
>>>>
>>>> -=-=-=-=-=-=-=-=-=-=-=-
>>>> Links: You receive all messages sent to this group.
>>>>
>>>> View/Reply Online (#47662): https://lists.yoctoproject.org/g/yocto/message/47662
>>>> Mute This Topic: https://lists.yoctoproject.org/mt/68533979/1024635
>>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [akuster@mvista.com]
>>>> -=-=-=-=-=-=-=-=-=-=-=-
>>>>
>>>>
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>> Links: You receive all messages sent to this group.
>>>
>>> View/Reply Online (#47670): https://lists.yoctoproject.org/g/yocto/message/47670
>>> Mute This Topic: https://lists.yoctoproject.org/mt/68533979/1003190
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [mhalstead@linuxfoundation.org]
>>> -=-=-=-=-=-=-=-=-=-=-=-
