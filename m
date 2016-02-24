Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D570DE006AD; Wed, 24 Feb 2016 09:10:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.177 listed in list.dnswl.org]
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8676BE00404
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 09:10:52 -0800 (PST)
Received: by mail-ob0-f177.google.com with SMTP id jq7so23448862obb.0
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 09:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3yna5AnLcCdmxUd/cMqqOZ0q4S3uVOqOCst0NY36C4o=;
	b=anmlqVV1KiYzKphZqvg4bqvlvd+kNRjcxhH1UKNK/MxDvDbyWBnfCFz/CXhaD8PPAa
	SRi0BL13sNSJ7YLxNHM/NyK7bzD2oh9swAGb+brG6GSEv+MUbamgdTbd2hHtTrlLdHTh
	m7+dj8OfHmwpM+vn3iDe8a0Wgad8IXnBSL/BXsaqj9ovvRn8g28G86/QGAIJnVaHK+P7
	bmeuO1WiMNv8fdB1vmC+8WjpzYZ8bRPMXvBgcQEUaAPlN/XjunUv/kP1iIGlOt24Kq3A
	vz7rquVj1NdqPzF8QYIz5CIUneKEm3HSBzlQ/t/K0lQrKxdVen53svqUlc227zXZ2Z6a
	oiyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3yna5AnLcCdmxUd/cMqqOZ0q4S3uVOqOCst0NY36C4o=;
	b=hFGTfXu7JVEwSFl3Qe1uhR8yfjeFw5UYTwyiYUqJX74TVcQyarAldTU5itdvFPR7ih
	+VlRJ9cBkCYsMarQ27BHSjIxjga5v3yJ/0pFVLn6Lyq7hNBmFLOMJykXRVnKvMzE4FJ7
	LDwhocz3oS0JVJWXhxNp4PmeDvnS9f7u+EYvrK23UwoLVsS7Yy6qfB7hwz6RkgOuIIi7
	0V2hsIKwCbK6n6N9q/kwKuQ9rR11DTUU4D59WvB3GAHh8Gt/YdhA5DSPHboFo6xPSMaz
	f43e1E76Ty6tzxiAuR/6AuDKZG7dOF8gv+U0aIMF5AGr0gm9NdLpkGNjM2/Y+wY0IYrr
	RWdQ==
X-Gm-Message-State: AG10YOSr1Drp3ExgfcZnSnygWWEF1gi1yltd16zP5EETNbfCyxLIiabmwVoTHj8/mwxHRvqs6VvMK74ECge/ioZx
X-Received: by 10.50.43.226 with SMTP id z2mr23643456igl.78.1456333851664;
	Wed, 24 Feb 2016 09:10:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 24 Feb 2016 09:10:32 -0800 (PST)
In-Reply-To: <33006C99F5A5194A9B7A7715DFA3E383EB81AF8A@ALA-MBB.corp.ad.wrs.com>
References: <1455922741-3342-1-git-send-email-radzy@windriver.com>
	<56CB1DC8.1030505@windriver.com>
	<33006C99F5A5194A9B7A7715DFA3E383EB81AF8A@ALA-MBB.corp.ad.wrs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 24 Feb 2016 17:10:32 +0000
Message-ID: <CAJTo0LaRP_AY9X3A5pLDY72NmKNjg3M0L6QLrO+rDuRY9vpa2Q@mail.gmail.com>
To: "Radzykewycz, T (Radzy)" <radzy@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH] swig is in meta-oe, remove this copy
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
X-List-Received-Date: Wed, 24 Feb 2016 17:10:55 -0000
Content-Type: multipart/alternative; boundary=047d7bfea0f4e763ad052c872514

--047d7bfea0f4e763ad052c872514
Content-Type: text/plain; charset=UTF-8

On 22 February 2016 at 14:51, Radzykewycz, T (Radzy) <radzy@windriver.com>
wrote:

> It's easy enough to update the one in meta-selinux, if the decision is
> to keep the duplicate.  I have a 3.0.6 => 3.0.8 update ready to upload
> to meta-oe, and I can do meta-selinux at the same time.
>

In master at least, swig isn't in meta-oe and oe-core has 3.0.8 already.
 oe-core jethro has 3.0.6.  Basically, there's no reason for anything
targeting jethro onwards to ship swig.

Ross

--047d7bfea0f4e763ad052c872514
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 February 2016 at 14:51, Radzykewycz, T (Radzy) <span dir=3D"ltr">&lt;=
<a href=3D"mailto:radzy@windriver.com" target=3D"_blank">radzy@windriver.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":6py" =
class=3D"a3s" style=3D"overflow:hidden">It&#39;s easy enough to update the =
one in meta-selinux, if the decision is<br>
to keep the duplicate.=C2=A0 I have a 3.0.6 =3D&gt; 3.0.8 update ready to u=
pload<br>
to meta-oe, and I can do meta-selinux at the same time.</div></blockquote><=
/div><br>In master at least, swig isn&#39;t in meta-oe and oe-core has 3.0.=
8 already. =C2=A0oe-core jethro has 3.0.6.=C2=A0 Basically, there&#39;s no =
reason for anything targeting jethro onwards to ship swig.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--047d7bfea0f4e763ad052c872514--
