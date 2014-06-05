Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D01CE00BE0; Wed,  4 Jun 2014 23:34:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.52 listed in list.dnswl.org]
Received: from mail-qa0-f52.google.com (mail-qa0-f52.google.com
	[209.85.216.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2647E00B74
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 23:34:50 -0700 (PDT)
Received: by mail-qa0-f52.google.com with SMTP id cm18so784549qab.11
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 23:34:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=n0WEgtRXW8uhxvXZF8Epc0yLwwTKbiniTdfxMQ/X/q0=;
	b=WnezNRUV8XW8+JaNMAS9ZgsAkSGjK0O+bWecYC83kwTPgwiaQt9zfha0CXKQ2Y3sPx
	8h1hbiW4wJNmE+4CN1UsGqUpAHj4RhdmJifYY4DLicEksVHmfVNeFD0Wgrpsy5vz2mQX
	7ycJw4AroxlDriQzqVNpdxx791ZcSIJ9Sm1CUdFxOoK+3yQOZo4wwVeDwp49FZcSAMit
	R/1ZYMJ1mpn8Be+XZtZAF+VMzzi4Nh49LU4V5iAzQnOVd6MzJzgs4FW9SKiuvb4cspTA
	4m18q3hI9KfxgCYyLFomcvzppu0CZR7Q/1EUuKR38lgq0DEWL1BBQZU4O0wfwjFef5Oe
	dYyw==
X-Gm-Message-State: ALoCoQmyUXm1/QPi40MDjYNLUZ0iuiZaj7vPsOYTgC6ONrHuqLUMHvWOBr5ZaLKDhgNtWanMoGUd
MIME-Version: 1.0
X-Received: by 10.229.72.10 with SMTP id k10mr78848554qcj.2.1401950089522;
	Wed, 04 Jun 2014 23:34:49 -0700 (PDT)
Received: by 10.140.101.77 with HTTP; Wed, 4 Jun 2014 23:34:49 -0700 (PDT)
In-Reply-To: <CANJXcUbN9_-+-JmDvSRE80zTzuGEQv-0DcM2hWuz7VC88ErwkQ@mail.gmail.com>
References: <CANJXcUap4aox3bhkxzq+EqTtZHokfMX6cqaao5o0oLqqRE+4SA@mail.gmail.com>
	<CAJTo0LaNbvwf+2yEnPorOj81N4fSJwfYOxppqHcrX-hUHabBeA@mail.gmail.com>
	<CANJXcUaZm=4XeG4PDZwbaX+DtCo-fh+-aWWD49EsjOVmOuiN0Q@mail.gmail.com>
	<CANJXcUZOwrAuMjkt_RfBuSU3fyyDbay024qvf1KEfuPkOuJBew@mail.gmail.com>
	<CAJTo0Lbd257SN_SmwD=2MKYrw0LYODnhJoPhCPCSpdhxf7Nixw@mail.gmail.com>
	<CANJXcUYEdbSf1Fo5kZAw5GE+36fnz=EgzZojXxr44WdnCtC1Qg@mail.gmail.com>
	<CAJTo0LbKNeujMacRb-O3RHq5LfWZ01axS-TYTwhScjFnm-uu8g@mail.gmail.com>
	<CANJXcUasi1Pf3T4Zq5Fz7ExKq7Zm9FKCYERRLuaaLODuEZR0Hg@mail.gmail.com>
	<538E028D.2090200@linux.intel.com>
	<CANJXcUbN9_-+-JmDvSRE80zTzuGEQv-0DcM2hWuz7VC88ErwkQ@mail.gmail.com>
Date: Thu, 5 Jun 2014 07:34:49 +0100
Message-ID: <CAJTo0Lad-n0Jv1u313OLhRBUWkoVrMGFoC4W0Wqjhw2M5wv6sw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
To: Kashyap Gada <gada.kashyap@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Source Command Permission Denied
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
X-List-Received-Date: Thu, 05 Jun 2014 06:34:54 -0000
Content-Type: multipart/alternative; boundary=089e01681318145ddd04fb10f154

--089e01681318145ddd04fb10f154
Content-Type: text/plain; charset=UTF-8

On Thursday, 5 June 2014, Kashyap Gada <gada.kashyap@gmail.com> wrote:

> Its a different ntfs partition. I mount it manually.
>

Using NTFS is certainly going to complicate things because the permissions
model is different, can you use a Linux file system (such as ext4) instead
of a Windows one?

Ross

--089e01681318145ddd04fb10f154
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thursday, 5 June 2014, Kashyap Gada &lt;<a href=3D"mailto:gada.kashyap@g=
mail.com">gada.kashyap@gmail.com</a>&gt; wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">
<div dir=3D"ltr">Its a different ntfs partition. I mount it manually.</div>=
</blockquote><div><br></div><div>Using NTFS is certainly going to complicat=
e things because the permissions model is different, can you use a Linux fi=
le system (such as ext4)=C2=A0instead of a Windows one?=C2=A0</div>
<div><br></div><div>Ross</div>

--089e01681318145ddd04fb10f154--
