Return-Path: <elcapitanbrown@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85595E00D35; Tue, 25 Jun 2019 06:25:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (elcapitanbrown[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58825E00BAF
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 06:25:26 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id x4so17864718wrt.6
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 06:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=QTLUWIvo7+ippKiZAPxDE6zsTjMlUQ6AZH0oscCAhXU=;
	b=AR3Fzgjzwg6JMWsjcNRL0fjTvwwDeCqyHRx+c5uSIvAYe7PdYT0JZbcDYGtPt4hO6V
	4KMWHqcXpaOUjTKWrZzQp0BEs7xNSP8pB2NGW1HtC0+VkOya1z8BJgZH0CUR3YzB18K4
	3syOsvYH8wy0iE9xbTKW2hpENF6n0et0mIRjvUd2S8w0ntIZUCUdvvsN6cStnt0jayR0
	3jjLxEPE96QOHUJn1UKlOv+oooFIUu49Yq8dQBSEI+AgZDKqZEXYE6yz2lOtE3ObZChv
	hrkH6tNHOaJ513I3CM2fY5tFuuENi0N7Sl4nLciSkkjg9SQjHh44Z2qjwAoepmZd1+5i
	e4jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=QTLUWIvo7+ippKiZAPxDE6zsTjMlUQ6AZH0oscCAhXU=;
	b=im2GdS0hvWrd5N/0penqpGa4ZdAZLXaQF34IWKC70+jxjHgdfyG56WHmetE6oNCHvH
	sunoQRooGr9SfrCegjsL3THyvOAo8P4SCy/T3ONv67+o/UzqwLAslc7pWT/nI08hmWKJ
	vyrxo29/fgB7qEgV9p23un9qM87Zyf1BopkKV2p3oS9WgNhfOocEVHIzLX9F3J03vcnN
	4UNpqhiGGNrWtpcCor4MTBO6vQ+dBaL0wolvu64A2HNarUueirqu3/pX8lhlKWsjpq5l
	2GVRHgadm4jaLzjoExnjkhvwZvSbYhjE7PiEnNGHQdqyEKJ2KOIeIPj4MvWZE8Yiqyt7
	RoJg==
X-Gm-Message-State: APjAAAX5RFLRipUFj1V6z6NJDUDE8StPkKzucFBeyG3b+E6ygBoJiqw1
	guv1SFkj/FUOzZSFNxq58NRcr4WtPJC0YhOl5/w=
X-Google-Smtp-Source: APXvYqwQK4rt2vJ6vkrF/uLmjIOt19buz7Wz4ynW/dJvART4v/drPcum7faFqLmb/GLJoCO7CFXLWuExUwIh8WNtF0A=
X-Received: by 2002:a5d:4849:: with SMTP id n9mr91481106wrs.139.1561469125256; 
	Tue, 25 Jun 2019 06:25:25 -0700 (PDT)
MIME-Version: 1.0
References: <6fefee9b-8521-b633-8ae4-00b09e6d3532@googlemail.com>
	<20190624070810.GD1584@archworkstation>
	<43163f9c-29e2-6069-bd13-ff65f82d55bd@googlemail.com>
	<CAAx3WaA+OemjNchvCFd_3m3K5LE4OedqFVtwdPAjYNwUSWv28Q@mail.gmail.com>
In-Reply-To: <CAAx3WaA+OemjNchvCFd_3m3K5LE4OedqFVtwdPAjYNwUSWv28Q@mail.gmail.com>
From: Larry Brown <elcapitanbrown@gmail.com>
Date: Tue, 25 Jun 2019 09:25:13 -0400
Message-ID: <CAOmL4Ujwqu1pVe5zEGntJjYTNgw7__LPi_mdgn7-xU93dwF62A@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: General Question: Device specific value store
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
X-List-Received-Date: Tue, 25 Jun 2019 13:25:27 -0000
Content-Type: multipart/alternative; boundary="00000000000089eb08058c25dcae"

--00000000000089eb08058c25dcae
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You could either partition the flash with intentional space left at the end
of the disk and write/read directly to the flash at the specified location
or you could put it at the end of the uboot space.  There is a chunk of
unused space at the end of the uboot image that is not used IIRC that
should give enough for a serial and key.  You'd have to test to find out
for sure.  You could cat the uboot image to hexdump to see how much space
is left empty.  The idea of a space at the end of the flash is probably
better as reformatting or re-partitioning with this space left alone should
retain your values.

If anyone has issues with these suggestions feel free to correct me but it
seems pretty safe to me since you have control over how you partition your
device and this data will be pretty static.


On Tue, Jun 25, 2019 at 6:09 AM Gabriele Zampieri <gabbla.malist@gmail.com>
wrote:

> Hi Matthias,
>
> an easier solution may be write those data during production. I don't
> think that having a custom partition for each device is a good idea. You
> could start the device in "production mode" and inject into the device
> specific data through serial or USB. Obviously you must have some piece o=
f
> software running on the device that can read/write that partition.
>
> In my opinion Yocto does not mention anything about this procedure
> probably because this is not the standard way.
>
> Gabriele
>
> Il giorno mar 25 giu 2019 alle ore 10:53 Matthias Schoepfer <
> matthias.schoepfer@googlemail.com> ha scritto:
>
>> Hi Morn=C3=A9,
>>
>> thanks for you answer. Maybe, I will explain more: we have a Dragonboard
>> 410c based hardware. We use a read-only rootfs in one partition
>> (actually two with A/B approach) and we have a data partition for user
>> data as well as device specific data. We can partition and flash the
>> device through fastboot. So, if we can prepare ext4 filesystems (maybe
>> through yocto instead of hand-crafted scripting) for each device,
>> commissioning will be an easy task for the manufacturer.
>>
>> I guess, we are not the only ones that need to store device specific
>> information besides the rootfs, and I do not find a whole lot about it
>> in the yocto manuals. I wonder, if there are best practices, how to
>> protect the data from getting corrupted (intentionally by an attacker or
>> by accident through ... flash corruption or whatever).
>>
>> Regards,
>>
>>     Matthias
>>
>> On 6/24/19 9:08 AM, Morn=C3=A9 Lamprecht wrote:
>> > On Mon, Jun 17, 2019 at 05:25:56PM +0200, Matthias Schoepfer wrote:
>> >> Is there a smart, recommended way to deal with device specific data
>> >> (i.e.  serial number, credentials for backend access, you name it),
>> >> that is specific for *one* device, and hence does not belong into the
>> >> rootfs. I know, that there are (safe) hardware stores for it, but
>> >> what, if your device does not have one.
>> >
>> > Not sure if I'm misunderstanding your question, but this should be
>> > part of your device commissioning process, i.e. like injecting
>> > specific security keys etc...so basically this will part of your image
>> > install / flash process, and not really part of the Yocto build
>> > process. The specifics of such a process would depend on your specific
>> > commissioning process.
>> >
>> >         - Morn=C3=A9
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


--=20
Larry Brown
S/V Trident
Palm Harbor, FL
~~~~~~~~~~~~~~~~~_/)~~~~~~~~
    ~     ~          ~~           ~
~           ~~_/)    ~      ~ ~        ~
     ~                  _/)          ~

