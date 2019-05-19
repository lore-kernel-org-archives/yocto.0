Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9174E00D11; Sun, 19 May 2019 09:12:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F4080E00C46
	for <yocto@yoctoproject.org>; Sun, 19 May 2019 09:12:05 -0700 (PDT)
Received: by mail-qk1-f179.google.com with SMTP id z6so7387348qkl.10
	for <yocto@yoctoproject.org>; Sun, 19 May 2019 09:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=af3WuShFAOr09JD5idhq7pH6E26xOEll0htwXPhJCW4=;
	b=uzs0XeHdri6hK2wrKrrH884n/kQabyXfh0uy3MR863O6uttBtzOVrQs742t+qq6Xck
	KBlt4eqM37wOlDmWB9V2o2LbgGaHIZCIYkQjiwSGQYWdiON3PqWCTXQ/hc6OtMki/1pM
	GjomQnOzc65A43SG3xl1U9LK3bG80cm9XYjMZm+0XrH4Ha0JwIirJTYh5VlkQP7yvgV2
	UdTJubbSrTAlTV3cBEkG0EP7qwIaUC3lQAAxyBLrXg1mBuSG2WtZSqjkDGqsdG7Z0rIa
	8CfQ+HPG9YTZPdWlSM3G4CrMysjPqlp1TcCYpXNdYZnXjSupxrfna53Las18ihy43lEX
	AWOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=af3WuShFAOr09JD5idhq7pH6E26xOEll0htwXPhJCW4=;
	b=lV4vk4Eu12HozMPmhw5vIcWRLvCA9RtrT8OWTR0E5qB4by4cMJUWxEv46d2LdZLK8I
	evw1caii/0lJF/Xx0nSdGHJ1CTCG/b/clszCQ/WyK2NX1GT3m9UjuYPqb699ZFwwxvwj
	hbZkFn4rQw+cHOVt6MU3onGxfSvSY4xkYDcE7Vqi83X6HYzYzMIGkAXz2DEHP/LkWbkE
	SbgLM2mN1WgRMoYxSf1YbQtINNf1og5q6uu8MrgRPuOTz2lZbAJvC9Bqlaj6LeBM1ucX
	PMEL63IjR1VUbb18ZIIFEzB7tL2obywvZjffrnHs2OSIRw6f7dDqmQdL42ntB4Eutq6L
	D+6Q==
X-Gm-Message-State: APjAAAVSlFO9Gj1D49Uy2/Z9zmniFtE2xYXH+DFc56V71uOSE+dOBqx5
	GQYrpDXJOOLfkz7D3yXRzBq8qZ7K48oGw5a845A=
X-Google-Smtp-Source: APXvYqyBHY+cDFg2bDOLD1Z4h17658C0q1OKf29U6EnSwW4dr+PJUncfzKcQv8vrxFJCM9arEVstifl4/fHtWp6f4E0=
X-Received: by 2002:a37:78d:: with SMTP id 135mr54810533qkh.208.1558282325039; 
	Sun, 19 May 2019 09:12:05 -0700 (PDT)
MIME-Version: 1.0
References: <db5fdd69-f031-1932-27bb-6ed1a6f60f4c@ibeeto.com>
	<7e5c2228-c67e-bf65-fc80-0352b90502ec@gherzan.ro>
	<245b0a59-8a82-59e1-f35e-a0de8aa01d37@gmail.com>
	<CAPxNcnd0OQ4BS6xrm6vcR8UmAjGxsbksD7XMiU4GKDKKASXJzg@mail.gmail.com>
In-Reply-To: <CAPxNcnd0OQ4BS6xrm6vcR8UmAjGxsbksD7XMiU4GKDKKASXJzg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 19 May 2019 09:11:53 -0700
Message-ID: <CAMKF1srf=vjP+PEgk6LHOib4oaxHx1OZUd_OFTqoyCeqUwdmSA@mail.gmail.com>
To: Rudolf Streif <rudolf.streif@ibeeto.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] RPi 7" Touch Display
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
X-List-Received-Date: Sun, 19 May 2019 16:12:06 -0000
Content-Type: multipart/alternative; boundary="000000000000719f3e05893fe009"

