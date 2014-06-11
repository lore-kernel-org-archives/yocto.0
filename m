Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C786EE00BC2; Wed, 11 Jun 2014 10:50:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2929CE0070F
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 10:50:50 -0700 (PDT)
Received: by mail-wg0-f50.google.com with SMTP id x13so91425wgg.9
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 10:50:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=1erx0UrYZjqeF5+rS/QD8v4TJ2yTGNZeIgwBfJcEXKM=;
	b=hLZcHKvFYFMMhe0+OGhMSEX/7BZCp2vQNNs5KwLMakQNc+/Mht5DB5eTwQ+ThzpVZX
	X4sM5/SYmKfqu/UA+HxFGhbERs65UgEa3olC01RXo3rASwkkFih+ibSkBoloqCr+jaed
	6Cp+sJb44HwxQYnzjrw0gB3TFWY/vZqWr+kBLgVS3ALFSBm/TmXyoR6RPoNoIvhk1BMi
	GfQkN2d2sD1UKv+Kl6FcMhP00J4P5JQpG4FjiG+r8wD6tsA25MKHjO2qarvpMhUNI3Qx
	3i0KMik0n1gNIWPAd1qVPMAPvQHNElT1aw0SGBiBN/ononEkngHO+EGSjsplAvzddO7O
	xnpw==
X-Gm-Message-State: ALoCoQlpog0ie7Cv1MjswpvUpKsepmnEEFn+PKf56vDFaFZdnukTYZX+XQvYTq6Ndae7RXfIyiyT
X-Received: by 10.180.81.1 with SMTP id v1mr12481790wix.10.1402509049802; Wed,
	11 Jun 2014 10:50:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Wed, 11 Jun 2014 10:50:29 -0700 (PDT)
X-Originating-IP: [82.137.12.98]
In-Reply-To: <5398955A.1090006@dynamicdevices.co.uk>
References: <cover.1402224537.git.ajlennon@dynamicdevices.co.uk>
	<e68eff99bd1d5efac6eb532a8f0b73ab673fceb7.1402224537.git.ajlennon@dynamicdevices.co.uk>
	<CAK18fxHboa0uRC0YfeGZmuFGUzWHnzTy8F25S6xtpWb+2UdRXw@mail.gmail.com>
	<5397947A.6050605@dynamicdevices.co.uk>
	<CAK18fxGgMPMY_zdtRnr0nHk9Dc4siGWY-dat-tw9uXVZwZW-qA@mail.gmail.com>
	<CAK18fxFiJPtF0oBmYzSb-kvARnSAkFu0uZ5T-8ipO8bCkpG2Vw@mail.gmail.com>
	<5398955A.1090006@dynamicdevices.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 11 Jun 2014 20:50:29 +0300
Message-ID: <CAK18fxGBj6rs1CsLgDJV4cNKbGTP+btJfc=pN24OW8So0=O29A@mail.gmail.com>
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
X-List-Received-Date: Wed, 11 Jun 2014 17:50:58 -0000
Content-Type: multipart/alternative; boundary=f46d044306a0b5419904fb931546

--f46d044306a0b5419904fb931546
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 11, 2014 at 8:43 PM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

