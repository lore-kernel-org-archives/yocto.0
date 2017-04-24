Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02C64E00B03; Mon, 24 Apr 2017 05:27:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.175 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E198E00AF6
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 05:27:17 -0700 (PDT)
Received: by mail-qt0-f175.google.com with SMTP id m36so111490422qtb.0
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 05:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+hKqVGjXYtlnHq2NRWbFWwWB1DYMCSB36FF+9EyOhd0=;
	b=V5f6aLbU37/tQlmBpJEMzns5amNpjaYGN9GXpOjDC9vEuBTUdwePqqQXuI/m0X5i0m
	6fJmPWwKBVQIOndrZFZh6yOaBLklv3Xa2C/Od2k8ByjHGAAm5hEIXY8sPUZ9ZLTkwe5K
	xKcMd2mK4zTZLtCo+lBm3geSZfSXd7gAEfuZg9c8D9Ux+IDGnHQIlaQzbta8vJMIH2zo
	oKeF2574cd8c2J1CNy+Bajw9rsMuOcNovhVoAswR+KdoElSnrUoVp1+AcRdnYBj3CsDG
	g6kAWbFscgLBNTffVj5S62cD3qJjDt3fw7UQ2JFnxWS+/4luOU78yectyg/MbL1QuYZs
	myTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+hKqVGjXYtlnHq2NRWbFWwWB1DYMCSB36FF+9EyOhd0=;
	b=skpLq+k7uQithLzEL5qQeqFWG1/N8hauhCQdAQUHGYvssHzZiYJwHs2uY52e8BGsGV
	OHJqWUnTTgMVM/eOnXbghT2ACWFp3+MjAUP65dMOcztbWfAkqLSXCqAn9AuR7Rox61Jm
	42YorSBSVGpVSekqdVr8BTaTwCzw75OdNqI6/HIctyk+5lDKmNu+nM1agDzRL7bzRG0f
	I8n6TCpbM45HRPmGJJ9WXodUUf8QcFmtiZuuK6whU6Rsr9xcNO2b627Y1QcoH2HXZtgr
	SDJFC3fhigLcVkQo9iEEAcAmfxmzU+Ejl99BFjL+O0ffKOBpBhest1QuuHGEqHX4bFiy
	b7ig==
X-Gm-Message-State: AN3rC/6OfNyXkK99Eu96VTP3bMIlSnvXkHQGHeLUtpNY7TbDJf4eOPmv
	90YLrVs/MStricu45toqIR7NCz4DWg==
X-Received: by 10.237.36.105 with SMTP id s38mr27229173qtc.185.1493036836436; 
	Mon, 24 Apr 2017 05:27:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.145.143 with HTTP; Mon, 24 Apr 2017 05:27:15 -0700 (PDT)
In-Reply-To: <CAJTo0LZxsyHC7zjc7Z=wdS5_7NizgnCh=qkPM5munBkGWOmyGg@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CADkTA4MjffrJ13GxaEAQusEU10jj0dUcUsyea36Y2gCy7HCVmA@mail.gmail.com>
	<CADkTA4OgpwhRtmR4+4kurnhBUQoap3E3kKoRTe4fNMBFOEp8hw@mail.gmail.com>
	<CAJTo0LYc7nRX2zsPJkP3ZdmnenBxP=fCNUbc_H6L1vePDHjn_g@mail.gmail.com>
	<CAJTo0LZxsyHC7zjc7Z=wdS5_7NizgnCh=qkPM5munBkGWOmyGg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 24 Apr 2017 08:27:15 -0400
Message-ID: <CADkTA4MeBY2+=A_jZCEgmp2x2co6Q09WM97RFFnyxz2QNWr0gg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Re: [oe] [OE-core] [RFT] gcc7 and glibc-2.26 recipes
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
X-List-Received-Date: Mon, 24 Apr 2017 12:27:20 -0000
Content-Type: multipart/alternative; boundary=001a113d84ae45bf28054de8ba0e

--001a113d84ae45bf28054de8ba0e
Content-Type: text/plain; charset=UTF-8

On Mon, Apr 24, 2017 at 7:11 AM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 24 April 2017 at 11:29, Burton, Ross <ross.burton@intel.com> wrote:
>
>> I'm getting that with 4.9.15 from meta-intel, should I be telling Saul to
>> update the BSP with some fixes you've made?
>>
>
> Or ideally telling myself to update meta-intel for the fixes that Saul has
> already merged...
>

ooops. I should read all the way to the bottom of the thread :D

Bruce


>
> Ross
>
>


-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a113d84ae45bf28054de8ba0e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Apr 24, 2017 at 7:11 AM, Burton, Ross <span dir=3D"ltr">&lt;<a =
href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><span class=3D""=
>On 24 April 2017 at 11:29, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_extra=
">I&#39;m getting that with 4.9.15 from meta-intel, should I be telling Sau=
l to update the BSP with some fixes you&#39;ve made?</div></blockquote><div=
><br></div></span><div>Or ideally telling myself to update meta-intel for t=
he fixes that Saul has already merged...</div></div></div></div></blockquot=
e><div><br></div><div>ooops. I should read all the way to the bottom of the=
 thread :D</div><div><br></div><div>Bruce</div><div>=C2=A0</div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><span class=3D"HOEnZb"><font color=3D"#888888"><div><br></=
div><div>Ross=C2=A0</div></font></span></div><br></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;Thou shalt no=
t follow the NULL pointer, for chaos and madness await thee at its end&quot=
;</div>
</div></div>

--001a113d84ae45bf28054de8ba0e--
