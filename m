Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0054AE004D8; Fri, 24 Feb 2017 09:36:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.169 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C78FFE003E1
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 09:36:43 -0800 (PST)
Received: by mail-qk0-f169.google.com with SMTP id s186so24531020qkb.1
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 09:36:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+1d0e9U9twGSMp1IO3ns2/AUuaTVYRYnUCcTnY88zrQ=;
	b=Z+opyGO3amGJ/XtQHp+ATQcvwW2Q60uZlvJqXcDbCpRA4fIFXgf+qwsndNV2goFzXY
	nMoyXJBBodvl3FBpjJhUOH4LV+taZWjq8aroviEFeTdwon7Yez6FzYUcv1HE3y6P4a0z
	CJJHDVKUCO/6YiRxzcdgRX9z2F4J656frufa2EEZuZJ6bnSxUqMoyFtZNDjGWOTemEUA
	OGQLf8fRS5GIPPzUeiF1Wm9jIVCC6pYUtShboKG+ENy73+En+MT5czREI+86aW9wPMA4
	Cob/y7RWi1pWJVPTFtrntREEGsowej4DU6ypHfVmJZkfbyUprjFtU3Cud02f9TQ2Df2N
	/q0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+1d0e9U9twGSMp1IO3ns2/AUuaTVYRYnUCcTnY88zrQ=;
	b=EhQI9otMPhCSXii6UCuFeDLDt46ksd+WXaWH/X+GJZGpDoek2lNsNRZs3aYy1jDmnw
	2VCgKkoTwOnnEcxpdyE/87/9kddXgkqRunNOeKtaooAuY6F4YAz4QfjLbVDsq4r09aSH
	opsv9fHShpBE8Aqeu8ypU/TXe5zD3UEdu8vbYDSETfekA1B+FNhtJKUdDngzIsZkNLCz
	SJ/1UuRRD1lBMGcUN3iiFchYAfezwVQxbFq7lRY2FUyOJiReML7S5pWmFxy2gxpULhz9
	O6dGsIhLKaaCeHN+mqNODZ91LY7xzzKIqelS1siZUoTGzfw5nOi62GemibbZwSM3AbIN
	flCw==
X-Gm-Message-State: AMke39kIUxRWYGY0GI1Sj6WaPTMYG0Xhjibp6AhCturZXLhNqiZjmRkepFKR7lripQI5XLz1Mg+af9VVD2ZbTpSE
X-Received: by 10.55.47.4 with SMTP id v4mr3882107qkh.77.1487957802644; Fri,
	24 Feb 2017 09:36:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Fri, 24 Feb 2017 09:36:22 -0800 (PST)
In-Reply-To: <73297B9E-30BA-4F4F-9A05-60B4EA688E6E@mac.com>
References: <73297B9E-30BA-4F4F-9A05-60B4EA688E6E@mac.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 24 Feb 2017 17:36:22 +0000
Message-ID: <CAJTo0LbRE+9JOVDd4revWXt_HinV2y6dAa0_54xvCxG45XMhqA@mail.gmail.com>
To: William McKinney <sigsbeeus@mac.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to build yocto-morty on ubuntu-16, machine reboots in the middle of the build
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
X-List-Received-Date: Fri, 24 Feb 2017 17:36:45 -0000
Content-Type: multipart/alternative; boundary=001a114f410844f46705494a2cc5

--001a114f410844f46705494a2cc5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 23 February 2017 at 13:24, William McKinney <sigsbeeus@mac.com> wrote:

> I=E2=80=99m trying to build the yocto-morty release on an ubuntu 16.04.2 =
LTS box
> with 16GB of memory and plenty of disk space.  More than once the machine
> appears to just reboot in the middle of the build.  Has anyone else
> experienced this?  The krogoth and jethro release build successfully on t=
he
> same box.
>

Sounds like you've got hardware problems - obviously there's nothing that
Yocto can be doing to induce a reboot.

I'd start with a memcheck and extended SMART tests.

Ross

--001a114f410844f46705494a2cc5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 23 February 2017 at 13:24, William McKinney <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:sigsbeeus@mac.com" target=3D"_blank">sigsbeeus@mac.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":4jf" class=3D"a=
3s aXjCH m15a711e09bffb9e6">I=E2=80=99m trying to build the yocto-morty rel=
ease on an ubuntu 16.04.2 LTS box with 16GB of memory and plenty of disk sp=
ace.=C2=A0 More than once the machine appears to just reboot in the middle =
of the build.=C2=A0 Has anyone else experienced this?=C2=A0 The krogoth and=
 jethro release build successfully on the same box.<br></div></blockquote><=
/div><br>Sounds like you&#39;ve got hardware problems - obviously there&#39=
;s nothing that Yocto can be doing to induce a reboot.</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">I&#39;d start with a memch=
eck and extended SMART tests.</div><div class=3D"gmail_extra"><br></div><di=
v class=3D"gmail_extra">Ross</div></div>

--001a114f410844f46705494a2cc5--
