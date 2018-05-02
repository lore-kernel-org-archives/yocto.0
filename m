Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B22AFE00A6A; Wed,  2 May 2018 09:34:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C7D5E00A1E
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 09:34:31 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id d11-v6so18187210iof.11
	for <yocto@yoctoproject.org>; Wed, 02 May 2018 09:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zQTRcQXKQY1GlptsJVrRAMbGr3ymsQM0GCZ0JLtgwzg=;
	b=s4Jy6ndGwM458dCGkg7wnvgqGjGr/Q1obXGlVs0s9Q91sfZoI4Tii3au7FAvS//w3f
	dBAObV/WxeEoO6SnrUAv2pUytdbbrsZqk+lOzCvjdwz1ulN4INh8x4sAvp6xZ9lJKI9X
	330PawX0jZ8A/jLEU0Nhwno4MXFsZlwNl4oW2JBGkVqX5bs1ecIMTR/e1tLg2JC8KaSW
	1YZxTVuUljRcFrXXaZChBGEpDm0C17yOmhTIzRVsa2Mw3jdheecpjvlLUITqYBnM2Gnc
	2FMh176/4karuUCZ7MWAZKcC6bktyXdO0NswP8tbzPP5OGMvAIEiF+aXZ1xxz6FO29fN
	c9Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zQTRcQXKQY1GlptsJVrRAMbGr3ymsQM0GCZ0JLtgwzg=;
	b=msX1yvgZcbl3uqk8ILvJG+kEcCXS7MzuPDcFfJtpNdN/OclmkYXg3PCp1cMreeRAW2
	lLYCCDDKqXnFsfE5607PNnK3rbEwqWre/Mt9OMeQCID+Plb5lwLHA2rzGwLOHxNa6d8a
	GyhTp/t5H+2q3Ond4A+tRrOK/EY6bALcV1IHeeCVRsQOlrFqxmmP9slmrTYa24VM7yl6
	ZbUhvs/vCpQc2MD0Qutq/c30QUtzJq9uTiYPg/7DFRk1kKmQ1pf2j6jpIbV1o9ny55so
	hriAHZI0XSNJI8GFuIZn+D2CZ/SN/Rt1QCEkEsv5+YmQb0+WBGE0JUeLKOIQ5wNnHVOj
	cw0w==
X-Gm-Message-State: ALQs6tAwugGtLGF9j4iCHf1cWCYa5aX3JFeKV7NiGr+Why+eoKnbasvf
	gDtKVltBQRclRhIx3Cw3da1To3mfiNV7qtxqHXMAmg==
X-Google-Smtp-Source: AB8JxZqoEJDuAWRd+SpQ5ThAIp2e1ZFnV9zVhuapOuKtr4qA223g0bWxv2q7Hi/42q5HSPtPqf1OZEcSDf55zq6vGCQ=
X-Received: by 2002:a6b:b74b:: with SMTP id
	h72-v6mr21166955iof.201.1525278870671; 
	Wed, 02 May 2018 09:34:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Wed, 2 May 2018 09:34:10 -0700 (PDT)
In-Reply-To: <08154f5c-ee74-fb1d-c720-5f0156fb38e4@linux.intel.com>
References: <CAN--ZaVOR1dTDJMTJq=8B6bRMfKQ7eJEBie-_hzTRD+cJ8YzCg@mail.gmail.com>
	<30506956.aUxZm2NLWB@peggleto-mobl.ger.corp.intel.com>
	<CAJ86T=U15GmkmqcJD-NAAiV+ued8yG9SSEPA-P=VCeo7twFPLA@mail.gmail.com>
	<16228440.x8j5tLIZ7R@peggleto-mobl.ger.corp.intel.com>
	<CAJ86T=UE=B+v9-SOztXRB5j6C_QJudF8bJobnxMCEYB047GdPA@mail.gmail.com>
	<CAJTo0Lad=PmT4n70SMLu8J29aVnenqOjx_DznVrp2Pwro2ELgQ@mail.gmail.com>
	<CAN--ZaU4p09_vVG8WRpCkmR3zm1Fzc3nFuE_PHebtXXnBMdkaw@mail.gmail.com>
	<08154f5c-ee74-fb1d-c720-5f0156fb38e4@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 2 May 2018 17:34:10 +0100
