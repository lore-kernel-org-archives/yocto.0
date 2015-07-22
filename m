Return-Path: <dakuit00@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59408E009BE; Wed, 22 Jul 2015 00:33:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dakuit00[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E820E0096A
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 00:33:32 -0700 (PDT)
Received: by lbbqi7 with SMTP id qi7so50510064lbb.3
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 00:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=coSSvbrQFskxVlF0DxSfbwYm/psHJh0GaUxY45Ya8fE=;
	b=y9YFAr71jtUlT54qjcz+CSOL4xsMFAoGYYKPgw95mZ42t4KYAUyxDK2FgVWTz0ZzDp
	dxX8KZx5it512Rg4FkfJU8w9wjnenoiCKn1QOnwDWQ/9LLAk8WAEE4fw0VwXKXpQNvvN
	IJPLGczmcqu6rqeIH2zP6eTIQl6FJs90e+TRLkY2seuMh0QARyuezVKbsRB7kaY35XsO
	M8tN1zX4RDmHAn+Hg0sLVPmqwIR/hQEF1ZkWV78ymz/t4actudhfWMQJZgnY402Ndhat
	muXgl/BfEN0FqtI+wEpsg75psiEzNb5HmvBFH6wmzVzMa6S5sDnrBI+RStNX7/uMrHA0
	HC6w==
X-Received: by 10.152.37.228 with SMTP id b4mr967860lak.117.1437550409669;
	Wed, 22 Jul 2015 00:33:29 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Kuhne <dakuit00@gmail.com>
Date: Wed, 22 Jul 2015 07:33:20 +0000
Message-ID: <CABEeoJV2CXbGtu1UnFZGtg-Snxj7+J9_RBb32EDzhq=LdH5D_Q@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 22 Jul 2015 14:34:49 -0700
Subject: VMDK image not booting
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
X-List-Received-Date: Wed, 22 Jul 2015 07:33:37 -0000
Content-Type: multipart/alternative; boundary=089e014939fc83e1ae051b71c982

--089e014939fc83e1ae051b71c982
Content-Type: text/plain; charset=UTF-8

Hello,

my vmdk image is not booting into systemd. But my iso image does.
It is similar to
https://lists.yoctoproject.org/pipermail/yocto/2014-August/021218.html

I use fido with meta-intel.

Cheers,
Daniel

--089e014939fc83e1ae051b71c982
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello,<br><br></div>my vmdk image=
 is not booting into systemd. But my iso image does.<br></div>It is similar=
 to <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2014-August/0=
21218.html">https://lists.yoctoproject.org/pipermail/yocto/2014-August/0212=
18.html</a><br><br></div>I use fido with meta-intel.<br><br></div>Cheers,<b=
r></div>Daniel<br></div>

--089e014939fc83e1ae051b71c982--
