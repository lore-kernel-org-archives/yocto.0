Return-Path: <vikram.chhibber@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03FFCE00C77; Mon, 23 Jul 2018 10:30:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vikram.chhibber[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE966E00A04
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 10:30:41 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id q9-v6so1206947ioj.8
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 10:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=S9ZJGpILm51uFS7ngzBUr2GlB+ODeP9SaFiuCI753S8=;
	b=iWABvcddKOIDj/pUX+5Oc9Lvt9PSZK0Gnd2gUm3XM5HUXqdEcnW7mUrTTnhwJjZyEs
	MUEIZD00z0mo1iWnfjJXgtrZ8EVQtPc7CVggLWJXXrloqrPMjzjk7OGJbo0RM/T4mJwK
	Kkx5MoLm1EMdSrL1yqRZ31K0JLODGZP1QgR/KQ+/xq4WkUFztpMI+h5Ih9SG7dneAPLI
	ZzQZ1n85co7fIEKN5EYNZ3X0/XVt+5e9/yUR9mrjPLfjEC8M8MunLzwJgFueY4proB1r
	HGDbqQOqUMu88E+VQT8ZTu/JihJWxGuVx26/XrCFC+ypsqwW0G+4VlsvX4/iwKAz/dBX
	+Fjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=S9ZJGpILm51uFS7ngzBUr2GlB+ODeP9SaFiuCI753S8=;
	b=FC7yYsPuGJzzBv/9ZQzDW8k3QIeXQYhrdUgtPHnh5nWPXGkLs17gra/1qxUKXbjLC+
	q6MfcsK9RjUOD+sW5xgEu9KvWhns2hrctHWSWs+n+YQ58io2bPNO3Dl6sBuSL4G1QceW
	aCKICUTVxPT7BtW3xsL9V5Y3+5Vqd1TQ7IImDwQTufxpljtOvx1/FSf2JaejUOj/np3m
	iT+gnl6WeIQdqP2ht+iX4URtKMffGxlNqucZmQF1fxtFS1cMt06OCw5RxrMuuBIVRAnU
	M8D/uGjw/0Ge7P1tZETz2WBNnOQZs9lBPsVoQ3ozhIIabkkuxxkhq/m/y8SCZJ2y9BgB
	86Bw==
X-Gm-Message-State: AOUpUlHSF7b8HdTSvt12065FdsNSgnOXm2asCs4EV/i7bzjrazaAUJBt
	r75BQ68h+RenqTCMSpz5mSMeHZJg4fptxd3leQ==
X-Google-Smtp-Source: AAOMgpfJpu/jV6TTRYIlL2tVrEGSxLZ+jCIjlJNPB9yI+PECWTKnony2vwByBI1FdKDB1kwwVofHw6Yhwczfhqb8z9k=
X-Received: by 2002:a6b:f308:: with SMTP id
	m8-v6mr10600290ioh.253.1532367041294; 
	Mon, 23 Jul 2018 10:30:41 -0700 (PDT)
MIME-Version: 1.0
References: <CALBAsRyftz1B2WKvH4Gf4eouyyfii5hjRyD9SqfGTK5XvinXHA@mail.gmail.com>
	<f55dfea1-6c9f-dd41-0bd3-5fe93126b794@windriver.com>
In-Reply-To: <f55dfea1-6c9f-dd41-0bd3-5fe93126b794@windriver.com>
From: Vikram Chhibber <vikram.chhibber@gmail.com>
Date: Mon, 23 Jul 2018 10:30:29 -0700
Message-ID: <CALBAsRwS7cEcx1mp3GGx4vWeLzjW7i0MNcN-aO0o+Mog3xbdYQ@mail.gmail.com>
To: mark.hatle@windriver.com
Cc: yocto@yoctoproject.org
Subject: Re: Reg. rpm changelog
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
X-List-Received-Date: Mon, 23 Jul 2018 17:30:43 -0000
Content-Type: multipart/alternative; boundary="000000000000297bce0571ae0100"

--000000000000297bce0571ae0100
Content-Type: text/plain; charset="UTF-8"

Thanks Mark. Is it possible to somehow use already created changelog while
building rpm?

Thanks

On Tue, Jul 17, 2018 at 11:51 AM Mark Hatle <mark.hatle@windriver.com>
wrote:

> On 7/17/18 1:39 PM, Vikram Chhibber wrote:
> > Hi All,
> >
> > I use the rpm created from my recipe and I need to know if there is a
> way to add
> > changelog to this rpm. I should be able to use "rpm -q --changelog"
> option to
> > display this changelog.
> >
> > Please let me know if this is possible.
>
> No.  Others have talked about it, but changelog information is stored in
> the
> respective layers (.bb, .bbappend, .bbclass, etc) that make up the recipes
> and
> would have to be distilled..
>
> It should be possible, but nobody has done this that I know of.
>
> (Rough way to do it.. find all of the files that went into a recipe.. then
> run a
> git scm command looking for changes to those files, capturing them in an
> RPM
> changelog like format.)
>
> --Mark
>
> > Thanks
> >
> >
>
>

--000000000000297bce0571ae0100
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Mark. Is it possible to somehow use already created=
 changelog while building rpm?<div><br></div><div>Thanks</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Jul 17, 2018 at 11:51 AM M=
ark Hatle &lt;<a href=3D"mailto:mark.hatle@windriver.com">mark.hatle@windri=
ver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 7/17/18 1=
:39 PM, Vikram Chhibber wrote:<br>
&gt; Hi All,<br>
&gt; <br>
&gt; I use the rpm created from my recipe and I need to know if there is a =
way to add<br>
&gt; changelog to this rpm. I should be able to use &quot;rpm -q --changelo=
g&quot; option to<br>
&gt; display this changelog.<br>
&gt; <br>
&gt; Please let me know if this is possible.<br>
<br>
No.=C2=A0 Others have talked about it, but changelog information is stored =
in the<br>
respective layers (.bb, .bbappend, .bbclass, etc) that make up the recipes =
and<br>
would have to be distilled..<br>
<br>
It should be possible, but nobody has done this that I know of.<br>
<br>
(Rough way to do it.. find all of the files that went into a recipe.. then =
run a<br>
git scm command looking for changes to those files, capturing them in an RP=
M<br>
changelog like format.)<br>
<br>
--Mark<br>
<br>
&gt; Thanks<br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div>

--000000000000297bce0571ae0100--
