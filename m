Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A30EEE00C4E; Wed,  5 Dec 2018 13:21:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7641E008C6
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2018 13:21:50 -0800 (PST)
Received: by mail-wr1-f49.google.com with SMTP id j2so21199145wrw.1
	for <yocto@yoctoproject.org>; Wed, 05 Dec 2018 13:21:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=PqjRgRAZJjx7HjlGMtiitNfOWGQl65oiN6g9/60iH8w=;
	b=vASi7d5RLAUt8beuX/ljfXCQFlZz3vbG4kEfjvG4jMhIag7xQ8bBXv8Qt2o5L6XAnN
	kGn+3cC3rQ5Xc5jgITu6xR2hN1CjrdrBOc6rSlGmjoPVQ1n+ct3S+ivWMFzvzVKHGfCj
	W8dQ5ravg4sM0M12HuH1JGmNQdWjwTolLK5T6UFU0BpYrotj1hSKui0nhzkpwSf5vR86
	gxam5RZRNtwm/bmowjYn/KS9t5iGuoZtLn9sWPzKWUqLgny1jJnxSyTiirtfo+Fo+d+f
	nqNIXNvW0rirpTwn+z/BvpalTlwEaQMJFptelsSKRis7u5bKCF6pA4Pp7TfsNmHuY8As
	IWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=PqjRgRAZJjx7HjlGMtiitNfOWGQl65oiN6g9/60iH8w=;
	b=pgGl3oA5wMhhkm4uqXgmVrGNe/Um0zkSGopc/T3C9DtsEEj1gPECTBrOiGBJ4DqyHD
	3Rf3PufKu3bC5kme96jqI+tPQzYcVeBx1IQEZNFkBB8BI3agadO3sPYQmW86QOodiI9Z
	tSkfhFvEqLDFEVUNa12fgQOA+xGNuyfvyycl9xhn9kbmdrVUVwvSdc3MyXG4lQdfZhfl
	VMaDLmy7DJAd+Aok10EyBwdxZNODo17W+QorSGJczZVXhUOwcRpATSqGBixw1RE97x6+
	7u4p7LXwCIgqMws5PbG562XXl0Foewi9jW4pgAnBiT90S1VfBooKeu/rQsze+4BLhbXN
	dmcw==
X-Gm-Message-State: AA+aEWaE7bTQJb+93N9RwizOkhAX2OO/g8nwsFz2dhbPXxoJ/iBROgNR
	60K6qx0gfVWnqnfY/TRUqHTaIpka+tjnZGOYfq8=
X-Google-Smtp-Source: AFSGD/WUMBcRzCcS3FAyyS6EEO8veL0m+s+3Rpv2mVob4NVB7Ug3MZXgTa8VtIUaLkmQHDDGrOkS/r2GrPSKC5NFZBs=
X-Received: by 2002:adf:8544:: with SMTP id 62mr24422267wrh.1.1544044909786;
	Wed, 05 Dec 2018 13:21:49 -0800 (PST)
MIME-Version: 1.0
References: <CAODQEo1qPsWW1apiEwzgey8cJitsbODDdg2VK4Bmi3s8wLV83A@mail.gmail.com>
	<60a92b2f51dc9156466abc8f89c8fa9d34f8cf3b.camel@gmail.com>
	<CAODQEo1o+YF_HcDrks_-yEY+7xQ-dvX8znSLDzm_Eam_1ztmFw@mail.gmail.com>
In-Reply-To: <CAODQEo1o+YF_HcDrks_-yEY+7xQ-dvX8znSLDzm_Eam_1ztmFw@mail.gmail.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Wed, 5 Dec 2018 15:21:37 -0600
Message-ID: <CAJdd5GY+2KJBohDOwhqngJ_GfoOtvrTJX+w_HeP0eLpH0ytBTw@mail.gmail.com>
To: John Unland <unlandj2012@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	Armin Kuster <akuster808@gmail.com>
Subject: Re: Using ICECC to build Thud issue
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
X-List-Received-Date: Wed, 05 Dec 2018 21:21:51 -0000
Content-Type: multipart/alternative; boundary="0000000000005d7a0a057c4cf830"

--0000000000005d7a0a057c4cf830
Content-Type: text/plain; charset="UTF-8"

On Wed, Dec 5, 2018, 3:09 PM John Unland <unlandj2012@gmail.com wrote:

> Fixed on master:
>>
>> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=1da297d35411e923ca3b6accdd37074f5182f019
>>
>> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=5dd8df08c51bc4cc1ef0d5be7656c9bfcf938cca
>>
>> They should probably be backported to thud.
>>
>
> Glad it wasn't anything on the config end par say, would this be a
> candidate to log a bug for?
>

CC'ing Armin

>
It wouldn't hurt to make a bug for the backport.



> Thanks!
>
>

--0000000000005d7a0a057c4cf830
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Wed, Dec 5, 2018, 3:09 PM John Unland &lt;<a href=3D"mailto:unlandj2012@=
gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">unlandj2012@gmai=
l.com</a> wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><=
div dir=3D"ltr">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div>Fixed on master:</di=
v><div><a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?i=
d=3D1da297d35411e923ca3b6accdd37074f5182f019" rel=3D"noreferrer noreferrer =
noreferrer" target=3D"_blank">https://git.yoctoproject.org/cgit/cgit.cgi/po=
ky/commit/?id=3D1da297d35411e923ca3b6accdd37074f5182f019</a></div><div><a h=
ref=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D5dd8df0=
8c51bc4cc1ef0d5be7656c9bfcf938cca" rel=3D"noreferrer noreferrer noreferrer"=
 target=3D"_blank">https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?=
id=3D5dd8df08c51bc4cc1ef0d5be7656c9bfcf938cca</a></div><div><br></div><div>=
They should probably be backported to thud.</div></blockquote><div><br></di=
v><div>Glad it wasn&#39;t anything on the config end par say, would this be=
 a candidate to log a bug for? <br></div></div></div></blockquote></div></d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">CC&#39;ing Armin</div><div=
 dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><di=
v dir=3D"ltr"><div dir=3D"ltr"><div></div></div></div></blockquote></div></=
div><div dir=3D"auto"><br></div><div dir=3D"auto">It wouldn&#39;t hurt to m=
ake a bug for the backport.</div><div dir=3D"auto"><br></div><div dir=3D"au=
to"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div>Thanks=
!<br></div>

</div><div dir=3D"ltr"><br></div></div>
</blockquote></div></div></div>

--0000000000005d7a0a057c4cf830--
