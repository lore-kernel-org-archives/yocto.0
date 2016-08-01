Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26F94E00E85; Mon,  1 Aug 2016 07:28:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A845CE00E61
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 07:28:50 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id u186so247961113ita.0
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2016 07:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Nr3n8bfCmoaePniyhJ7vO6qL46blmO7lUhZiPmg6eq8=;
	b=W36d7m3C4ukTO3qS1MX1+9GyGqe8aOSRLT0uRipkBh+GhbESKV/0KVJ/FS65qUqfGe
	UH0EVyDXGWAXWMY4LxtE05Htrn77zSVZcasEgOXc6F6kiMkfFTWgdn0ZVr+yQN8U+86a
	AJ3l4+p7IVbOiaPk808br5XXrhcHbIoJvfx2/CjCrx8oi8IJZc0BdnKZdwUPBY89Iqoj
	pLQMMVh7aryqFsnfzF/ywlZxrK2PtJCZRrM0Jbo1E/7k4ihKqBKylnIC1V25tVMk/+C4
	0yOLdoyTkn+4dyNdd6uET2dbZt8DOWuUJq0r5+29u0R4UR3xaNPHpLnNo0+b1WVsfhJ0
	yvYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Nr3n8bfCmoaePniyhJ7vO6qL46blmO7lUhZiPmg6eq8=;
	b=Enh1R/DTNlBBTxZaH5FRI1HN44mm4zru+umAsHzrIbmjvGW4DPJB7th3sKZw4y8GBO
	4biLBjo5DROYbJW+YL3uUDPIXQw7UYsggtYzmBtBK3viyekhnFC9K8YF4OdCFvlghSe3
	UAVcXTf84TzVgq8gQ3RehY5wsq+zzchuoO9ZFJDBlQQ3eX+JKj1LpqVWjAUJZPPf5G8Q
	a19r3GVxp5+hLPbbqtv/e7mg/V4NFuldMze0URaaNd0+Zapc58FwEFfNgZTC0QC9uTlC
	07eClwOhmRCPI1dR9ShGhgxykO6kwKxaBxWe55gKqpQ3dihLe6FWJIrbasJQGfpOjOFT
	w0yw==
X-Gm-Message-State: AEkooutvYJ45Ncq/Wbk931z+Maa1UGidU2QLo5tjauIpltpq4Q5ZNr2KBorZtRyeyD/aUtgHAhOcuu62IiaYZ7Zl
X-Received: by 10.36.19.75 with SMTP id 72mr55994430itz.83.1470061729427; Mon,
	01 Aug 2016 07:28:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Mon, 1 Aug 2016 07:28:30 -0700 (PDT)
In-Reply-To: <6dc9bda6-6399-19ce-37d3-6886e38b4054@mlbassoc.com>
References: <579C6829.8080804@mlbassoc.com>
	<CAJTo0LZ=h9Yoya4CyMNz3jeJR2XzeDqWi+cgmr6rcPRKBxZCJQ@mail.gmail.com>
	<6dc9bda6-6399-19ce-37d3-6886e38b4054@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Aug 2016 15:28:30 +0100
Message-ID: <CAJTo0LZcshBKQ7TFNXRhy=9LjpkZ-t9PKf-9uEH2Q7vdq-VSkw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: A question of sstate and compilers
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
X-List-Received-Date: Mon, 01 Aug 2016 14:28:52 -0000
Content-Type: multipart/alternative; boundary=001a1145180a2e50e60539036b7d

--001a1145180a2e50e60539036b7d
Content-Type: text/plain; charset=UTF-8

On 1 August 2016 at 15:26, Gary Thomas <gary@mlbassoc.com> wrote:

> Nothing else changed, I'm sure.
>

*Something* changed, although it may be something that shouldn't have
caused a rebuild (at which point printdiff is useful to find that out).

Ross

--001a1145180a2e50e60539036b7d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 1 August 2016 at 15:26, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div id=3D":cy" class=3D"a3s aXjCH =
m156467f74b3e654e">Nothing else changed, I&#39;m sure.<br></div></blockquot=
e><div><br></div><div>*Something* changed, although it may be something tha=
t shouldn&#39;t have caused a rebuild (at which point printdiff is useful t=
o find that out).</div><div><br></div><div>Ross=C2=A0</div></div><br></div>=
</div>

--001a1145180a2e50e60539036b7d--
