Return-Path: <maxpowel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F01CE00939; Wed, 26 Apr 2017 10:43:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxpowel[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AB23E00777
	for <yocto@yoctoproject.org>; Wed, 26 Apr 2017 10:43:02 -0700 (PDT)
Received: by mail-qt0-f181.google.com with SMTP id m36so7005006qtb.0
	for <yocto@yoctoproject.org>; Wed, 26 Apr 2017 10:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RgTIEG9hRPs/EgDM/QOsyrG1+sw8Gk5I4kfg660Wzpg=;
	b=ROP/WpP8uyhPWaFXbAmYO1arrtff6E22XSwYXADBItt+6ochtDW5ZXQhFvh8hS5bXi
	M6u+Zfu9+M6e6DFy8KXFF6BYstq0DxyJkRMMLKYOC5kVFuswldD7OM5SBrw8tHc2+yVo
	vL013bQ6cv2sHr7kuDvVbQhJBJO9Sgt/2R9CRfaTXOFBR6Od24j332B3GnTQSb9HEjy/
	/09WJZZ/zmGA7CUyR89mSlR3LCJk917HS7iYNwPFn92lGtqV8GEMB0ttxpws0wV9ZAYh
	QRY5QKECnCqn84eLRtFc+z6/V8CDBbT1cL1etSuHMwpZXV+QnxHvS9O0byMJnfGycd//
	7dPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RgTIEG9hRPs/EgDM/QOsyrG1+sw8Gk5I4kfg660Wzpg=;
	b=Rd80eMT8KDoGjJGDiPEW2YAMdwJnASN/g6mEbTTp6tX9v5KmBlx3wOruo9o3NhrXdq
	GW1Y4J7/PMTUVBVybmqtHH9O2n5mDj+8mKphHv/I7DbnRb2vasXcb5DpPvoGbUTD2LAC
	08Npi4O/xxMM0fgiK/qKs5WYwV3p94mD+3bqZqOXcJalXI/QDpckIWNceXV54vpc+FrH
	lxmomzsdBVogqPNvWUK5Xc7k1QfUAf55c49sL412y/HiHhCBG5Vg+fVQPM8EcHX0VIoF
	ZzYhcoAZP5m+/O8lzEDKeNJ506Fpji9HPfRtB90qsW1O+7n7JKzihTPbswVYtIa+yRqQ
	CC+g==
X-Gm-Message-State: AN3rC/5oSZoyOAb9oTMBfYI1aHDjtFUW/TRg9xg5fCW04ysnL8UvU8Cx
	QbABugZAD5rQ62PukM309BwLuBjBrQ==
X-Received: by 10.200.48.168 with SMTP id v37mr1066505qta.84.1493228581765;
	Wed, 26 Apr 2017 10:43:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.48.73 with HTTP; Wed, 26 Apr 2017 10:43:01 -0700 (PDT)
In-Reply-To: <CAOsmwBRPM7wt=ovbYg1pd+NJQY1PpaH=6onpgp4a_h5VBe4FGg@mail.gmail.com>
References: <CAOsmwBTkthOX6Zd9JFxEhoxMMvwNvcWJ9C-_1Xzu13UpYO_kEA@mail.gmail.com>
	<CAJTo0LZcB7++s9CZLSdnYe-UsrGd1gnHh_emaX4AZ-QtnJfozw@mail.gmail.com>
	<CAHUNapQdc2a_uGDAsDdtBfkw+tg=q4rvJ9K0BFvaa58dzL+uAg@mail.gmail.com>
	<CAOsmwBRPM7wt=ovbYg1pd+NJQY1PpaH=6onpgp4a_h5VBe4FGg@mail.gmail.com>
From: Alvaro Garcia <maxpowel@gmail.com>
Date: Wed, 26 Apr 2017 19:43:01 +0200
Message-ID: <CAOsmwBQtN=d153NyAnptEDXCai-9fqQ9rQwfaA7ZAF8E8CFsMg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Share recipes
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
X-List-Received-Date: Wed, 26 Apr 2017 17:43:06 -0000
Content-Type: multipart/alternative; boundary=001a113a3c962f48c3054e155f1e

--001a113a3c962f48c3054e155f1e
Content-Type: text/plain; charset=UTF-8

The git repository where I should push is
https://github.com/openembedded/openembedded or
http://cgit.openembedded.org/openembedded-core?
I only saw https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines
but none about recipes, is there any special protocol?

2017-04-20 2:37 GMT+02:00 Alvaro Garcia <maxpowel@gmail.com>:

> yes, dyslexia is strong on me XD
>
> 2017-04-19 18:17 GMT+02:00 Trevor Woerner <twoerner@gmail.com>:
>
>> > On 19 April 2017 at 15:57, Alvaro Garcia <maxpowel@gmail.com> wrote:
>> >> nvidia-propietary-driver
>>
>> prop*r*ietary?
>> proprietary
>>
>
>

--001a113a3c962f48c3054e155f1e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The git repository where I should push is <a href=3D"=
https://github.com/openembedded/openembedded">https://github.com/openembedd=
ed/openembedded</a> or <a href=3D"http://cgit.openembedded.org/openembedded=
-core">http://cgit.openembedded.org/openembedded-core</a>?<br></div>I only =
saw <a href=3D"https://www.openembedded.org/wiki/Commit_Patch_Message_Guide=
lines">https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines</a=
> but none about recipes, is there any special protocol?<br></div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-04-20 2:37 GMT+02:00 =
Alvaro Garcia <span dir=3D"ltr">&lt;<a href=3D"mailto:maxpowel@gmail.com" t=
arget=3D"_blank">maxpowel@gmail.com</a>&gt;</span>:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div dir=3D"ltr">yes,=C2=A0dyslexia is strong on me XD</div><div=
 class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">2017-04-19 18:17 GMT+02:00 Trevor Woerner <span dir=3D"l=
tr">&lt;<a href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gm=
ail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span>&gt; On 19 =
April 2017 at 15:57, Alvaro Garcia &lt;<a href=3D"mailto:maxpowel@gmail.com=
" target=3D"_blank">maxpowel@gmail.com</a>&gt; wrote:<br>
</span>&gt;&gt; nvidia-propietary-driver<br>
<br>
prop*r*ietary?<br>
proprietary<br>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a113a3c962f48c3054e155f1e--
