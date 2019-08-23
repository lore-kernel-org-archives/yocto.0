Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8839FE00D98; Thu, 22 Aug 2019 21:13:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C7D8E00C9C
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 21:13:52 -0700 (PDT)
Received: by mail-io1-f67.google.com with SMTP id 18so16961184ioe.10
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 21:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=u3E208rsnq9SbGfHhnYAnQRjo4mYNwPqMG7SV+A9sek=;
	b=dnto9+kJgA1LucDs07WUvcC4BCi3SXMwwmYYbuuBVTYslq1ctl/pS00sDJFoAqKk5c
	fi4Yp43Hz+wQwc17kaUFykE7cr+CRgDEMsCQL1tgBp5XHPyourIaNi75QmLtGZ6keHpv
	iMxrdy0P290VAMdAPRqPajgV2qzMQAOTYFM03VmLqM07ftweDvq0qn3CXiVaAdw3yAvz
	53OSTwJlaUJ09YSp1YeIrut4ImyqQtUhVP8bJeq+uJsRcrCOJ7YpS42uldoG/NoGZ45w
	BSzWfecSUO5I8bwSwTgyQOCX85bkm2D8PH0+y9cbpsrZEdZpZ51t8G8vNOrwaiH2f12h
	ATxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=u3E208rsnq9SbGfHhnYAnQRjo4mYNwPqMG7SV+A9sek=;
	b=qq4GknPgUQOYW3FIt4WmCNeEVsp+ZmJaTKr6VATtbXJFEK8dtGiOqS+SSTGKvORAmU
	r4Dx0fMEtFJbd79MkGbxn9yB6laqIyiPYYde1WXA5BxN8hD8ALMN2EWUckuUnCEQqkBV
	pRpB6vgfoD/WB/RRvCWReV6nQQW4P4mV3ZOlKM+8oIV0fqS0zTbV4+K8TFFfJZWN8Qwb
	lXDlb1RuP+byslRQ8V2jqs2vhvFQsaoZdvMucQpTabP764oEz+PH3IlnCr2s1eIG6jhp
	lCQFV9dZDFIjaslIJjjYFZlB6PZ471zritNCNVJorkjkJQtC3xIpRr5mQg2WXhSif8y4
	kSrA==
X-Gm-Message-State: APjAAAXRUIo0VUNRjzbKEXPemTDuNly/W1w0ft3jAMRPn/yre0rHWvN6
	sPw7I5koTRJp8LJWTLs8RtSoNvz8r7kNLqMUovHQfh1I
X-Google-Smtp-Source: APXvYqxApE8g/t9/BD5Q+4QU4ySrzyLNi2KHj2ZJ0e97EzJuNPs61zSntAOtG90JekIy/wCHuHHZ3o33/vDbzYEevRw=
X-Received: by 2002:a5d:8f02:: with SMTP id f2mr4314093iof.192.1566533631893; 
	Thu, 22 Aug 2019 21:13:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a3c1:0:0:0:0:0 with HTTP; Thu, 22 Aug 2019 21:13:51
	-0700 (PDT)
In-Reply-To: <b57b4749-ffb3-ebaf-5bc6-992bc1541c2d@windriver.com>
References: <CAA=hcWQ3N8VevOFcsL+595HZp4UqcgdQgQrQJFpMttDFLZPVdA@mail.gmail.com>
	<CAA=hcWQ9fMMFw65h4M8LWM_Mqx-MDN2sUDy+pzLSMgFV1bak1Q@mail.gmail.com>
	<d61333d0-47a1-194a-abbc-d3dbf34bc296@windriver.com>
	<CAA=hcWT7mowfMWp+JoT+2Oi8S+M+j19cEfDXgrPQwih+WQoYPg@mail.gmail.com>
	<b57b4749-ffb3-ebaf-5bc6-992bc1541c2d@windriver.com>
From: JH <jupiter.hce@gmail.com>
Date: Fri, 23 Aug 2019 14:13:51 +1000
Message-ID: <CAA=hcWQozLWkw-qGr8w8XFuvGjKHNODThRMU20PSn+H77KRfHw@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Can Yocto build to set up process running priority in service?
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
X-List-Received-Date: Fri, 23 Aug 2019 04:13:54 -0000
Content-Type: text/plain; charset="UTF-8"

I just found a blog:
http://bristot.me/setting-real-time-priorities-to-services-using-systemd/

Set following CPUSchedulingPriority, systemd does support priority
setting, right? Or that just bogus.

[Service]
ExecStart=/usr/sbin/mcelog --ignorenodev --daemon --foreground
CPUSchedulingPolicy=fifo
CPUSchedulingPriority=20

Thank you.

- jh

On 8/23/19, ChenQi <Qi.Chen@windriver.com> wrote:
> On 08/23/2019 10:58 AM, JH wrote:
>> Thanks ChenQi, can the process priority be set in ExecStart= of the
>> xxx.service file?
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - jh
>
> I didn't try it out. But I think the answer is likely to be 'No'.
>
> systemd does not like the old 'nice'. So there's no mechanism integrated
> in systemd.
> You can use more modern way of CPUWeight, which makes use cgroup
> mechanism. Check systemd.recource-control(5) for more info.
>
> Best Regards,
> Chen Qi
>
>> On 8/23/19, ChenQi <Qi.Chen@windriver.com> wrote:
>>> On 08/23/2019 05:32 AM, JH wrote:
>>>> I have two processes launched from a service unit, how can the Yocto
>>>> customer distro to set up high_priority_process?
>>>>
>>>> ExecStartPre=low_priority_priority
>>>> ExecStart=high_priroty_process
>>>>
>>>> Thank you.
>>>>
>>>> Kind regards,
>>>>
>>>> - jh
>>>>
>>>> On 8/22/19, JH <jupiter.hce@gmail.com> wrote:
>>>>> Hi,
>>>>>
>>>>> How to set up process running priority for services in Yocto build
>>>>> using renice or some method?
>>>>>
>>>>> Thank you.
>>>>>
>>>>> Kind regards,
>>>>>
>>>>> - jupiter
>>>>>
>>> Not sure about your exact needs. But as far as I know, nice value is
>>> inherited. You can just set it for the shell that starts a yocto build.
>>> If you are using some scripts, the same logic holds.
>>>
>>> Best Regards,
>>>
>>> Chen Qi
>>>
>>>
>
>

