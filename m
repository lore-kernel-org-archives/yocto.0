Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 534BBE00826; Thu, 16 Mar 2017 08:29:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79AA6E00777
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 08:29:31 -0700 (PDT)
Received: by mail-qk0-f179.google.com with SMTP id y76so42199096qkb.0
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 08:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zrbJgqgtwgjd201CmBBZi2BIwGI46KiiKUc/hoeJjdw=;
	b=B+mi1l7kKvS5Gtq1aHjhOcHyjKfMDUHXCR+Uz0YokZNdlqD8X8LA0EWZBsXY4JA2G5
	THUmtzWHmzNERNH+EjXrPC0gRYKvIEMxvWPUu9GBV+s8uLQOhaH62bFTF8PiZT/jkaEF
	4cWKp/z3B/D6/SRtjfUbk/HiB2J6aP06giEWs9qeQMCFcgo7T05UAaT+fgCsup0RVJnI
	rFnimjJug0VHHeiF81smGYACQSj6/fCFgAWaxV20A/SnbW4NutqKOJKPaM6Z9yHNyxp+
	KFgKGqx3Z0xn8+gK4jRneHo7cn5XBjVBH9uY6DudGWC3lrzPTcChOoRJhGc3vEa6MvpL
	Yh+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zrbJgqgtwgjd201CmBBZi2BIwGI46KiiKUc/hoeJjdw=;
	b=XwwCPoSzozMAer9jnEXZMJt8izLi5RLD67TrXbIrWyN/BTimF285kYZ74VtepE7rR3
	blRJqWRTRMcYJF8UitgP+pJs8xyugqkh7xLAmBJ53EiYScJqe2+3F4tQabAntcciKXgt
	D+JJDP43TxaifUExtjSF2vNDhKy/EIZqlMWkjOHNZMjbpIu0aRMaw+Tk9/UrtU1Xsjwf
	cK9+yfTnRJXmqfLi03Ni5ipfS8url+JflU+7AJ+s67JIKW59ZfoeYQIPoMQQGzsB0DU6
	IgbXTNGKZOPP7aq7/1bLunibp/lQ/bKWsKyfKQrI1Rzuhh8DM+kyoYdF3JDkJNWJZ4Ft
	aspA==
X-Gm-Message-State: AFeK/H2b5uK6mov86hO0Tk4cwPOboLIBBi18aCjQszm5PShdkAYZpKd2689lXOlw4Of1QnC0XfnDhS8kI8U2o81u
X-Received: by 10.55.175.195 with SMTP id y186mr8403935qke.26.1489678170515;
	Thu, 16 Mar 2017 08:29:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Thu, 16 Mar 2017 08:29:10 -0700 (PDT)
In-Reply-To: <aeefe2af-7000-a117-c931-70ff54d2c1eb@windriver.com>
References: <CAFL6qn5mYjVrqmN7Wow4BVfBob5Bz8rckWOOAOYorA9OXsvEgg@mail.gmail.com>
	<aeefe2af-7000-a117-c931-70ff54d2c1eb@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 16 Mar 2017 15:29:10 +0000
Message-ID: <CAJTo0LZOYJGRpHpj6qWQ0=r=1vPUG4tuFiqQXEUvdd44oeuugQ@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Pello Heriz <pello.heriz@alumni.mondragon.edu>
Subject: Re: Selinux recipes related error when executing bitbake
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
X-List-Received-Date: Thu, 16 Mar 2017 15:29:32 -0000
Content-Type: multipart/alternative; boundary=94eb2c06093c2f7328054adaba64

--94eb2c06093c2f7328054adaba64
Content-Type: text/plain; charset=UTF-8

On 16 March 2017 at 15:21, Mark Hatle <mark.hatle@windriver.com> wrote:

> It looks like the upstream (oe-core) findutils is at a different version,
> so the
> bbappend has nothing to point to.
>
> We've not yet upreved selinux to current master.
>
> Patches welcome...
>

If you send a patch, please use a wildcard bbappend, i.e.
findutils_%.bbappend.

Ross

--94eb2c06093c2f7328054adaba64
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 16 March 2017 at 15:21, Mark Hatle <span dir=3D"ltr">&lt;<a href=3D"mail=
to:mark.hatle@windriver.com" target=3D"_blank">mark.hatle@windriver.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":4l4" class=
=3D"a3s aXjCH m15ad7b6a069230d8">It looks like the upstream (oe-core) findu=
tils is at a different version, so the<br>
bbappend has nothing to point to.<br>
<br>
We&#39;ve not yet upreved selinux to current master.<br>
<br>
Patches welcome...<br></div></blockquote></div><br>If you send a patch, ple=
ase use a wildcard bbappend, i.e. findutils_%.bbappend.</div><div class=3D"=
gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--94eb2c06093c2f7328054adaba64--
