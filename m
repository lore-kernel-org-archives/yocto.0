Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36E79E00785
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2013 09:47:00 -0800 (PST)
Received: by mail-ie0-f178.google.com with SMTP id lx4so9283933iec.9
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2013 09:47:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=eg9jabE4WitgMDPwdGF6TmuqJ3fUrlDOjdTJRbeSCwk=;
	b=yLREgxl+oHjGEginQKgUuam6rqyafV1q6XqRCVw4KsXoOQS8oI1SYh1JD9nLZ1oNmV
	l3ZHbFbkOUWlm53hsgdXwi66P0k0iolaYm1vSwUFfTCcFWHaVgGedHE0YRWNOrzWfNsI
	NoHxJl0eO9nUbJRwyWZVniFIuB1AfUy+OgYq0t/bHGyl1JEpyb7MjiASPJ5J6VECI+r0
	ZaD39gSMc8TpOgYta6rqL00SgrsWPmaTtkpr0V4FTR8945QSA/Y3CI44o/linBu2Qxek
	OT7yjkc+p45IZaZ5m0AP6CzWmS3Dgb9tdV9Ow/JspIUKCoJX6zq/5+JqONES2WZrw+1O
	Loqg==
X-Received: by 10.50.13.9 with SMTP id d9mr21167084igc.25.1386697620269; Tue,
	10 Dec 2013 09:47:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Tue, 10 Dec 2013 09:46:40 -0800 (PST)
In-Reply-To: <1679390.Ppl8UCuaCK@helios>
References: <CAMCfZKHWGAQJ95K=T-0xpQRoO+RKvgvx9AWKMP9SUPMjAnTUDQ@mail.gmail.com>
	<20131210154634.GU31548@axis.com>
	<CAMCfZKGk2=hoKa48fRkDE-9bgiY424UT0_AZ5VmnjNDKfDY-Sg@mail.gmail.com>
	<1679390.Ppl8UCuaCK@helios>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 10 Dec 2013 15:46:40 -0200
Message-ID: <CAMCfZKG2hNMEt6088Ln88DanFZ4pJYOTtzfz3a-cPOU0gcARdg@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: busybox 1.21 ash bug?
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
X-List-Received-Date: Tue, 10 Dec 2013 17:47:04 -0000
Content-Type: multipart/alternative; boundary=089e013c68e21130fd04ed31b3fb

--089e013c68e21130fd04ed31b3fb
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Dec 10, 2013 at 3:25 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Assuming that wasn't a deliberate change, it's likely that something that
> depended on bash was bringing it in before and either that something is no
> longer in the image, or it no longer depends on bash. (You can of course
> explicitly add bash to the image if that's what you want.)
>

Thanks Paul,

I added bash on my image.

Rgs,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--089e013c68e21130fd04ed31b3fb
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><div class="gmail_extra"><br><div class="gmail_quote">On Tue, Dec 10, 2013 at 3:25 PM, Paul Eggleton <span dir="ltr">&lt;<a href="mailto:paul.eggleton@linux.intel.com" target="_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>

<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=":6ui" style="overflow:hidden">Assuming that wasn&#39;t a deliberate change, it&#39;s likely that something that<br>


depended on bash was bringing it in before and either that something is no<br>
longer in the image, or it no longer depends on bash. (You can of course<br>
explicitly add bash to the image if that&#39;s what you want.)</div></blockquote></div><br>Thanks Paul,</div><div class="gmail_extra"><br></div><div class="gmail_extra">I added bash on my image.<br><br clear="all"><div><div dir="ltr">

<div>Rgs,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--089e013c68e21130fd04ed31b3fb--
