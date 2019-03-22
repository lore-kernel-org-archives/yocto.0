Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40DD1E00D15; Fri, 22 Mar 2019 14:57:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ED0BE00C1B
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2019 14:57:22 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id w137so2870268oiw.5
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2019 14:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=XzXzCGudhMfJEpThVnEe/C7g+390+0ZNWFDd1bYV/qM=;
	b=G/UNElEFSUkP3OiKCrvNcuBmIE9Bt7vgUTR2MYQIETx4/TD1tvxXOrQ+eAJKvSB+7a
	QYa0bfSPr9bjcNYYLa326Hcr77OH0Vlto+8+HVt8ftgsyoKcEKLwHq8gtA+O50lqSiP+
	Pm18xFhqPnjcQgZ3mO+VmQ15fAqUPkDMuPvRJ2vkCYUnyOREMBGnlcfgIi5BuOFuCIcL
	8yYr/P+QSfMBCihj3kmwKJuWtXP5mZ3gNIkcjYGu/qltunvmUcAsT32A3Mo2aL5SPONU
	Gai40DbUttQ+U//mMHDO/JNYA+qB1x1NqyfOLfl4ma/9ZvDJdPN4unusIG2HRvxqcbMJ
	cp9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=XzXzCGudhMfJEpThVnEe/C7g+390+0ZNWFDd1bYV/qM=;
	b=SiiWSOI8x3DXhx9eIuuTWvq60mfB6gmWeBhupDXPOgXfXDkX/PTidN6I0Etl3yEJ7g
	pTCOEeBWRYPkZWlH5WusYYaNJjA1zq3rPgSPTZ8fpCHBCGIuQsw8o6PSrzsucNKy2toZ
	gjAyArg52Y7VRsyYxrjqx/WEhuqcm3CkWTj3yDZDg9jaw3MCGboKuiA1xsbI1c+2zJHY
	M2SAEE0frk4iGX8uMg0O0Zq1rHmmEtDAImtuLNVSlrTyFaJdAib/QkfIAVUjy+oaRL9Q
	22JCk+ibcWpki+xRli9KtXJGSRP9FCygSe73oq1KVOfuhneRS8TpRZgaMfVJ2d+gZinQ
	afmg==
X-Gm-Message-State: APjAAAVialWV5DH7WB6A35Y90kyvihCkpjO3KH6piYQCyresmAYgOzj3
	Tc+8I/bU5YZ4W9N7yd8EtsTqwc/oC572yS84ZMoAHQ==
X-Google-Smtp-Source: APXvYqyS1EHgVG0gIPHcbaDwkHpDQE9rfZmzRedUwpDO6S2vj3zi3XWWcCYRyBzl2v+LYrxRrKMs185af6dDoNY6Vyo=
X-Received: by 2002:aca:3306:: with SMTP id z6mr3567919oiz.45.1553291842348;
	Fri, 22 Mar 2019 14:57:22 -0700 (PDT)
MIME-Version: 1.0
References: <b6e5f140-38c9-07e1-a136-76b5f42f411c@mindchasers.com>
	<CACKFPN2sEJRRiq4Bd8hX44AVGP4r=j80SLouaofGvm+MfopLBA@mail.gmail.com>
	<3c0642e2-9be5-01ab-7973-1508359240ff@mindchasers.com>
In-Reply-To: <3c0642e2-9be5-01ab-7973-1508359240ff@mindchasers.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Fri, 22 Mar 2019 22:57:10 +0100
Message-ID: <CACKFPN3W+sh2wWoQNDz4dRXr_CGhvdGVKT_sth3md8LRyeMwyg@mail.gmail.com>
To: Bob Cochran <yocto@mindchasers.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Seeking recommendation for low cost dev board with Gigabit Ethernet that as a Yocto BSP
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
X-List-Received-Date: Fri, 22 Mar 2019 21:57:24 -0000
Content-Type: multipart/alternative; boundary="0000000000007eec0d0584b5f0c2"

--0000000000007eec0d0584b5f0c2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bob,

I don't think that there's a JTAG but I guess you can use the serial port
for debugging. Personally, I'm just printing messages to UART with pr_info,
not even kgdb. But you may have different needs and I think that kgdb is
just a kernel option.

Regards,
Dimitris