--00000000000089eb08058c25dcae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">You could either partition the flash with intentional spa=
ce left at the end of the disk and write/read directly to the flash at the =
specified location or you could put it at the end of the uboot space.=C2=A0=
 There is a chunk of unused space at the end of the uboot image that is not=
 used IIRC that should give enough for a serial and key.=C2=A0 You&#39;d ha=
ve to test to find out for sure.=C2=A0 You could cat the uboot image to hex=
dump to see how much space is left empty.=C2=A0 The idea of a space at the =
end of the flash is probably better as reformatting or re-partitioning with=
 this space left alone should retain your values.</div><div class=3D"gmail_=
default" style=3D"font-family:comic sans ms,sans-serif"><br></div><div clas=
s=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif">If anyon=
e has issues with these suggestions feel free to correct me but it seems pr=
etty safe to me since you have control over how you partition your device a=
nd this data will be pretty static.</div><div class=3D"gmail_default" style=
=3D"font-family:comic sans ms,sans-serif"><br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 25, 2019 at=
 6:09 AM Gabriele Zampieri &lt;<a href=3D"mailto:gabbla.malist@gmail.com">g=
abbla.malist@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr"><div>Hi Matthias,</div><div><br></di=
v><div>an easier solution may be write those data during production. I don&=
#39;t think that having a custom partition for each device is a good idea. =
You could start the device in &quot;production mode&quot; and inject into t=
he device specific data through serial or USB. Obviously you must have some=
 piece of software running on the device that can read/write that partition=