>
> On 11/06/2014 18:24, Andrei Gherzan wrote:
>
>
>
> On Wed, Jun 11, 2014 at 11:19 AM, Alex J Lennon <
> ajlennon@dynamicdevices.co.uk> wrote:
>
>>
>> On 11/06/2014 08:47, Andrei Gherzan wrote:
>>
>>
>>
>>
>> On Wed, Jun 11, 2014 at 2:27 AM, Alex J Lennon <
>> ajlennon@dynamicdevices.co.uk> wrote:
>>
>>>
>>> On 10/06/2014 19:59, Andrei Gherzan wrote:
>>>
>>>  Hello Alex.
>>>
>>> On Sun, Jun 8, 2014 at 1:50 PM, Alex J Lennon <
>>> ajlennon@dynamicdevices.co.uk> wrote:
>>>
>>>> This changes the build slightly as there are some #ifdefs in there for
>>>> Raspberry Pi.
>>>>
>>>> Also the codec configuration file used by gstreamer1.0-omx codecs,
>>>> /etc/xdg/gstomx.conf,  is set correctly to
>>>> core-name=/usr/lib/libopenmaxil.so
>>>>
>>>> Change-Id: I2352ecabfd053717d9ccd2d22422e7d4b7588ce4
>>>> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
>>>> ---
>>>>  recipes-multimedia/gstreamer/gstreamer1.0-omx.inc            | 2 ++
>>>>  recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend | 1 +
>>>>
>>>
>>>  I was thinking we we really need two files for this... I know that
>>> yocto has an inc too. But i don't know if that really makes sense for one
>>> line. What do you think?
>>>
>>>
>>>
>>>  I came across Yocto best practice here. This is more or less why I
>>> provided a patch for consideration into Poky on this earlier today. It
>>> would help me, and I suspect other newbies, to have best practice
>>> expectations on how to put patches together somewhere up front, say in the
>>> README.
>>>
>>> "Do not merge .inc / .bb files"
>>>
>>>
>>> https://wiki.yoctoproject.org/wiki/Best_Known_Methods_(BKMs)_for_Package_Updating
>>>
>>
>>  I understand. But I think that this is the case only for bb files. We
>> are talking here about a bbappend in which case this would be pretty
>> useless. Nobody reuses an inc for a bbappend - never seen something like
>> that.
>>
>>
>> e.g. I have gstreamer1.0-omx_git.bbappend here which reuses the .inc
>> file. I didn't contribute it as for some reason the git build breaks and I
>> need to look at why this is
>>
>>
>    So, you say that if you merge your inc file in the bbappend one, the
> build breaks? It shouldn't really. I just tested and for me it works.
>
>
> Not quite. I mean that I am reusing the code in the .inc file in another
> .bbappend file, called gstreamer1.0-omx_git.bbappend
>
>
Got it now. Makes sense in this case, agreed.


> This is identical to gstreamer1.0-omx_1.0.0.bbappend in that it just
> requires the inc file, so I don't have duplication of code.
>
> Targetting gstreamer-omx 1.0.0 at the RPi works fine, but when I tried
> targetting the git source at RPi the build broke, so I didn't provide that
> recipe to you.
>
> e.g. with my local.conf set to PREFERRED_VERSION_gstreamer1.0-omx = "git"
> the git build gives this
>
> cc1: error: .../tmp/sysroots/raspberrypi/usr/include/vc: No such file or
> directory [-Werror]
> cc1: error: .../tmp/sysroots/raspberrypi/usr/include/interface: No such
> file or directory [-Werror]
> cc1: error: .../tmp/sysroots/raspberrypi/usr/include/interface/vcos: No
> such file or directory [-Werror]
> cc1: error:
> .../tmp/sysroots/raspberrypi/usr/include/interface/vcos/pthreads: No such
> file or directory $
> cc1: all warnings being treated as errors
> make[2]: *** [libgstomx_la-gstomxvideoenc.lo] Error 1
> make[2]: *** Waiting for unfinished jobs....
>
> I think there's something missing or some path not set correctly for the
> more recent gstreamer-omx code, but I haven't had a chance to look into it.
>
>
> Most probably you mangle some paths there. Needs some investigation.

>   By the way, I would use _append_raspberrypi for this one too.
>
>
>
>
> OK, I just tried this instead of the anonymous python method I created in
> the last patch-set.
>
> Perhaps I'm misunderstanding but, for example, we need
> GSTREAMER_1_0_OMX_TARGET set to 'rpi" when machine is raspberrypi
>
> When I try,
>
> GSTREAMER_1_0_OMX_TARGET_append_raspberrypi = "rpi"
>
> I end up with the original value 'bellagio' appended with 'rpi' to give
> 'bellagiorpi'
>
> Maybe I need something more like this?
>
> GSTREAMER_1_0_OMX_TARGET_override_raspberrypi = "rpi"
>
> Does such a mechanism exist in bitbake?
>
>
Yes. To override a variable you just don't use "append":
VARIABLE_mymachine = "my value"


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--f46d044306a0b5419904fb931546
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Jun 11, 2014 at 8:43 PM, Alex J Lennon <span dir=3D"ltr">&l=
t;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlenn=
on@dynamicdevices.co.uk</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><div><div>
    <br>
    <div>On 11/06/2014 18:24, Andrei Gherzan
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_extra"><br>
          <br>
          <div class=3D"gmail_quote">On Wed, Jun 11, 2014 at 11:19 AM,
            Alex J Lennon <span dir=3D"ltr">&lt;<a href=3D"mailto:ajlennon@=
