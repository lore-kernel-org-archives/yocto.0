Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A2A7E006C0
	for <yocto@yoctoproject.org>; Sat,  8 Dec 2012 16:11:47 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so1380107lbo.35
	for <yocto@yoctoproject.org>; Sat, 08 Dec 2012 16:11:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=SGPo6qb9IMOVTpUdzIMTyRwN3DFlnoNeIvhJh+e9iWM=;
	b=Je+5mHFsE7SDQkzuFn4q7k8xOOjYMgSwNpT2+Xzb4bBhng16gRBaMPCsajfhtyJboP
	Y/4f3SNEtQ7vT6M3CleAs87aUu9sylFh2FQJIIEwU6nPJDV/O6SgU9YK9KzLAOu36Q9p
	YyyQwCT8Q3gJBj9DA9IF4lR+BzLofvwKkifS0vJFfYM8RZkIeC+SyNjXZChKaanzkdc5
	PqyXGZ6HJOZmxUUW5awEZN+sMqfQJj1CVy76v7xhCHyCvOpI8xnONYhA3pVy/FqZUXR9
	dtdDI4z0qTHxBdydVh41+ogQm4K09oX3CP6ByG/dh4MIv5q6JESfvqtqDM8NmYSFMrCR
	vomw==
Received: by 10.112.102.135 with SMTP id fo7mr4279002lbb.82.1355011906017;
	Sat, 08 Dec 2012 16:11:46 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.42.162 with HTTP; Sat, 8 Dec 2012 16:11:25 -0800 (PST)
In-Reply-To: <560B845B-ADB9-4244-B82D-8B7136E70F13@keylevel.com>
References: <560B845B-ADB9-4244-B82D-8B7136E70F13@keylevel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Sat, 8 Dec 2012 17:11:25 -0700
X-Google-Sender-Auth: hnh0CEM3OXNg9Ka5klMOwTq9zaY
Message-ID: <CABcZANm7UGMYO1BRK8k9EQdGrDG6w013S-nkQrCgFe5O+4v1SQ@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: bbappending a bbappend
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
X-List-Received-Date: Sun, 09 Dec 2012 00:11:47 -0000
Content-Type: multipart/alternative; boundary=14dae9d6824853186f04d0604bc2

--14dae9d6824853186f04d0604bc2
Content-Type: text/plain; charset=UTF-8

On Sat, Dec 8, 2012 at 5:07 PM, Chris Tapp <opensource@keylevel.com> wrote:

> Is it possible to have more than one bbappend applied to a recipe?
>
> I'm using meta-cedartrail with my own layer (which is set as lower
> priority).
>
> Meta-cedartrail has a linux-yocto_3.0.bbappend, but I want to be able to
> enable CONFIG_HID_APPLE in my layer so my Apple keyboard works (and keep
> meta-cedartrail 'clean'). Is it possible to use another
> linux-yocto_3.0.bbappend in my layer? I've given it a try, but it's not
> working and I thought it would be an idea to see if it __should__ before I
> try and fix it ;-)
>

All bbappends from all layers are applied, in layer priority order.
-- 
Christopher Larson

--14dae9d6824853186f04d0604bc2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_extra">On Sat, Dec 8, 2012 at 5:07 PM, Chris Tapp <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:opensource@keylevel.com" target=3D"_blan=
k">opensource@keylevel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">

<div id=3D":dy">Is it possible to have more than one bbappend applied to a =
recipe?<br>
<br>
I&#39;m using meta-cedartrail with my own layer (which is set as lower prio=
rity).<br>
<br>
Meta-cedartrail has a linux-yocto_3.0.bbappend, but I want to be able to en=
able CONFIG_HID_APPLE in my layer so my Apple keyboard works (and keep meta=
-cedartrail &#39;clean&#39;). Is it possible to use another linux-yocto_3.0=
.bbappend in my layer? I&#39;ve given it a try, but it&#39;s not working an=
d I thought it would be an idea to see if it __should__ before I try and fi=
x it ;-)</div>

</blockquote></div><br>All bbappends from all layers are applied, in layer =
priority order.<br>-- <br>Christopher Larson<br>
</div>

--14dae9d6824853186f04d0604bc2--
