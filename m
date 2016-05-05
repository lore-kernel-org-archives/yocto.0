Return-Path: <pknopf@medxchange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 790C0E00E1F; Thu,  5 May 2016 12:57:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f182.google.com (mail-yw0-f182.google.com
	[209.85.161.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 775CDE00E10
	for <yocto@yoctoproject.org>; Thu,  5 May 2016 12:57:06 -0700 (PDT)
Received: by mail-yw0-f182.google.com with SMTP id t10so159861750ywa.0
	for <yocto@yoctoproject.org>; Thu, 05 May 2016 12:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=medxchange-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=egMWNeQDRJSwgwJ2HmKqRzBQiV90ZE0k/k4GjnhFqYA=;
	b=dSdyzFGM8mtLAMmiO27JSs9AQ9DXh/IZhMs9Mu4m5YSoaoPJzfaXoX+vCowX9ZOnRy
	rGTw0k1T4SklFd7idYjwjzjG9ZheRySz+XQctoCWvnCcsRua8u1MKK0Zrim0JZFB8/fF
	wvDfirJDxwBbWQ2C94yr+bTyLQ2P/l/0Efw6qJOos12tXoc3DdG1znEivcQrMmpq0uYv
	sTfuZEAuFUCm8vxKSzWg4ezuhq9Jg9/BUqsbndDI1HD44Lhiv9E0yNDWHScG2F4mS8OE
	h+pEjKUXVZrcnv9maZpOOwPMmzHLOZRCSO16rtcxsybcc38m7ja95QqEJ4ezbS/rOXsa
	bFnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=egMWNeQDRJSwgwJ2HmKqRzBQiV90ZE0k/k4GjnhFqYA=;
	b=RNVoD7d25eU7hOa7nPBYPyfbRCDGqSqlshn2IkHr+tIN9ogHJd/w918/oY3s0IVkbt
	RpZuwTcmROY3ioAs3zJmMD4GCHsQAhD32pOFKz3kNmMbL46EI7+1RIdkr2fSeCSZY6u+
	CQCBodLbNiNwPltv+hvStDX/pJSnfpnc55O/+VyIkk/CtYNCmVYK983Kcr9VmHQjbOoo
	0WjVu9B1cGLnZkTC419+zyNhoRQ+THDi6TxBPiBHieTTeIKcEHVjNngi4cHomdUSC1Ya
	/ekCOyo9p8NisEBu3kmrTkJ9t1oucweRa2C6RJAF0zbvXhCl/i7BjuJBLo+7wCyrcAl8
	oGFA==
X-Gm-Message-State: AOPr4FXWgFXsDgIfBbDV5SaJtcDBFbMkfq0r6f4QKCBqcZU3u2xiYoYrdCq4511gwxBlfKps3SFjeeXJ6Ts4wQ==
X-Received: by 10.159.41.167 with SMTP id s36mr7417883uas.48.1462478225660;
	Thu, 05 May 2016 12:57:05 -0700 (PDT)
MIME-Version: 1.0
References: <CABfz71eh5ONgNF2aDmZfrJ8sexms3nEv=iNWgA9ChRGfHxKS0A@mail.gmail.com>
In-Reply-To: <CABfz71eh5ONgNF2aDmZfrJ8sexms3nEv=iNWgA9ChRGfHxKS0A@mail.gmail.com>
From: Paul Knopf <pknopf@medxchange.com>
Date: Thu, 05 May 2016 19:56:56 +0000
Message-ID: <CABfz71ehqZNPOqh4m2UVkNj6kRt3p6n423q5Gx8wssUO2kzSSw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: udev automount.rules not running on boot
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
X-List-Received-Date: Thu, 05 May 2016 19:57:09 -0000
Content-Type: multipart/alternative; boundary=001a114cbbf4220cd505321dbf1e

--001a114cbbf4220cd505321dbf1e
Content-Type: text/plain; charset=UTF-8

It appears that /dev isn't mounted by the time the rules fire.

What I winded up doing is creating a init.d script that re-triggers an
"add" command for any block device partitions.

-------------------------

#!/bin/sh

for line in `cat /proc/partitions |grep -e [s]d[a-z][0-9]$ |awk '{print
$4}'`; do
  block_number=`expr "$line" : '[a-z]\{3\}\(.\)*'`
  block_name=`expr "$line" : '\([a-z]\{3\}\).*'`
  echo $block_number
  echo $block_name
  echo add > /sys/block/$block_name/$block_name$block_number/uevent
done

-------------------------

This causes the "add' event to be re-triggered, making the USB mount on
boot.

On Thu, May 5, 2016 at 1:57 PM Paul Knopf <pknopf@medxchange.com> wrote:

> I am using the automount.rules in udev-extra-conf.
>
> If I boot up with a block device plugged in, nothing is mounted. If I plug
> in the device AFTER the machine is booted, it shows up (in /run/media/*).
>
> How do I get these rules to be applied on boot?
> --
>
> Thanks,
> Paul Knopf
> Software Engineer
> Med X Change, Inc
> pknopf@medxchange.com
>
-- 

Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com

--001a114cbbf4220cd505321dbf1e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It appears that /dev isn&#39;t mounted by the time the rul=
es fire.<br><br>What I winded up doing is creating a init.d script that re-=
triggers an &quot;add&quot; command for any block device partitions.<div><b=
r></div><div>-------------------------</div><div><br></div><div><div>#!/bin=
/sh</div><div><br></div><div>for line in `cat /proc/partitions |grep -e [s]=
d[a-z][0-9]$ |awk &#39;{print $4}&#39;`; do</div><div>=C2=A0 block_number=
=3D`expr &quot;$line&quot; : &#39;[a-z]\{3\}\(.\)*&#39;`</div><div>=C2=A0 b=
lock_name=3D`expr &quot;$line&quot; : &#39;\([a-z]\{3\}\).*&#39;`</div><div=
>=C2=A0 echo $block_number</div><div>=C2=A0 echo $block_name</div><div>=C2=
=A0 echo add &gt; /sys/block/$block_name/$block_name$block_number/uevent</d=
iv><div>done</div></div><div><br></div><div><span style=3D"font-family:&#39=
;helvetica neue&#39;,helvetica,arial,sans-serif">-------------------------<=
/span>=C2=A0=C2=A0<br></div><div><br></div><div>This causes the &quot;add&#=
39; event to be re-triggered, making the USB mount on boot.</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, May 5, 2016 at 1:57 PM =
Paul Knopf &lt;<a href=3D"mailto:pknopf@medxchange.com">pknopf@medxchange.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">=
I am using the automount.rules in udev-extra-conf.<div><br></div><div>If I =
boot up with a block device plugged in, nothing is mounted. If I plug in th=
e device AFTER the machine is booted, it shows up (in /run/media/*).</div><=
div><br></div><div>How do I get these rules to be applied on boot?</div></d=
iv><div dir=3D"ltr">-- <br></div><div dir=3D"ltr"><p dir=3D"ltr">Thanks,<br=
>
Paul Knopf<br>
Software Engineer<br>
Med X Change, Inc<br>
<a href=3D"mailto:pknopf@medxchange.com" target=3D"_blank">pknopf@medxchang=
e.com</a></p>
</div></blockquote></div><div dir=3D"ltr">-- <br></div><div dir=3D"ltr"><p =
dir=3D"ltr">Thanks,<br>
Paul Knopf<br>
Software Engineer<br>
Med X Change, Inc<br>
<a href=3D"mailto:pknopf@medxchange.com">pknopf@medxchange.com</a></p>
</div>

--001a114cbbf4220cd505321dbf1e--