dynamicdevices.co.uk" target=3D"_blank">ajlennon@dynamicdevices.co.uk</a>&g=
t;</span>
            wrote:<br>
            <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
              <div text=3D"#000000" bgcolor=3D"#FFFFFF"> <br>
                <div>On 11/06/2014 08:47, Andrei Gherzan wrote:<br>
                </div>
                <blockquote type=3D"cite">
                  <div dir=3D"ltr"><br>
                    <div class=3D"gmail_extra"><br>
                      <br>
                      <div class=3D"gmail_quote">On Wed, Jun 11, 2014 at
                        2:27 AM, Alex J Lennon <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dynam=
icdevices.co.uk</a>&gt;</span>
                        wrote:<br>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
                          <div text=3D"#000000" bgcolor=3D"#FFFFFF">
                            <div> <br>
                              <div>On 10/06/2014 19:59, Andrei Gherzan
                                wrote:<br>
                              </div>
                              <blockquote type=3D"cite">
                                <div dir=3D"ltr">
                                  <div class=3D"gmail_extra">Hello Alex.</d=
iv>
                                  <div class=3D"gmail_extra"><br>
                                    <div class=3D"gmail_quote">On Sun, Jun
                                      8, 2014 at 1:50 PM, Alex J Lennon
                                      <span dir=3D"ltr">&lt;<a href=3D"mail=
to:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dynamicdevices=
.co.uk</a>&gt;</span>
                                      wrote:<br>
                                      <blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This
                                        changes the build slightly as
                                        there are some #ifdefs in there
                                        for Raspberry Pi.<br>
                                        <br>
                                        Also the codec configuration
                                        file used by gstreamer1.0-omx
                                        codecs, /etc/xdg/gstomx.conf,
                                        =C2=A0is set correctly to
                                        core-name=3D/usr/lib/libopenmaxil.s=
o<br>
                                        <br>
                                        Change-Id:
                                        I2352ecabfd053717d9ccd2d22422e7d4b7=
588ce4<br>
                                        Signed-off-by: Alex J Lennon
                                        &lt;<a href=3D"mailto:ajlennon@dyna=
micdevices.co.uk" target=3D"_blank">ajlennon@dynamicdevices.co.uk</a>&gt;<b=
r>
                                        ---<br>
                                        <div>=C2=A0recipes-multimedia/gstre=
amer/gstreamer1.0-omx.inc


                                          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0| 2 ++<br>
                                          =C2=A0recipes-multimedia/gstreame=
r/gstreamer1.0-omx_1.0.0.bbappend


                                          | 1 +<br>
                                        </div>
                                      </blockquote>
                                      <div><br>
                                      </div>
                                      <div>I was thinking we we really
                                        need two files for this... I
                                        know that yocto has an inc too.
                                        But i don&#39;t know if that really
                                        makes sense for one line. What
                                        do you think?=C2=A0</div>
                                      <div>=C2=A0</div>
                                    </div>
                                  </div>
                                </div>
                              </blockquote>
                              <br>
                            </div>
                            I came across Yocto best practice here. This
                            is more or less why I provided a patch for
                            consideration into Poky on this earlier
                            today. It would help me, and I suspect other
                            newbies, to have best practice expectations
                            on how to put patches together somewhere up
                            front, say in the README.<br>
                            <br>
                            &quot;Do not merge .inc / .bb files&quot; <br>
                            <br>
                            <a href=3D"https://wiki.yoctoproject.org/wiki/B=
est_Known_Methods_%28BKMs%29_for_Package_Updating" target=3D"_blank">https:=
//wiki.yoctoproject.org/wiki/Best_Known_Methods_(BKMs)_for_Package_Updating=
</a></div>



                        </blockquote>
                        <div><br>
                        </div>
                        <div>I understand. But I think that this is the
                          case only for bb files. We are talking here
                          about a bbappend in which case this would be
                          pretty useless. Nobody reuses an inc for a
                          bbappend - never seen something like that.=C2=A0<=
/div>
                      </div>
                    </div>
                  </div>
                </blockquote>
                <br>
                e.g. I have gstreamer1.0-omx_git.bbappend here which
                reuses the .inc file. I didn&#39;t contribute it as for som=
