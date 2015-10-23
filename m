Return-Path: <durotimi1234@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A242E00B23; Fri, 23 Oct 2015 11:00:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_QP_LONG_LINE, 
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (durotimi1234[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D9C7E00B23
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 11:00:53 -0700 (PDT)
Received: by qkcy65 with SMTP id y65so84257214qkc.0
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 11:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:from:content-type:message-id:date:to
	:content-transfer-encoding:mime-version;
	bh=Lj3lvrWm/t+G6hbB8x9j6CRUBFGI9vet6p754I7c6dM=;
	b=fS50UXl2XCRA7S3Xo9lVaX3GPz4C65tLxqEiTlkvNqbmLCKmgD5wQ+lTlMIGt5trtC
	i+Gfn77G3yRz1GE7Qd9Ua1TgEUVnw6Acppoz6Dc+/ZTzhgLm6/D2YAg4+0LkYpp9JmnQ
	buWM/oQ4bBn3aL1yX0TRDBChKpFNVfybJddcfc+ThcUzJxmb6SssfHAFFSjK8OQwwnJM
	K37Whiwvx634BTVsUfguK9WngcAnC59gpONvQUsf25HjX+p9JmKYAI37eWIGiIhpZtpb
	5PKpwiep1rssu5YQHpIUzphZvOvWzIv6wfCD4HhebOlss3GHPbS2QffIi9HyrgoflMjO
	pBtg==
X-Received: by 10.55.204.143 with SMTP id n15mr26984017qkl.16.1445623252743;
	Fri, 23 Oct 2015 11:00:52 -0700 (PDT)
Received: from [10.76.110.181] ([166.170.28.116])
	by smtp.gmail.com with ESMTPSA id w3sm7850317qha.0.2015.10.23.11.00.51
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 23 Oct 2015 11:00:52 -0700 (PDT)
From: durotimi1234@gmail.com
X-Mailer: iPhone Mail (11D257)
Message-Id: <C748A84D-1FB6-46DA-BAD1-6FE6E0A82E76@gmail.com>
Date: Fri, 23 Oct 2015 14:00:45 -0400
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Mime-Version: 1.0 (1.0)
Subject: External Build
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
X-List-Received-Date: Fri, 23 Oct 2015 18:00:55 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-AA4541F4-42E0-4937-BAD2-9D1D361B8F0C
Content-Transfer-Encoding: 7bit

--Apple-Mail-AA4541F4-42E0-4937-BAD2-9D1D361B8F0C
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hello everyone,
I am a novice to Linux and poky and I am having a bit of a challenge with co=
mpleting the quickstart steps. I have installed poky on my host computer but=
 I want to=20
install the build directory on an external harddrive. Every time I run throu=
gh the steps I run into an error, no matter what I do.
Is it possible to install poky on the local drive and have a build on an ext=
ernal drive? Is there a workaround?
Any advice will be helpful.


Thanks,
Durotimi.=

--Apple-Mail-AA4541F4-42E0-4937-BAD2-9D1D361B8F0C
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head><meta http-equiv="content-type" content="text/html; charset=utf-8"></head><body dir="auto"><span style="background-color: rgba(255, 255, 255, 0); -webkit-text-size-adjust: auto;">Hello everyone,</span><br><p><span style="-webkit-text-size-adjust: auto; background-color: rgba(255, 255, 255, 0);">I am a novice to Linux and poky and I am having a bit of a challenge with completing the quickstart steps. I have installed poky on my host computer but I want to&nbsp;<br>install the build directory on an external harddrive. Every time I run through the steps I run into an error, no matter what I do.<br>Is it possible to install poky on the local drive and have a build on an external drive? Is there a workaround?<br>Any advice will be helpful.</span></p><p><span style="-webkit-text-size-adjust: auto; background-color: rgba(255, 255, 255, 0);"><br>Thanks,<br>Durotimi.</span></p></body></html>

--Apple-Mail-AA4541F4-42E0-4937-BAD2-9D1D361B8F0C--
