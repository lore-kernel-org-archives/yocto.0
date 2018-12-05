Return-Path: <unlandj2012@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9583EE00C12; Wed,  5 Dec 2018 13:09:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (unlandj2012[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.169 listed in list.dnswl.org]
Received: from mail-it1-f169.google.com (mail-it1-f169.google.com
	[209.85.166.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DADBE007B3
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2018 13:09:43 -0800 (PST)
Received: by mail-it1-f169.google.com with SMTP id x19so23726542itl.1
	for <yocto@yoctoproject.org>; Wed, 05 Dec 2018 13:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8wNqsrCJz2JIUJx6oyFroGCE1eMJLOajyBY6v7EJizI=;
	b=MGUB7l4piH+BrO22++4QXlTEINx7IfP9DCAr+ahLb76VmnLALzebtHxoUj5d6qMFtU
	ie3FaYyLYam0APSvhSymnFh3sbuoFBd5OCGqXNVxyX2eCOQQ2jL8dnQP33ESnCXRlbJ+
	KJykj08xmZX2x0uh5Lc3GPlGvtHmreDLjOC/ea6E648VSzehjqofxGd0ma4Ro7DzxC6W
	s/voxGb/H2dgmPkHU0ZqtqjQQM26BdWdev7uKZ4T1BoEnik0KcFSf9YTzN5qcBauF6Gq
	SpWJvCEURKKzsw8jAslbJhIGqMSVW9q+QazWQN/PfjWUw3z05SEJm9jiovNGcMZQ+gv1
	gVAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8wNqsrCJz2JIUJx6oyFroGCE1eMJLOajyBY6v7EJizI=;
	b=VJ8XCg24NFK/yTe57brCa9f8zn2d+YexDehXQHHH65KXeVgp5irJ86BMWmi900AdFW
	0fDni+kcjDaGV/8XOdHmcnq44gmIhGM2T3Wp0b/rUW2awuKRZ/C5FGbawAewrKptddS6
	tEqERTCRK/LqNEz6Nlpz5MTIMv3x+Ev+2K5NP49IpjjPccz1PSEmqOnSNRjsg98eTKL5
	brP5vcWMg1LRMYzor1WM/UgXVVm/kIVf/qC2SIdRd3y7HzJPp/jpXbssFbG2JFL5nqDg
	goUMLYZ4jTmfCxG1HgSW8WerxE+BqKB6JrIDWETm1SVvHoPHkGEEdA1QjLswlzjfh4Wx
	7L5w==
X-Gm-Message-State: AA+aEWYlYWOrWNPBAyYxRdv7ELlGxMkixxph64NsvK5o0EnoJ7vWSPW1
	cRQfj3dEYRihqHqPBUMl8/l7rpYSPZyd+mOn9oE=
X-Google-Smtp-Source: AFSGD/X4KiRzQFQ28DxD6szOxr4QHg+tM/BlDwvX+Xft71BftV1TMAykvfy+8zEGxRNc1ZIol1rvlcaF2dafjXCSJvU=
X-Received: by 2002:a02:2303:: with SMTP id u3mr23885179jau.42.1544044182657; 
	Wed, 05 Dec 2018 13:09:42 -0800 (PST)
MIME-Version: 1.0
References: <CAODQEo1qPsWW1apiEwzgey8cJitsbODDdg2VK4Bmi3s8wLV83A@mail.gmail.com>
	<60a92b2f51dc9156466abc8f89c8fa9d34f8cf3b.camel@gmail.com>
In-Reply-To: <60a92b2f51dc9156466abc8f89c8fa9d34f8cf3b.camel@gmail.com>
From: John Unland <unlandj2012@gmail.com>
Date: Wed, 5 Dec 2018 15:09:31 -0600
Message-ID: <CAODQEo1o+YF_HcDrks_-yEY+7xQ-dvX8znSLDzm_Eam_1ztmFw@mail.gmail.com>
To: jpewhacker@gmail.com
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 05 Dec 2018 21:09:44 -0000
Content-Type: multipart/alternative; boundary="00000000000006665a057c4ccddb"

--00000000000006665a057c4ccddb
Content-Type: text/plain; charset="UTF-8"

>
> Fixed on master:
>
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=1da297d35411e923ca3b6accdd37074f5182f019
>
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=5dd8df08c51bc4cc1ef0d5be7656c9bfcf938cca
>
> They should probably be backported to thud.
>

Glad it wasn't anything on the config end par say, would this be a
candidate to log a bug for?

Thanks!

--00000000000006665a057c4ccddb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div>Fixed on master:</di=
v><div><a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?i=
d=3D1da297d35411e923ca3b6accdd37074f5182f019" target=3D"_blank">https://git=
.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D1da297d35411e923ca3b6accd=
d37074f5182f019</a></div><div><a href=3D"https://git.yoctoproject.org/cgit/=
cgit.cgi/poky/commit/?id=3D5dd8df08c51bc4cc1ef0d5be7656c9bfcf938cca" target=
=3D"_blank">https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D5d=
d8df08c51bc4cc1ef0d5be7656c9bfcf938cca</a></div><div><br></div><div>They sh=
ould probably be backported to thud.</div></blockquote><div><br></div><div>=
Glad it wasn&#39;t anything on the config end par say, would this be a cand=
idate to log a bug for? <br><br></div><div>Thanks!<br></div>

</div><div dir=3D"ltr"><br></div></div>

--00000000000006665a057c4ccddb--
