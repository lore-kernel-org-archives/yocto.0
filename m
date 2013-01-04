Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D33CAE006F8
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 03:20:44 -0800 (PST)
Received: by mail-vb0-f48.google.com with SMTP id fc21so16186132vbb.21
	for <yocto@yoctoproject.org>; Fri, 04 Jan 2013 03:20:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=jIwZHvUCKp1dWinrtaA8KdoKimngLI+vZo3XxbwcUIw=;
	b=l8rkcPPPXfGWo0a9le34PnZ5ABTzLmyVeWet4nuLt0OWumZdUvs7ov9CtAvdSUdbmq
	2YYjuzMsObQOO0sN5xnrbektkER1nqUqAhXXVcbOekm1BAIpwVJBpsEiP1G8egNl601B
	LuuEFvRQThXPrXfdCDKvisjqx2FBq9vjb1PdAA5ZGzqdr0BR5y+KDT7keX9Q5ljohBnZ
	BxK69hcj0m24Rg0uHpQirH8IMZsxlv+FnbQB6n/ZgMqm2YpxdQiGLwE5pEkKtc8j44An
	E34lCxWnRnQLXhw0OSmwWPcRFY2g97rJvkrjtkmfYecsaNmM5vT91qM1k/3u9o2tSpds
	JM2A==
Received: by 10.52.36.100 with SMTP id p4mr69479524vdj.16.1357298444104; Fri,
	04 Jan 2013 03:20:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.102.132 with HTTP; Fri, 4 Jan 2013 03:20:23 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <50E59A7E.1090206@comcast.net>
References: <50E31E11.2090708@comcast.net>
	<CAK18fxGENyi53KHpjUBA8t+387hmvKfaHLjURVo4A-NtnhkYmw@mail.gmail.com>
	<50E3B3BF.1000802@comcast.net>
	<CAK18fxFNOTfyDcC5gfaCBoHDkcFVwXz9fBTv-J0tF70yxruRMQ@mail.gmail.com>
	<50E59A7E.1090206@comcast.net>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 4 Jan 2013 13:20:23 +0200
Message-ID: <CAK18fxHQYtDq7abUC0qSTamWEGKTK5AJcay=L32u+58=sAm+4A@mail.gmail.com>
To: ed nelson <enelson1000@comcast.net>
X-Gm-Message-State: ALoCoQn5nv4bvbhVl+T65IF6q2R01Iw1TIcMLVdVYPpVlToc6KjLCS0jZwCxtmr/t+dhdOwW37kw
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
X-List-Received-Date: Fri, 04 Jan 2013 11:20:45 -0000
Content-Type: multipart/alternative; boundary=20cf307c9f149d742a04d274ab12

--20cf307c9f149d742a04d274ab12
Content-Type: text/plain; charset=ISO-8859-1

Please submit a bug / contact github with the problem you found. And if you
are so kind, please keep me posted.





*Andrei Gherzan*
mobile +40.744.478.414  fax +40.31.816.28.12
Email: andrei@gherzan.ro
Email: andrei.gherzan@windriver.com
Romania


On Thu, Jan 3, 2013 at 4:49 PM, ed nelson <enelson1000@comcast.net> wrote:

>  On 01/02/2013 01:52 AM, Andrei Gherzan wrote:
>
>  On Wed, Jan 2, 2013 at 6:12 AM, ed nelson <enelson1000@comcast.net>wrote:
>
>>   On 01/01/2013 06:50 PM, Andrei Gherzan wrote:
>>
>> On Tue, Jan 1, 2013 at 7:34 PM, ed nelson <enelson1000@comcast.net>wrote:
>>
>>> I am getting a do_fetch failure on raspberrypi kernel.  Is anyone else
>>> having this problem?
>>>
>>> Build Configuration:
>>> BB_VERSION        = "1.16.0"
>>> TARGET_ARCH       = "arm"
>>> TARGET_OS         = "linux-gnueabi"
>>> MACHINE           = "raspberrypi"
>>> DISTRO            = "poky"
>>> DISTRO_VERSION    = "1.3"
>>> TUNE_FEATURES     = "armv6 vfp"
>>> TARGET_FPU        = "vfp"
>>> meta
>>> meta-yocto
>>> meta-yocto-bsp    = "danny:bf909b267498dbab4d7695c26b0dce903ac8b6b0"
>>> meta-raspberrypi  = "master:305c5259e24eaa9fb285ca983dc4f9454743fa0c"
>>>
>>> NOTE: Resolving any missing task queue dependencies
>>> NOTE: Preparing runqueue
>>> NOTE: Executing SetScene Tasks
>>> NOTE: Executing RunQueue Tasks
>>> WARNING: Failed to fetch URL git://
>>> github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27,
>>> attempting MIRRORS if available
>>> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
>>> Cloning into bare repository
>>> '/home/ed/oe/poky-danny/rasperryPiBuild/downloads/git2/github.com.raspberrypi.linux.git'...
>>>
>>> fatal: read error: Connection reset by peer
>>> fatal: early EOF
>>> fatal: index-pack failed
>>>
>>> ERROR: Function failed: Fetcher failure for URL: 'git://
>>> github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27'.
>>> Unable to fetch URL from any source.
>>>
>>>
>> So this error hits again.
>>
>>  It's something related  to github. I've seen this on other repos and
>> solved it with a ticket to github - strangely I can't reproduce your issue
>> now on my host. As i recall the clone would fail if "--quiet" was used. Can
>> you confirm? Are you able to clone that repo manually? WIth "--quiet" too?
>>
>>  Andrei
>>
>>
>>  When I manually try:
>> $ git clone --quiet git://github.com/raspberrypi/linux.git
>> The process hangs
>>
>
> Wait a while and check if this fails after a while.
>
>  Andrei
>
>
> It failed the same as the build.
>
> ed@ed-Aspire-5560:~/temp$ git clone --quiet git://
> github.com/raspberrypi/linux.git
>
> fatal: read error: Connection reset by peer
> fatal: early EOF
> fatal: index-pack failed
>
> Any suggestions?
>
> Thanks
>
>
>
>
>
>
>
>

--20cf307c9f149d742a04d274ab12
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please submit a bug / contact github with the problem you =
found. And if you are so kind, please keep me posted.<div><br></div><div><b=
r></div></div><div class=3D"gmail_extra"><br clear=3D"all"><div><div style=
=3D"text-align:center">

</div><div style=3D"text-align:center"><div align=3D"left" style=3D"font-fa=
mily:&#39;Times New Roman&#39;;font-size:medium"><font face=3D"Arial" color=
=3D"#333333" size=3D"-1"><br><br><strong>Andrei Gherzan</strong></font><br>=
<font face=3D"Arial" color=3D"#333333" size=3D"-1">mobile +40.744.478.414=
=A0=A0fax +40.31.816.28.12</font><br>

<font face=3D"Arial" color=3D"#333333" size=3D"-1">Email: <a href=3D"mailto=
:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a></font><br><font=
 face=3D"Arial" color=3D"#333333" size=3D"-1">Email: <a href=3D"mailto:andr=
ei.gherzan@windriver.com" target=3D"_blank">andrei.gherzan@windriver.com</a=
></font><br>

<font face=3D"Arial" color=3D"#333333" size=3D"-1">Romania</font></div></di=
v></div>
<br><br><div class=3D"gmail_quote">On Thu, Jan 3, 2013 at 4:49 PM, ed nelso=
n <span dir=3D"ltr">&lt;<a href=3D"mailto:enelson1000@comcast.net" target=
=3D"_blank">enelson1000@comcast.net</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">


 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000"><div><div class=3D"h5">
    <div>On 01/02/2013 01:52 AM, Andrei Gherzan
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_extra">
          <div class=3D"gmail_quote">On Wed, Jan 2, 2013 at 6:12 AM, ed
            nelson <span dir=3D"ltr">&lt;<a href=3D"mailto:enelson1000@comc=
ast.net" target=3D"_blank">enelson1000@comcast.net</a>&gt;</span>
            wrote:<br>
            <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
              <div bgcolor=3D"#FFFFFF" text=3D"#000000">
                <div>
                  <div>
                    <div>On 01/01/2013 06:50 PM, Andrei Gherzan wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">On Tue, Jan 1, 2013 at 7:34 PM, ed
                        nelson <span dir=3D"ltr">&lt;<a href=3D"mailto:enel=
son1000@comcast.net" target=3D"_blank">enelson1000@comcast.net</a>&gt;</spa=
n>
                        wrote:<br>
                        <div dir=3D"ltr">
                          <div class=3D"gmail_extra">
                            <div class=3D"gmail_quote">
                              <blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,=
