Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92D31E00BC2; Wed, 11 Jun 2014 10:24:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA2C5E0070F
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 10:24:24 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id n3so1572067wiv.2
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 10:24:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=gVRsuyQtdd3cvjMPIqpsZ2dVEK2C5pnzLclKgvVxeAE=;
	b=EvRB6birJfXdzq297UByuuFmuWrjolt0IMcIhQT8JbQCIiCHlq+H3+slk9rxvh5lBL
	b73Bj7BfoZcCaB3ni/klcYJdf0eh8MJCX9OKIz95gVzoac0UPHPMpe68iu3fytLsu6sD
	KliAWFA/bw4SBA8IeMsonsrIh6B222iyUEejarrEQBhE3DgiPcxbSZPQsQXMtWTVsJW1
	G3q5f28GNex4I8xx/kb476AyUNSQZeoTb5LXbMyVmhEKd0TfPab0J1KIbmGPUYz5tj/+
	zz9qQMjsmwmqEY9zfWhO3a+fkgvG3eA01EO+I4E4jN9EWqSsOfy4F0Tc36BfZAQZ90QS
	FsLw==
X-Gm-Message-State: ALoCoQnWgvZkS4/umRp2rj7lpJOX2L5/6k+2ylRHCFbdd86m8DNBFAAYmLd2vYe8tst6OJqDLZTA
X-Received: by 10.180.94.163 with SMTP id dd3mr49122929wib.26.1402507463436;
	Wed, 11 Jun 2014 10:24:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Wed, 11 Jun 2014 10:24:03 -0700 (PDT)
X-Originating-IP: [82.137.12.98]
In-Reply-To: <CAK18fxGgMPMY_zdtRnr0nHk9Dc4siGWY-dat-tw9uXVZwZW-qA@mail.gmail.com>
References: <cover.1402224537.git.ajlennon@dynamicdevices.co.uk>
	<e68eff99bd1d5efac6eb532a8f0b73ab673fceb7.1402224537.git.ajlennon@dynamicdevices.co.uk>
	<CAK18fxHboa0uRC0YfeGZmuFGUzWHnzTy8F25S6xtpWb+2UdRXw@mail.gmail.com>
	<5397947A.6050605@dynamicdevices.co.uk>
	<CAK18fxGgMPMY_zdtRnr0nHk9Dc4siGWY-dat-tw9uXVZwZW-qA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 11 Jun 2014 20:24:03 +0300
Message-ID: <CAK18fxFiJPtF0oBmYzSb-kvARnSAkFu0uZ5T-8ipO8bCkpG2Vw@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] gstreamer1.0-omx: Target Raspberry Pi instead of Bellagio.
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
X-List-Received-Date: Wed, 11 Jun 2014 17:24:27 -0000
Content-Type: multipart/alternative; boundary=f46d04462e5e273c8a04fb92b7cb

--f46d04462e5e273c8a04fb92b7cb
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 11, 2014 at 11:19 AM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

>
> On 11/06/2014 08:47, Andrei Gherzan wrote:
>
>
>
>
> On Wed, Jun 11, 2014 at 2:27 AM, Alex J Lennon <
> ajlennon@dynamicdevices.co.uk> wrote:
>
>>
>> On 10/06/2014 19:59, Andrei Gherzan wrote:
>>
>>  Hello Alex.
>>
>> On Sun, Jun 8, 2014 at 1:50 PM, Alex J Lennon <
>> ajlennon@dynamicdevices.co.uk> wrote:
>>
>>> This changes the build slightly as there are some #ifdefs in there for
>>> Raspberry Pi.
>>>
>>> Also the codec configuration file used by gstreamer1.0-omx codecs,
>>> /etc/xdg/gstomx.conf,  is set correctly to
>>> core-name=/usr/lib/libopenmaxil.so
>>>
>>> Change-Id: I2352ecabfd053717d9ccd2d22422e7d4b7588ce4
>>> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
>>> ---
>>>  recipes-multimedia/gstreamer/gstreamer1.0-omx.inc            | 2 ++
>>>  recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend | 1 +
>>>
>>
>>  I was thinking we we really need two files for this... I know that
>> yocto has an inc too. But i don't know if that really makes sense for one
>> line. What do you think?
>>
>>
>>
>>  I came across Yocto best practice here. This is more or less why I
>> provided a patch for consideration into Poky on this earlier today. It
>> would help me, and I suspect other newbies, to have best practice
>> expectations on how to put patches together somewhere up front, say in the
>> README.
>>
>> "Do not merge .inc / .bb files"
>>
>>
>> https://wiki.yoctoproject.org/wiki/Best_Known_Methods_(BKMs)_for_Package_Updating
>>
>
>  I understand. But I think that this is the case only for bb files. We
> are talking here about a bbappend in which case this would be pretty
> useless. Nobody reuses an inc for a bbappend - never seen something like
> that.
>
>
> e.g. I have gstreamer1.0-omx_git.bbappend here which reuses the .inc file.
> I didn't contribute it as for some reason the git build breaks and I need
> to look at why this is
>
>
So, you say that if you merge your inc file in the bbappend one, the build
breaks? It shouldn't really. I just tested and for me it works.

