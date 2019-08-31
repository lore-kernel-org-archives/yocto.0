Return-Path: <sateesh0457@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66278E00E10; Sat, 31 Aug 2019 02:38:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sateesh0457[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 370D8E00BFF
	for <yocto@yoctoproject.org>; Sat, 31 Aug 2019 02:38:44 -0700 (PDT)
Received: by mail-ot1-f42.google.com with SMTP id 21so1830838otj.11
	for <yocto@yoctoproject.org>; Sat, 31 Aug 2019 02:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=bfnrQtX1NnT7wlKE0VksmvJUaDd8vj84kvabbb8hmEk=;
	b=tWk3grGgyxGs354fVBKSjrlmS0v6VV5R+odiVZADK2yQnt3X64lxJNr06XSbTON9yg
	PqL6E12n8MLiM53iAcjk7Nf8Mc0b6vJ/o7ZY8LNVDuOhB7Ey/H9+3DgFFcV/iHpfF1r4
	ZSoPREMYTWH5olUmHsKaLRqPKDkyBLgKAMFi6T3ijNoVP2lhSG1WMHtGD5KYlalp194d
	/VB5vLn7OQe3XHLFiaa/NJrzTG7aLuAaXjM9FbivIBC9MS04VSpz4QmYNCyIs7yp58BH
	KOTAZr29uRnt6dqq3d3pI1PCO91zFJZZuTBNOncS8/Qhbj4Ai/8AK+bwdh88esr2P7jk
	HVJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bfnrQtX1NnT7wlKE0VksmvJUaDd8vj84kvabbb8hmEk=;
	b=WnAngOsnQD/hno8cbTt/tNe18njeQLR4/W/W2JdSb71r1tkdDwJnR/gRWnQKy5EJWD
	qM04qgwT0Pl++pZ5oJnXD35iphoV+TBqv1FCRYw8MKjUV4wXFpCyHpIVFKBDh0/I/owz
	cUl+G+aVFSD9BjCyBcu8FvMuAs4I+XP11EcobJMde53Ttii1kUA6RdNI/CVUlniq1JMg
	8xpwJUnjhNUpyWdJClzgyo7HW8P983xL2/+t3JMqqh55mRG5Q++JHQnJA3j9B/9cEdOl
	o/SWYmU56kFzF1vqAe/O+grj1eWhVNQtXTZOulKHd8Y8WjhieVb8HgxQUKfffwxkajhq
	vSjg==
X-Gm-Message-State: APjAAAVYza6RbigHZGdhOzY+Fp0yOFk6O0eYwwg8p2sxqruP2Pamoj3E
	Z4UgIsLXmocz+9QVs4MbaI+8RVI5ReblrN5/DJBjJHU4Kqk=
X-Google-Smtp-Source: APXvYqz2X9RGYfwmRG/SfJtNQpxnd7QCz/T51OvqMZcjr7SHf4yondWAncz66p54z3o9BfapnZOE1n/YPPluh53lYF4=
X-Received: by 2002:a9d:152:: with SMTP id 76mr3499455otu.18.1567244323544;
	Sat, 31 Aug 2019 02:38:43 -0700 (PDT)
MIME-Version: 1.0
From: sateesh m <sateesh0457@gmail.com>
Date: Sat, 31 Aug 2019 15:08:32 +0530
Message-ID: <CACsETSsjtVOpXdR6_oWisx2LZM4hkKr37NfT+WmS_goDUZTO8g@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 02 Sep 2019 05:42:13 -0700
Subject: ptest-runner yocto build sytem issue
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
X-List-Received-Date: Sat, 31 Aug 2019 09:38:47 -0000
Content-Type: multipart/alternative; boundary="0000000000002e630e0591668110"

--0000000000002e630e0591668110
Content-Type: text/plain; charset="UTF-8"

Hi, I am new to Yocto. I am working on ptest-runner.
I followed the wiki https://wiki.yoctoproject.org/wiki/Ptest , but when I
boot to my image and run ptest-runner I have the output : "No ptests found."
Is this normal ? I thought that

DISTRO_FEATURES_append = " ptest"
and
EXTRA_IMAGE_FEATURES += "ptest-pkgs"

would install all the ptests for me in my image, apparently I am wrong but
could you please explain to me why this is not the case i.e why ptests are
not automatically installed in the image even though I included the above
lines in my local.conf ?

How to test my packages using ptest. can you share sample test or testing
procedure document .

Thanking you in advance.

Regards,
Sateesh

--0000000000002e630e0591668110
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, I am new to Yocto. I am working on ptest-runner.<=
br>I followed=20
the wiki <a href=3D"https://wiki.yoctoproject.org/wiki/Ptest">https://wiki.=
yoctoproject.org/wiki/Ptest</a> , but when I boot to=20
my image and run ptest-runner I have the output : &quot;No ptests found.&qu=
ot;<br>Is this normal ? I thought that<br><br>DISTRO_FEATURES_append =3D &q=
uot; ptest&quot;<br>and<br>EXTRA_IMAGE_FEATURES +=3D &quot;ptest-pkgs&quot;=
<br><br>
 would install all the ptests for me in my image, apparently I am wrong=20
but could you please explain to me why this is not the case i.e why=20
ptests are not automatically installed in the image even though I=20
included the above lines in my local.conf ?</div><div><br></div><div>How to=
 test my packages using ptest. can you share sample test or testing procedu=
re document .</div><div><br></div><div>Thanking you in advance.<br></div><d=
iv><br></div><div>Regards,</div><div>Sateesh<br></div></div>

--0000000000002e630e0591668110--