204);border-left-style:solid;padding-left:1ex">I
                                am getting a do_fetch failure on
                                raspberrypi kernel. =A0Is anyone else
                                having this problem?<br>
                                <br>
                                Build Configuration:<br>
                                BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.16.0&=
quot;<br>
                                TARGET_ARCH =A0 =A0 =A0 =3D &quot;arm&quot;=
<br>
                                TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux-g=
nueabi&quot;<br>
                                MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;raspb=
errypi&quot;<br>
                                DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;pok=
y&quot;<br>
                                DISTRO_VERSION =A0 =A0=3D &quot;1.3&quot;<b=
r>
                                TUNE_FEATURES =A0 =A0 =3D &quot;armv6 vfp&q=
uot;<br>
                                TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp&quo=
t;<br>
                                meta<br>
                                meta-yocto<br>
                                meta-yocto-bsp =A0 =A0=3D
                                &quot;danny:bf909b267498dbab4d7695c26b0dce9=
03ac8b6b0&quot;<br>
                                meta-raspberrypi =A0=3D
                                &quot;master:305c5259e24eaa9fb285ca983dc4f9=
454743fa0c&quot;<br>
                                <br>
                                NOTE: Resolving any missing task queue
                                dependencies<br>
                                NOTE: Preparing runqueue<br>
                                NOTE: Executing SetScene Tasks<br>
                                NOTE: Executing RunQueue Tasks<br>
                                WARNING: Failed to fetch URL git://<a href=
=3D"http://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.2=
.27" target=3D"_blank">github.com/raspberrypi/linux.git;protocol=3Dgit;bran=
ch=3Drpi-3.2.27</a>,
                                attempting MIRRORS if available<br>
                                ERROR: Fetcher failure: Fetch command
                                failed with exit code 128, output:<br>
                                Cloning into bare repository
&#39;/home/ed/oe/poky-danny/rasperryPiBuild/downloads/git2/github.com.raspb=
errypi.linux.git&#39;...<br>
                                <br>
                                fatal: read error: Connection reset by
                                peer<br>
                                fatal: early EOF<br>
                                fatal: index-pack failed<br>
                                <br>
                                ERROR: Function failed: Fetcher failure
                                for URL: &#39;git://<a href=3D"http://githu=
b.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.2.27" target=3D"_=
blank">github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.2.27<=
/a>&#39;.

                                Unable to fetch URL from any source.<br>
                                <br>
                              </blockquote>
                              <div>=A0</div>
                              <div>So this error hits again.=A0</div>
                              <div><br>
                              </div>
                              <div>It&#39;s something related =A0to github.
                                I&#39;ve seen this on other repos and solve=
d
                                it with a ticket to github - strangely I
                                can&#39;t=A0reproduce=A0your issue now on m=
y
                                host. As i recall the clone would fail
                                if &quot;--quiet&quot; was used. Can you co=
nfirm?
                                Are you able to clone that repo
                                manually? WIth &quot;--quiet&quot; too?</di=
v>
                              <div><br>
                              </div>
                              <div>Andrei</div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </blockquote>
                    <br>
                  </div>
                </div>
                When I manually try:<br>
                $ git clone --quiet git://<a href=3D"http://github.com/rasp=
berrypi/linux.git" target=3D"_blank">github.com/raspberrypi/linux.git</a><b=
r>
                The process hangs<br>
              </div>
            </blockquote>
            <div>=A0</div>
            <div>Wait a while and check if this fails after a
              while.=A0</div>
            <div><br>
            </div>
            <div>Andrei</div>
          </div>
        </div>
      </div>
    </blockquote>
    <br></div></div>
    It failed the same as the build.<br>
    <br>
    ed@ed-Aspire-5560:~/temp$ git clone --quiet
    git://<a href=3D"http://github.com/raspberrypi/linux.git" target=3D"_bl=
ank">github.com/raspberrypi/linux.git</a><div class=3D"im"><br>
    fatal: read error: Connection reset by peer<br>
    fatal: early EOF<br>
    fatal: index-pack failed<br>
    <br></div>
    Any suggestions?<br>
    <br>
    Thanks<br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
  </div>

</blockquote></div><br></div>

--20cf307c9f149d742a04d274ab12--
