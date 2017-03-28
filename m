Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4A33E00B01; Tue, 28 Mar 2017 03:25:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.180 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64754E00A51
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 03:25:24 -0700 (PDT)
Received: by mail-qt0-f180.google.com with SMTP id i34so59909346qtc.0
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 03:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8+aDPUxPeHxFiCwZCIsX2a9ZiHUfGIHtwUN0edNodL4=;
	b=tD+4I8E7/+IATRW/pfCz8S7jSCXuQK70OtUfk46a8YMd55EPMjkdA4Oof2+DxDmKpX
	kNlfJYlUau9rEdkDLjp29c6igYP7lLqM8HLAs12zeuKR9yZ/6l34m579B5Aw7SQ4ZBPM
	laGypYVYyMMZ2UGyXTpHn2COoSXlbvbTye9x25WQXk542ztfrYRGy5bz5HxIwKt/pwO/
	ndAPW6w1bRKXkNORIK21ZMNDFbzIPbeWiCyrGbWpcXFePRRtfaIouLfcm6nmzcBIc5g0
	qQy7PdKXLa6NqnZq6xcaTDsF4AaaIUrustkzYTTQs2yT4jSBIjrJ3eNa7faokvKpaxMd
	6vCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8+aDPUxPeHxFiCwZCIsX2a9ZiHUfGIHtwUN0edNodL4=;
	b=Zor9fUnkO/ICDuayHbE58srnz0NwmAVeNgDvw/+iitt5pvxVG3r+rTNNwZgRZXsnys
	bSQB1supkdi/pSwhp11JAmsl6c6oEZY0If7OhRyiMrPNSGSJPl40/DwftaPUNMtw893G
	oYPrto9B/dEX5lhdrjZEJ3ZrOe7aNApMGgcLsuQ01HpZdhc8dJNkw7e2OPnJAlsw9yKa
	cBiY6AmKCSDUftaO1bxtV851F8UsGew5BBe14+d7Ys0Vz2sRTctK4RVmQxBsOfMMyBnd
	dM8bNChr0owkDzdlzckYOW2f3rJM/smS86GAq+3FoYNRyDT3WyREbbmqC3/phkf5HIc2
	fEXg==
X-Gm-Message-State: AFeK/H32J91cu5IpkBfUF0grePmoaaMQRwGehaDVW1qbu3wsKmKnHA6v+LUwXb1oIAYdM/S2zwUqFoH03+qlSrWe
X-Received: by 10.237.42.164 with SMTP id t33mr27567599qtd.105.1490696724316; 
	Tue, 28 Mar 2017 03:25:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Tue, 28 Mar 2017 03:25:03 -0700 (PDT)
In-Reply-To: <CAJ2oMhJL9e6TX5nY=-xNHvKA2ci4+xXMfc3epaJz9UBtZcOMyQ@mail.gmail.com>
References: <CAJ2oMh+Dj3SZ5Tf8aF3VRhpsboah-4qevGC3v+5q=vpOdQ2V0g@mail.gmail.com>
	<CAJTo0LaCynfLyy99eC0=AN188Amh+xFwsy0ZMSdSSE0Z8ACazQ@mail.gmail.com>
	<CAJ2oMhJL9e6TX5nY=-xNHvKA2ci4+xXMfc3epaJz9UBtZcOMyQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Mar 2017 11:25:03 +0100
Message-ID: <CAJTo0LaYATrmbQ6cWOAMFFVk_ZoRnt7VBUeDs8cAnMxATtParw@mail.gmail.com>
To: Ran Shalit <ranshalit@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: package managers
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
X-List-Received-Date: Tue, 28 Mar 2017 10:25:27 -0000
Content-Type: multipart/alternative; boundary=94eb2c0cfe22b8b02e054bc7e063

--94eb2c0cfe22b8b02e054bc7e063
Content-Type: text/plain; charset=UTF-8

On 28 March 2017 at 11:00, Ran Shalit <ranshalit@gmail.com> wrote:

> I understand from this that in target it will be possible to install a
> package, using the other package manager.
>

Why would you want to do this?

You'll need to install the package management tooling, and the database of
the one you install after the rootfs creation won't know about anything
that is already in the rootfs.

It's a lot easier to just pick a package manager and use it consistently.

Ross

--94eb2c0cfe22b8b02e054bc7e063
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 March 2017 at 11:00, Ran Shalit <span dir=3D"ltr">&lt;<a href=3D"mail=
to:ranshalit@gmail.com" target=3D"_blank">ranshalit@gmail.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div id=3D":479" class=3D"a3s aX=
jCH m15b145c96ab6edf5">I understand from this that in target it will be pos=
sible to install a<br>
package, using the other package manager.<br></div></blockquote></div><br>W=
hy would you want to do this?</div><div class=3D"gmail_extra"><br></div><di=
v class=3D"gmail_extra">You&#39;ll need to install the package management t=
ooling, and the database of the one you install after the rootfs creation w=
on&#39;t know about anything that is already in the rootfs.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">It&#39;s a lot easier=
 to just pick a package manager and use it consistently.</div><div class=3D=
"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--94eb2c0cfe22b8b02e054bc7e063--
