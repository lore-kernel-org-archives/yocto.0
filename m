Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E2FCE00D3F; Thu,  2 May 2019 12:25:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
	[209.85.208.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A1DEE0053F
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 12:25:26 -0700 (PDT)
Received: by mail-ed1-f68.google.com with SMTP id w11so3152657edl.5
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 12:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=GtGQKQfPeXigWPl78iXlI4HfalKMyg+O8iq+U/qNQ0Q=;
	b=qnGVbbEnOSw8fOquzAR6ZM4G9KGp41btoW1k6RKMhNRPpAjARDRqxd3y4/Id2k3psO
	mtrnVakPeHXlChIWPwbiG/k3w6vu69wc6RHAO2lUfXmI1Es3PfC64eBT1LiwrnMCsxch
	+C7PC6Y2CeYIgLyf9w4+6rM9IXOkGwsIdWOXLZeaZFjjEVLObWMecFstUQxYSklBC1qq
	mTO1A/XejRCejr29swaxD09J17YK9BlsrtjSlGmirqxScDrImKvgZRaOojh/RxJ3qNqX
	leAupuQXSvAF7qtmGnP1ynifl+x//jk5JK4cbEc+nGOlJTYxHUhPEMy4SJJrC8d09JTL
	0Hnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=GtGQKQfPeXigWPl78iXlI4HfalKMyg+O8iq+U/qNQ0Q=;
	b=jJ3wORG5zuz+nRdwwR4qOmD77wJxRbrE+OLN41NjGekiy14hCWNp9ZAaPb2VepN/MY
	Edk7ZkgGoptcwpbyW5LJyTAkfhXZrphtMPbhHoP/nncH0q0dgj7DO+27M3fE7oItez7d
	EI9Y3D5W2/lIxictJewHKt+fsUarnuj2DODJNWeKJT2aZqtGcQ2yYNBvrkiyKgLE5R9f
	MaPBUgFsCqcqKCTsVudOZtyRQoiApDQaBiCoaNGw/C0b/H8xLfjI8hvqNgPeNWozQgXJ
	+/NVaZKSO75cKbaQN3ELHP4krH/9+NHcEHNOPM/sawOL7EFSMs1gI/zuoQYB5yI5GUzx
	Vpvg==
X-Gm-Message-State: APjAAAUgak0gj7kt0FQvT73egKpph9zFRqY3ko27gcXzbDfx+B4QCun1
	hRQXbtTOcPUWc/qxdo/w4oYiHqO1dVLWjiy9d5c=
X-Google-Smtp-Source: APXvYqzSLOezpcmLRi1txdEN8xSl08g8CBoNIIn23O6OItD595Tu7Uk5dizs/fCWcEkP9Q1q7SKWARfLUSPfwza2tlc=
X-Received: by 2002:a05:6402:8d8:: with SMTP id
	d24mr3699081edz.36.1556825125470; 
	Thu, 02 May 2019 12:25:25 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.1905020916480.10974@localhost.localdomain>
	<6e58005a-83b4-a7dc-d5dd-c1533fc29ad8@mvista.com>
	<CAFNP8OvYmJf=mxESY4G_Yx=x9=vQWLtwKVJu3GkzLMcb92socQ@mail.gmail.com>
	<4dec56c4-3876-b96c-9b31-a1e4d726f78b@mvista.com>
In-Reply-To: <4dec56c4-3876-b96c-9b31-a1e4d726f78b@mvista.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Thu, 2 May 2019 12:25:13 -0700
Message-ID: <CAFNP8Ou5PB396Ln0mnZP86tyKDv8nMgDL7p=HxpUpEVBW5-hUA@mail.gmail.com>
To: akuster <akuster@mvista.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] bsp-guide: replace meta-intel with meta-xilinx as container layer
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
X-List-Received-Date: Thu, 02 May 2019 19:25:28 -0000
Content-Type: multipart/alternative; boundary="00000000000094c4920587ec98dd"

--00000000000094c4920587ec98dd
Content-Type: text/plain; charset="UTF-8"

Great, thanks!

