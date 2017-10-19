Return-Path: <alex.kiernan@hivehome.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7145BE00D3A; Thu, 19 Oct 2017 00:51:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.199 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.199 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f199.google.com (mail-wr0-f199.google.com
	[209.85.128.199])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23436E00CFF
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 00:51:38 -0700 (PDT)
Received: by mail-wr0-f199.google.com with SMTP id u5so3652531wrc.5
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 00:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=hivehome-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hmIJP2+wLgNRkevrmkXKfjR9O4IOn4h6ztyQ+Nc04Kg=;
	b=VQTbEk1PuajAunYs7jHNamVnOXuNY9JAte8nqEA1AlltDXkGNbCjsaW8RsY1tgw7v6
	Q1Bmun7p/yuTkpZTXJ5wV4oM1jBS3GkYQxknrdDBynhhxLlbk7nRKbTD5jUlh0ZAyJ++
	RyQJuIGmecWHeR6ugERGhs8GU7VYBf4duKUXhZ/vlUrI23mATk4hZbzEuNqQV5KSm2fU
	XnsDn/cSXCD5+0CAr5CRJTazevMUYbFCknrG1iI0I3mnnDKIXrTZ8oLUUuDHin2WFKW+
	vl0cUXPcvkx5jZipdPks/vL4duK93Wqm/mazoiZTMLPOwlJ5fn3BkhBuSRLB4sAlX37t
	DzVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hmIJP2+wLgNRkevrmkXKfjR9O4IOn4h6ztyQ+Nc04Kg=;
	b=BmJNLAs4MH8dxQC9NhM1HkkomRe9M/KCg2Gaasa5D30+SPDI9TyIaHImHQkpT+h8y+
	1KmtiygC4X0Gjqj2o4PZZlieWmVmkbSdueMXFjLg/fbb2TbawwVESo2nfn05bqxhW2S9
	BlWrCWQU7toHnoe4oUcYoXo7hQ3qD61JsJLJzJJjtwnpqTgIOJHsHR3Urp9ZhqEVv9p7
	oE7Q9wSfujFz6+meJ4DqcvbplU8t0z7KZwyD1B5VH92k/RviauLNXfTqYVeTpCWgP32o
	XPdQrX1+U2UKGm1PWUZeIPwXm+EJwp/bYm4eZLYGRs/Et7EaLJWmFlhAG0365C5fE2y2
	j0Jw==
X-Gm-Message-State: AMCzsaVg/taPNfYnIkw/RdkUOqFS5jy7d6nMY60du2DjhxYmI6aqs6Rd
	weoK8hIZhVaSI93n1kVUQhW5CFLMwi2aIqS9JQGCLvIrA4k45YPcJXDqEEi9eV6k/+W5TP4L3kK
	U88OQS8xQ9eJy+h1vYsW2z8QE3w==
X-Google-Smtp-Source: ABhQp+T4GtaG4hKVfYmZp4G1uSdocQKax2mRJk7B6iuy0aPZU/SH+g7Jb5HdIg96ukprN6aQ4q3mEwUODfu1ltFYwoo=
X-Received: by 10.223.142.248 with SMTP id q111mr709493wrb.40.1508399497977;
	Thu, 19 Oct 2017 00:51:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.158.210 with HTTP; Thu, 19 Oct 2017 00:51:37 -0700 (PDT)
In-Reply-To: <CAEqFnOVa2ST948grkg2kOQOCh3T8g6-Y70heZriZHdN7KOynYQ@mail.gmail.com>
References: <CAEqFnOVa2ST948grkg2kOQOCh3T8g6-Y70heZriZHdN7KOynYQ@mail.gmail.com>
From: Alex Kiernan <alex.kiernan@hivehome.com>
Date: Thu, 19 Oct 2017 08:51:37 +0100
Message-ID: <CAGxhq2b6KSnAsnZpvCvoQmuf69dQr5PRZzRBH3yebFYkQTCtaQ@mail.gmail.com>
To: Vivek Berodhia <vivek.berodhia@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: conflicts between attempted installs of base-files-3.0.14-r89.prsg_x86_base and procps-3.3.12-r0.corei7_64
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
X-List-Received-Date: Thu, 19 Oct 2017 07:51:40 -0000
Content-Type: multipart/alternative; boundary="f403045f50a241b063055be1a003"

--f403045f50a241b063055be1a003
Content-Type: text/plain; charset="UTF-8"

On 19 October 2017 at 08:19, Vivek Berodhia <vivek.berodhia@gmail.com>
wrote:

