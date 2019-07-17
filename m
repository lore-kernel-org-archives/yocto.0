Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DF53E00D67; Wed, 17 Jul 2019 05:03:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
	[209.85.208.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2C57E00B8F
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 05:03:03 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id r9so23350805ljg.5
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 05:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=av1oHHlbYJDtZ2GANvPNfr1F5lAt3pU3An4drE91ixE=;
	b=ipWI9mbtcSy1MSGJVM9BFrUNG9SdOfDt3Va++ZKQGZo+l7f2ejRUuKokXKkjlQRUmh
	HEV/qLUwwG1Wb+W7eCBuIf1p8bGRCspDJC6lW8lWyULLBUrMdms3Z3IYg8Nto/YwZ3p4
	mauXLQsCI9T5LKUXlSjoOHZvPR83jkiHfLUmQjANJTnszaywPw5NBDGqZYJeQgP5Xwxc
	XKk8qOWv7Ah1qyw2fP9d86xYzpMukF0W866riHmqwiYilRki/W3P9xE1u0Nw5cXPRqjV
	QXDxyJt8PeVtTpCe4lejO1xs+G3+/zndB58taM8MYQWjF1cL2255sBfBme8p62bziZJX
	T87g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=av1oHHlbYJDtZ2GANvPNfr1F5lAt3pU3An4drE91ixE=;
	b=FBTCXk/ieo4F83J4mdZ5EI3dH3vQwlNPRZQiCwOard35zrGumTInCmtOR1FWALf5db
	ae1tkyk8lWO27PVFKLMhCivx/i+CVTtVHy2W7Nbi+dDiyAO483PoXtJ3TIEnohlzKTuX
	UkqNyL4qFQaapxmUHwL8qJ9nh29pidheo5kalPrNb4hpCelE6ZgAkQcjisQw1kuEbCNE
	jkfJ0ri+x03GthDkyCaoPhupaEDs9ECdUsHMXgghfMrjeCZD1YOu6k+iq8e8K0YJI6QP
	RdmtYQlxwcreq0ayisuyT863jXjaifZUjJWRlzow27JN/KcPWCDSJysqU5MvaXrDxVRf
	3RWg==
X-Gm-Message-State: APjAAAU83NpcCZ1XWdkQD5xyqS/hGOr44YdF8sBOX7di03/WmOkPiFpV
	Dlb6/B/L4mOYBOPmdsgHkB4OI0rdtOZLrTfDGadC1Q==
X-Google-Smtp-Source: APXvYqx0lcForuFjFYoEIEOJmTiYpZ6N4EDNEoejQLM8YAS8wnabwj0pHJOJbSB3SaBo53Jfh3WurkbySKjgHV0Z47s=
X-Received: by 2002:a2e:9685:: with SMTP id q5mr7020386lji.227.1563364982516; 
	Wed, 17 Jul 2019 05:03:02 -0700 (PDT)
MIME-Version: 1.0
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Wed, 17 Jul 2019 14:02:51 +0200
Message-ID: <CAAx3WaAfXRtXA84m9H9VBNr52EmALQGK9NoW5njVrMyyeVkEEQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Different installation path in SDK
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
X-List-Received-Date: Wed, 17 Jul 2019 12:03:05 -0000
Content-Type: multipart/alternative; boundary="0000000000006fef7d058ddf460f"

--0000000000006fef7d058ddf460f
Content-Type: text/plain; charset="UTF-8"

Hi all,

for legacy reason I need to install some libraries in a non-standard path
(/opt/custom/lib). I achieved this quite easily via cmake. However, when I
generate the SDK, those libraries and headers are installed in
<sdk>/sysroot/arm..../opt/custom/[lib|include] and this is quite annoying.
Is there a way to recognize when bitbake builds the SDK and when it
doesn't? something like class-nativesdk ann class-target, so I can change
the installation path to ${libdir} & co.

Thanks,
Gabriele

--0000000000006fef7d058ddf460f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all, <br></div><div><br></div><div>for legacy reas=
on I need to install some libraries in a non-standard path (/opt/custom/lib=
). I achieved this quite easily via cmake. However, when I generate the SDK=
, those libraries and headers are installed in &lt;sdk&gt;/sysroot/arm..../=
opt/custom/[lib|include] and this is quite annoying. Is there a way to reco=
gnize when bitbake builds the SDK and when it doesn&#39;t? something like c=
lass-nativesdk ann class-target, so I can change the installation path to $=
{libdir} &amp; co.<br></div><div><br></div><div>Thanks,</div><div>Gabriele<=
br></div></div>

--0000000000006fef7d058ddf460f--