Bob Cochran <yocto@mindchasers.com> schrieb am Fr., 22. M=C3=A4rz 2019, 22:=
45:

> On 3/22/19 5:13 PM, Dimitris Tassopoulos wrote:
>
> Hi Bob,
>
> for low cost BSPs you can have a look at some allwinner boards from
> FriendlyElec and OrangePi.
>
>
> That's excellent.  Thank you.  Do any of these boards have accessible JTA=
G
> for debugging the kernel?  Is this something you have done in supporting
> the BSPs?    I see a UART port is listed as a debug port.  Is the idea to
> use KGDB via this port?
>
> Bob
>
>
>
> I've created meta layer to support most of the H2, H3 and H5 arm cores
> here:
>
> https://layers.openembedded.org/layerindex/branch/master/layer/meta-allwi=
nner-hx/
>
> So you can grab any of those boards that has a GbE. Now, regarding the
> need of binary firmwares
> for the NICs I can't tell you which of the boards the do fill your needs,
> but I guess you can have
> a look.
>
> Some boards the support GbE are:
> FriendlyElec:
> - NanoPi-Neo2 ~20USD (
> http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO2)
> - NanoPi-K1 Plus ~35USD (
> http://wiki.friendlyarm.com/wiki/index.php/NanoPi_K1_Plus)
> - NanoPi Neo Plus2 ~35USD (
> http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO_Plus2)
>
> OrangePi:
> - Orange Pi Zero Plus ~15EUR (
> https://www.aliexpress.com/store/product/Orange-Pi-Zero-Plus-H5-Chip-Quad=
-Core-Open-source-Cortex-A53-512MB-development-board-beyond/1553371_3282834=
7476.html
> )
> - Orange Pi PC2 ~20USD (
> https://www.aliexpress.com/store/product/New-Orange-Pi-PC-2-H5-64bit-Supp=
ort-the-Lubuntu-linux-and-android-mini-PC-Beyond/1553371_32761481418.html
> )
> - Orange Pi Zero Plus2 ~24USD (
> https://www.aliexpress.com/store/product/Orange-Pi-Zero-Plus-2-H5-Quad-co=
re-Bluetooth-mini-PC-Beyond-Raspberry-Pi-2-Wholesale/1553371_32801249806.ht=
ml
> )
> - Orange Pi Prime ~41USD (
> https://www.aliexpress.com/store/product/Orange-Pi-Prime-Development-Boar=
d-H5-Quad-core-Support-linux-and-android-Beyond-Raspberry-Pi-2/1553371_3280=
3048527.html
> )
>
> Soon (probably this weekend), I'll release a new meta layer that supports
> the NanoPi-Neo4 board,
> which has an RK3399 + GbE. If you're interested I'll send you the link fo=
r
> the repo. That costs ~50USD
> (http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO4)
>
> Now, regarding the H2, H3 and H5 I do also support RT kernels for the 4.1=
4
> and the 4.19.
> So these are your options:
> - 4.14.78 SMP
> - 4.19.21 SMP
> - 4.14.78 PREEMPT-RT
> - 4.19.15 PREEMPT-RT
>
> I do updates from time to time on the layer, but not that often.
>
> Hope that helps a bit.
>
> Dimitris
>
>
> Bob Cochran <yocto@mindchasers.com> schrieb am Fr., 22. M=C3=A4rz 2019, 1=
8:12:
>
>> Hello All,
>>
>> Can anyone recommend a ~$50 dev board that runs Yocto and has a single
>> Gigabit Ethernet port?
>>
>> The boards we are aware of either have 100Mbit Ethernet, don't meet the
>> price target, or has a Gigabit Ethernet port that has reduced
>> capabilities via firmware (Ethernet driver isn't open source).
>>
>> Thank you,
>>
>> Bob
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>

--0000000000007eec0d0584b5f0c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Bob,</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">I don&#39;t think that there&#39;s a JTAG but I guess you can use th=
e serial port for debugging. Personally, I&#39;m just printing messages to =
UART with pr_info, not even kgdb. But you may have different needs and I th=
ink that kgdb is just a kernel option.</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Regards,</div><div dir=3D"auto">Dimitris<br><br><div class=
=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">Bob Coc=
hran &lt;<a href=3D"mailto:yocto@mindchasers.com">yocto@mindchasers.com</a>=
&gt; schrieb am Fr., 22. M=C3=A4rz 2019, 22:45:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"m_-8442629686915161478moz-cite-prefix">On 3/22/19 5:13 PM=
, Dimitris
      Tassopoulos wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div dir=3D"ltr">
                <div dir=3D"ltr">
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">
                      <div dir=3D"ltr">
                        <div dir=3D"ltr">
                          <div dir=3D"ltr">
                            <div dir=3D"ltr">
                              <div dir=3D"auto">Hi Bob,
                                <div dir=3D"auto"><br>
                                </div>
                                <div dir=3D"auto">for low cost BSPs you
                                  can have a look at some allwinner
                                  boards from FriendlyElec and OrangePi.</d=
iv>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>That&#39;s excellent.=C2=A0 Thank you.=C2=A0 Do any of these boards =
have
      accessible JTAG for debugging the kernel?=C2=A0 Is this something you
      have done in supporting the BSPs?=C2=A0=C2=A0=C2=A0 I see a UART port=
 is listed
      as a debug port.=C2=A0 Is the idea to use KGDB via this port? =C2=A0=
=C2=A0 <br>
    </p>
    <p>Bob<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div dir=3D"ltr">
                <div dir=3D"ltr">
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">
                      <div dir=3D"ltr">
                        <div dir=3D"ltr">
                          <div dir=3D"ltr">
                            <div dir=3D"ltr">
                              <div dir=3D"auto">
                                <div dir=3D"auto"><br>
                                </div>
                                <div>I&#39;ve created meta layer to support
                                  most of the H2, H3 and H5 arm cores
                                  here:</div>
                                <div><a href=3D"https://layers.openembedded=
.org/layerindex/branch/master/layer/meta-allwinner-hx/" target=3D"_blank" r=
el=3D"noreferrer">https://layers.openembedded.org/layerindex/branch/master/=
layer/meta-allwinner-hx/</a><br>
                                </div>
                                <div><br>
                                </div>
                                <div>So you can grab any of those boards
                                  that has a GbE. Now, regarding the
                                  need of binary firmwares</div>
                                <div>for the NICs I can&#39;t tell you whic=
h
                                  of the boards the do fill your needs,
                                  but I guess you can have</div>
                                <div>a look.</div>
                                <div><br>
                                </div>
                                <div>Some boards the support GbE are:</div>
                                <div>FriendlyElec:</div>
                                <div>- NanoPi-Neo2 ~20USD (<a href=3D"http:=
//wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO2" target=3D"_blank" rel=3D=
"noreferrer">http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO2</a>)</d=
iv>
                                <div>- NanoPi-K1 Plus ~35USD (<a href=3D"ht=
tp://wiki.friendlyarm.com/wiki/index.php/NanoPi_K1_Plus" target=3D"_blank" =
rel=3D"noreferrer">http://wiki.friendlyarm.com/wiki/index.php/NanoPi_K1_Plu=
s</a>)</div>
                                <div>-=C2=A0NanoPi Neo Plus2 ~35USD (<a hre=
f=3D"http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO_Plus2" target=3D=
"_blank" rel=3D"noreferrer">http://wiki.friendlyarm.com/wiki/index.php/Nano=
Pi_NEO_Plus2</a>)</div>
                                <div><br>
                                </div>
                                <div>OrangePi:</div>
                                <div>-=C2=A0Orange Pi Zero Plus ~15EUR (<a =
href=3D"https://www.aliexpress.com/store/product/Orange-Pi-Zero-Plus-H5-Chi=
p-Quad-Core-Open-source-Cortex-A53-512MB-development-board-beyond/1553371_3=
2828347476.html" target=3D"_blank" rel=3D"noreferrer">https://www.aliexpres=
s.com/store/product/Orange-Pi-Zero-Plus-H5-Chip-Quad-Core-Open-source-Corte=
x-A53-512MB-development-board-beyond/1553371_32828347476.html</a>)</div>
                                <div>-=C2=A0Orange Pi PC2 ~20USD (<a href=
=3D"https://www.aliexpress.com/store/product/New-Orange-Pi-PC-2-H5-64bit-Su=
pport-the-Lubuntu-linux-and-android-mini-PC-Beyond/1553371_32761481418.html=
" target=3D"_blank" rel=3D"noreferrer">https://www.aliexpress.com/store/pro=
duct/New-Orange-Pi-PC-2-H5-64bit-Support-the-Lubuntu-linux-and-android-mini=
-PC-Beyond/1553371_32761481418.html</a>)</div>
                                <div>-=C2=A0Orange Pi Zero Plus2 ~24USD (<a=
 href=3D"https://www.aliexpress.com/store/product/Orange-Pi-Zero-Plus-2-H5-=
Quad-core-Bluetooth-mini-PC-Beyond-Raspberry-Pi-2-Wholesale/1553371_3280124=
9806.html" target=3D"_blank" rel=3D"noreferrer">https://www.aliexpress.com/=
store/product/Orange-Pi-Zero-Plus-2-H5-Quad-core-Bluetooth-mini-PC-Beyond-R=
aspberry-Pi-2-Wholesale/1553371_32801249806.html</a>)</div>
                                <div>-=C2=A0Orange Pi Prime ~41USD (<a href=
=3D"https://www.aliexpress.com/store/product/Orange-Pi-Prime-Development-Bo=
ard-H5-Quad-core-Support-linux-and-android-Beyond-Raspberry-Pi-2/1553371_32=
803048527.html" target=3D"_blank" rel=3D"noreferrer">https://www.aliexpress=
.com/store/product/Orange-Pi-Prime-Development-Board-H5-Quad-core-Support-l=
inux-and-android-Beyond-Raspberry-Pi-2/1553371_32803048527.html</a>)</div>
                                <div><br>
                                </div>
                                <div>Soon (probably this weekend), I&#39;ll
                                  release a new meta layer that supports
                                  the NanoPi-Neo4 board,<br>
                                  which has an RK3399=C2=A0+ GbE. If you&#3=
9;re
                                  interested I&#39;ll send you the link for
                                  the repo. That costs ~50USD</div>
                                <div>(<a href=3D"http://wiki.friendlyarm.co=
m/wiki/index.php/NanoPi_NEO4" target=3D"_blank" rel=3D"noreferrer">http://w=
iki.friendlyarm.com/wiki/index.php/NanoPi_NEO4</a>)</div>
                                <div><br>
                                </div>
                                <div>Now, regarding the H2, H3 and H5 I
                                  do also support RT kernels for the
                                  4.14 and the 4.19.<br>
                                  So these are your options:</div>
                                <div>- 4.14.78 SMP</div>
                                <div>- 4.19.21 SMP</div>
                                <div>- 4.14.78 PREEMPT-RT</div>
                                <div>- 4.19.15 PREEMPT-RT</div>
                                <div><br>
                                </div>
                                <div>I do updates from time to time on
                                  the layer, but not that often.</div>
                                <div><br>
                                </div>
                                <div>Hope that helps a bit.</div>
                                <div><br>
                                  Dimitris</div>
                                <div><br>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">Bob Cochran &lt;<a href=3D"ma=
ilto:yocto@mindchasers.com" target=3D"_blank" rel=3D"noreferrer">yocto@mind=
chasers.com</a>&gt; schrieb
          am Fr., 22. M=C3=A4rz 2019, 18:12:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello
          All,<br>
          <br>
          Can anyone recommend a ~$50 dev board that runs Yocto and has
          a single <br>
          Gigabit Ethernet port?<br>
          <br>
          The boards we are aware of either have 100Mbit Ethernet, don&#39;=
t
          meet the <br>
          price target, or has a Gigabit Ethernet port that has reduced
          <br>
          capabilities via firmware (Ethernet driver isn&#39;t open source)=
.<br>
          <br>
          Thank you,<br>
          <br>
          Bob<br>
          <br>
          <br>
          -- <br>
          _______________________________________________<br>
          yocto mailing list<br>
          <a href=3D"mailto:yocto@yoctoproject.org" rel=3D"noreferrer noref=
errer" target=3D"_blank">yocto@yoctoproject.org</a><br>
          <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"=
noreferrer noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.org/listinfo/yocto</a><br>
        </blockquote>
      </div>
    </blockquote>
    <p><br>
    </p>
  </div>

</blockquote></div></div></div>

--0000000000007eec0d0584b5f0c2--
