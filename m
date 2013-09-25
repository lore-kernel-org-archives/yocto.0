Return-Path: <amittomer25@gmail.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B35EE01601;
	Wed, 25 Sep 2013 06:43:41 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id w61so6162056wes.31
	for <multiple recipients>; Wed, 25 Sep 2013 06:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+Z7U/DLBEaw9z6bOjdzKIMF/RIQW6rqHQYHxfpv28Hc=;
	b=RTi4g5tOsGE4tx7FW9iLMX8Ugb2Scg/JB843YHqBAwxIwJMok0eh+cgvGSRlTvDFRU
	JqhTnvMgp8iSKEk7oVvXZo3YI2IyG2qvjOaCOPWKEOvEmVy1fU7JXDS5ht3IjNoxyTkP
	15UYNkeXGJ58MAEMY6YNgn+xcMnn0rvWSjo+8Hg7t0JLwoL44dLsmCul4xnlZf/xetgY
	xJTYzELQKADh8eIRZKNgLpV3NU4JPB3WaNirRfvpz8TBNMX0qWsO5SrAfYmY8egVJyES
	cR5dGJ1p821qM3yXMDRRHT92tiES6gt4k3RqduHXGOqUNAcfHptsYRwsxauNRYfI/5fB
	iNrA==
MIME-Version: 1.0
X-Received: by 10.180.90.197 with SMTP id by5mr22905880wib.43.1380116620358;
	Wed, 25 Sep 2013 06:43:40 -0700 (PDT)
Received: by 10.227.196.7 with HTTP; Wed, 25 Sep 2013 06:43:40 -0700 (PDT)
In-Reply-To: <CAJTo0LZOZdOrKkSDvaS62f358m-5ghGfFvw+v4hrNf6rX81Q9A@mail.gmail.com>
References: <CABHD4K_EEiR4UPOcJM=vXWud+uk44=hZW38-D-RL+T6auiBJDg@mail.gmail.com>
	<CAJTo0LZOZdOrKkSDvaS62f358m-5ghGfFvw+v4hrNf6rX81Q9A@mail.gmail.com>
Date: Wed, 25 Sep 2013 19:13:40 +0530
Message-ID: <CABHD4K8-1ySRna=Tyo-LtRBTvUFLcK271TaDyg4TXKSGFL-=Gw@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto-request@yoctoproject.org,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How env.sh sets up the build environment path
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
X-List-Received-Date: Wed, 25 Sep 2013 13:43:43 -0000
Content-Type: multipart/alternative; boundary=f46d0438eb6de7bb1604e7357065

--f46d0438eb6de7bb1604e7357065
Content-Type: text/plain; charset=ISO-8859-1

The way I sorted out is copying the old bblayer file from
build-xyz-abd/conf/bblayer" to "build-abd/conf/bblayer"


On Wed, Sep 25, 2013 at 4:12 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 25 September 2013 11:36, Amit Tomer <amittomer25@gmail.com> wrote:
> > Now when I do ./env.sh build-xyz-abd
>
> You need to use ". ./env.sh build xyz-abd".  Not the leading fullstop.
>  If you're using bash, you can use the "source" alias: "source
> ./env.sh xyz-abd".  You need to do this as otherwise the script can't
> set variables in your environment.
>
> Ross
>

--f46d0438eb6de7bb1604e7357065
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The way I sorted out is copying the old bblayer file from=
=A0
<span style=3D"font-family:arial,sans-serif;font-size:13px">build-xyz-abd/c=
onf/bblayer</span><span style=3D"font-family:arial,sans-serif;font-size:13p=
x">&quot; to &quot;build-abd/conf/bblayer&quot;</span></div><div class=3D"g=
mail_extra">
<br><br><div class=3D"gmail_quote">On Wed, Sep 25, 2013 at 4:12 PM, Burton,=
 Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">
<div class=3D"im">On 25 September 2013 11:36, Amit Tomer &lt;<a href=3D"mai=
lto:amittomer25@gmail.com">amittomer25@gmail.com</a>&gt; wrote:<br>
&gt; Now when I do ./env.sh build-xyz-abd<br>
<br>
</div>You need to use &quot;. ./env.sh build xyz-abd&quot;. =A0Not the lead=
ing fullstop.<br>
=A0If you&#39;re using bash, you can use the &quot;source&quot; alias: &quo=
t;source<br>
./env.sh xyz-abd&quot;. =A0You need to do this as otherwise the script can&=
#39;t<br>
set variables in your environment.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--f46d0438eb6de7bb1604e7357065--
