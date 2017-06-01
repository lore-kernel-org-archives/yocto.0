Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D57E5E00B01; Thu,  1 Jun 2017 05:49:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86E67E00992
	for <yocto@lists.yoctoproject.org>;
	Thu,  1 Jun 2017 05:49:15 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id o12so34744971iod.3
	for <yocto@lists.yoctoproject.org>;
	Thu, 01 Jun 2017 05:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UDfEuTWQK5kF5ZvbClUhhNs+DFw6AHs+Rmlb1r3jRPU=;
	b=BkhhtZHhPhKJVNSmzjr9hHlfVCV2MfjSrwkdNdirtXheVlYzDlRiGosVxpVAsr2PCK
	xqMlNqT2FGM8W0geV8fKpxS12f9AtICOT4Wii2s8Ro1UPyJcvPFW5ZJoIAjLOFH/SsxE
	83YfrUNbQxwcQH4loVWZ/Uto+ozOYU5N6oC3zDeCdfEVEMAfr76KWE4ttEVJnb8g+5QA
	M/Ylucu6W7B3tKPRVnz/PHaCIkc8iGWJXZVLvOZ9lVOEw8Houe8yEM8VUaLvNIPPYLJD
	GaOMb17QCtySEG5quJ7n2/KSuktX6/S1Hf8pSVRqWKEtvvIbxDEcKMcu+qkKH60OdFB3
	MsRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UDfEuTWQK5kF5ZvbClUhhNs+DFw6AHs+Rmlb1r3jRPU=;
	b=DBqpZ4udowGi+KODbttMBsjYW1QXu5cmsh8Zqdnk1ZP68hT1E4Mk0bQir6egOdHee+
	kGu5QN53F1KGzWzH3EEjHWPzcnmBRJlpVE+K7L21rtuPo+r2Q3rjLbFIVbBkj5qa74mU
	6rcqJZPVmxjicwd+qDiX1Wr96iFx4+xCs+UJLE1vCBDP/29xmbix6RCKdb3Mfz+RsZ5C
	TAcrCgUoLld5vr6nrPdzHyW9YxWd/MeuMw+64vgAntrg4VSW6yEGc8IEvi7XEe+zHZ2S
	r9dkxRSaFzkaqSg6CH14MrwdTrYp6iA8qiNgMrbcbLF1mtYMTV/jdqSe5a2eQu8Ds2xT
	Aa9w==
X-Gm-Message-State: AODbwcAxc6BL8jGJZy1FLm3b0/R6BV02D4ucTrWL2tipuuPXikiN28FK
	NZmhu+9FzLqmZzLd5+Fbjxz1eXJdKRs8
X-Received: by 10.107.134.211 with SMTP id q80mr1849968ioi.127.1496321354665; 
	Thu, 01 Jun 2017 05:49:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.33.129 with HTTP; Thu, 1 Jun 2017 05:48:33 -0700 (PDT)
X-Originating-IP: [86.186.204.183]
In-Reply-To: <CAPyrkgwPwe_Fqi0nGna=ud4opuWFVGntUh8=0Kg95OzxTui-9w@mail.gmail.com>
References: <20170530075723.18340-1-Martin.Jansa@gmail.com>
	<CAMKF1so+EmqtQFL-GbMyEQtpOOevOjRnqHbzXUvs4eb3m04XLw@mail.gmail.com>
	<CAPyrkgyar=GAr2QkqPe+Tjg=yp=yde_V3MKoXSeKZFb9StCXBw@mail.gmail.com>
	<CAJ86T=XF11yQjPFHXGHHk28MTQF1FQnEz_D+8s=6vk5AO6oFPQ@mail.gmail.com>
	<CAMKF1soe0qjKuyASY+sE4rcvOM-uAqzBVdNbJb2=f0c6gOhZ_w@mail.gmail.com>
	<CAK18fxF3uXOdsZkaN9f-DKJaMc+4GVfW28xTVK9a-01x+ktLXA@mail.gmail.com>
	<CAMKF1sqVEbdMKnqHHwsdWrs6aPDOowreRCZuk2h39J2XQEV8TA@mail.gmail.com>
	<CAPyrkgwGS+oheJHGudM-SiveTkdefgexcLoYfsbq+mReHXt+HQ@mail.gmail.com>
	<CA+chaQe2TbD08XjQpEfnLOfgNFcVMQH=f_FRnyAeabPAVsBndg@mail.gmail.com>
	<CA+chaQcufcNiAh2s5PCtQc1ES4B0uYcsBotV3BG0uqG0NRgw0w@mail.gmail.com>
	<CAPyrkgwPwe_Fqi0nGna=ud4opuWFVGntUh8=0Kg95OzxTui-9w@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 1 Jun 2017 13:48:33 +0100
