Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42A38E0093A; Sun, 30 Nov 2014 23:05:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A25DE0084A
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 23:05:00 -0800 (PST)
Received: by mail-ig0-f177.google.com with SMTP id z20so8306196igj.16
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 23:04:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=EVn489hAMC1gyLHFyUKQIRaUIYu5y6Zf2DjqgjM9k0Q=;
	b=JboNGiyvEqVXIXJnibLJawWCZJ6Hllpo1GOtW/q7ke9abElaHD4HvirruafWcv7CV4
	JN9IYImQUfSSeLdaRnEKCgbpTQjkWoFQK8s2HvxWl4eemIHjcm/KP042au75c/iMrd1t
	Xv81rQ38Dv+eA8ibZMlprgbuqEwLls9UN20X3gDOO42jyxKQPzMZDZqt05l7LyUFTtKV
	96ItK5V/IPa/a3/98sZf5Eccl8Rb2mbPieg76nxK2zmCrkdEH4Ryo851YxFuci3aNyrU
	kDPphnFvsj7OLBwmG5G8T0Kn9nMfcUXrsdbUAy0monol3VYOW3uFwsLZg7BcAcsOMOQB
	azjA==
MIME-Version: 1.0
X-Received: by 10.43.129.196 with SMTP id hj4mr14039804icc.21.1417417499442;
	Sun, 30 Nov 2014 23:04:59 -0800 (PST)
Received: by 10.107.10.7 with HTTP; Sun, 30 Nov 2014 23:04:59 -0800 (PST)
In-Reply-To: <547BFC98.1050300@windriver.com>
References: <CAKGbVbtPT_ZwgLs72HMGbk-VesbUyRiQBoQDG+UrGMFZWg4qwQ@mail.gmail.com>
	<547ACF5C.8010403@windriver.com>
	<CAKGbVbuLb-fzeGp78NxWYysVru=cweptGcjq2AuzVath+DC57g@mail.gmail.com>
	<547BCC00.2070106@windriver.com>
	<CAKGbVbsNf6VbfcS+juDCiifr6Z0kYmyu32iNH=a9SOwt6248Dg@mail.gmail.com>
	<547BE038.8030108@windriver.com>
	<CAKGbVbvysuHY5V=0Fdu1X5FX1JPkYpF27X_GFPe54kRDOLdonw@mail.gmail.com>
	<547BFC98.1050300@windriver.com>
Date: Mon, 1 Dec 2014 15:04:59 +0800
Message-ID: <CAKGbVbvV5Hio1xbyEaf1Kk_jOMnGys0Disr66ej9zuO+YY3RFg@mail.gmail.com>
From: Qiang Yu <yuq825@gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: When to create a new build directory for yocto?
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
X-List-Received-Date: Mon, 01 Dec 2014 07:05:11 -0000
Content-Type: multipart/alternative; boundary=001a11c1fa988d942d0509223a6c

--001a11c1fa988d942d0509223a6c
Content-Type: text/plain; charset=UTF-8

What about MACHINE_FEATURES and IMAGE_FEATURES?


On Mon, Dec 1, 2014 at 1:28 PM, ChenQi <Qi.Chen@windriver.com> wrote:

>  On 12/01/2014 12:45 PM, Qiang Yu wrote:
>
>
>> It's possible that you are using (or might use) different layer
>> configurations for different builds.
>> One build might have a bbappend file that another build doesn't need.
>>
> Yes, you are right. I use different conf/bblayers.conf for different SOC.
> But within the same SOC's different output
> (board image, SDK), I just change MACHINE and SDKMACHINE. Is it safe to
> build all outputs of the same SOC
> in one build dir?
>
>
> Yes.
>
>
>
>>  Also, different builds may have different DISTRO_FEATURES.
>> Thus, having different deploy directories is better. Otherwise, your
>> package feeds might be broken. And you would suffer trying to maintain it.
>>
> You mean I can't build two output with different DISTRO_FEATURES in the
> same build dir.
> Any other config var? What about MACHINE and SDKMACHINE?
>
>
>
> Yocto doesn't ensure that changing distro features in the same build
> directory works.
> It might work, but it's also possible that it doesn't.
>
> Changing MACHINE and SDKMACHINE is OK.
>
> //Chen Qi
>

--001a11c1fa988d942d0509223a6c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">What about=C2=A0<span style=3D"font-family:arial,sans-seri=
f;font-size:13px">MACHINE_FEATURES and IMAGE_FEATURES?</span><div><span sty=
le=3D"font-family:arial,sans-serif;font-size:13px"><br></span></div></div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Dec 1, 201=
4 at 1:28 PM, ChenQi <span dir=3D"ltr">&lt;<a href=3D"mailto:Qi.Chen@windri=
ver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000"><span class=3D"">
    <div>On 12/01/2014 12:45 PM, Qiang Yu wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_extra">
          <div class=3D"gmail_quote">
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-s=
tyle:solid;padding-left:1ex">
              <div bgcolor=3D"#FFFFFF" text=3D"#000000">
                <div><br>
                  It&#39;s possible that you are using (or might use)
                  different layer configurations for different builds.<br>
                  One build might have a bbappend file that another
                  build doesn&#39;t need.=C2=A0</div>
              </div>
            </blockquote>
            <div>Yes, you are right. I use different conf/bblayers.conf
              for different SOC. But within the same SOC&#39;s different
              output</div>
            <div>(board image, SDK), I just change MACHINE and
              SDKMACHINE. Is it safe to build all outputs of the same
              SOC</div>
            <div>in one build dir?</div>
          </div>
        </div>
      </div>
    </blockquote>
    <br></span>
    Yes.<span class=3D""><br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_extra">
          <div class=3D"gmail_quote">
            <div>=C2=A0</div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-s=
tyle:solid;padding-left:1ex">
              <div bgcolor=3D"#FFFFFF" text=3D"#000000">
                <div> Also, different builds may have different
                  DISTRO_FEATURES.<br>
                  Thus, having different deploy directories is better.
                  Otherwise, your package feeds might be broken. And you
                  would suffer trying to maintain it.<br>
                </div>
              </div>
            </blockquote>
            <div>You mean I can&#39;t build two output with different
              DISTRO_FEATURES in the same build dir.</div>
            <div>Any other config var? What about MACHINE and
              SDKMACHINE?</div>
            <div>=C2=A0</div>
          </div>
        </div>
      </div>
    </blockquote>
    <br></span>
    Yocto doesn&#39;t ensure that changing distro features in the same buil=
d
    directory works.<br>
    It might work, but it&#39;s also possible that it doesn&#39;t.<br>
    <br>
    Changing MACHINE and SDKMACHINE is OK.<br>
    <br>
    //Chen Qi<br>
  </div>

</blockquote></div><br></div>

--001a11c1fa988d942d0509223a6c--