e
                reason the git build breaks and I need to look at why
                this is<br>
                <br>
                <div>
                  <div> </div>
                </div>
              </div>
            </blockquote>
          </div>
          <div class=3D"gmail_extra"><br>
          </div>
        </div>
      </div>
    </blockquote>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_extra">So, you say that if you merge your inc
          file in the bbappend one, the build breaks? It shouldn&#39;t
          really. I just tested and for me it works.=C2=A0</div>
        <div class=3D"gmail_extra">
          <br>
        </div>
      </div>
    </blockquote>
    <br></div></div>
    Not quite. I mean that I am reusing the code in the .inc file in
    another .bbappend file, called gstreamer1.0-omx_git.bbappend <br>
    <br></div></blockquote><div><br></div><div>Got it now. Makes sense in t=
his case, agreed.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 text=3D"#000000" bgcolor=3D"#FFFFFF">



    This is identical to gstreamer1.0-omx_1.0.0.bbappend in that it just
    requires the inc file, so I don&#39;t have duplication of code.<br>
    <br>
    Targetting gstreamer-omx 1.0.0 at the RPi works fine, but when I
    tried targetting the git source at RPi the build broke, so I didn&#39;t
    provide that recipe to you.<br>
    <br>
    e.g. with my local.conf set to PREFERRED_VERSION_gstreamer1.0-omx =3D
    &quot;git&quot; the git build gives this<br>
    <br>
    cc1: error: .../tmp/sysroots/raspberrypi/usr/include/vc: No such
    file or directory [-Werror]<br>
    cc1: error: .../tmp/sysroots/raspberrypi/usr/include/interface: No
    such file or directory [-Werror]<br>
    cc1: error: .../tmp/sysroots/raspberrypi/usr/include/interface/vcos:
    No such file or directory [-Werror]<br>
    cc1: error:
    .../tmp/sysroots/raspberrypi/usr/include/interface/vcos/pthreads: No
    such file or directory $<br>
    cc1: all warnings being treated as errors<br>
    make[2]: *** [libgstomx_la-gstomxvideoenc.lo] Error 1<br>
    make[2]: *** Waiting for unfinished jobs....<br>
    <br>
    I think there&#39;s something missing or some path not set correctly fo=
r
    the more recent gstreamer-omx code, but I haven&#39;t had a chance to
    look into it.<div><br>
    <br></div></div></blockquote><div>Most probably you mangle some paths t=
here. Needs some investigation.=C2=A0</div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div text=3D"#000000" bgcolor=3D"#FFFFFF">


<div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_extra">By the way, I would use
          _append_raspberrypi for this one too.<br>
          <br clear=3D"all">
          <div><br>
          </div>
          <br>
        </div>
      </div>
    </blockquote>
    <br></div>
    OK, I just tried this instead of the anonymous python method I
    created in the last patch-set.<br>
    <br>
    Perhaps I&#39;m misunderstanding but, for example, we need
    GSTREAMER_1_0_OMX_TARGET set to &#39;rpi&quot; when machine is raspberr=
ypi<br>
    <br>
    When I try,<br>
    <br>
    GSTREAMER_1_0_OMX_TARGET_append_raspberrypi =3D &quot;rpi&quot;<br>
    <br>
    I end up with the original value &#39;bellagio&#39; appended with &#39;=
rpi&#39; to
    give &#39;bellagiorpi&#39;<br>
    <br>
    Maybe I need something more like this?<br>
    <br>
    GSTREAMER_1_0_OMX_TARGET_override_raspberrypi =3D &quot;rpi&quot;<br>
    <br>
    Does such a mechanism exist in bitbake?<br>
    <br></div></blockquote><div><br></div><div>Yes. To override a variable =
you just don&#39;t use &quot;append&quot;:</div><div>VARIABLE_mymachine =3D=
 &quot;my value&quot;</div></div><br clear=3D"all"><div><br></div>-- <br><d=
iv dir=3D"ltr">


<div style=3D"text-align:center"></div><div style=3D"text-align:center"><di=
v align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-size:m=
edium"><b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;te=
xt-align:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" s=
ize=3D"-1"><br>


</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: <a href=3D"tel=
:%2B40.744.478.414" value=3D"+40744478414" target=3D"_blank">+40.744.478.41=
4</a> | =C2=A0f: <a href=3D"tel:%2B40.31.816.28.12" value=3D"+40318162812" =
target=3D"_blank">+40.31.816.28.12</a></font><br>

</div></div></div>
</div></div>

--f46d044306a0b5419904fb931546--