> Hi All,
>
> I am new to Yocto Project development, I am building core-image-minimal
> with meta-secure-core for x86 platform. But facing issue in do_rootfs.
> Issue may be simple but i have not found any solution after google a lot.
> Please suggest where should i make changes, so that it will accept both
> extension or generate all the files with same extension.
>
> Main Error snippet:
>
> Error: Transaction check error:
>   file /etc/sysctl.conf conflicts between attempted installs of
> base-files-3.0.14-r89.prsg_x86_base and procps-3.3.12-r0.corei7_64
>
>
Something's creating /etc/sysctl.conf as part of base-files - check your
base-files appends to see where it's coming from as I can't see it in that
recipe upstream (though I'm looking at master not pyro).

-- 
Alex Kiernan

-- 
hivehome.com <http://www.hivehome.com>



Hive | London | Cambridge | Houston | Toronto
The information contained in or attached to this email is confidential and 
intended only for the use of the individual(s) to which it is addressed. It 
may contain information which is confidential and/or covered by legal 
professional or other privilege. The views expressed in this email are not 
necessarily the views of Centrica plc, and the company, its directors, 
officers or employees make no representation or accept any liability for 
their accuracy or completeness unless expressly stated to the contrary. 
Centrica Connected Home Limited (company no: 5782908), registered in 
England and Wales with its registered office at Millstream, Maidenhead 
Road, Windsor, Berkshire SL4 5GD.

--f403045f50a241b063055be1a003
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div><div class=3D"m_2298572193=
448294863m_4489968623081558702gmail_signature"><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><div><div dir=3D"ltr">On 19 October 2017 at 08:19, Vivek Berodhi=
a <span dir=3D"ltr">&lt;<a href=3D"mailto:vivek.berodhia@gmail.com" target=
=3D"_blank">vivek.berodhia@gmail.com</a>&gt;</span> wrote:<br></div></div><=
/div></div></div></div></div><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi All,<br><br></div=
>I am new to Yocto Project development, I am building core-image-minimal wi=
th meta-secure-core for x86 platform. But facing issue in do_rootfs. Issue =
may be simple but i have not found any solution after google a lot. Please =
suggest where should i make changes, so that it will accept both extension =
or generate all the files with same extension.<br clear=3D"all"><div><div><=
br></div><div>Main Error snippet:</div><div><br></div><div>Error: Transacti=
on check error:<br>=C2=A0 file /etc/sysctl.conf conflicts between attempted=
 installs of base-files-3.0.14-r89.prsg_x86<wbr>_base and procps-3.3.12-r0.=
corei7_64<br><br></div></div></div></blockquote><div><br></div><div>Somethi=
ng&#39;s creating /etc/sysctl.conf as part of base-files - check your base-=
files appends to see where it&#39;s coming from as I can&#39;t see it in th=
at recipe upstream (though I&#39;m looking at master not pyro).</div><div d=
ir=3D"ltr"><span style=3D"font-size:12.8px;font-family:arial,helvetica,sans=
-serif"><br class=3D"m_2298572193448294863m_4489968623081558702gmail-Apple-=
interchange-newline">--=C2=A0</span></div><div dir=3D"ltr"><span style=3D"f=
ont-size:12.8px;font-family:arial,helvetica,sans-serif">Alex Kiernan</span>=
</div></div></div></div>

<br>
<a href=3D"http://www.hivehome.com" target=3D"_blank">hivehome.com</a><div>=
<div><br></div><div><img src=3D"https://s3-eu-west-1.amazonaws.com/81023081=
2/HiveSig.png"></div><div><br></div><div><br></div><div><div style=3D"font-=
size:12px;background-color:rgb(255,255,255);margin:0cm 0cm 0.0001pt;font-fa=
mily:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b7">Hive | London | C=
ambridge | Houston | Toronto<u></u><u></u></font></div><div style=3D"font-s=
ize:12px;background-color:rgb(255,255,255);margin:0cm 0cm 0.0001pt;font-fam=
ily:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b7">The information co=
ntained in or attached to this email is confidential and intended only for =
the use of the individual(s) to which it is addressed. It may contain infor=
mation which is confidential and/or covered by legal professional or other =
privilege. The views expressed in this email are not necessarily the views =
of Centrica plc, and the company, its directors, officers or employees make=
 no representation or accept any liability for their accuracy or completene=
ss unless expressly stated to the contrary.=C2=A0<u></u><u></u></font></div=
><div style=3D"font-size:12px;background-color:rgb(255,255,255);margin:0cm =
0cm 0.0001pt;font-family:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b=
7">Centrica Connected Home Limited (company no: 5782908), registered in Eng=
land and Wales with its registered office at Millstream, Maidenhead Road, W=
indsor, Berkshire SL4 5GD.</font></div></div></div>

--f403045f50a241b063055be1a003--
