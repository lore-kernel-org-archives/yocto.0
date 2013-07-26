Return-Path: <djszapi@archlinux.us>
Received: from mail-pb0-f41.google.com (mail-pb0-f41.google.com
	[209.85.160.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97C95E0152B
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 03:57:53 -0700 (PDT)
Received: by mail-pb0-f41.google.com with SMTP id rp16so1909960pbb.14
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 03:57:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=1trVDgak8nuJo2FU106ScUGqG3a3p0GKn6aIxH9Zb34=;
	b=mpic1KbfaseDVZmz/6eRU2mpK9Oovm3VcaQ68TnEkB0FOrqV2B11auQqq27aPPVD8G
	YnuyqctjVp6zKydz2Xh2f60l0rsXaLyIgWSSrzlMNbfcyl+gQNnFbGUmEMNglrAV6pS3
	n9lJ6cJ2XwmDFP06TSrg5o6Q3lV2Ii479fsI1WhgTxc9ziI2uOaeJjMy3RKguD/cKAg1
	jvnU7GqupY7lpW80uHybdAgkdzTNXqOucDnC8FZx2yr+3/LBi7n+adciqjxcj9FM02fW
	UkRJpqbsVnr+1tI0+SHYCqU7ZWQhyC5mOqvozOYj9HIYlZWnRKNlDNpvoJ+vurPFwVBN
	EeHA==
MIME-Version: 1.0
X-Received: by 10.68.172.34 with SMTP id az2mr52518318pbc.201.1374836273747;
	Fri, 26 Jul 2013 03:57:53 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Fri, 26 Jul 2013 03:57:53 -0700 (PDT)
In-Reply-To: <CAJTo0LbZ1mbPkznRn_nMw-aNqc4MB7qAZKas-+uH6NaHODhN5Q@mail.gmail.com>
References: <CAOMwXhMAvqvs2TF_Wc2btWfEnWmvQQJ3RNJiTDw7A1D01RSXyw@mail.gmail.com>
	<CANyK_8fZbN9d0JmbcOhSo+4-xxvqDy29vWnXcgwms6OGFSJkrQ@mail.gmail.com>
	<CAOMwXhNnJH9E6OyD0ch364G0WF58E4ZsU08DM4Bm8eOaqiSOeg@mail.gmail.com>
	<CAJTo0LbZ1mbPkznRn_nMw-aNqc4MB7qAZKas-+uH6NaHODhN5Q@mail.gmail.com>
Date: Fri, 26 Jul 2013 11:57:53 +0100
X-Google-Sender-Auth: nxdTUGqOZsBjIfyR6M53U1otzUE
Message-ID: <CAOMwXhO_G0zO9bkYM8zHwo-P7MmOBgz1U0Z_uj08i_AV3z+2gA@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: "Burton, Ross" <ross.burton@intel.com>
X-Gm-Message-State: ALoCoQknE5cD56wI+veik0Od1hPjDjwSkuDZHPgbxDBWLKwZMjugnK4l0jA08Xh6ZzR+TSesH2nq
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Criteria for proposing a host distribution supported
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
X-List-Received-Date: Fri, 26 Jul 2013 10:57:56 -0000
Content-Type: multipart/alternative; boundary=047d7b10c92bb8aca304e2680399

--047d7b10c92bb8aca304e2680399
Content-Type: text/plain; charset=ISO-8859-1

Actually, I also have problems with Debian stable? See the bugreports I
sent. It is mentioned as "supported distribution". Yet, it does not work. I
do not to follow the parallelism with Arch accordingly.

People can always revert the offending arch package to one week older if
they wanna use Yocto, or they can fix it. I do not see it a problem, and
easily solvable, especially with a clear CI documentation which should
happen for any node, anyhow.

The problem is currently that there is no any focus on Arch, and that is
bad for the Arch arch community. Note, it is not about 1-2 people. Arch is
a quite common distribution, especially for development because it gives
you the most power for working with bleeding edge technologies.


On Fri, Jul 26, 2013 at 11:52 AM, Burton, Ross <ross.burton@intel.com>wrote:

> On 26 July 2013 11:39, Laszlo Papp <lpapp@kde.org> wrote:
> > If you do not trust Arch, you can use something else. That does not mean
> > there would not be people who update (daily for instance) and fix the
> issues
> > coming up.
>
> And that already happens - I'm running Debian Unstable, others may be
> running Rawhide, or Arch.  You'll see numerous commits in master
> fixing issues where updates on the *host* have broken the build[1].
>
> Let's imagine we are testing Arch or any other rolling/development
> distribution.  The day we freeze oe-core 1.5 we could write that Arch
> Linux is a tested and supported distribution, and we release. A week
> later Arch integrates (for example) a newer gcc that introduces some
> new errors, so we can't bootstrap anymore.  The documentation says
> that Arch is tested, yet someone using Arch will discover that it
> doesn't work.  They'll rightly complain that the documentation is
> wrong, and Arch doesn't work.
>
> Of course if ArchLinux decided to have a maintained stable branch,
> then that would be something worth testing on.
>
> Ross
>
> [1] The latest I can recall of the top of my head is
> 8db36429ef328b97340ee1d9fc2e697cfdd68bff.
>

--047d7b10c92bb8aca304e2680399
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Actually, I also have problems with Debian stable? See the=
 bugreports I sent. It is mentioned as &quot;supported distribution&quot;. =
Yet, it does not work. I do not to follow the parallelism with Arch accordi=
ngly.<div>
<br></div><div>People can always revert the offending arch package to one w=
eek older if they wanna use Yocto, or they can fix it. I do not see it a pr=
oblem, and easily solvable, especially with a clear CI documentation which =
should happen for any node, anyhow.</div>
<div><br></div><div>The problem is currently that there is no any focus on =
Arch, and that is bad for the Arch arch community. Note, it is not about 1-=
2 people. Arch is a quite common distribution, especially for development b=
ecause it gives you the most power for working with bleeding edge technolog=
ies.</div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri,=
 Jul 26, 2013 at 11:52 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;=
</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 26 July 2013 11:39, Las=
zlo Papp &lt;<a href=3D"mailto:lpapp@kde.org">lpapp@kde.org</a>&gt; wrote:<=
br>
&gt; If you do not trust Arch, you can use something else. That does not me=
an<br>
&gt; there would not be people who update (daily for instance) and fix the =
issues<br>
&gt; coming up.<br>
<br>
</div>And that already happens - I&#39;m running Debian Unstable, others ma=
y be<br>
running Rawhide, or Arch. =A0You&#39;ll see numerous commits in master<br>
fixing issues where updates on the *host* have broken the build[1].<br>
<br>
Let&#39;s imagine we are testing Arch or any other rolling/development<br>
distribution. =A0The day we freeze oe-core 1.5 we could write that Arch<br>
Linux is a tested and supported distribution, and we release. A week<br>
later Arch integrates (for example) a newer gcc that introduces some<br>
new errors, so we can&#39;t bootstrap anymore. =A0The documentation says<br=
>
that Arch is tested, yet someone using Arch will discover that it<br>
doesn&#39;t work. =A0They&#39;ll rightly complain that the documentation is=
<br>
wrong, and Arch doesn&#39;t work.<br>
<br>
Of course if ArchLinux decided to have a maintained stable branch,<br>
then that would be something worth testing on.<br>
<br>
Ross<br>
<br>
[1] The latest I can recall of the top of my head is<br>
8db36429ef328b97340ee1d9fc2e697cfdd68bff.<br>
</blockquote></div><br></div>

--047d7b10c92bb8aca304e2680399--
