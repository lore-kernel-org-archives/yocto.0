Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CE6AE00559
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 01:52:52 -0800 (PST)
Received: by mail-vb0-f42.google.com with SMTP id fa15so14284891vbb.29
	for <yocto@yoctoproject.org>; Wed, 02 Jan 2013 01:52:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=Vi9Mrq7cykQS56eNAcP/5xOGdN3WEX6mhq1RWDkUseM=;
	b=I95IVCa0mO8XJjvneDhOSll4pjNasQSomJ0Vc2s6nYaZweF7VFIUZ49q6qY60b50FJ
	/UlZHUoStmVaeVXaAo4Ghl6Zm3CZOw51vnH3NuEGJ4++gmKz4EmfMPtCuhO3qsteIvjs
	HDlB97/hBIldgaxBcpvvfRpYS8tifLe/LdazVEtHwl0jnCN4dqTmOeVAlu8YOHhQtotF
	3vd8kaokM30dW21X95cC7ZMXLb3iKuJ9Y1fkk+kISvI0uplsHc5iOYSFmJaSYvQDtGal
	RLd0ZhjrJDBua0dCdN39EYXVbvYoJb0D9ozXKsgJC5jjFk4AVh0DeusqR5kd93rMUTnT
	2DTQ==
Received: by 10.52.33.11 with SMTP id n11mr61163960vdi.131.1357120371781; Wed,
	02 Jan 2013 01:52:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.102.132 with HTTP; Wed, 2 Jan 2013 01:52:31 -0800 (PST)
X-Originating-IP: [5.13.212.252]
In-Reply-To: <50E3B3BF.1000802@comcast.net>
References: <50E31E11.2090708@comcast.net>
	<CAK18fxGENyi53KHpjUBA8t+387hmvKfaHLjURVo4A-NtnhkYmw@mail.gmail.com>
	<50E3B3BF.1000802@comcast.net>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 2 Jan 2013 11:52:31 +0200
Message-ID: <CAK18fxFNOTfyDcC5gfaCBoHDkcFVwXz9fBTv-J0tF70yxruRMQ@mail.gmail.com>
To: ed nelson <enelson1000@comcast.net>
X-Gm-Message-State: ALoCoQkfMEAhcBIqipEcZA4CSLNB6P7iBa2HsIucIUstu9wsoAflKK9T5G1S826Toaq5mPT5uJEP
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Raspberry Pi do_fetch failure
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
X-List-Received-Date: Wed, 02 Jan 2013 09:52:52 -0000
Content-Type: multipart/alternative; boundary=20cf307c9d64ad6f7804d24b35e8

--20cf307c9d64ad6f7804d24b35e8
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jan 2, 2013 at 6:12 AM, ed nelson <enelson1000@comcast.net> wrote:

>  On 01/01/2013 06:50 PM, Andrei Gherzan wrote:
>
> On Tue, Jan 1, 2013 at 7:34 PM, ed nelson <enelson1000@comcast.net> wrote:
>
>> I am getting a do_fetch failure on raspberrypi kernel.  Is anyone else
>> having this problem?
>>
>> Build Configuration:
>> BB_VERSION        = "1.16.0"
>> TARGET_ARCH       = "arm"
>> TARGET_OS         = "linux-gnueabi"
>> MACHINE           = "raspberrypi"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.3"
>> TUNE_FEATURES     = "armv6 vfp"
>> TARGET_FPU        = "vfp"
>> meta
>> meta-yocto
>> meta-yocto-bsp    = "danny:bf909b267498dbab4d7695c26b0dce903ac8b6b0"
>> meta-raspberrypi  = "master:305c5259e24eaa9fb285ca983dc4f9454743fa0c"
>>
>> NOTE: Resolving any missing task queue dependencies
>> NOTE: Preparing runqueue
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> WARNING: Failed to fetch URL git://
>> github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27,
>> attempting MIRRORS if available
>> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
>> Cloning into bare repository
>> '/home/ed/oe/poky-danny/rasperryPiBuild/downloads/git2/github.com.raspberrypi.linux.git'...
>>
>> fatal: read error: Connection reset by peer
>> fatal: early EOF
>> fatal: index-pack failed
>>
>> ERROR: Function failed: Fetcher failure for URL: 'git://
>> github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27'. Unable
>> to fetch URL from any source.
>>
>>
> So this error hits again.
>
>  It's something related  to github. I've seen this on other repos and
> solved it with a ticket to github - strangely I can't reproduce your issue
> now on my host. As i recall the clone would fail if "--quiet" was used. Can
> you confirm? Are you able to clone that repo manually? WIth "--quiet" too?
>
>  Andrei
>
>
> When I manually try:
> $ git clone --quiet git://github.com/raspberrypi/linux.git
> The process hangs
>

