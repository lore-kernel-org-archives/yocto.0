Return-Path: <chuckwolber@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B4E9E00AD5; Thu, 26 Sep 2019 20:06:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (chuckwolber[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.193 listed in list.dnswl.org]
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04E7AE00867
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 20:06:51 -0700 (PDT)
Received: by mail-qt1-f193.google.com with SMTP id w14so5474070qto.9
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 20:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=D6dRZzYz0rbFvdBkqT4ARrzMG3REEsX0g+mLPhclMtw=;
	b=FWu7jSbu6dSdZwVzZI7OTVoRLfHNjlr/SW9J9WGOcvfkFhUo6M8/5KdJmHclE0Tk14
	53A71fp90evYJE6LWFwcnKcIuco/HAusgU2aj2rOytb24Xnp8j1M0TyQxaP4W/MAc0Io
	VXbu4h5zd5Yrirh+NGGwnq+hXH6H8/a+Q8DtonEOxzgAb35ClKu2Gpcm/v80wtqg8rjf
	WttvrTrGReAQlZBMIub3Ze7Y011Sy0XrQIBN+wlqsmHl/10XMzVsjS/kRzu30uaoaQa4
	K3vDF9A0dsVCFIz9qDsPe9QwDFsWNZyszHyqsOOvgyrHyPotZ8quJ6z/eIg2wgx5peNZ
	+63Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=D6dRZzYz0rbFvdBkqT4ARrzMG3REEsX0g+mLPhclMtw=;
	b=jME071wmTvBC06gCqHzliove26gSZwidpFVKn1KpyrtTT/6SsYdD52WzAtki7TPavd
	mVvM3GxH6SVkWmLO6Tn0Rtsj2DZ6iRLpeMg11rhvrfg/CfESErvTrmANlu7OwExpg6aP
	bHkjXZ7AydAhs0ZYzJPDW4u2Q5oieQj0S1IZSNaMktT8S97qmcO+hQhy6pmFSd+iuSFG
	FM+YkNCzovmJxjgOf+0XqOqzhEMQPQGLDOGa7T4OcISTXn0okEvkmJYoaCGt53PJaHsI
	teOJCsG/HQnJ8ZTtla9Ms5wqwpqh6ZPkThY8cCbOElhC9dzR0O3wYflji5R5TsoT1LWu
	HkKA==
X-Gm-Message-State: APjAAAVrDQfHcYcGh4CrF3fKIbjhPzfzLeH3NId6u6rBHkziIwXaDHlX
	tNv+Rd1cVdcWsAmFrGJfCJBAuP7a6fZ8KdzIKccRHA==
X-Google-Smtp-Source: APXvYqybIjy6bpQurw/nsAxSjAa8QAeXhTWy4jqFczP6bS9xStBOjimIiO4CQHBG9fmNXQCqTEfbvpr5LoemQax7Nd8=
X-Received: by 2002:ac8:1417:: with SMTP id k23mr1187175qtj.93.1569553610876; 
	Thu, 26 Sep 2019 20:06:50 -0700 (PDT)
MIME-Version: 1.0
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Thu, 26 Sep 2019 20:06:40 -0700
Message-ID: <CAB=6tBRdpccrvRR9fWZW2BwTsgUgggr2KSadK4wB2kmqsaQC+g@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Downloading Git Archives
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
X-List-Received-Date: Fri, 27 Sep 2019 03:06:53 -0000
Content-Type: multipart/alternative; boundary="0000000000006ead4e0593802d7b"

--0000000000006ead4e0593802d7b
Content-Type: text/plain; charset="UTF-8"

Hi All,

Our build environment is stuck behind a firewall with no access to the
Internet. When a Yocto build requires a new package, we normally extract
the URL from the failed build log and "wget" the package from the upstream
source, do our due diligence (checksums, etc), and then add it to the
server pointed to by ${LOCAL_MIRROR}.

Obviously that procedure does not work so well when a git repository needs
to be fetched. We have tried various methods, but nothing seems to work
reliably. Our current method is an annoying hack involving a virtual
machine clone of the build server.

I have searched far and wide, and cannot find any sort of procedure. Can
someone point me at a procedure for translating something like git://
git.yoctoproject.org/pseudo into a file we can store in our ${LOCAL_MIRROR}?

Thank you,

..Ch:W..

--0000000000006ead4e0593802d7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>Our build environmen=
t is stuck behind a firewall with no access to the Internet. When a Yocto b=
uild requires a new package, we normally extract the URL from the failed bu=
ild log and &quot;wget&quot; the package from the upstream source, do our d=
ue diligence (checksums, etc), and then add it to the server pointed to by =
${LOCAL_MIRROR}.</div><div><br></div><div>Obviously that procedure does not=
 work so well when a git repository needs to be fetched. We have tried vari=
ous methods, but nothing seems to work reliably. Our current method is an a=
nnoying hack involving a virtual machine clone of the build server.</div><d=
iv><br></div><div>I have searched far and wide, and cannot find any sort of=
 procedure. Can someone point me at a procedure for translating something l=
ike git://<a href=3D"http://git.yoctoproject.org/pseudo">git.yoctoproject.o=
rg/pseudo</a> into a file we can store in our ${LOCAL_MIRROR}?</div><div><b=
r></div><div>Thank you,</div><div></div><div><br></div><div>..Ch:W..</div><=
/div>

--0000000000006ead4e0593802d7b--