. <br></div><div><br></div><div>In my opinion Yocto does not mention anythi=
ng about this procedure probably because this is not the standard way.<br><=
/div><div><br></div><div>Gabriele<br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno mar 25 giu 2019 alle o=
re 10:53 Matthias Schoepfer &lt;<a href=3D"mailto:matthias.schoepfer@google=
mail.com" target=3D"_blank">matthias.schoepfer@googlemail.com</a>&gt; ha sc=
ritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Morn=
=C3=A9,<br>
<br>
thanks for you answer. Maybe, I will explain more: we have a Dragonboard <b=
r>
410c based hardware. We use a read-only rootfs in one partition <br>
(actually two with A/B approach) and we have a data partition for user <br>
data as well as device specific data. We can partition and flash the <br>
device through fastboot. So, if we can prepare ext4 filesystems (maybe <br>
through yocto instead of hand-crafted scripting) for each device, <br>
commissioning will be an easy task for the manufacturer.<br>
<br>
I guess, we are not the only ones that need to store device specific <br>
information besides the rootfs, and I do not find a whole lot about it <br>
in the yocto manuals. I wonder, if there are best practices, how to <br>
protect the data from getting corrupted (intentionally by an attacker or <b=
r>
by accident through ... flash corruption or whatever).<br>
<br>
Regards,<br>
<br>
=C2=A0=C2=A0=C2=A0 Matthias<br>
<br>
On 6/24/19 9:08 AM, Morn=C3=A9 Lamprecht wrote:<br>
&gt; On Mon, Jun 17, 2019 at 05:25:56PM +0200, Matthias Schoepfer wrote:<br=
>
&gt;&gt; Is there a smart, recommended way to deal with device specific dat=
a <br>
&gt;&gt; (i.e.=C2=A0 serial number, credentials for backend access, you nam=
e it), <br>
&gt;&gt; that is specific for *one* device, and hence does not belong into =
the <br>
&gt;&gt; rootfs. I know, that there are (safe) hardware stores for it, but =
<br>
&gt;&gt; what, if your device does not have one.<br>
&gt;<br>
&gt; Not sure if I&#39;m misunderstanding your question, but this should be=
 <br>
&gt; part of your device commissioning process, i.e. like injecting <br>
&gt; specific security keys etc...so basically this will part of your image=
 <br>
&gt; install / flash process, and not really part of the Yocto build <br>
&gt; process. The specifics of such a process would depend on your specific=
 <br>
&gt; commissioning process.<br>
&gt;<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Morn=C3=A9<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Larry Brown<div>S/V Trident</di=
v><div>Palm Harbor, FL</div><div>~~~~~~~~~~~~~~~~~_/)~~~~~~~~</div><div>=C2=
=A0 =C2=A0 ~ =C2=A0 =C2=A0 ~ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~ =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ~</div><div>~ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ~~_/) =C2=A0 =C2=A0~ =C2=A0 =C2=A0 =C2=A0~ ~ =C2=A0 =C2=A0 =C2=A0 =C2=
=A0~</div><div>=C2=A0 =C2=A0 =C2=A0~ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0_/) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~</div></div>=
</div>

--00000000000089eb08058c25dcae--