Wait a while and check if this fails after a while.

Andrei

--20cf307c9d64ad6f7804d24b35e8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Jan 2, 2013 at 6:12 AM, ed nelson <span dir=3D"ltr">&lt;<a href=3D"mail=
to:enelson1000@comcast.net" target=3D"_blank">enelson1000@comcast.net</a>&g=
t;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000"><div><div class=3D"h5">
    <div>On 01/01/2013 06:50 PM, Andrei Gherzan
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">On Tue, Jan 1, 2013 at 7:34 PM, ed nelson <span dir=
=3D"ltr">&lt;<a href=3D"mailto:enelson1000@comcast.net" target=3D"_blank">e=
nelson1000@comcast.net</a>&gt;</span>
        wrote:<br>
        <div dir=3D"ltr">
          <div class=3D"gmail_extra">
            <div class=3D"gmail_quote">
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex">I
                am getting a do_fetch failure on raspberrypi kernel. =A0Is
                anyone else having this problem?<br>
                <br>
                Build Configuration:<br>
                BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.16.0&quot;<br>
                TARGET_ARCH =A0 =A0 =A0 =3D &quot;arm&quot;<br>
                TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux-gnueabi&quot;<br>
                MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;raspberrypi&quot;<br>
                DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
                DISTRO_VERSION =A0 =A0=3D &quot;1.3&quot;<br>
                TUNE_FEATURES =A0 =A0 =3D &quot;armv6 vfp&quot;<br>
                TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp&quot;<br>
                meta<br>
                meta-yocto<br>
                meta-yocto-bsp =A0 =A0=3D &quot;danny:bf909b267498dbab4d769=
5c26b0dce903ac8b6b0&quot;<br>
                meta-raspberrypi =A0=3D &quot;master:305c5259e24eaa9fb285ca=
983dc4f9454743fa0c&quot;<br>
                <br>
                NOTE: Resolving any missing task queue dependencies<br>
                NOTE: Preparing runqueue<br>
                NOTE: Executing SetScene Tasks<br>
                NOTE: Executing RunQueue Tasks<br>
                WARNING: Failed to fetch URL git://<a href=3D"http://github=
.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.2.27" target=3D"_b=
lank">github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.2.27</=
a>,
                attempting MIRRORS if available<br>
                ERROR: Fetcher failure: Fetch command failed with exit
                code 128, output:<br>
                Cloning into bare repository &#39;/home/ed/oe/poky-danny/ra=
sperryPiBuild/downloads/git2/github.com.raspberrypi.linux.git&#39;...<br>
                <br>
                fatal: read error: Connection reset by peer<br>
                fatal: early EOF<br>
                fatal: index-pack failed<br>
                <br>
                ERROR: Function failed: Fetcher failure for URL: &#39;git:/=
/<a href=3D"http://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=
=3Drpi-3.2.27" target=3D"_blank">github.com/raspberrypi/linux.git;protocol=
=3Dgit;branch=3Drpi-3.2.27</a>&#39;.
                Unable to fetch URL from any source.<br>
                <br>
              </blockquote>
              <div>=A0</div>
              <div>So this error hits again.=A0</div>
              <div><br>
              </div>
              <div>It&#39;s something related =A0to github. I&#39;ve seen
                this on other repos and solved it with a ticket to
                github - strangely I can&#39;t=A0reproduce=A0your issue now=
 on
                my host. As i recall the clone would fail if &quot;--quiet&=
quot;
                was used. Can you confirm? Are you able to clone that
                repo manually? WIth &quot;--quiet&quot; too?</div>
              <div><br>
              </div>
              <div>Andrei</div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br></div></div>
    When I manually try:<br>
    $ git clone --quiet git://<a href=3D"http://github.com/raspberrypi/linu=
x.git" target=3D"_blank">github.com/raspberrypi/linux.git</a><br>
    The process hangs<br></div></blockquote><div>=A0</div><div style>Wait a=
 while and check if this fails after a while.=A0</div><div style><br></div>=
<div style>Andrei</div></div></div></div>

--20cf307c9d64ad6f7804d24b35e8--
