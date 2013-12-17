Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0232E007F6
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 08:07:53 -0800 (PST)
Received: by mail-we0-f181.google.com with SMTP id x55so6113654wes.26
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 08:07:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=9JdXKBnPyIpMo3l+XqKKrlmf7khLVxQqqjHFpkLAm/w=;
	b=YcMAp7tZryljS6BeWhuBztwBfxKAmr/YVzIX9zLL5m5aD6GvtiAKnAy1qZbxSshzj0
	SyYsJLCR2mnOGb+lb4hBumqBhf6boSbN4sa60pcinWfn1VJPzoS1e5IS9iRI+2qqeZwJ
	2iNIuUNcbzuiPCFDdh9YNWSu2fkziyqJEh0NgNbWiU00AD6m4XT7upWSQkdKed01FPPM
	eLWVRJYuMH5pGMuard/hr5jYGdtVH1Zpm0ue5m5N0RwYKEbXTNhGjl3lZkI3mnyExvdR
	9w5dm06nBmY/LOgESC8u3ekw8DER/FMhsaju8SvzyqKOJkMaDVM4t696wSW/5sFDQms/
	RIeg==
X-Gm-Message-State: ALoCoQme76D7UlpL5mUS6Bzjeg22rpR/6NZWIim+QjPUMFavj7VU2l5XlKFF4g3xY3t7Y5QLtoYY
X-Received: by 10.180.108.83 with SMTP id hi19mr3863609wib.26.1387296472382;
	Tue, 17 Dec 2013 08:07:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.150.199 with HTTP; Tue, 17 Dec 2013 08:07:32 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1387226279-3963-1-git-send-email-gary@mlbassoc.com>
References: <1387226279-3963-1-git-send-email-gary@mlbassoc.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 17 Dec 2013 18:07:32 +0200
Message-ID: <CAK18fxEhfQSd_P4=FSVmFLzdbVhEy2Jg24UoqpPM+R4+FiHeKA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Drop 3.12.0
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
X-List-Received-Date: Tue, 17 Dec 2013 16:07:56 -0000
Content-Type: multipart/alternative; boundary=e89a8f3bb0256f609104edbd215a

--e89a8f3bb0256f609104edbd215a
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Dec 16, 2013 at 10:37 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> Remove old kernel - this version no longer builds as the
> required revision has vanished in upstream, replaced by
> 3.12.4.
>
> Signed-off-by: Gary Thomas <gary@mlbassoc.com>
> ---
>
Thanks Gary. This change is included in a patchset I just sent. Maybe you
can take a look upon that one.

-- 
*ag*

--e89a8f3bb0256f609104edbd215a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On M=
on, Dec 16, 2013 at 10:37 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"=
mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span=
> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Remove old kernel - this version no longer b=
uilds as the<br>
required revision has vanished in upstream, replaced by<br>
3.12.4.<br>
<br>
Signed-off-by: Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@ml=
bassoc.com</a>&gt;<br>
---<br></blockquote><div>Thanks Gary. This change is included in a patchset=
 I just sent. Maybe you can take a look upon that one.</div></div><div><br>=
</div>--=A0</div><div class=3D"gmail_extra"><b style=3D"color:rgb(51,51,51)=
;font-family:Arial;text-align:center">ag</b>
</div></div>

--e89a8f3bb0256f609104edbd215a--
