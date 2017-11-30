Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84D85E00C97; Thu, 30 Nov 2017 08:48:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E990EE00B48
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 08:48:16 -0800 (PST)
Received: by mail-it0-f42.google.com with SMTP id d137so9173866itc.2
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 08:48:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4hmxylMTgPN819CxeuQgqwJx6iJwy2e39bPTVo5deyU=;
	b=cSEs3SiLtJwP9uLlhWmHheM9VIdO3NCLFnZTw29wscFoV4KGL8GnXA2+sXhSzAJlY9
	WMFlm82LKQF3Fps0Kqf7m+hWMLHcBXmI2g2ongB5Ir5Bb+PVZMxXBlkfVkOkdwKgRN9x
	pBdwyrK3OhmRGo8imZX7YsHkQx5SfPTTc52sgTJAvUhQo0WAXkldgE7wSB5cVVQbFGbx
	X3JNPLFvUDyj8JvYY556JyKs9FzhGzrc//nYamTporg1FMFtdLZXgReDZNo81CJ59c9+
	SFQdNGwmO1V/OQ9eV512S2FvN+2wOL0GYRmcVmOsflEbN75gpm5KN/borJanbImZztm3
	jPnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4hmxylMTgPN819CxeuQgqwJx6iJwy2e39bPTVo5deyU=;
	b=fGnDOdCX0ew5MARDEuXRHsInnv/NWARdbZbDfBze4A6lQgyQ1muVI/KUI4zY8Vpup1
	ALjajqmn7Oh2oks4/LuKJgl3ckz1HtnvYW+VOewR8uCAENt82ED4KSTkzUM/1vR/gVbX
	15BAQ2wA3OyefWWXB40JdvhFbxVK7Aq+3OiSzRYHzn2LJ2O0xv0YwO8GzM6y/eMnUpgd
	CxgoncnZMCGRXWdWrmljfN9PA33TFdtzUe8BF36Cr5ZZHRrgsWp2SNQO5GSAD4IagOb7
	hfs0ydKqkgwTqZGCE4BzWAdYEjvrrmkEuOpC2uO6ZP9CzGSH4e/TviV0KzfLS46GIrjC
	kN8w==
X-Gm-Message-State: AJaThX4CGpX/tYlKpujXl+drRWOdlTjKZma/MDQD57XnQGnU64wcVp0S
	u4fZskx2YyUAgW/dt63ubfNb6ZTFmi6gALMYQfJj3A==
X-Google-Smtp-Source: AGs4zMaxNXDstnXrvGaYF7/VPG8Atb6ksb3NF0sU8LEBKbyGpjxsB1xVo7Ri8gdSjdqcobstzWodHQsmS2JYFjTw584=
X-Received: by 10.36.80.148 with SMTP id m142mr4138315itb.6.1512060496188;
	Thu, 30 Nov 2017 08:48:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.171.134 with HTTP; Thu, 30 Nov 2017 08:47:55 -0800 (PST)
In-Reply-To: <OFBDD69A81.771625F6-ON882581E8.005B4052-882581E8.005BCA57@selinc.com>
References: <OF27D13CF6.90DFE3AC-ON882581E8.00000604-882581E8.0000D4D8@selinc.com>
	<CAJTo0LbzU2xUfYOFE41_B63C6Fcizxs=NxZXw3KcFN0pgcp6YA@mail.gmail.com>
	<OFBDD69A81.771625F6-ON882581E8.005B4052-882581E8.005BCA57@selinc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 30 Nov 2017 16:47:55 +0000
Message-ID: <CAJTo0LYRGogGrDLSs8vVw42UVjdSTNyca2bFKq-kqRsZy61fpA@mail.gmail.com>
To: Aaron_Wright@selinc.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BKM for Importing Python Modules
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
X-List-Received-Date: Thu, 30 Nov 2017 16:48:17 -0000
Content-Type: multipart/alternative; boundary="001a114387b8c13b29055f3604a9"

--001a114387b8c13b29055f3604a9
Content-Type: text/plain; charset="UTF-8"

On 30 November 2017 at 16:42, <Aaron_Wright@selinc.com> wrote:

> "Burton, Ross" <ross.burton@intel.com> wrote on 11/30/2017 02:47:43 AM:
> > Python functions in classes are executed by the Python that is
> > executing bitbake, which doesn't have access to the modules in the
> > native sysroot (and won't, as any compiled modules in there are
> > linked against the native python, not the host python).
>
> So adding to sys.path works, but only accidentially?
>
>     sys.path.append(
>         d.getVar("STAGING_DIR_NATIVE", True) +
>         d.getVar("PYTHON_SITEPACKAGES_DIR", True))
>

It only works because there are currently no binary modules in there that
don't cause the interpreter to crash...

Ross

--001a114387b8c13b29055f3604a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 30 November 2017 at 16:42,  <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:Aaron_Wright@selinc.com" target=3D"_blank">Aaron_Wright@selinc=
.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmai=
l_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><span class=3D""><tt><font size=3D"=
2">&quot;Burton, Ross&quot; &lt;<a href=3D"mailto:ross.burton@intel.com" ta=
rget=3D"_blank">ross.burton@intel.com</a>&gt;
wrote on 11/30/2017 02:47:43 AM:<br>
&gt; Python functions in classes are executed by the Python that is <br>
&gt; executing bitbake, which doesn&#39;t have access to the modules in the
<br>
&gt; native sysroot (and won&#39;t, as any compiled modules in there are <b=
r>
&gt; linked against the native python, not the host python).</font></tt>
<br>
<br></span><tt><font size=3D"2">So adding to sys.path works, but only accid=
entially?</font></tt>
<br>
<br><tt><font size=3D"2">=C2=A0 =C2=A0 sys.path.append(</font></tt>
<br><tt><font size=3D"2">=C2=A0 =C2=A0 =C2=A0 =C2=A0 d.getVar(&quot;STAGING=
_DIR_NATIVE&quot;,
True) +</font></tt>
<br><tt><font size=3D"2">=C2=A0 =C2=A0 =C2=A0 =C2=A0 d.getVar(&quot;PYTHON_=
SITEPACKAGES_<wbr>DIR&quot;,
True))=C2=A0</font></tt>=C2=A0<br></blockquote><div><br></div><div>It only =
works because there are currently no binary modules in there that don&#39;t=
 cause the interpreter to crash...</div><div><br></div><div>Ross=C2=A0</div=
></div></div></div>

--001a114387b8c13b29055f3604a9--
