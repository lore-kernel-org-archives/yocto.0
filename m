Return-Path: <mburtin@connected-labs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 524A7E00810; Tue,  3 Mar 2015 00:55:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 569DFE003FA
	for <yocto@yoctoproject.org>; Tue,  3 Mar 2015 00:55:38 -0800 (PST)
Received: by labgd6 with SMTP id gd6so35970291lab.7
	for <yocto@yoctoproject.org>; Tue, 03 Mar 2015 00:55:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=9WM67Cpemq0sEHle+0PSzR1GkQBnjR4ZOtZJ6G6//3E=;
	b=eFjiVoJawimzfZoPtyI1Or0S0ps4QuFKJgQcf2EvaloioFetHxKNtUhinTLMVK2Zkg
	7fAjFmVExuHTbLxRgpt/IlsxybXvpV7iK1jmYi9BQG8OwazKt1soHhN+vKaGUV9+9NNN
	DBwbpTnT3XSab0/c0LcCutdjRP/dzohKe9FHv4if58dOwkVW8DnaaGQQHKCFxRAaiIbY
	ioDQor7HGdxnTGuWy9sczumLgCR0127RHi/eONNZM1FXapfEWy13rJ7n9ABvQIbBmDZr
	ou3o6i5SDIJIp/iNv8MfFKSoPJN4Hv+hbj+TcRVfqoW21KMwoAVclT2KT4aid7FLR4xB
	zpCg==
X-Gm-Message-State: ALoCoQkYpDwweqruk1oO1IWpP2KTS2nSb1CRwEYO3loHy5j1v+HngzHxqiQPTESKTnXnfJySSMBx
MIME-Version: 1.0
X-Received: by 10.152.219.2 with SMTP id pk2mr27624517lac.107.1425372935435;
	Tue, 03 Mar 2015 00:55:35 -0800 (PST)
Sender: mburtin@connected-labs.com
Received: by 10.114.193.35 with HTTP; Tue, 3 Mar 2015 00:55:35 -0800 (PST)
X-Originating-IP: [94.103.137.126]
In-Reply-To: <CA+-BmJYjqrJzZ_qBhg4iwq29KvUwJvR4XaaGhb93NHwjYbAgVQ@mail.gmail.com>
References: <CA+-BmJZ=8TOkq0onBPwf1RALNf5iqbqy8+BHPhogrqCJ4ZJO=g@mail.gmail.com>
	<54F425B7.2070002@gmail.com>
	<CA+-BmJba+CbvNE4Y=FQOhxuvWV7-4ko8SsMNQ=83H71urGXbJg@mail.gmail.com>
	<CA+-BmJYjqrJzZ_qBhg4iwq29KvUwJvR4XaaGhb93NHwjYbAgVQ@mail.gmail.com>
Date: Tue, 3 Mar 2015 09:55:35 +0100
X-Google-Sender-Auth: Zcs5rHiuqweyICLXgacbmdG9XAs
Message-ID: <CAP7FSrgijqQDJdF-OyZiZw8bZpVr2evjKzFbEsADhSn25p_4AA@mail.gmail.com>
From: =?UTF-8?Q?Micha=C3=ABl_Burtin?= <mburtin@voxtok.com>
To: Ayoub Zaki <ayoub.zaki@googlemail.com>
Cc: yocto@yoctoproject.org
Subject: Re: dizzy 1.7 udev automount misbehaviour
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
X-List-Received-Date: Tue, 03 Mar 2015 08:55:45 -0000
Content-Type: multipart/alternative; boundary=001a1134188c7d63fd05105e7fd7

--001a1134188c7d63fd05105e7fd7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Yocto,

For the record the issue is in current dizzy branch and occurs when using
systemd and udev along with udev-extraconf mount scripts.
By default, systemd-udevd.service has the option MountFlags=3Dslave,
which means that mounts are only seen by udevd process.
This explains some weird behavior. I'll file a bug for that.

One solution is to change MountFlags to shared, so that mounts become
available for all the system.

Regards,
Micha=C3=ABl


On Mon, Mar 2, 2015 at 10:25 AM, Ayoub Zaki <ayoub.zaki@googlemail.com>
wrote:

>
> ---------- Forwarded message ----------
> From: Ayoub Zaki <ayoub.zaki@googlemail.com>
> Date: 2015-03-02 10:24 GMT+01:00
> Subject: Re: [yocto] dizzy 1.7 udev automount misbehaviour
> To: scerveau <scerveau@gmail.com>
>
>
> Hello Stephane,
>
> Yes please read this :
>
> http://www.volkerschatz.com/unix/advmount.html
>
> Regards
>
> 2015-03-02 9:56 GMT+01:00 scerveau <scerveau@gmail.com>:
>
>> Hello,
>>
>> Did you have a chance to understand the problem concerning the automount
>> failure ?
>>
>> Best regards.
>>
>> St=C3=A9phane
>>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1134188c7d63fd05105e7fd7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Yocto,<div><br></div><div>For the record the issue is i=
n current dizzy branch and occurs when using</div><div>systemd and udev alo=
ng with udev-extraconf mount scripts.</div><div>By default, systemd-udevd.s=
ervice has the option=C2=A0MountFlags=3Dslave,</div><div>which means that m=
ounts are only seen by udevd process.</div><div>This explains some weird be=
havior. I&#39;ll file a bug for that.</div><div><br></div><div>One solution=
 is to change MountFlags to shared, so that mounts become</div><div>availab=
le for all the system.</div><div><br></div><div>Regards,</div><div>Micha=C3=
=ABl</div><div><br></div></div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Mon, Mar 2, 2015 at 10:25 AM, Ayoub Zaki <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:ayoub.zaki@googlemail.com" target=3D"_blank">ayoub.z=
aki@googlemail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr"><br><div class=3D"gmail_quote">---------- Forwarded messag=
e ----------<br>From: <b class=3D"gmail_sendername">Ayoub Zaki</b> <span di=
r=3D"ltr">&lt;<a href=3D"mailto:ayoub.zaki@googlemail.com" target=3D"_blank=
">ayoub.zaki@googlemail.com</a>&gt;</span><br>Date: 2015-03-02 10:24 GMT+01=
:00<br>Subject: Re: [yocto] dizzy 1.7 udev automount misbehaviour<br>To: sc=
erveau &lt;<a href=3D"mailto:scerveau@gmail.com" target=3D"_blank">scerveau=
@gmail.com</a>&gt;<br><br><br><div dir=3D"ltr"><div><div>Hello Stephane,<br=
><br></div>Yes please read this :<br><br><a href=3D"http://www.volkerschatz=
.com/unix/advmount.html" target=3D"_blank">http://www.volkerschatz.com/unix=
/advmount.html</a><br><br></div>Regards<br></div><span class=3D""><div><div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-03-02 9:56 =
GMT+01:00 scerveau <span dir=3D"ltr">&lt;<a href=3D"mailto:scerveau@gmail.c=
om" target=3D"_blank">scerveau@gmail.com</a>&gt;</span>:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">Hello,<br>
<br>
Did you have a chance to understand the problem concerning the automount fa=
ilure ?<br>
<br>
Best regards.<br>
<br>
St=C3=A9phane<br>
</blockquote></div><br></div>
</div></div></span></div><br></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a1134188c7d63fd05105e7fd7--
