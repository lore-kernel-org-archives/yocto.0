Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EE28E00DDE; Tue,  6 Oct 2015 06:24:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C930BE00A81
	for <yocto@yoctoproject.org>; Tue,  6 Oct 2015 06:24:04 -0700 (PDT)
Received: by vkgd64 with SMTP id d64so117227945vkg.0
	for <yocto@yoctoproject.org>; Tue, 06 Oct 2015 06:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ktjbtXBzdlVXwMw883lxuVeUH5HDlH0S3JKRDbPbUhA=;
	b=hElzU79C9Myb/AaYBysCBAO6yeIvotKidVMWaJ9NwkjdCaHvmMR6rShwAr0etHa24n
	DCX+WKSa6iu1pO0arxLQ1LUEWc75ITJ2hY9D51H0MMtilMAn0EK9aKLwHRJHbem2tsh2
	IATxRanIPBgZ7RLRQnR72KAV+XCB5XpU6MhrjD3pThF0Vm1fTUMP5F6YLpJEKGbL40BO
	ybiGSI+29OpIdGj64WMTXWVbcX1Byj9Gour8D75CcuAZSTeSUmoaBemo4pkHJlVCdVzm
	/rOB9SnsCSuiLnwdz0zX3R+/0ySZPDhjehl6GsSID6nrT/uqZrv17NluUgvINFJbQULi
	gJWg==
MIME-Version: 1.0
X-Received: by 10.31.172.70 with SMTP id v67mr24366481vke.47.1444137843834;
	Tue, 06 Oct 2015 06:24:03 -0700 (PDT)
Received: by 10.31.179.207 with HTTP; Tue, 6 Oct 2015 06:24:03 -0700 (PDT)
Date: Tue, 6 Oct 2015 18:54:03 +0530
Message-ID: <CALLyC8Tuhi2kD7XNUdo8EfTpTYCB8EgYHNLi2N9iaeMRO27q9Q@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: yocto@yoctoproject.org
Subject: Why RDEPENDS wont install packages in rootfs
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
X-List-Received-Date: Tue, 06 Oct 2015 13:24:05 -0000
Content-Type: multipart/alternative; boundary=001a1144061430454605216f8b52

--001a1144061430454605216f8b52
Content-Type: text/plain; charset=UTF-8

Hi,
     I am including RDEPENDS += " <package>" variable in rootfs-image.bb .
why RDEPENDS won't install packages in roofts. I can install packages
through IMAGE_INSTALL.can any one tell me the  reason why RDEPENDS wont
install packages in rootfs  .


Thanks and regards
     vivek

--001a1144061430454605216f8b52
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>=C2=A0 =C2=A0 =C2=A0I am including RDEPENDS +=3D &=
quot; &lt;package&gt;&quot; variable in <a href=3D"http://rootfs-image.bb">=
rootfs-image.bb</a> . why RDEPENDS won&#39;t install packages in roofts. I =
can install packages through IMAGE_INSTALL.can any one tell me the =C2=A0re=
ason why RDEPENDS wont install packages in rootfs =C2=A0.</div><div><br></d=
iv><div><br></div><div>Thanks and regards</div><div>=C2=A0 =C2=A0 =C2=A0viv=
ek</div></div>

--001a1144061430454605216f8b52--