Message-ID: <CAJTo0LYY=uSPua-cZozM_+XrF4o3_jSOxmQmPdabutDhfuY7ZA@mail.gmail.com>
To: Irving ST <irving@ssfivy.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Avoiding both GPLv3 and meta-gplv2 ?
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
X-List-Received-Date: Wed, 02 May 2018 16:34:32 -0000
Content-Type: multipart/alternative; boundary="00000000000045399d056b3ba957"

--00000000000045399d056b3ba957
Content-Type: text/plain; charset="UTF-8"

On 2 May 2018 at 14:58, Alexander Kanavin <alexander.kanavin@linux.intel.com
> wrote:

> On 05/02/2018 04:53 PM, Irving ST wrote:
>
>> Thank you for your help and explanations. Unfortunately just removing
>> ptest doesn't make it build.
>> This is the error when I tried bitbake core-image-minimal:
>>
>> ERROR: Nothing PROVIDES 'readline' (but
>> /home/irving/srcgit/poky/meta/recipes-devtools/python/python3_3.5.5.bb
>> ERROR: Nothing PROVIDES 'gdbm' (but
>> /home/irving/srcgit/poky/meta/recipes-devtools/python/python3_3.5.5.bb,
>> /home/irving/srcgit/poky/meta/recipes-devtools/perl/perl_5.24.1.bb
>> DEPENDS on or otherwise requires it)
>>
>
> 'readline' dependency can be easily disabled in python via PACKAGECONFIG.
> gdbm might be trickier, but I believe it's optional as well.
>

Note that this readline PACKAGECONFIG is in sumo/master, so you'll need to
cherrypick it if you're not using that.

gdbm is a little more fiddly but it can be done, I had a proof of concept
but didn't finish it.  Start by removing gdbm from DEPENDS in a bbappend
and see what breaks...

Ross

--00000000000045399d056b3ba957
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 2 May 2018 at 14:58, Alexander Kanavin <span dir=3D"ltr=
">&lt;<a href=3D"mailto:alexander.kanavin@linux.intel.com" target=3D"_blank=
">alexander.kanavin@linux.intel.com</a>&gt;</span> wrote:<br><div class=3D"=
gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><spa=
n class=3D"">On 05/02/2018 04:53 PM, Irving ST wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">
Thank you for your help and explanations. Unfortunately just removing<br>
ptest doesn&#39;t make it build.<br>
This is the error when I tried bitbake core-image-minimal:<br>
<br>
ERROR: Nothing PROVIDES &#39;readline&#39; (but<br>
/home/irving/srcgit/poky/meta/<wbr>recipes-devtools/python/<a href=3D"http:=
//python3_3.5.5.bb" rel=3D"noreferrer" target=3D"_blank">python<wbr>3_3.5.5=
.bb</a><br></span><span class=3D"">
ERROR: Nothing PROVIDES &#39;gdbm&#39; (but<br>
/home/irving/srcgit/poky/meta/<wbr>recipes-devtools/python/<a href=3D"http:=
//python3_3.5.5.bb" rel=3D"noreferrer" target=3D"_blank">python<wbr>3_3.5.5=
.bb</a>,<br>
/home/irving/srcgit/poky/meta/<wbr>recipes-devtools/perl/<a href=3D"http://=
perl_5.24.1.bb" rel=3D"noreferrer" target=3D"_blank">perl_5.2<wbr>4.1.bb</a=
><br>
DEPENDS on or otherwise requires it)<br>
</span></blockquote>
<br>
&#39;readline&#39; dependency can be easily disabled in python via PACKAGEC=
ONFIG. gdbm might be trickier, but I believe it&#39;s optional as well.<br>=
</blockquote><div><br></div><div>Note that this readline PACKAGECONFIG is i=
n sumo/master, so you&#39;ll need to cherrypick it if you&#39;re not using =
that.</div><div><br></div><div>gdbm is a little more fiddly but it can be d=
one, I had a proof of concept but didn&#39;t finish it.=C2=A0 Start by remo=
ving gdbm from DEPENDS in a bbappend and see what breaks...</div><div><br><=
/div><div>Ross</div></div></div></div>

--00000000000045399d056b3ba957--
