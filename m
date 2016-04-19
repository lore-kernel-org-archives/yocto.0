Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C826E00F52; Mon, 18 Apr 2016 17:49:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3E05E00D34
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 17:49:36 -0700 (PDT)
Received: by mail-qg0-f48.google.com with SMTP id v14so813464qge.0
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 17:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=0f5rostuAI/x96yA6I0BGUEnM/BIZh7RzPNmrxqjz20=;
	b=rZGv4+STRIRichnlEJ8ilS8PWhyRecvDxzsV7H7Ub4e40QCw+e5eaUWwALHg3hfdfw
	KMAYO9ciCOWkoGEfH7swIJczLQ6g7IXU7Jx7+lBw7SAJIJ7eBs9onjN87SAM8yR4qnwC
	ptZnJW1DTBd3BNY/E6To8eIx/PgOLmX7oBuyui/MMX5a/lzxst0Pz97S/2tEEutgG+nE
	IpADIkBcmS654HWckxu2EUM8ftSv98RcYOS5mxZZDrFW1vv5zjuRytWDtkHzdnEuaPH7
	G/kq2pK7Q1ho1A1+Boa72/NoYN5isOswyp5jr0XDDbKdcaO8jTTdrxZvTpXswqJGZi2T
	dTdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=0f5rostuAI/x96yA6I0BGUEnM/BIZh7RzPNmrxqjz20=;
	b=ZKZD4ff4K4xIyErr8jeROFJsUr5CBPtFuBvSXnrisqZh3t+RinHI8hNXi/PBLozcsX
	1Dg6ocoyLCNYm241iecDr6BJ05meT80/23GVb7QkR3gmpFcCuS8VBTNryX0ApN7tlMJy
	iVZKKH2mIvvXe2cC17PLmvn4QCgan3utTz+qtdSCRJScDgonn6PYSJT/yKuYs6+XLzDR
	hZqWe9N86zxIiADSfB7O6YokeCABPSdQL8tTCUi2c6keGQsuzlnw6GGOkg8KyMl04JUp
	n7rhLqyHBjbInaFgPo+3ks4iA5Wxh0QPfq0L04jfqhaDToN5uPYiVaeEo647ycVBRQ63
	Im/Q==
X-Gm-Message-State: AOPr4FXB9b4/oWLljZYVRkYuMMzeUaT+je7X3RK2NGeo6luDylo8+mm+/r+TkwdHP0oRDG/1WrFz2kgIfKw1DA==
MIME-Version: 1.0
X-Received: by 10.140.254.213 with SMTP id z204mr111455qhc.5.1461026975835;
	Mon, 18 Apr 2016 17:49:35 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Mon, 18 Apr 2016 17:49:35 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Mon, 18 Apr 2016 17:49:35 -0700 (PDT)
In-Reply-To: <1461019868.9308.224.camel@linuxfoundation.org>
References: <CAJTo0LZtDL-hbxXmYWdgf7HTZtSA4D2FgRKtx1+n6Rqxq50n=g@mail.gmail.com>
	<CAMKF1spGMHQMVP_-mrHYmDnjM+DPk0mktK_e+9G1bekuP6PnUA@mail.gmail.com>
	<1461019868.9308.224.camel@linuxfoundation.org>
Date: Mon, 18 Apr 2016 17:49:35 -0700
Message-ID: <CAMKF1spKB=HXLipbo_qFBY6mo67LOWAB-uQxRA25ghZTwD=i5Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] bugzilla.yoctoproject.org policy for bugs against multiple releases
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
X-List-Received-Date: Tue, 19 Apr 2016 00:49:40 -0000
Content-Type: multipart/alternative; boundary=001a113aa030e6f0d00530cbd9cc

--001a113aa030e6f0d00530cbd9cc
Content-Type: text/plain; charset=UTF-8

On Apr 18, 2016 3:51 PM, "Richard Purdie" <
richard.purdie@linuxfoundation.org> wrote:
>
> On Mon, 2016-04-18 at 10:35 -0700, Khem Raj wrote:
> > Can we have a possibility to select  field like "affected version"
> > and have it such that multiple versions can be specified
>
> That doesn't really allow us to mark version X as merged and version Y
> as pending review though and as I understand it, that is the real issue
> atm :/.

May be bugzilla can be programmed to have such triggers. Having separate
bug is not a good looking solution
>
> Cheers,
>
> Richard

--001a113aa030e6f0d00530cbd9cc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Apr 18, 2016 3:51 PM, &quot;Richard Purdie&quot; &lt;<a href=3D"mailto:r=
ichard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&g=
t; wrote:<br>
&gt;<br>
&gt; On Mon, 2016-04-18 at 10:35 -0700, Khem Raj wrote:<br>
&gt; &gt; Can we have a possibility to select=C2=A0 field like &quot;affect=
ed version&quot;<br>
&gt; &gt; and have it such that multiple versions can be specified<br>
&gt;<br>
&gt; That doesn&#39;t really allow us to mark version X as merged and versi=
on Y<br>
&gt; as pending review though and as I understand it, that is the real issu=
e<br>
&gt; atm :/.</p>
<p dir=3D"ltr">May be bugzilla can be programmed to have such triggers. Hav=
ing separate bug is not a good looking solution<br>
&gt;<br>
&gt; Cheers,<br>
&gt;<br>
&gt; Richard<br>
</p>

--001a113aa030e6f0d00530cbd9cc--