On Thu, May 2, 2019 at 11:21 AM akuster <akuster@mvista.com> wrote:

>
>
> On 5/2/19 10:45 AM, Scott Rifenbark wrote:
>
> The term "Container Layer" was put in the ref-manual by me to describe a
> "meta-*" layer that had other "meta-*" layers (see
> https://www.yoctoproject.org/docs/2.7/ref-manual/ref-manual.html#term-container-layer
> and the term "Container Layer").  Maybe this was never a good term?  I
> don't know.  Nobody has said anything about that term for many releases.
>
> The problem Robert points out needs to be fixed in the BSP manual as
> "meta-intel" is not longer qualifying by my definition.  I can fix that.
>
> Is "Container Layer" ok as I have defined it?
>
> in those terms above, yes its fine.
>
> thanks for clarifying.
>
> Armin
>
>
> Thanks,
> Scott
>
> On Thu, May 2, 2019 at 10:21 AM akuster <akuster@mvista.com> wrote:
>
>>
>>
>> On 5/2/19 6:19 AM, Robert P. J. Day wrote:
>> > As meta-intel is no longer a container layer, use meta-xilinx as
>> > an example instead.
>>
>> I thought "meta-virtualization" was a container layer?
>>
>> IMHO, a BSP should only deal with getting a MACHINE booted.
>>
>> - armin
>> >
>> > Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>> >
>> > ---
>> >
>> > diff --git a/documentation/bsp-guide/bsp.xml
>> b/documentation/bsp-guide/bsp.xml
>> > index 0bb0b68ab..a53ff6bce 100644
>> > --- a/documentation/bsp-guide/bsp.xml
>> > +++ b/documentation/bsp-guide/bsp.xml
>> > @@ -146,18 +146,15 @@
>> >
>> >      <para>
>> >          Some layers function as a layer to hold other BSP layers.
>> > -        These layers are knows as
>> > +        These layers are known as
>> >          "<ulink
>> url='&YOCTO_DOCS_REF_URL;#term-container-layer'>container layers</ulink>".
>> >          An example of this type of layer is the
>> > -        <filename>meta-intel</filename> layer.
>> > -        This layer contains BSP layers for the Intel-core2-32
>> > -        <trademark class='registered'>Intel</trademark> Common Core
>> > -        (Intel-core2-32) and the Intel-corei7-64
>> > -        <trademark class='registered'>Intel</trademark> Common Core
>> > -        (Intel-corei7-64).
>> > -        the <filename>meta-intel</filename> layer also contains
>> > -        the <filename>common/</filename> directory, which contains
>> > -        common content across those layers.
>> > +        <filename>meta-xilinx</filename> layer.
>> > +        This container layer contains some basic top-level information,
>> > +        as well as three actual Xilinx-related BSP layers,
>> > +        <filename>meta-xilinx-bsp</filename>,
>> > +        <filename>meta-xilinx-contrib</filename>, and
>> > +        <filename>meta-xilinx-standalone</filename>.
>> >      </para>
>> >
>> >      <para>
>> >
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>

--00000000000094c4920587ec98dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Great, thanks! <br></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, May 2, 2019 at 11:21 AM akuster=
 &lt;<a href=3D"mailto:akuster@mvista.com">akuster@mvista.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <br>
    <br>
    <div class=3D"gmail-m_4691969165261877853moz-cite-prefix">On 5/2/19 10:=
45 AM, Scott Rifenbark
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">The term &quot;Container Layer&quot; was put in th=
e
          ref-manual by me to describe a &quot;meta-*&quot; layer that had =
other
          &quot;meta-*&quot; layers (see <a href=3D"https://www.yoctoprojec=
t.org/docs/2.7/ref-manual/ref-manual.html#term-container-layer" target=3D"_=
blank">https://www.yoctoproject.org/docs/2.7/ref-manual/ref-manual.html#ter=
m-container-layer</a>
          and the term &quot;Container Layer&quot;).=C2=A0 Maybe this was n=
ever a good
          term?=C2=A0 I don&#39;t know.=C2=A0 Nobody has said anything abou=