Message-ID: <CAK18fxFctDmUFvnPyYHGsHeoF2+nC86xnQDeL_e3SgtpdL9hJw@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][meta-raspberrypi] linux-raspberrypi_dev: don't use AUTOREV
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
X-List-Received-Date: Thu, 01 Jun 2017 12:49:19 -0000
Content-Type: multipart/alternative; boundary="001a113ec278d1092a0550e576be"

--001a113ec278d1092a0550e576be
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 1, 2017 at 12:23 PM, Paul Barker <pbarker@toganlabs.com> wrote:

> On Thu, Jun 1, 2017 at 8:10 AM, Martin Jansa <martin.jansa@gmail.com>
> wrote:
> > And it's not clear from the diff you send, but like linux-yocto-dev.bb
> > example above, the recipe needs to be renamed from
> linux-raspberrypi_dev.bb
> > to linux-raspberrypi-dev.bb to make it different provider.
> >
> > On Thu, Jun 1, 2017 at 9:08 AM, Martin Jansa <martin.jansa@gmail.com>
> wrote:
> >>
> >> Yes, Paul approach looks good to me, I think it was what was suggested
> in
> >> first replies to my SRCREV change and I agree with that, I just haven't
> had
> >> time to send updated patch.
> >>
> >> Paul if you have the patch ready please send it, thanks!.
> >>
>
> I've submitted the patch via GitHub as per the new contributing
> instructions for meta-raspberrypi.
>
> https://github.com/agherzan/meta-raspberrypi/pull/82
>
>
Funny. This was exactly what I wanted to propose. If the warning noise does
not bother anyone, I'm up for this solution.

PR merged to master.

--
Andrei Gherzan

--001a113ec278d1092a0550e576be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div><div class=3D"m_4446576301=
887239210m_-9104702854368500056gmail_signature"><div dir=3D"ltr"><div dir=
=3D"ltr"><br></div></div></div></div><div class=3D"gmail_quote">On Thu, Jun=
 1, 2017 at 12:23 PM, Paul Barker <span dir=3D"ltr">&lt;<a href=3D"mailto:p=
barker@toganlabs.com" target=3D"_blank">pbarker@toganlabs.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=
=3D"m_4446576301887239210m_-9104702854368500056gmail-">On Thu, Jun 1, 2017 =
at 8:10 AM, Martin Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com" targ=
et=3D"_blank">martin.jansa@gmail.com</a>&gt; wrote:<br>
&gt; And it&#39;s not clear from the diff you send, but like <a href=3D"htt=
p://linux-yocto-dev.bb" rel=3D"noreferrer" target=3D"_blank">linux-yocto-de=
v.bb</a><br>
&gt; example above, the recipe needs to be renamed from <a href=3D"http://l=
inux-raspberrypi_dev.bb" rel=3D"noreferrer" target=3D"_blank">linux-raspber=
rypi_dev.bb</a><br>
&gt; to <a href=3D"http://linux-raspberrypi-dev.bb" rel=3D"noreferrer" targ=
et=3D"_blank">linux-raspberrypi-dev.bb</a> to make it different provider.<b=
r>
&gt;<br>
&gt; On Thu, Jun 1, 2017 at 9:08 AM, Martin Jansa &lt;<a href=3D"mailto:mar=
tin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt; wrote=
:<br>
&gt;&gt;<br>
&gt;&gt; Yes, Paul approach looks good to me, I think it was what was sugge=
sted in<br>
&gt;&gt; first replies to my SRCREV change and I agree with that, I just ha=
ven&#39;t had<br>
&gt;&gt; time to send updated patch.<br>
&gt;&gt;<br>
&gt;&gt; Paul if you have the patch ready please send it, thanks!.<br>
&gt;&gt;<br>
<br>
</span>I&#39;ve submitted the patch via GitHub as per the new contributing<=
br>
instructions for meta-raspberrypi.<br>
<br>
<a href=3D"https://github.com/agherzan/meta-raspberrypi/pull/82" rel=3D"nor=
eferrer" target=3D"_blank">https://github.com/agherzan/me<wbr>ta-raspberryp=
i/pull/82</a><br>
<div class=3D"m_4446576301887239210m_-9104702854368500056gmail-HOEnZb"><div=
 class=3D"m_4446576301887239210m_-9104702854368500056gmail-h5"><br></div></=
div></blockquote><div><br></div><div>Funny. This was exactly what I wanted =
to propose. If the warning noise does not bother anyone, I&#39;m up for thi=
s solution.</div><div><br></div><div>PR merged to master.</div><div><br></d=
iv><div>--<br></div><div>Andrei Gherzan=C2=A0</div></div></div></div>

--001a113ec278d1092a0550e576be--
