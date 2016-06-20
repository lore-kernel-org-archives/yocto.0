Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3001E008BC; Mon, 20 Jun 2016 10:44:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,PLING_QUERY,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A54A5E00815
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 10:44:56 -0700 (PDT)
Received: by mail-vk0-f53.google.com with SMTP id t129so205182090vka.1
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 10:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=/44lL/FBmMZGHYnjMPaRbC14yASr2CYdRlaFothWNlI=;
	b=d4qLkNfDSOMzyMyUA9puy8ErtmzxHOu863qF3Dp03re+dPBTjXvz6NAY9Hw7co1oGm
	nrgdMmyY1QkwOBLi8rhsRR3OyMFdh966M0YVAU7qiPtdil4idlKuG/svRFzXrAr4TGfU
	a9zc0ph0KB3NCfvfIgnvvG/W7H0qA0Oe6HvEVrlXfQM+mamkcwKglx5Lnq4t85YxQK8K
	8cTlO03uTag4HXHVWcsiZjI2O4czEYT/oRg3lZauSNQVZ5MIgBhJqgwrmEeTC8ukSimW
	JAnKwvgkpxMRtNe2dxFwuc2MbIecgLht4jkgguJzzu779/LlBHdlHPt8rc/AZBY4JoMD
	FAog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=/44lL/FBmMZGHYnjMPaRbC14yASr2CYdRlaFothWNlI=;
	b=izpw6JY/2kYgYvcm7iQ/bK76ci4MDxDEBrQScS3zlYxFAy/JBrKcto094BeXs1ajJO
	hKkCF8D7MGkpkWnW+A/mnL4IpbTmGzGjBL8qNvwDgeZPDedNE8AHxmBkwtE4tB8OwNde
	4VBRArwwHeBTzyAZBRGN6Iuv86mFCihBIM1T5vpA6jCClnsOJOEHGapxL0sxhp6UheZ3
	SbSBvJGYWApMdyKOMvQ9PsHr7yI3YJC+Q+DWyua1z+qK9AZyaxsx9947nxybWrLo3w9k
	V8zsdBkTcIri8VjeDUGNRYplGaPX0Z5wJVnxj0I+tp80BJkkWEeF4KSHkcurVEYZ0al6
	BYFA==
X-Gm-Message-State: ALyK8tJbdxoTaMBrRKSLI/MqsdY3ywcF94CYsM6YT+SgoRqHPxWXkIpAI2vaGDvQqO9axWCYcPeRmGtI5FZlXw==
X-Received: by 10.159.33.175 with SMTP id 44mr7202493uac.142.1466444694853;
	Mon, 20 Jun 2016 10:44:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.50 with HTTP; Mon, 20 Jun 2016 10:44:54 -0700 (PDT)
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 20 Jun 2016 14:44:54 -0300
Message-ID: <CAF3SDA5fWG_WyHHYAFDu3ZkRmv6ba+aV_8Ph6dy5avy71SQWsg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Crosscompiling python extensions with yocto generated toolchains!?
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
X-List-Received-Date: Mon, 20 Jun 2016 17:44:59 -0000
Content-Type: multipart/alternative; boundary=001a113d06fe1ea5aa0535b943a9

--001a113d06fe1ea5aa0535b943a9
Content-Type: text/plain; charset=UTF-8

Hi everybody..

I've been playing with python extensions. Now I want to compile a simple
hello world extension
to my Yocto's target, but I really can't find any good resource about doing
it. So what is the teory behind it?

I know that I need python headers "Python.h and others" and that I need
distutils installed. After that everything is done by distutils and
setup.py script, but what is done is a mistery. I found distutilscross on
internet but no documentation about it!?

How are python extensions cross-compiled by Yocto? Can somebody point me an
example?!

Regards,

-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a113d06fe1ea5aa0535b943a9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi everybody..<br><br></div>I&#39;ve been p=
laying with python extensions. Now I want to compile a simple hello world e=
xtension<br></div>to my Yocto&#39;s target, but I really can&#39;t find any=
 good resource about doing it. So what is the teory behind it?<br><br></div=
><div>I know that I need python headers &quot;Python.h and others&quot; and=
 that I need distutils installed. After that everything is done by distutil=
s and setup.py script, but what is done is a mistery. I found distutilscros=
s on internet but no documentation about it!?<br><br></div><div>How are pyt=
hon extensions cross-compiled by Yocto? Can somebody point me an example?!<=
br><br></div><div>Regards,<br></div><div><div><div><div><br>-- <br><div cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div style=3D"tex=
t-align:right"><i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=
=A0 </i><i><b>Yoda Master</b></i><br></div></div>
</div></div></div></div></div>

--001a113d06fe1ea5aa0535b943a9--
