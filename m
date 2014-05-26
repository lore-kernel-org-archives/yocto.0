Return-Path: <vaduva.jan.alexandru@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3CA4E00B20; Mon, 26 May 2014 11:47:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduva.jan.alexandru[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-we0-f176.google.com (unknown [74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0A8CE0073D
	for <yocto@yoctoproject.org>; Mon, 26 May 2014 11:47:15 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id q59so8526917wes.35
	for <yocto@yoctoproject.org>; Mon, 26 May 2014 11:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=GgTJOHf7xJ+St7uKTZ17L4EnPbwZWuF2OA/jO+HOOzI=;
	b=KfTM6iSJKOIts9vdc2hEVRVRlkr1wloDuapTaFrVbp74eeklgVC6y3AvuUbLXBFk45
	lWE4+QWogCUuIRnTuHCFP2jJf5geeHQWEdQHCEbmhkRfxv/OpHJEqvKw64p0q1hYPYln
	AFwCrygOlxN/pX+ujirjjNh5edegqR+ICP+g9If9UM1LYrGWWmq5hDkh5OrnsiIECAYF
	HG0iCxghJCqEvs4OlcErcscsl318z/+XuKSgqivpj6BGODwF3JyzBwBqnDjQ6ZcdEzic
	wg1WiMBDsWTdwDBzlYXlEaD5AXNWYPGDHn3nW3+ebDEHSxOvQC8NeyhqaYSRYFSU/A8g
	inzg==
MIME-Version: 1.0
X-Received: by 10.180.72.243 with SMTP id g19mr30698035wiv.44.1401129647853;
	Mon, 26 May 2014 11:40:47 -0700 (PDT)
Received: by 10.194.133.1 with HTTP; Mon, 26 May 2014 11:40:47 -0700 (PDT)
In-Reply-To: <5383891A.4050109@dynamicdevices.co.uk>
References: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>
	<528B9049.7010704@mlbassoc.com>
	<CAK18fxFgx_d2wdwEG+WTknqFynKHKU1Hd7p7h1T+gXgtXqXNGQ@mail.gmail.com>
	<CABwVrCrvXJvMspai9GVf0eJCXhEXZpyk2ibDwKiMPKxRFJzt7g@mail.gmail.com>
	<5381D5B3.1070509@dynamicdevices.co.uk>
	<1401051077.12067.YahooMailNeo@web122504.mail.ne1.yahoo.com>
	<538319DB.40309@dynamicdevices.co.uk>
	<5383805E.4020603@dynamicdevices.co.uk>
	<CABwVrCp-mCsYZiWiLV_LMzKRgaoSoRVhftwAvqq-9Cx+KiiYcw@mail.gmail.com>
	<5383891A.4050109@dynamicdevices.co.uk>
Date: Mon, 26 May 2014 21:40:47 +0300
Message-ID: <CABwVrCoNRULO9xBFLeXMfrX7sc+dHCb1o-t_oR5vBtuc+Jeiww@mail.gmail.com>
From: Alexandru Vaduva <vaduva.jan.alexandru@gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Gary Thomas <gary@mlbassoc.com>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Using the camera
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
X-List-Received-Date: Mon, 26 May 2014 18:47:18 -0000
Content-Type: multipart/alternative; boundary=f46d043c813ef1db9b04fa51ea23

--f46d043c813ef1db9b04fa51ea23
Content-Type: text/plain; charset=UTF-8

It`s really hard to just offer impressions or suggestion.
Also I agree with the fact that the camera is ok cause I also tested it
with raspbian. No problems there.
But never the less I hope to keep me posted on any progress and
observations.
When I will have the time I will try some things of my own.

Alex


On Mon, May 26, 2014 at 9:34 PM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

>
> On 26/05/2014 19:24, Alexandru Vaduva wrote:
>
>   I do not believe the mmal_component is missing from the rootfs or it is
> not enabled somehow.
>  I hate to mention this but it may have something to do with the the
> functionality of the component.
>  Try this: https://github.com/raspberrypi/linux/issues/435
>  Also something like strace or even 'sudo vcdbg syms | grep -i cam' would
> be useful if available of
> the rootfs.
>
>
>
> That's interesting. I wonder if that is related to the issue I found with
> w1-gpio the other day?
>
> w1-gpio is given GPIO0 as a pullup pin by the BSP so it takes control of
> it for that purpose, possibly breaking the I2C bus as mentioned in your link
>
> Issue: https://github.com/raspberrypi/linux/issues/601
>
> My fix is here: https://github.com/raspberrypi/linux/pull/602
>
> I'm not loading the w1-gpio at present though so I don't believe it is
> causing the problem
>
> (In fact - at any point I can run mjpg-streamer and that will work! So I
> know the camera is OK...)
>
>
>  Sorry for this type of interaction. I am really busy with some other
> project.
>  If nothing works we could use OpenMax as you suggested to interact with
> the camera, but I still hope
>  this problem can be fixed.
>
>
> No problem Alex. I appreciate any thoughts at all :)
>
> I think next I'm going to have a look at gstreamer1.0-omx and see where
> that gets me...
>
> Cheers,
>
> Alex
>
>

--f46d043c813ef1db9b04fa51ea23
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>It`s really hard to just offer impressions =
or suggestion.<br></div><div>Also I agree with the fact that the camera is =
ok cause I also tested it with raspbian. No problems there.<br></div>But ne=
ver the less I hope to keep me posted on any progress and observations.<br>
</div>When I will have the time I will try some things of my own.<br><br></=
div>Alex<br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_qu=
ote">On Mon, May 26, 2014 at 9:34 PM, Alex J Lennon <span dir=3D"ltr">&lt;<=
a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@=
dynamicdevices.co.uk</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><div class=3D"">
    <br>
    <div>On 26/05/2014 19:24, Alexandru Vaduva
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div>
            <div>
              <div>I do not believe the mmal_component is missing from
                the rootfs or it is not enabled somehow.<br>
              </div>
              I hate to mention this but it may have something to do
              with the the functionality of the component.<br>
            </div>
            Try this: <a href=3D"https://github.com/raspberrypi/linux/issue=
s/435" target=3D"_blank">https://github.com/raspberrypi/linux/issues/435</a=
><br>
          </div>
          <div>Also something like strace or even <code>&#39;sudo vcdbg
              syms | grep -i cam&#39; </code>would be useful if available
            of <br>
            the rootfs. <br>
          </div>
          <div>=C2=A0<br>
          </div>
        </div>
      </div>
    </blockquote>
    <br></div>
    That&#39;s interesting. I wonder if that is related to the issue I foun=
d
    with w1-gpio the other day? <br>
    <br>
    w1-gpio is given GPIO0 as a pullup pin by the BSP so it takes
    control of it for that purpose, possibly breaking the I2C bus as
    mentioned in your link<br>
    <br>
    Issue: <a href=3D"https://github.com/raspberrypi/linux/issues/601" targ=
et=3D"_blank">https://github.com/raspberrypi/linux/issues/601</a> <br>
    <br>
    My fix is here: <a href=3D"https://github.com/raspberrypi/linux/pull/60=
2" target=3D"_blank">https://github.com/raspberrypi/linux/pull/602</a><br>
    <br>
    I&#39;m not loading the w1-gpio at present though so I don&#39;t believ=
e it
    is causing the problem<br>
    <br>
    (In fact - at any point I can run mjpg-streamer and that will work!
    So I know the camera is OK...)<div class=3D""><br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Sorry for this type of interaction. I am really busy with
          some other project.<br>
        </div>
        <div>If nothing works we could use OpenMax as you suggested to
          interact with the camera, but I still hope<br>
        </div>
        <div>this problem can be fixed.<br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote>
    <br></div>
    No problem Alex. I appreciate any thoughts at all :)<br>
    <br>
    I think next I&#39;m going to have a look at gstreamer1.0-omx and see
    where that gets me...<br>
    <br>
    Cheers,<br>
    <br>
    Alex<br>
    <br>
    <div>
      <div> </div>
    </div>
  </div>

</blockquote></div><br></div>

--f46d043c813ef1db9b04fa51ea23--
