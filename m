Return-Path: <ashish.emailaddress@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD971E00D6F; Fri, 10 May 2019 00:10:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ashish.emailaddress[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.182 listed in list.dnswl.org]
Received: from mail-it1-f182.google.com (mail-it1-f182.google.com
	[209.85.166.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C50E9E00CBC;
	Fri, 10 May 2019 00:10:49 -0700 (PDT)
Received: by mail-it1-f182.google.com with SMTP id 9so334647itf.4;
	Fri, 10 May 2019 00:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=TBX5rAxvSRLEpkVQcVnHHk/yMYVT224Qf0CU8hrbryU=;
	b=WWnWjXmSuLVGVQ+azaH1I3Xp4zslSVnZ38maJn+jWlbZY9lzJ7iVRTyQtVI8DeKbrz
	KvO2F7ydxm7NF4JCyMwNveKc2QoE6+Gxlx1Wb/wRig0cio8XpKGlfoWKX/MkoEiK0eDp
	KvDLdGKajAm/Cj/ibFNzD1AfFdcro7xQ4hYpSSmEMl8AmzLc9ehLZ3RwtIJPaYn1rSA8
	j+9Vahs6wH6OhYtemEX2jF5Do60CYpsTjyo8iw3ACuLWTK33tLaYS88XcXP1U8avSFWv
	zQ08IEkOSW/ApgBsd1oHHE2FHNVE44M7rDdAt+FVIEc0FSX4wvUqJr13hkQ3yt/8UbvU
	RK1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=TBX5rAxvSRLEpkVQcVnHHk/yMYVT224Qf0CU8hrbryU=;
	b=s+M1uoRBmSXAOB3WW9LKixluLzKSYqiGm9iFchrWIlmj524gm43aQ0R8X+r+ZjqbzL
	Yuz68k+o3GMw8gFiJLcUvFntnwPX/8WA7UOk2V0DxDE3+l7z77ndmL6PAQNiD5LiKeon
	61o6NkcRihU1cxlVBKxGpwT4dbE8/cwhiRO6WpL9OZS10sF+NYJUEurRjqUz12ggg/FN
	af06XjuifuOBtSzIcgBw5L73J5lO73dzDV5TyerGA4L7mwLOjjwk1kKD3fW0kk3MxVFP
	OTE9ReaLZzZunkvEB/WeJo8uhCInUe19NqFIwmwd+IYHxUjoYggk+/sp9XJyqYn5Nxst
	IAcw==
X-Gm-Message-State: APjAAAWP0XRgbfnIxXZq+UBMCxjA0sankb2/0zVQtgY+Mg25ETUsEx/D
	VKFx0FTR/muk1C/5QynbkzHOKM3rNxJuQrqqlag=
X-Google-Smtp-Source: APXvYqw68jqiokd9xtxbaOEt+5LxmQKQ/jGqvFnIDl+Qbhmr8S85BSqCh08w9Ka6lKtBnm6CUGziYe33YV6bbmqwkbk=
X-Received: by 2002:a24:e517:: with SMTP id g23mr6375005iti.113.1557472249240; 
	Fri, 10 May 2019 00:10:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAOe0dAUYH83APXjXi8FiT3492zi0EVcsT4MfT69LJO+nJ5er8w@mail.gmail.com>
	<4823d30b2edfc0eea9fcdec81f68e6e8f113f015.camel@intel.com>
In-Reply-To: <4823d30b2edfc0eea9fcdec81f68e6e8f113f015.camel@intel.com>
From: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Date: Fri, 10 May 2019 07:10:38 +0000
Message-ID: <CAOe0dAVUf0hJDze4mRbNp-wGCpKMJs-5FQP7rTwiUmopwBQcdw@mail.gmail.com>
To: "Mittal, Anuj" <anuj.mittal@intel.com>
Cc: "yocto-bsp@yoctoproject.org" <yocto-bsp@yoctoproject.org>,
	"linux-yocto@yoctoproject.org" <linux-yocto@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Timestamp error between zImage & uname-a [ Yocto-2.6.1 + Qemux86 ]
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
X-List-Received-Date: Fri, 10 May 2019 07:10:51 -0000
Content-Type: multipart/alternative; boundary="00000000000029e1650588834440"

--00000000000029e1650588834440
Content-Type: text/plain; charset="UTF-8"

HI Anuj ,

I was building minimal image using $ bitbake core-image-minimal haven't
tried full-cmdline.

Not able to track why kernel "uname" has older  timestamp rather than the
one from build/deploy/image
as seen by "ls -al <build/deploy/image>

Am i missing any command or sequence here

--00000000000029e1650588834440
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>HI Anuj , <br></div><div><br></div><div>I was buildin=
g minimal image using $ bitbake core-image-minimal haven&#39;t tried full-c=
mdline.<br></div><div><br></div><div>Not able to track why kernel &quot;una=
me&quot; has older=C2=A0 timestamp rather than the one from build/deploy/im=
age <br></div><div>as seen by &quot;ls -al &lt;build/deploy/image&gt;<br></=
div><div><br></div><div>Am i missing any command or sequence here=C2=A0 <br=
></div><div><br></div>=C2=A0</div>

--00000000000029e1650588834440--
