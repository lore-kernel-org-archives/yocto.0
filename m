Return-Path: <sidebranch.openembedded@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AE1FE004A1
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 04:38:20 -0700 (PDT)
Received: by lboj14 with SMTP id j14so313391lbo.35
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2012 04:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=N+Q3Kr3fbKaweKnrZDrVt6xGpZ3Xlp2RpI/9rbmRlGc=;
	b=DGf+iyyX6dHESiaPuF6TQHxo5VSehDSNxeKfrxwqF7OBnzBHlhv9X4f4CbgCj3aSdE
	YyBgmyj4ayAUuZqKMJQOoY45o8QlUzeNEP9a5NEKHyW4ABYTzB82coKQa747byM1dW6Z
	0ePZEZgfddAiRSpj09WI3qpXAmWD9GWNDsjR9F4vNTTKM2ZRPGcl1ppKsfj0qbcAukMP
	QpWIqTCSzEgaHdYeSmoNDIa09LqyQSFdLQ3XZzK1BOQMFHgT2d1cG/KQLBmudjgO+RRX
	aicqO/oh4ZAPOquoINn7c/XoKY3KfH6/WAZK7KDNi2qv2otoAJjZr4Khl5r2Iz6Gs6Ji
	X5Wg==
MIME-Version: 1.0
Received: by 10.112.43.67 with SMTP id u3mr8042867lbl.16.1343821099152; Wed,
	01 Aug 2012 04:38:19 -0700 (PDT)
Received: by 10.112.37.225 with HTTP; Wed, 1 Aug 2012 04:38:19 -0700 (PDT)
In-Reply-To: <CAMvUbCyaQVTkE5qhZggwoB=o-8OHpmQYJ9ozT5fo=WrQB5A3uA@mail.gmail.com>
References: <1343483125-26065-1-git-send-email-sidebranch.openembedded@gmail.com>
	<5016A34B.5000406@windriver.com> <5016A39C.50003@windriver.com>
	<CAMvUbCyaQVTkE5qhZggwoB=o-8OHpmQYJ9ozT5fo=WrQB5A3uA@mail.gmail.com>
Date: Wed, 1 Aug 2012 13:38:19 +0200
Message-ID: <CAMvUbCyqzdk3QC8A0YZAJ_2gaXbnSZX8yZh7=2UzDtH2OzZ8wg@mail.gmail.com>
From: Leon Woestenberg <sidebranch.openembedded@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [PATCH] kernel.bbclass: Iff exists, copy bounds.h for external module building.
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
X-List-Received-Date: Wed, 01 Aug 2012 11:38:20 -0000
Content-Type: multipart/alternative; boundary=e0cb4efe2fae41b69f04c632bb29

--e0cb4efe2fae41b69f04c632bb29
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jul 30, 2012 at 5:17 PM, Leon Woestenberg <
sidebranch.openembedded@gmail.com> wrote:

> On 12-07-30 11:07 AM, Bruce Ashfield wrote:
>>
>>> On 12-07-28 09:45 AM, Leon Woestenberg wrote:
>>>
>>>> From: Leon Woestenberg<leon@sidebranch.com>
>>>>
>>>>
>> Aha. And now I see that Scott G was copied. If this was for 1.2.x of
>> yocto,
>> that needs to be clearly in the subject .. otherwise it is just
>> confusing.
>>
>>
> On Mon, Jul 30, 2012 at 5:09 PM, Bruce Ashfield <
> bruce.ashfield@windriver.com> wrote:
> Correct, my intention was for Denzil. Agreed, the full fix should be first
> proposed for HEAD, and I should first fix my GIT script foo setup. This
> went wrong in several ways.
>
> Fixed in separate attempt. This thread is closed.

Thanks,

Leon.

--e0cb4efe2fae41b69f04c632bb29
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Mon, Jul 30, 2012 at 5:17 PM, Leon Woestenber=
g <span dir=3D"ltr">&lt;<a href=3D"mailto:sidebranch.openembedded@gmail.com=
" target=3D"_blank">sidebranch.openembedded@gmail.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">
<div class=3D"im"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div>On 12-07-30 11:07 AM, Bruce Ashfield wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 12-07-28 09:45 AM, Leon Woestenberg wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
From: Leon Woestenberg&lt;<a href=3D"mailto:leon@sidebranch.com" target=3D"=
_blank">leon@sidebranch.com</a>&gt;<br>
<br>
</blockquote></blockquote>
<br></div>
Aha. And now I see that Scott G was copied. If this was for 1.2.x of yocto,=
<br>
that needs to be clearly in the subject .. otherwise it is just<br>
confusing.<br>
<br></blockquote></div><br></div>On Mon, Jul 30, 2012 at 5:09 PM, Bruce Ash=
field <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.com"=
 target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br>
Correct, my intention was for Denzil. Agreed, the full fix should be first =
proposed for HEAD, and I should first fix my GIT script foo setup. This wen=
t wrong in several ways.<br><br></blockquote></div>Fixed in separate attemp=
t. This thread is closed.<br>
<br>Thanks,<br><br>Leon.<br>

--e0cb4efe2fae41b69f04c632bb29--
