Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C1F3E00BC2; Wed, 11 Jun 2014 09:59:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-we0-f182.google.com (mail-we0-f182.google.com
	[74.125.82.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FD89E0070F
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 09:59:37 -0700 (PDT)
Received: by mail-we0-f182.google.com with SMTP id q59so16544wes.41
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 09:59:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=DJ07lOojADX/Pz9iL//dVnTxc8jffeenOfw2BTnuZEc=;
	b=jw1bshqkChQmaLXH3RHQSMPzlgd2CN47A6ExN2/77MNTde0f9XMcopmwUs2aSBODM4
	dE/TMo7y3zHwK9yJlOx2E4+C7kYnRkTx3aYQK5OEzo2gCqF5DozMDc+2OZa51HnF++wG
	jQgqGIa/bJOu+uMxW5aWsfzoN59KSYFKAmZMOabnfOUjsV7NF+0BA6LcT5AVjvWsolI8
	/BNfdFdvGDBaAJQ8a1BIBlLfGykKKXMTrTQFTCeJyHdcQoEs6Q61EZ3OOJ87T8ujwPra
	gamDM+pIVdSwvQ7i+HMxkYEWs7tM9i7qaOW4+v7mWyeDiPPD8y+bBZKiQ8Grdn+smxjJ
	NU3w==
X-Gm-Message-State: ALoCoQki1RROMPfhZUWcwW976QFR0bIOfwDGexCWnjFxzrWuSZS8UStb/COWSeNsIeNEnUbEhNM+
X-Received: by 10.180.94.163 with SMTP id dd3mr48931999wib.26.1402505976389;
	Wed, 11 Jun 2014 09:59:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Wed, 11 Jun 2014 09:59:16 -0700 (PDT)
X-Originating-IP: [82.137.12.98]
In-Reply-To: <53988974.6090409@dynamicdevices.co.uk>
References: <cover.1400594463.git.ajlennon@dynamicdevices.co.uk>
	<CAK18fxGb7aYv1f-3qfoJDiNKM4C7FfiKVOUJk5D0JaU7uCEnig@mail.gmail.com>
	<53988974.6090409@dynamicdevices.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 11 Jun 2014 19:59:16 +0300
Message-ID: <CAK18fxHRwhvnbW08zWQzgcCYhFHNMkCqa6g_Nb1-0FjgQGpOOQ@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 0/1] pi-blaster: Add recipe
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
X-List-Received-Date: Wed, 11 Jun 2014 16:59:48 -0000
Content-Type: multipart/alternative; boundary=f46d04462e5e84fd8504fb925e5f

--f46d04462e5e84fd8504fb925e5f
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 11, 2014 at 7:53 PM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

>
> On 10/06/2014 20:50, Andrei Gherzan wrote:
>
> Hi Alex,
>
>
> On Tue, May 20, 2014 at 5:40 PM, Alex J Lennon <
> ajlennon@dynamicdevices.co.uk> wrote:
>
>> Please see following patch for details.
>>
>> The following changes since commit
>> f3a8693f08f99893453fd1fe282515b2f222c080:
>>
>>   omxplayer: Update to remote's HEAD (2014-05-09 14:56:59 +0300)
>>
>> are available in the git repository at:
>>
>>   git://github.com/DynamicDevices/meta-raspberrypi ajl/pi-blaster
>>   https://github.com/DynamicDevices/meta-raspberrypi/tree/master
>>
>> Alex J Lennon (1):
>>   pi-blaster: Added recipe
>>
>>  recipes-devtools/pi-blaster/files/initscript.patch | 71
>> ++++++++++++++++++++++
>>  recipes-devtools/pi-blaster/pi-blaster.inc         | 36 +++++++++++
>>  recipes-devtools/pi-blaster/pi-blaster_git.bb      |  3 +
>>  3 files changed, 110 insertions(+)
>>  create mode 100644 recipes-devtools/pi-blaster/files/initscript.patch
>>  create mode 100644 recipes-devtools/pi-blaster/pi-blaster.inc
>>  create mode 100644 recipes-devtools/pi-blaster/pi-blaster_git.bb
>
>
>  You missed the actual patch so I will give my feedback listed below:
> 1. Refactor commit log.
> 2. One space left after "oe_runmake".
> 3. Why exactly do you need oe_runmake after all?
> 4. I would replace the do install/configure appends with a patch on
> Makefile (would be useful for the project's maintainer too).
> 5. Please add comments to patches too. Here is an example:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch
>
>
> Thanks for the comprehensive response Andrei, and also for the link to the
> OpenEmbedded Commit Patch Message Guidelines - very useful.
>
> I've reworked the pi-blaster recipe, hopefully in line with your comments,
> and pushed a second patch-set up to the review server.
>
> Regards,
>
> Alex
>
>
Great work. Everything seems right now. Merged.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--f46d04462e5e84fd8504fb925e5f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Jun 11, 2014 at 7:53 PM, Alex J Lennon <span dir=3D"ltr">&l=
t;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlenn=
on@dynamicdevices.co.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><div><div class=3D"h5">
    <br>
    <div>On 10/06/2014 20:50, Andrei Gherzan
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hi Alex,<br>
        <div class=3D"gmail_extra"><br>
          <br>
          <div class=3D"gmail_quote">On Tue, May 20, 2014 at 5:40 PM, Alex
            J Lennon <span dir=3D"ltr">&lt;<a href=3D"mailto:ajlennon@dynam=
icdevices.co.uk" target=3D"_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</s=
pan>
            wrote:<br>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-s=
tyle:solid;padding-left:1ex">Please
              see following patch for details.<br>
              <br>
              The following changes since commit
              f3a8693f08f99893453fd1fe282515b2f222c080:<br>
              <br>
              =C2=A0 omxplayer: Update to remote&#39;s HEAD (2014-05-09 14:=
56:59
              +0300)<br>
              <br>
              are available in the git repository at:<br>
              <br>
              =C2=A0 <a>git://</a><a href=3D"http://github.com/DynamicDevic=
es/meta-raspberrypi" target=3D"_blank">github.com/DynamicDevices/meta-raspb=
errypi</a>
              ajl/pi-blaster<br>
              =C2=A0 <a href=3D"https://github.com/DynamicDevices/meta-rasp=
berrypi/tree/master" target=3D"_blank">https://github.com/DynamicDevices/me=
ta-raspberrypi/tree/master</a><br>
              <br>
              Alex J Lennon (1):<br>
              =C2=A0 pi-blaster: Added recipe<br>
              <br>
              =C2=A0recipes-devtools/pi-blaster/files/initscript.patch | 71
              ++++++++++++++++++++++<br>
              =C2=A0recipes-devtools/pi-blaster/pi-blaster.inc =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 | 36
              +++++++++++<br>
              =C2=A0recipes-devtools/pi-blaster/<a href=3D"http://pi-blaste=
r_git.bb" target=3D"_blank">pi-blaster_git.bb</a>
              =C2=A0 =C2=A0 =C2=A0| =C2=A03 +<br>
              =C2=A03 files changed, 110 insertions(+)<br>
              =C2=A0create mode 100644
              recipes-devtools/pi-blaster/files/initscript.patch<br>
              =C2=A0create mode 100644
              recipes-devtools/pi-blaster/pi-blaster.inc<br>
              =C2=A0create mode 100644 recipes-devtools/pi-blaster/<a href=
=3D"http://pi-blaster_git.bb" target=3D"_blank">pi-blaster_git.bb</a></bloc=
kquote>
            <div><br>
            </div>
            <div>You missed the actual patch so I will give my feedback
              listed below:</div>
            <div>1. Refactor commit log.</div>
            <div>2. One space left after &quot;oe_runmake&quot;.</div>
            <div>3. Why exactly do you need oe_runmake after all?</div>
            <div>4. I would replace the do install/configure appends
              with a patch on Makefile (would be useful for the
              project&#39;s maintainer too).</div>
            <div>5. Please add comments to patches too. Here is an
              example:</div>
            <div><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-=
raspberrypi/tree/recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to=
-script.patch" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/=
meta-raspberrypi/tree/recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relati=
ve-to-script.patch</a><br>


            </div>
            <div><br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br></div></div>
    Thanks for the comprehensive response Andrei, and also for the link
    to the OpenEmbedded Commit Patch Message Guidelines - very useful.<br>
    <br>
    I&#39;ve reworked the pi-blaster recipe, hopefully in line with your
    comments, and pushed a second patch-set up to the review server.<br>
    <br>
    Regards,<br>
    <br>
    Alex<br>
    <br>
  </div>

</blockquote></div><br>Great work. Everything seems right now. Merged.<br c=
lear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"><div style=3D"text-alig=
n:center"></div><div style=3D"text-align:center"><div align=3D"left" style=
=3D"font-family:&#39;Times New Roman&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =C2=A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--f46d04462e5e84fd8504fb925e5f--
