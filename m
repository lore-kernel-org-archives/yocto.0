Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 4DBA7E014A9
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 05:05:58 -0800 (PST)
Received: by mail-we0-f172.google.com with SMTP id d46so3793325wer.17
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2013 05:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=wwTYffsKEW1oGT8X08aRoAdpXrtiZi2AaV/zSQDUDBQ=;
	b=i3ZS0kK30XwpRv1cVyHuGKYaPufAyMQa6ojH0+e+5dwqd0mEXo3nWOI83BV8+JzFPk
	sMZ5+NORNLmDmpoLRZjWoTETZbfc7IDom53L2t0IOCbKqc09ReIOrwwieXCIjYe9WnDZ
	NmbattFY8UvkIpY/T1A66RkZf6HsGCPl6MicQKiBPbO7tSkUEMsCY5s/seF0GYUYZqNZ
	S86joViHiq2nZxsH6Bk7Tp+65TH+j1ydXb+iov71kxiRto10AGsKzAVoa2Ztabquw8DO
	yAFi/lmT1XHkcELLC9/ipzcRcFLxCPuiiqCmUnDmQ8AzfTQfBv2OnDYCZ2gXU9SKspXo
	nhaw==
MIME-Version: 1.0
X-Received: by 10.180.93.234 with SMTP id cx10mr25934863wib.34.1362575156616; 
	Wed, 06 Mar 2013 05:05:56 -0800 (PST)
Received: by 10.227.13.133 with HTTP; Wed, 6 Mar 2013 05:05:56 -0800 (PST)
In-Reply-To: <51368C63.2050701@timomueller.eu>
References: <1362502308-7622-1-git-send-email-atanas.gegov.oss@gmail.com>
	<51368C63.2050701@timomueller.eu>
Date: Wed, 6 Mar 2013 14:05:56 +0100
Message-ID: <CAEe+mUa+2RXWYTgsOV-EYV3XD1Xa5=dUHDr_=KYpdx8=OaAcEg@mail.gmail.com>
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: Timo Mueller <mail@timomueller.eu>
Cc: yocto@yoctoproject.org
Subject: Re: [eclipse-poky][PATCH 0/4] Refactorings in org.yocto.sdk.ide plugin
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
X-List-Received-Date: Wed, 06 Mar 2013 13:05:58 -0000
Content-Type: multipart/alternative; boundary=f46d04388e1730a94b04d7414037

--f46d04388e1730a94b04d7414037
Content-Type: text/plain; charset=ISO-8859-1

Hi Timo,

On Wed, Mar 6, 2013 at 1:22 AM, Timo Mueller <mail@timomueller.eu> wrote:

> Hi Atanas,
>
> Am 05.03.2013 17:51, schrieb Atanas Gegov:
>
>  From: Atanas Gegov <atanas.gegov@bmw-carit.de>
>>
>> Hi,
>>
>> This patch series does some refactoring in the org.yocto.sdk.ide plugin.
>> The natures and the utils get their own packages. Some methods and
>> members were
>> also moved to suitable classes.
>>
>
> What are you trying to improve? What is the idea of moving all these
> classes around?
> Please provide some more detail of what you are trying to accomplish with
> this patch set.
>
Thank you for the remark. I will resend the patch series with a more
detailed explanation in the cover letter and in the commit messages.

>
>
>> Cheers,
>> Atanas
>>
>>  Best regards,
> Timo
>
Best regards,
Atanas

--f46d04388e1730a94b04d7414037
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Timo,<br><br><div class=3D"gmail_quote">On Wed, Mar 6, 2013 at 1:22 AM, =
Timo Mueller <span dir=3D"ltr">&lt;<a href=3D"mailto:mail@timomueller.eu" t=
arget=3D"_blank">mail@timomueller.eu</a>&gt;</span> wrote:<br><blockquote s=
tyle=3D"margin:0px 0px 0px 0.8ex;padding-left:1ex;border-left-color:rgb(204=
,204,204);border-left-width:1px;border-left-style:solid" class=3D"gmail_quo=
te">
Hi Atanas,<br>
<br>
Am 05.03.2013 17:51, schrieb Atanas Gegov:<div class=3D"im"><br>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;padding-left:1ex;border-left-=
color:rgb(204,204,204);border-left-width:1px;border-left-style:solid" class=
=3D"gmail_quote">
From: Atanas Gegov &lt;<a href=3D"mailto:atanas.gegov@bmw-carit.de" target=
=3D"_blank">atanas.gegov@bmw-carit.de</a>&gt;<br>
<br>
Hi,<br>
<br>
This patch series does some refactoring in the org.yocto.sdk.ide plugin.<br=
>
The natures and the utils get their own packages. Some methods and members =
were<br>
also moved to suitable classes.<br>
</blockquote>
<br></div>
What are you trying to improve? What is the idea of moving all these classe=
s around?<br>
Please provide some more detail of what you are trying to accomplish with t=
his patch set.<br></blockquote><div>Thank you for the remark. I will resend=
 the patch series with a more detailed explanation in the cover letter and =
in the commit messages.=A0</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;padding-left:1ex;border-left-=
color:rgb(204,204,204);border-left-width:1px;border-left-style:solid" class=
=3D"gmail_quote">
<br>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;padding-left:1ex;border-left-=
color:rgb(204,204,204);border-left-width:1px;border-left-style:solid" class=
=3D"gmail_quote">
<br>
Cheers,<br>
Atanas<br>
<br>
</blockquote>
Best regards,<br>
Timo<br>
</blockquote></div><div>Best regards,<br>Atanas<br></div>

--f46d04388e1730a94b04d7414037--
