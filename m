Return-Path: <rkocisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3CB8E00B30; Fri, 23 Oct 2015 10:43:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rkocisko[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC256E00B23
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 10:43:51 -0700 (PDT)
Received: by iofz202 with SMTP id z202so131356648iof.2
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 10:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=XS1ssg+eq4TBqY2eDE/qkR8pa0SF8QeVKj0siIzZWao=;
	b=fT1M1gRZXkms9Lpd8jYi3/mM/BsWdNiSnXGgMmbWhRlK6WEoCHk5gXu+6gsMOb3D1b
	B0MeQiey/NVtk6OvLiSFt/PAH7mrmsfWFRBmOOkwkJzQ2uOB3y2RxUk+t5uyYzBgJmd7
	M7LKJEbkfzBp2QsgpZCeRATWlRqSBXK3DW8Xh8RAnN2LbK/fSlDww/HsORUBTnFgPlh/
	nZDPl6cwv20rf1XXhsp17akhRcGDGS54msY9fAeBk3vrUoM1v+GA2vAGuYVa1/QOnFC5
	Wv4oUmE/sOCga7E5CkUxnOf/9Jnye5HJVnghQxatvjiVfDQpcNCEEtN0BVqYXtuFuuz2
	gwmA==
X-Received: by 10.107.169.167 with SMTP id f39mr23185122ioj.104.1445622230378; 
	Fri, 23 Oct 2015 10:43:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.146.135 with HTTP; Fri, 23 Oct 2015 10:43:30 -0700 (PDT)
From: Robert D Kocisko <rkocisko@gmail.com>
Date: Fri, 23 Oct 2015 13:43:30 -0400
Message-ID: <CAGF=AeRkNUv6zV=LyP6WvhSMd7BQgO8xD5jnyFop+RDf+G=v7Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Turn off X screen blanking
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
X-List-Received-Date: Fri, 23 Oct 2015 17:43:52 -0000
Content-Type: multipart/alternative; boundary=001a11427cf88592fc0522c92795

--001a11427cf88592fc0522c92795
Content-Type: text/plain; charset=UTF-8

I am trying to disable screen blanking in X by default.  This bug talks
about doing the same thing but it is not currently completed:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=7278

I am using "dizzy" for compatibility with the meta-amd layer.  I found the
xserver-common recipe in meta-oe and I suppose I could add another patch
like 0015-xserver-common-disable-TCP-connections.patch, but I'd rather do
it using a .bbappend file in another layer.  My question is how I might go
about doing that using a bbappend file?

Thanks,
Bob Kocisko

--001a11427cf88592fc0522c92795
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am trying to disable screen blanking in X by defaul=
t.=C2=A0 This bug talks about doing the same thing but it is not currently =
completed: =C2=A0<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?=
id=3D7278">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7278</a></di=
v><div><br></div><div>I am using &quot;dizzy&quot; for compatibility with t=
he meta-amd layer.=C2=A0 I found the xserver-common recipe in meta-oe and I=
 suppose I could add another patch like=C2=A00015-xserver-common-disable-TC=
P-connections.patch, but I&#39;d rather do it using a .bbappend file in ano=
ther layer.=C2=A0 My question is how I might go about doing that using a bb=
append file?</div><div><br></div><div>Thanks,</div><div>Bob Kocisko</div></=
div>

--001a11427cf88592fc0522c92795--