t that term
          for many releases.=C2=A0 <br>
        </div>
        <div dir=3D"ltr"><br>
        </div>
        <div>The problem Robert points out needs to be fixed in the BSP
          manual as &quot;meta-intel&quot; is not longer qualifying by my
          definition.=C2=A0 I can fix that.=C2=A0 <br>
        </div>
        <div><br>
        </div>
        <div>Is &quot;Container Layer&quot; ok as I have defined it?</div>
      </div>
    </blockquote>
    in those terms above, yes its fine. <br>
    <br>
    thanks for clarifying.<br>
    <br>
    Armin<br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Thanks, <br>
        </div>
        <div>Scott<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 2, 2019 at 10:21
          AM akuster &lt;<a href=3D"mailto:akuster@mvista.com" target=3D"_b=
lank">akuster@mvista.com</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
          <br>
          On 5/2/19 6:19 AM, Robert P. J. Day wrote:<br>
          &gt; As meta-intel is no longer a container layer, use
          meta-xilinx as<br>
          &gt; an example instead.<br>
          <br>
          I thought &quot;meta-virtualization&quot; was a container layer?<=
br>
          <br>
          IMHO, a BSP should only deal with getting a MACHINE booted.<br>
          <br>
          - armin<br>
          &gt;<br>
          &gt; Signed-off-by: Robert P. J. Day &lt;<a href=3D"mailto:rpjday=
@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt;<br>
          &gt;<br>
          &gt; ---<br>
          &gt;<br>
          &gt; diff --git a/documentation/bsp-guide/bsp.xml
          b/documentation/bsp-guide/bsp.xml<br>
          &gt; index 0bb0b68ab..a53ff6bce 100644<br>
          &gt; --- a/documentation/bsp-guide/bsp.xml<br>
          &gt; +++ b/documentation/bsp-guide/bsp.xml<br>
          &gt; @@ -146,18 +146,15 @@<br>
          &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &lt;para&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Some layers function as a =
layer to hold other
          BSP layers.<br>
          &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 These layers are knows as<br>
          &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 These layers are known as<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&lt;ulink
          url=3D&#39;&amp;YOCTO_DOCS_REF_URL;#term-container-layer&#39;&gt;=
container
          layers&lt;/ulink&gt;&quot;.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 An example of this type of=
 layer is the<br>
          &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;filename&gt;meta-intel&lt;/=
filename&gt;
          layer.<br>
          &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 This layer contains BSP layers =
for the
          Intel-core2-32<br>
          &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;trademark
          class=3D&#39;registered&#39;&gt;Intel&lt;/trademark&gt; Common Co=
re<br>
          &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 (Intel-core2-32) and the Intel-=
corei7-64<br>
          &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;trademark
          class=3D&#39;registered&#39;&gt;Intel&lt;/trademark&gt; Common Co=
re<br>
          &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 (Intel-corei7-64).<br>
          &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 the &lt;filename&gt;meta-intel&=
lt;/filename&gt;
          layer also contains<br>
          &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 the &lt;filename&gt;common/&lt;=
/filename&gt;
          directory, which contains<br>
          &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 common content across those lay=
ers.<br>
          &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;filename&gt;meta-xilinx&lt;=
/filename&gt;
          layer.<br>
          &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 This container layer contains s=
ome basic
          top-level information,<br>
          &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 as well as three actual Xilinx-=
related BSP
          layers,<br>
          &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0
          &lt;filename&gt;meta-xilinx-bsp&lt;/filename&gt;,<br>
          &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0
          &lt;filename&gt;meta-xilinx-contrib&lt;/filename&gt;, and<br>
          &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0
          &lt;filename&gt;meta-xilinx-standalone&lt;/filename&gt;.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &lt;/para&gt;<br>
          &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &lt;para&gt;<br>
          &gt;<br>
          <br>
          -- <br>
          _______________________________________________<br>
          yocto mailing list<br>
          <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto=
@yoctoproject.org</a><br>
          <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"=
noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto=
</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--00000000000094c4920587ec98dd--