--000000000000719f3e05893fe009
Content-Type: text/plain; charset="UTF-8"

On Sat, May 18, 2019 at 11:02 PM Rudolf Streif <rudolf.streif@ibeeto.com>
wrote:

> Thanks, Khem. 64 bit, raspberrypi3-64 machine with vc4graphics.
>

Please try 32bit we only have hdmi tested in 64bit this far


>
> On Sat, May 18, 2019, 22:13 Khem Raj <raj.khem@gmail.com> wrote:
>
>>
>>
>> On 5/16/19 9:01 AM, Andrei Gherzan wrote:
>> > HI,
>> >
>> > On 16/05/2019 16.31, Rudolf J Streif wrote:
>> >> I am trying to use the "official" RPi 7" touch display
>> >> (https://www.raspberrypi.org/products/raspberry-pi-touch-display/)
>> >> with meta-raspberrypi (most recent from master). However, I cannot get
>> >> it to work. As a matter of fact the display does not even show the GPU
>> >> rainbow screen making me think that the GPU firmware packaged with
>> >> meta-raspberrypi does not support the DSI display. It works just fine
>> >> with the latest Raspbian release (screen and touch).
>> >>
>> >> I searched the web up and down but could not find anything. Maybe
>> >> somebody has an idea? Wrong firmware (maybe cannot be distributed
>> >> because of licensing...)?
>> > Sadly we don't actively test display and other related toys so they
>> > might be broken. Even so, I would be surprised if the DSI port doesn't
>> > work. What is you final config.txt (pastebin it please)?
>> >
>>
>> are you building 64bit or 32bit images ?
>> are you using vc4grpahics or userland graphics ?
>>
>

--000000000000719f3e05893fe009
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, May 18, 2019 at 11:02 PM Rudolf Streif &lt;<a href=
=3D"mailto:rudolf.streif@ibeeto.com">rudolf.streif@ibeeto.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto"><div>Thanks, Kh=
em. 64 bit, raspberrypi3-64 machine with vc4graphics.=C2=A0</div></div><div=
 dir=3D"auto"><div></div></div></blockquote><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Please try 32bit we only have hdmi tested in 64bit this far=
=C2=A0</div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Sat, May 18, 2019, 22:13 Khem Raj &lt;<a href=3D"mailto=
:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><br>
<br>
On 5/16/19 9:01 AM, Andrei Gherzan wrote:<br>
&gt; HI,<br>
&gt; <br>
&gt; On 16/05/2019 16.31, Rudolf J Streif wrote:<br>
&gt;&gt; I am trying to use the &quot;official&quot; RPi 7&quot; touch disp=
lay<br>
&gt;&gt; (<a href=3D"https://www.raspberrypi.org/products/raspberry-pi-touc=
h-display/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://www.ras=
pberrypi.org/products/raspberry-pi-touch-display/</a>)<br>
&gt;&gt; with meta-raspberrypi (most recent from master). However, I cannot=
 get<br>
&gt;&gt; it to work. As a matter of fact the display does not even show the=
 GPU<br>
&gt;&gt; rainbow screen making me think that the GPU firmware packaged with=
<br>
&gt;&gt; meta-raspberrypi does not support the DSI display. It works just f=
ine<br>
&gt;&gt; with the latest Raspbian release (screen and touch).<br>
&gt;&gt;<br>
&gt;&gt; I searched the web up and down but could not find anything. Maybe<=
br>
&gt;&gt; somebody has an idea? Wrong firmware (maybe cannot be distributed<=
br>
&gt;&gt; because of licensing...)?<br>
&gt; Sadly we don&#39;t actively test display and other related toys so the=
y<br>
&gt; might be broken. Even so, I would be surprised if the DSI port doesn&#=
39;t<br>
&gt; work. What is you final config.txt (pastebin it please)?<br>
&gt; <br>
<br>
are you building 64bit or 32bit images ?<br>
are you using vc4grpahics or userland graphics ?<br>
</blockquote></div></div></div>
</blockquote></div></div>

--000000000000719f3e05893fe009--