By the way, I would use _append_raspberrypi for this one too.


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--f46d04462e5e273c8a04fb92b7cb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quo=
te">On Wed, Jun 11, 2014 at 11:19 AM, Alex J Lennon <span dir=3D"ltr">&lt;<=
a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@=
dynamicdevices.co.uk</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <br>
    <div>On 11/06/2014 08:47, Andrei Gherzan
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_extra"><br>
          <br>
          <div class=3D"gmail_quote">On Wed, Jun 11, 2014 at 2:27 AM, Alex
            J Lennon <span dir=3D"ltr">&lt;<a href=3D"mailto:ajlennon@dynam=
icdevices.co.uk" target=3D"_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</s=
pan>
            wrote:<br>
            <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
              <div text=3D"#000000" bgcolor=3D"#FFFFFF">
                <div> <br>
                  <div>On 10/06/2014 19:59, Andrei Gherzan wrote:<br>
                  </div>
                  <blockquote type=3D"cite">
                    <div dir=3D"ltr">
                      <div class=3D"gmail_extra">Hello Alex.</div>
                      <div class=3D"gmail_extra"><br>
                        <div class=3D"gmail_quote">On Sun, Jun 8, 2014 at
                          1:50 PM, Alex J Lennon <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dyn=
amicdevices.co.uk</a>&gt;</span>
                          wrote:<br>
                          <blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This changes
                            the build slightly as there are some #ifdefs
                            in there for Raspberry Pi.<br>
                            <br>
                            Also the codec configuration file used by
                            gstreamer1.0-omx codecs,
                            /etc/xdg/gstomx.conf, =C2=A0is set correctly to
                            core-name=3D/usr/lib/libopenmaxil.so<br>
                            <br>
                            Change-Id:
                            I2352ecabfd053717d9ccd2d22422e7d4b7588ce4<br>
                            Signed-off-by: Alex J Lennon &lt;<a href=3D"mai=
lto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dynamicdevice=
s.co.uk</a>&gt;<br>
                            ---<br>
                            <div>=C2=A0recipes-multimedia/gstreamer/gstream=
er1.0-omx.inc

                              =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 =
++<br>
                              =C2=A0recipes-multimedia/gstreamer/gstreamer1=
.0-omx_1.0.0.bbappend

                              | 1 +<br>
                            </div>
                          </blockquote>
                          <div><br>
                          </div>
                          <div>I was thinking we we really need two
                            files for this... I know that yocto has an
                            inc too. But i don&#39;t know if that really
                            makes sense for one line. What do you
                            think?=C2=A0</div>
                          <div>=C2=A0</div>
                        </div>
                      </div>
                    </div>
                  </blockquote>
                  <br>
                </div>
                I came across Yocto best practice here. This is more or
                less why I provided a patch for consideration into Poky
                on this earlier today. It would help me, and I suspect
                other newbies, to have best practice expectations on how
                to put patches together somewhere up front, say in the
                README.<br>
                <br>
                &quot;Do not merge .inc / .bb files&quot; <br>
                <br>
                <a href=3D"https://wiki.yoctoproject.org/wiki/Best_Known_Me=
thods_%28BKMs%29_for_Package_Updating" target=3D"_blank">https://wiki.yocto=
project.org/wiki/Best_Known_Methods_(BKMs)_for_Package_Updating</a></div>
            </blockquote>
            <div><br>
            </div>
            <div>I understand. But I think that this is the case only
              for bb files. We are talking here about a bbappend in
              which case this would be pretty useless. Nobody reuses an
              inc for a bbappend - never seen something like that.=C2=A0</d=
iv>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    e.g. I have gstreamer1.0-omx_git.bbappend here which reuses the .inc
    file. I didn&#39;t contribute it as for some reason the git build break=
s
    and I need to look at why this is<br>
    <br>
    <div>
      <div> </div>
    </div>
  </div>

</blockquote></div><div class=3D"gmail_extra"><br></div>So, you say that if=
 you merge your inc file in the bbappend one, the build breaks? It shouldn&=
#39;t really. I just tested and for me it works.=C2=A0</div><div class=3D"g=
mail_extra">


<br></div><div class=3D"gmail_extra">By the way, I would use _append_raspbe=
rrypi for this one too.<br><br clear=3D"all"><div><br></div>-- <br><div dir=
=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-align:ce=
nter">


<div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-siz=
e:medium"><b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small=
;text-align:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333=
" size=3D"-1"><br>


</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: <a href=3D"tel=
:%2B40.744.478.414" value=3D"+40744478414" target=3D"_blank">+40.744.478.41=
4</a> | =C2=A0f: <a href=3D"tel:%2B40.31.816.28.12" value=3D"+40318162812" =
target=3D"_blank">+40.31.816.28.12</a></font><br>

</div></div></div>
</div></div>

--f46d04462e5e273c8a04fb92b7cb--
