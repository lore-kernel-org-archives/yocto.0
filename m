Return-Path: <sateesh0457@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6466DE0096F; Mon,  2 Sep 2019 07:06:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	NUMERIC_HTTP_ADDR, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sateesh0457[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.68 listed in list.dnswl.org]
	*  1.2 NUMERIC_HTTP_ADDR URI: Uses a numeric IP address in URL
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
	[209.85.210.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7F56E008E3
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2019 07:06:25 -0700 (PDT)
Received: by mail-ot1-f68.google.com with SMTP id c10so2297554otd.9
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2019 07:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=rIOwPng+SzUJWBcVD+5lkXM0/7MgQNoZmNa6Xzl92TM=;
	b=Rfb3CVQrG7zAja1fAPMq7bPo1BYqR5DNlQAYx3dg2r8SLp1y2CH1rASTs9gVTRuO6i
	ErA7a+V2hKQYaXznZVotljnMXI9IK1xKFIpr6on0syNNTM28J+f4vRghniUYibdcgX6W
	sXkN554k0H1Ddrh1RAW70mGBs9H8gpPmL3N/2sbpzQBv1QMsyB1SlRy6TDhMiMFVuEgP
	zPgftktHQjUqLPSxI2X7I59u3V9a1FJ5dHeTWe74Oq87gp/4JOsTXwmPjvFS9Bw8eIaI
	dZPQEz9pt2xxAYDy/kwW5q5F8sR/VxFOK1gzBPsluVgYhM45qz+lW1JnRwwX4U8pof96
	K4vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=rIOwPng+SzUJWBcVD+5lkXM0/7MgQNoZmNa6Xzl92TM=;
	b=bhjgZZpdcX+2914ShtUhZnrAMddK8tO2fHH/tL+9hWCYxldSTXGK9VwkZJWPh2NCY9
	0JLEJdEaGVpaO7Zpawt2UmkSAJqDLwUGmWbBNh2vjqRiV4QJaBxtFh9woOS1gQfi2Bt1
	AmNFuGo7JZmspIPhuKgOVh7I7nZsPlbh90hzP4txuZJvrye3OS22gzGeUxIob2M5YrQz
	UCuxWa1vi14xow2+5ODL9MqLGeYwn78Mdw5cv5lhA9+y6/qIF+Ch/fnaLa5aQBfiNVbp
	8tyxk8vtqi7qGCFSo8za1zmMGyB3GdarIY2jw4050K28n7VCckQ7PEX5vWrA7zQ8OBsM
	/bVw==
X-Gm-Message-State: APjAAAVC/9vdyRmULQiThjeTbHyvhP0Ondd8H64dArrKXaok/q18c/5y
	RlcEomly1l46SKsbIJ6FL+rKQYTDtUDrb4ESIv4=
X-Google-Smtp-Source: APXvYqypf1oI8egNEbjgwVO1jdFM3yG6JawsgjZYy92rsCVWiLVeyCT3vZrQchwySwpi8oakAmRq5Fs5f/xZJTc0aZ0=
X-Received: by 2002:a9d:7c99:: with SMTP id q25mr6056634otn.169.1567433184972; 
	Mon, 02 Sep 2019 07:06:24 -0700 (PDT)
MIME-Version: 1.0
References: <CACsETSsjtVOpXdR6_oWisx2LZM4hkKr37NfT+WmS_goDUZTO8g@mail.gmail.com>
	<CANNYZj9=-t+=BZ4ahnJqvYufakkNa00gzjh0ksyoMR88HKMQ1g@mail.gmail.com>
In-Reply-To: <CANNYZj9=-t+=BZ4ahnJqvYufakkNa00gzjh0ksyoMR88HKMQ1g@mail.gmail.com>
From: sateesh m <sateesh0457@gmail.com>
Date: Mon, 2 Sep 2019 19:36:13 +0530
Message-ID: <CACsETSurbOjmE5JRXO2gZKopAqM_LA22q=EsANiZWGgY-Z1UUg@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
X-Mailman-Approved-At: Mon, 09 Sep 2019 02:06:56 -0700
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: ptest-runner yocto build sytem issue
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
X-List-Received-Date: Mon, 02 Sep 2019 14:06:26 -0000
Content-Type: multipart/alternative; boundary="0000000000003334900591927a4a"

--0000000000003334900591927a4a
Content-Type: text/plain; charset="UTF-8"

Sure, sir. If you don't mine can you please share where this log file will
present.
I am seeing /tmp-glibc/work/riscv-oe-linux/ptest-runner/2.3.4.../temp/
I am seeing here but log.do_rootfs file is not Present here.

Can you please tell me where I can found this file.

Thanks & Regards,
Sateesh

On Mon 2 Sep, 2019, 7:11 PM Alexander Kanavin, <alex.kanavin@gmail.com>
wrote:

> On Mon, 2 Sep 2019 at 15:06, sateesh m <sateesh0457@gmail.com> wrote:
>
>> I followed the wiki https://wiki.yoctoproject.org/wiki/Ptest , but when
>> I boot to my image and run ptest-runner I have the output : "No ptests
>> found."
>> Is this normal ? I thought that
>>
>> DISTRO_FEATURES_append = " ptest"
>> and
>> EXTRA_IMAGE_FEATURES += "ptest-pkgs"
>>
>> would install all the ptests for me in my image, apparently I am wrong
>> but could you please explain to me why this is not the case i.e why ptests
>> are not automatically installed in the image even though I included the
>> above lines in my local.conf ?
>>
>> How to test my packages using ptest. can you share sample test or testing
>> procedure document .
>>
>
> Can you share the log.do_rootfs file for your image please?
>
> There are also example ptest images in poky, so you could try those and
> see how they work.
>
> Alex
>

--0000000000003334900591927a4a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Sure, sir. If you don&#39;t mine can you please share whe=
re this log file will present.<div dir=3D"auto">I am seeing /tmp-glibc/work=
/riscv-oe-linux/ptest-runner/<a href=3D"http://2.3.4.">2.3.4.</a>../temp/=
=C2=A0</div><div dir=3D"auto">I am seeing here but log.do_rootfs file is no=
t Present here.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Can you =
please tell me where I can found this file.</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">Thanks &amp; Regards,</div><div dir=3D"auto">Sateesh</d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Mon 2 Sep, 2019, 7:11 PM Alexander Kanavin, &lt;<a href=3D"mailto:ale=
x.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Mon, 2 Sep 2019 at 15:06, sateesh m &lt;<=
a href=3D"mailto:sateesh0457@gmail.com" target=3D"_blank" rel=3D"noreferrer=
">sateesh0457@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div>I followed=20
the wiki <a href=3D"https://wiki.yoctoproject.org/wiki/Ptest" target=3D"_bl=
ank" rel=3D"noreferrer">https://wiki.yoctoproject.org/wiki/Ptest</a> , but =
when I boot to=20
my image and run ptest-runner I have the output : &quot;No ptests found.&qu=
ot;<br>Is this normal ? I thought that<br><br>DISTRO_FEATURES_append =3D &q=
uot; ptest&quot;<br>and<br>EXTRA_IMAGE_FEATURES +=3D &quot;ptest-pkgs&quot;=
<br><br>
 would install all the ptests for me in my image, apparently I am wrong=20
but could you please explain to me why this is not the case i.e why=20
ptests are not automatically installed in the image even though I=20
included the above lines in my local.conf ?</div><div><br></div><div>How to=
 test my packages using ptest. can you share sample test or testing procedu=
re document .</div></div></blockquote><div><br></div><div>Can you share the=
 log.do_rootfs file for your image please?</div><div><br></div><div>There a=
re also example ptest images in poky, so you could try those and see how th=
ey work.<br></div><div><br></div><div>Alex<br></div></div></div>
</blockquote></div>

--0000000000003334900591927a4a--
