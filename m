Return-Path: <jvp.vuorivirta@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C249E00AA6; Wed, 28 Oct 2015 01:07:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jvp.vuorivirta[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC4E3E00A9A
	for <yocto@yoctoproject.org>; Wed, 28 Oct 2015 01:07:32 -0700 (PDT)
Received: by igpw7 with SMTP id w7so23001638igp.1
	for <yocto@yoctoproject.org>; Wed, 28 Oct 2015 01:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=srwU8HfIUniFwn6ed3/pVuIpPT165sh4v/BVug2t2Is=;
	b=k0Swp5NQuQJ8q4w8Uqa0dBGo8eIcVoQKYy4HRWXJAGxuBga8S8u/igzvZ69o8KLKb9
	rqEux+n1ZxSJmczKqLJFVoM4CLQQwasWxUchhVspx8K/fQdhY9zVWhu7l4wZ1Ui87SHE
	8Z0uruuTGp4K24JhE477p6jB7O4rVvJv3jmtuP0rR1oQMkZoSwyCeYS1DlvhbStz6N49
	xv2ouNcjlm96lkPVsgVbrRI9Eg8eTLwffMgtPkW69AEs+f/M4UOlyb3bK4PJ+RodW5ls
	NPX/jUJ15usts93pnwcgYLFoDLu4lE3qAhbep7YmIXyZbTxDMZWBaH8pHZpXe1/OAcEz
	KXRg==
MIME-Version: 1.0
X-Received: by 10.50.50.179 with SMTP id d19mr1564688igo.91.1446019651742;
	Wed, 28 Oct 2015 01:07:31 -0700 (PDT)
Received: by 10.36.84.19 with HTTP; Wed, 28 Oct 2015 01:07:31 -0700 (PDT)
Date: Wed, 28 Oct 2015 10:07:31 +0200
Message-ID: <CAEpurxGQ9YK6x=6MNAvAM3UrhOzXAE1XQA49261tsTDnj_cSVQ@mail.gmail.com>
From: Juha Vuorivirta <jvp.vuorivirta@gmail.com>
To: yocto@yoctoproject.org
Subject: Set root password with SHA512?
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
X-List-Received-Date: Wed, 28 Oct 2015 08:07:33 -0000
Content-Type: multipart/alternative; boundary=047d7bd76b04ae3411052325af3a

--047d7bd76b04ae3411052325af3a
Content-Type: text/plain; charset=UTF-8

I'm able to set the root password in /etc/shadow with adding
ROOTFS_POSTPROCESS_COMMAND to .bb file. It seems that only DES works
(yocto/oe-core etc. layers are pretty old though). Is it possible to enable
SHA512 hashing for root password?
Just replacing DES password with SHA512 is not enough, could not log in
even password hash is correct in /etc/shadow file. Noticed that DES is
default encryption method(in recipes-extended/shadow/...), how can I set it
to SHA512, or is it even possible with this older set up?

br,


jv

--047d7bd76b04ae3411052325af3a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I&#39;m able to set the root password in /e=
tc/shadow with adding ROOTFS_POSTPROCESS_COMMAND to .bb file. It seems that=
 only DES works (yocto/oe-core etc. layers are pretty old
 though). Is it possible to enable SHA512 hashing for root password? <br></=
div>Just replacing DES password with SHA512 is not enough, could not log in=
 even password hash is correct in /etc/shadow file. Noticed that DES is def=
ault encryption method(in recipes-extended/shadow/...), how can I set it to=
 SHA512, or is it even possible with this older set up?<br><br></div>br,<br=
><br><br></div><div>jv</div></div>

--047d7bd76b04ae3411052325af3a--
