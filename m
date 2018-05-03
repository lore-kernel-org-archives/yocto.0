Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D2D8E00AE4; Thu,  3 May 2018 01:25:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 595D6E007C2
	for <yocto@yoctoproject.org>; Thu,  3 May 2018 01:25:55 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id e20-v6so20667418iof.4
	for <yocto@yoctoproject.org>; Thu, 03 May 2018 01:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oBPfHJVh+UdYTxzjxSjVKdo4x/8u9fI0/WO446m3IME=;
	b=A33mDh/HptGw0wTa4j1vcWm1JZsEFesakI6Lb1pK1McjRJVN3oJR9qv+LDBBl8CGPc
	FFQ/5N2y0Cw37/dDYclAF3a0ty1CPYRwC+GeB4737SJUS+xNSETkwIufmho4DrVi69Sp
	VaoZ+g0VkehHd/ch/uVwbtJMzXZ2BcP3uJ1DATHUKQDG6cWG0t2SqdLr4MNJNRUazeIi
	3fnEZ8B7acAP/ylJHHkX6qmn65jjaS0U3e/nW5mEgcBe+Pe9sVBgIwB92lZkV+DUV6VS
	CEDgiTTAqiBcig6DLarbZgjUM//k4OwbabYxwCjfQwkLW9wfoJxZAcP9U/id3dDVoNcR
	zsoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oBPfHJVh+UdYTxzjxSjVKdo4x/8u9fI0/WO446m3IME=;
	b=HMGZGSorVgCtY3L3QiN+ihD+YqnSk3eKLvp+Wgx6/8I2xjrn+yCbBGF9A2VFc2wHqL
	T4WTY6OCcZr5eI6aMNYFwwXbnNr+B2yBylhPY0c0SolRE8dsQId2hEb6wEYuxlokL1dy
	gK7d4ZDcJW5D6Rfp+HKjpNuaR6DD4gS+jdofDX0H63KTolQs1Gi7YPwbik4UC0nRYAi2
	y4TZ30ZxQbWs1wf86kfhNfd6SBHI7BtcMtZC3+i9aDgZzhsyGcbnMIrarIQj5YJ9glSh
	Sjb8rn+A6PHdap49ZUdIA9QpQj19844ek4HbwcoxWz0IumwVhs2rw3X07urtiVrHB+5l
	wWTg==
X-Gm-Message-State: ALQs6tBnb1qgfGZtyN3TFfivGA4c307uQRbiS7zz9vPK5OmDX6+POuyr
	7NuuwBrP/wLoetGphNLEPfTnegFOPyYV0mQhIbEwUg==
X-Google-Smtp-Source: AB8JxZqzL0NOVvoPUlcoYie5A9A/EmTlEF6Myzx6y8PmPvXoEL0QFZ3MH2sN6lQ0PuYYBrKTK3kBrrVSN8Y0eP1l9Gk=
X-Received: by 2002:a6b:248e:: with SMTP id
	k136-v6mr22695855iok.270.1525335935596; 
	Thu, 03 May 2018 01:25:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Thu, 3 May 2018 01:25:15 -0700 (PDT)
In-Reply-To: <MWHPR19MB1183D3C8CA06798F8109DCFCC5810@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB1183D3C8CA06798F8109DCFCC5810@MWHPR19MB1183.namprd19.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 3 May 2018 09:25:15 +0100
Message-ID: <CAJTo0LbAvAj_Y26tY4L9+=_aDiZQFTd4QviZ9shMUwk5ch9=5Q@mail.gmail.com>
To: Raymond Yeung <rksyeung@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with Python when running oe-init-build-env
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
X-List-Received-Date: Thu, 03 May 2018 08:25:57 -0000
Content-Type: multipart/alternative; boundary="0000000000009ad2f3056b48f2d0"

--0000000000009ad2f3056b48f2d0
Content-Type: text/plain; charset="UTF-8"

On 1 May 2018 at 21:43, Raymond Yeung <rksyeung@hotmail.com> wrote:

> I'd just git cloned Rocko and meta-ti.  When I try to source
> oe-init-build-env, I got errors:
>
>
> -bash: python3: command not found
>
> BitBake requires Python 3.4.0 or later as 'python3'.  "python -V" gives
> "Python 2.7.9".  "python3" is not in $PATH.  I'd followed some detailed
> online description to install Python 3.6 on CentOS 7.  However, after
> installation, it looks like I need to invoke it with python3.6.
>
>
> How does this work now?  I suppose the oe-init-build-env script
> uses/expects python3, not python3.6.
>

The python3 installation should have created a python3 symlink to
python3.6.  If this didn't happen, create it yourself.

Ross

--0000000000009ad2f3056b48f2d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 1 May 2018 at 21:43, Raymond Yeung <span dir=3D"ltr">&l=
t;<a href=3D"mailto:rksyeung@hotmail.com" target=3D"_blank">rksyeung@hotmai=
l.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gma=
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_-8473225699753745854divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p>I&#39;d just git cloned Rocko and meta-ti.=C2=A0 When I try to source oe=
-init-build-env, I got errors:</p>
<p><br>
</p>
<p>-bash: python3: command not found</p>
<p>BitBake requires Python 3.4.0 or later as &#39;python3&#39;. =C2=A0&quot=
;python -V&quot; gives &quot;Python 2.7.9&quot;. =C2=A0&quot;python3&quot; =
is not in $PATH.=C2=A0 I&#39;d followed some detailed online description to=
 install Python 3.6 on CentOS 7.=C2=A0 However, after installation, it look=
s like I need to invoke
 it with python3.6.</p>
<p><br>
</p>
<p>How does this work now?=C2=A0 I suppose the oe-init-build-env script use=
s/expects python3, not python3.6.</p></div></div></blockquote><div><br></di=
v><div>The python3 installation should have created a python3 symlink to py=
thon3.6.=C2=A0 If this didn&#39;t happen, create it yourself.</div><div><br=
></div><div>Ross</div></div></div></div>

--0000000000009ad2f3056b48f2d0--
