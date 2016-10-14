Return-Path: <contrib.open.source@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12300E00E5E; Thu, 13 Oct 2016 22:23:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (contrib.open.source[at]gmail.com)
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
	*      [209.85.214.50 listed in list.dnswl.org]
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAB95E00E53
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 22:23:43 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id l13so205187159itl.1
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 22:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zltKZuKyLc3LYYlxxgP8m57zl9ZUmZyPPCrMqBr7IyQ=;
	b=PyL3Axdf5OixinGH1uMhqKa0+oqCCeqXbsii2mFxmvGMB398rFMJIhUJL0kMYbiCM3
	LGfCifqvyyqfVtIunckzWizcAz5TfRqI1hlBVNjdrn4lGWk6g7MTjoXHNs7tUX+FC4PR
	QQEsyIR+IqcYpT2cb5c9u3DTF3YyZMkLypu7hh7IHbgGeotCWSRw1g4EPOVciIcFy6YQ
	cqxBzRru5tJgJa1ieZHtUgYCFz34c3DIYPehi9YUZjRROS08NNOppqpYRrRD7P4th7gl
	eslY1+wugBAj5KreK5kEcduixhHjpEgx1M/eb1eFw7gBoujJf00gNTxsSn/5ZH0lIjIX
	Yn+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zltKZuKyLc3LYYlxxgP8m57zl9ZUmZyPPCrMqBr7IyQ=;
	b=muj+EDER93Hp6A7MDwgeKf8hxe+3nG7qHFQF9byEgvAz0ujUp9wYHDrJvF2O0auG9q
	sOG1r5MlQIG/K0fm3TMytCMj/YoEBUeK6EemB3/fjkosD/4QX2ijhYmThxoL8yaagzIr
	rxbMw31UAGYi40AVO4q6l+mxBtp2A5iGCW6aAMJ35gMttZ105xsf5hQdVBuHZi0t8pma
	HvH9cX3Sd4K8ki+iHsqbnUaiHye63dkly+eW3ti1iMi9PpwB7bVo6Eu/M147lsrU82/u
	dc+r+lw325OC4il8E9s16gtFmW6cQzT1QI0WoeIjqF42coRD+pXfLaKWzHiXno7eeLXm
	Iodg==
X-Gm-Message-State: AA6/9Rk8mwMCDMfudJ+vNMT4iSsFpkx0ZU8zvXWVyapDhrV9uNnjohuy5ihx/6Xe/7MDrBI8uAbuV4dimwTncA==
X-Received: by 10.36.53.214 with SMTP id k205mr337620ita.85.1476422623404;
	Thu, 13 Oct 2016 22:23:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.126.232 with HTTP; Thu, 13 Oct 2016 22:23:42 -0700 (PDT)
In-Reply-To: <CAJTo0Lao9tQ+R01H7J-O5nUmC6=rjiysLK05U6VP1faRGRM9ew@mail.gmail.com>
References: <CAEV+hqwr5pp_EaLd=7cU8=cfKPQcAgr0ghmgYPn-hH8zyCE-Qw@mail.gmail.com>
	<CAJTo0Lao9tQ+R01H7J-O5nUmC6=rjiysLK05U6VP1faRGRM9ew@mail.gmail.com>
From: Contrib Open Source <contrib.open.source@gmail.com>
Date: Fri, 14 Oct 2016 07:23:42 +0200
Message-ID: <CAEV+hqzzWJV35x1dqTzrBg4vJn7L=n445jazcotECoKkmF8wOw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto recipe license
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
X-List-Received-Date: Fri, 14 Oct 2016 05:23:49 -0000
Content-Type: multipart/alternative; boundary=001a114aa6be01a70d053ecc6eb8

--001a114aa6be01a70d053ecc6eb8
Content-Type: text/plain; charset=UTF-8

Hello,

thanks for pointing me to oe-core LICENSE file.

Just to be sure, from:
https://github.com/openembedded/openembedded-core/blob/master/LICENSE
   "All metadata is MIT licensed unless otherwise stated. Source code
    included in tree for individual recipes is under the LICENSE stated in
    the associated recipe (.bb file) unless otherwise stated.

    License information for any other files is either explicitly stated
    or defaults to GPL version 2."

Here "metadata" stands for "oe-core recipe", right ?

What if we extend (*.bbappend) a GPLv2 recipe: is it "contaminated" or not ?

Regards,
contrib

2016-10-13 12:37 GMT+02:00 Burton, Ross <ross.burton@intel.com>:

>
> On 13 October 2016 at 09:49, Contrib Open Source <
> contrib.open.source@gmail.com> wrote:
>
>> it seems that license.manifest file describes application/lib/etc.
>> source code license,
>> but what about Yocto recipe license itself ?
>> So what is the license of a Yocto recipe ?
>> How to know it ?
>> If a Yocto recipe is GPL2, and we extend (*.bbappend) this recipe,
>> does contamination effect applies to the extented recipe ?
>>
>
> The oe-core metadata is licensed under MIT, as explained in the LICENSE
> file.
>
> Ross
>

--001a114aa6be01a70d053ecc6eb8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>thanks for pointing me to oe-cor=
e LICENSE file.</div><div><br></div><div>Just to be sure, from:=C2=A0<a hre=
f=3D"https://github.com/openembedded/openembedded-core/blob/master/LICENSE"=
>https://github.com/openembedded/openembedded-core/blob/master/LICENSE</a><=
/div><div>=C2=A0 =C2=A0&quot;All metadata is MIT licensed unless otherwise =
stated. Source code</div><div>=C2=A0 =C2=A0 included in tree for individual=
 recipes is under the LICENSE stated in</div><div>=C2=A0 =C2=A0=C2=A0the as=
sociated recipe (.bb file) unless otherwise stated.</div><div>=C2=A0 =C2=A0=
</div><div>=C2=A0 =C2=A0=C2=A0License information for any other files is ei=
ther explicitly stated=C2=A0</div><div>=C2=A0 =C2=A0=C2=A0or defaults to GP=
L version 2.&quot;</div><div><br></div><div>Here &quot;metadata&quot; stand=
s for &quot;oe-core recipe&quot;, right ?</div><div><br></div><div>What if =
we extend (*.bbappend) a GPLv2 recipe: is it &quot;contaminated&quot; or no=
t ?</div><div><br></div><div>Regards,</div><div>contrib</div></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">2016-10-13 12:37 GMT+02:0=
0 Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.co=
m" target=3D"_blank">ross.burton@intel.com</a>&gt;</span>:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><span class=
=3D""><br><div class=3D"gmail_quote">On 13 October 2016 at 09:49, Contrib O=
pen Source <span dir=3D"ltr">&lt;<a href=3D"mailto:contrib.open.source@gmai=
l.com" target=3D"_blank">contrib.open.source@gmail.com</a><wbr>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">it seems that lic=
ense.manifest file describes application/lib/etc.<br>source code license,<b=
r>but what about Yocto recipe license itself ?<br>So what is the license of=
 a Yocto recipe ?<br>How to know it ?<br>If a Yocto recipe is GPL2, and we =
extend (*.bbappend) this recipe,<br>does contamination effect applies to th=
e extented recipe ?</div></blockquote></div><br></span>The oe-core metadata=
 is licensed under MIT, as explained in the LICENSE file.</div><span class=
=3D"HOEnZb"><font color=3D"#888888"><div class=3D"gmail_extra"><br></div><d=
iv class=3D"gmail_extra">Ross</div></font></span></div>
</blockquote></div><br></div>

--001a114aa6be01a70d053ecc6eb8--
