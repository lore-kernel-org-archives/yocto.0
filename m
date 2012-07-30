Return-Path: <sidebranch.openembedded@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79714E00280
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 08:17:41 -0700 (PDT)
Received: by lagz14 with SMTP id z14so3876554lag.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 08:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=j5gyH0rs70zt2QgdURbp7iM+KaM6bHx0PzXPD29Azto=;
	b=MSsQnUV1buLqteWPtcE3ubPzHs2+BtfX/Nur1e08ZxRCOq4epZLVoSe+n2Hs8kUgNw
	b17S2ofepEfOqriA7uBaeiXl6ljR14XfIq9IbtrrnqJa3zL1NPy03wnCfEPzoHFs/8Q4
	5eI5jdoOYZcFknPoPVOv13gg1nJaHPEhvASlQy0EoLQM2lTUSGQ215eJxiw0er8Jxlhu
	WP91r7Wh5s2S5x1i6W7/G41rtROBwNmnEEe+EKjlYYhis1Ak3fjhH4TKLBWgjtZUh+J7
	CmWw/zzT+G08Xu/KyZvjvh9Qzo9mQqYQdoQfGi9Ys+tTBC5qwebbHqKl5AO41WD0vvF5
	FiwA==
MIME-Version: 1.0
Received: by 10.152.148.169 with SMTP id tt9mr11638251lab.49.1343661460388;
	Mon, 30 Jul 2012 08:17:40 -0700 (PDT)
Received: by 10.112.37.225 with HTTP; Mon, 30 Jul 2012 08:17:40 -0700 (PDT)
In-Reply-To: <5016A39C.50003@windriver.com>
References: <1343483125-26065-1-git-send-email-sidebranch.openembedded@gmail.com>
	<5016A34B.5000406@windriver.com> <5016A39C.50003@windriver.com>
Date: Mon, 30 Jul 2012 17:17:40 +0200
Message-ID: <CAMvUbCyaQVTkE5qhZggwoB=o-8OHpmQYJ9ozT5fo=WrQB5A3uA@mail.gmail.com>
From: Leon Woestenberg <sidebranch.openembedded@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Leon Woestenberg <leon.woestenberg@gmail.com>, yocto@yoctoproject.org,
	Scott Garman <scott.a.garman@intel.com>,
	Leon Woestenberg <leon@sidebranch.com>
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
X-List-Received-Date: Mon, 30 Jul 2012 15:17:41 -0000
Content-Type: multipart/alternative; boundary=e89a8f23455d0b7b3604c60d904c

--e89a8f23455d0b7b3604c60d904c
Content-Type: text/plain; charset=ISO-8859-1

Hello Bruce, Scott,

On Mon, Jul 30, 2012 at 5:09 PM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 12-07-30 11:07 AM, Bruce Ashfield wrote:
>
>> On 12-07-28 09:45 AM, Leon Woestenberg wrote:
>>
>>> From: Leon Woestenberg<leon@sidebranch.**com <leon@sidebranch.com>>
>>>
>>>
> Aha. And now I see that Scott G was copied. If this was for 1.2.x of yocto,
> that needs to be clearly in the subject .. otherwise it is just
> confusing.
>
>
Correct, my intention was for Denzil. Agreed, the full fix should be first
proposed for HEAD, and I should first fix my GIT script foo setup. This
went wrong in several ways.

Regards,

Leon.

--e89a8f23455d0b7b3604c60d904c
Content-Type: text/html; charset=ISO-8859-1

Hello Bruce, Scott,<br><br><div class="gmail_quote">On Mon, Jul 30, 2012 at 5:09 PM, Bruce Ashfield <span dir="ltr">&lt;<a href="mailto:bruce.ashfield@windriver.com" target="_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br>
<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class="im">On 12-07-30 11:07 AM, Bruce Ashfield wrote:<br>
<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
On 12-07-28 09:45 AM, Leon Woestenberg wrote:<br>
<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
From: Leon Woestenberg&lt;<a href="mailto:leon@sidebranch.com" target="_blank">leon@sidebranch.<u></u>com</a>&gt;<br>
<br>
</blockquote></blockquote>
<br></div>
Aha. And now I see that Scott G was copied. If this was for 1.2.x of yocto,<br>
that needs to be clearly in the subject .. otherwise it is just<br>
confusing.<br>
<br></blockquote></div><br>Correct, my intention was for Denzil. Agreed, the full fix should be first proposed for HEAD, and I should first fix my GIT script foo setup. This went wrong in several ways.<br><br>Regards,<br>
<br>Leon.<br><br><br><br><br>

--e89a8f23455d0b7b3604c60d904c--
