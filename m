Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C48ECE0091D; Mon,  2 Feb 2015 09:26:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C68B0E008BC
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 09:26:47 -0800 (PST)
Received: by mail-qc0-f173.google.com with SMTP id m20so31058691qcx.4
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 09:26:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=cgRGwKVobBPqxmXy1UagakM18sNPtJF6rk6A1YMSUF8=;
	b=OY+g28aZRi8Mu6/ZbhyaUqaF7ebKrRpOJOxJbXuawVWIBkA1v+CfGZf6jvwS6k6UdE
	sjAr7Gbo7XsqAYis5UKc4aFVnUxqnrFI/XiZZHRQpwOmeiHmM/clNWofDZe1M9KM4aG/
	9AFSoMgDdW6vApFwXDzXmhlch37I2YRbxlSNG0dN7uvl0qO7jOK1SimucjCxhQ1wczYa
	fwykZW7VGbeCbYKBzcWPVQvyMejCFm+Sir6uIyrscIFvvwBSWd8XoP+/fW67iRXzLdHx
	gc2HyuUhc4std5XIx9tqIQEDuGEmF9uZgtmvxdJkaDY3jfOciErIxFhqBKRSipmhEfm1
	8FCQ==
X-Gm-Message-State: ALoCoQnorW1qdEMqd4dl0d+O134lRmpN6ubConCQelSrU1xAkQ2asidmZfTzLu/5G6wfdrC9Buco
X-Received: by 10.140.21.48 with SMTP id 45mr41346017qgk.87.1422898006834;
	Mon, 02 Feb 2015 09:26:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Mon, 2 Feb 2015 09:26:26 -0800 (PST)
In-Reply-To: <54CFA8A5.7090504@mvista.com>
References: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
	<54CFA8A5.7090504@mvista.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 2 Feb 2015 17:26:26 +0000
Message-ID: <CAJTo0LbhMAnd=TKhbWHhTsbca_bVSvtjLFsR6b_P5gsarO7AOg@mail.gmail.com>
To: akuster <akuster@mvista.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [RFT] upcoming glibc 2.21 and gcc 4.9 upgrade
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
X-List-Received-Date: Mon, 02 Feb 2015 17:26:53 -0000
Content-Type: multipart/alternative; boundary=001a11c129943fd6de050e1e420e

--001a11c129943fd6de050e1e420e
Content-Type: text/plain; charset=UTF-8

Armin,

On 2 February 2015 at 16:41, akuster <akuster@mvista.com> wrote:

> If I knew what "testing' entailed I would through some time at this.
>

"Please build your stuff with this glibc/gcc and check it still works".

Ross

--001a11c129943fd6de050e1e420e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Armin,</div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">On 2 February 2015 at 16:41, akuster=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:akuster@mvista.com" target=3D"_bla=
nk">akuster@mvista.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div id=3D":55" class=3D"a3s" style=3D"overflow:hidden">If I knew what =
&quot;testing&#39; entailed I would through some time at this.<br></div></b=
lockquote><div><br></div><div>&quot;Please build your stuff with this glibc=
/gcc and check it still works&quot;.</div><div><br></div><div>Ross</div></d=
iv></div></div>

--001a11c129943fd6de050e1e420e--
