Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f45.google.com (mail-oa0-f45.google.com
	[209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2018E0084E
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2014 03:05:24 -0800 (PST)
Received: by mail-oa0-f45.google.com with SMTP id j17so1010900oag.18
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2014 03:05:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=wsH7kNIteXvDnNPbM7+Fe6ALfOpNXNtpu1/yTF/IOKg=;
	b=JVkSMwC2iXvRtrdgUZhuN+FmNKyrqCGjTkotuV3Q9kA9uvzPgM5WwgsFG07rnqyT9u
	v9YbouWkM/1D43Ff9x04KUDkI5JcEZ8W+b24VNeE3W4MJeMQANRo3NS3QYb7fSWpHxgM
	0qMTOWLXKwX85ujtDj6mgqrUgTUA6Dbc19LVO5wL7UdgCqffkPG6xXws+m5X4hsznuqw
	QXVwrfQQ0L6cm/EiXJf1KD6/9CXgaHEjhVv1zEvNHHB1rbjym0rhvghq+JRcQAu5dN5a
	io45bz6QfFYOoQ4Sm2OucDowluMzpHZz941kx3q9m8MTMHec3FNygPOAIgprvxuOv001
	WPhg==
X-Gm-Message-State: ALoCoQn0PjhDzjlZ1i+GTTvSQFuocPHUvX4axa25dJS7IHJLKEt8U9mZxi2mJe8a9qDqHecjUCml
X-Received: by 10.60.123.19 with SMTP id lw19mr1283310oeb.24.1389783923825;
	Wed, 15 Jan 2014 03:05:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.84.233 with HTTP; Wed, 15 Jan 2014 03:05:03 -0800 (PST)
In-Reply-To: <31DD9473F5EB4E468EDC3B5642AD64BD08AECFFC@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
References: <31DD9473F5EB4E468EDC3B5642AD64BD08AECFFC@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 15 Jan 2014 12:05:03 +0100
Message-ID: <CAP71Wjwgmoyj-L9MVyNe4Fk=g5OGmOa7KrAKCuWP+C-=iEZX6g@mail.gmail.com>
To: Khaja Hussain Shaik <khajahussain-s@hcl.com>
Cc: Dipesh Karmakar <Dipesh.Karmakar@hcl.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Rgardring GSTreamer1.0 integration on Yocto dylan
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
X-List-Received-Date: Wed, 15 Jan 2014 11:05:33 -0000
Content-Type: multipart/alternative; boundary=047d7b5d2f881856fa04f000493e

--047d7b5d2f881856fa04f000493e
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 15, 2014 at 11:49 AM, Khaja Hussain Shaik <
khajahussain-s@hcl.com> wrote:

> Greetings from Khaja.
>
> We are trying to make a Dylan build with GStreamer 1.0 support, however w=
e
> are facing lots of dependencies. We like to know whether it=92s possible =
to
> incorporate GStreamer 1.0 in Dylan? If yes then could it be possible to
> direct us to some documents/procedure.
>

such large 'features' are not generally backported to old/stable releases.
only bug fixes.

gst1.0 was introduced in 'dora' where you can find gst 1.0.x branch, and
you have gst 1.2.x support in current master. so you either need to
backport these changes into dylan, or switch to a newer release.

--047d7b5d2f881856fa04f000493e
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Jan 15, 2014 at 11:49 AM, Khaja Hussain Shaik <span dir=3D"ltr">&lt=
;<a href=3D"mailto:khajahussain-s@hcl.com" target=3D"_blank">khajahussain-s=
@hcl.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><p class=3D"MsoNormal">Greetings from Khaja.=
<u></u><u></u></p>
<p class=3D"MsoNormal">We are trying to make a Dylan build with GStreamer 1=
.0 support, however we are facing lots of dependencies. We like to know whe=
ther it=92s possible to incorporate GStreamer 1.0 in Dylan? If yes then cou=
ld it be possible to direct us to some
 documents/procedure.</p></blockquote></div><br>such large &#39;features&#3=
9; are not generally backported to old/stable releases. only bug fixes.=A0<=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">gst1.0=
 was introduced in &#39;dora&#39; where you can find gst 1.0.x branch, and =
you have gst 1.2.x support in current master. so you either need to backpor=
t these changes into dylan, or switch to a newer release.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br></div><=
/div>

--047d7b5d2f881856fa04f000493e--
