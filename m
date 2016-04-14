Return-Path: <charles.krinke@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FF0EE00E64; Thu, 14 Apr 2016 10:36:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (charles.krinke[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
Received: from mail-vk0-f45.google.com (mail-vk0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27558E00D7D
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 10:36:02 -0700 (PDT)
Received: by mail-vk0-f45.google.com with SMTP id c4so118249543vkb.3
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 10:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=8WvZN6KcUnICUkKG2BvHnDCDspm/ezvfKEcSjGWikfA=;
	b=mqptZZqGY06lhv2LSBFFhufqFAdzpWYJrUn1xQbCmefTMOynFPH0IwR/FOP1bXxcvd
	XLwdDBomAmQem9KCL9T6zuquTR/TbddfqDXMRQHZJ0kMD578dEUlcr5FkqByxlZF1VjO
	M6kU5A8iMjzK6HaibWkDh4PETOiMtWAgGdQt7zM2DKD0NyimdytbSlBDgWHWV8ZwxXGB
	zA2sqbuud6XqTZSiezF/23G2XnozVsyfmKYmeDz8GnU8rrDefTSt4aaZmqK4JcG/HZf7
	QveOuj064lOthEvha7Ki3ob4mrLiPo6fI2RRynrasjxTQ/SDla8tPMm2N1+/css8kxTE
	P+6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8WvZN6KcUnICUkKG2BvHnDCDspm/ezvfKEcSjGWikfA=;
	b=ZrpmBW4JlCPst9oeQn067QZG6j37n5YrijsZpVOwP3mfx0IpniNjDeXqsKCHJgRAvf
	I6nRhgXySWRM01Xtivqp1E88tNbX/8CAYbYtdmbbwt2Nj5I3EpCfDfUowLf8X4rOpYXT
	n8cRQVr5l5n4XpNfglszqLh5QUsaLrzydU4+6iNiU3ub6d6JdHfPD4UfW210T8BxBuTb
	dsf9QuahFHDueMG5lBKJsFwE50nr9yDD0sNKy7CzBHm6ycZHjyQdO/TemDbjIaUqkfHq
	rI02SxwCgZ1Ttn5HX7wFSmUs+xAanbSNv6f828EenMWn9Xe6Ky1q9VpHSnZZlRh/9enz
	c7pA==
X-Gm-Message-State: AOPr4FXSqOdwsiZzl5q48vW+i7g5xSWXd5wA0jDvOsgMrb0AH5CCyoxDpHhRv5Oyn3VklpZiLxjr0PNm0HcpSw==
X-Received: by 10.31.52.147 with SMTP id b141mr8207029vka.82.1460655361795;
	Thu, 14 Apr 2016 10:36:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.180.80 with HTTP; Thu, 14 Apr 2016 10:35:42 -0700 (PDT)
From: Charles Krinke <charles.krinke@gmail.com>
Date: Thu, 14 Apr 2016 10:35:42 -0700
Message-ID: <CALo-6+hwVYUev6Mit_-myyT26brPm0VX+LxFPDm6JySNULdsnA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Understanding Yocto
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
X-List-Received-Date: Thu, 14 Apr 2016 17:36:07 -0000
Content-Type: multipart/alternative; boundary=001a1143f846faacd405307553d7

--001a1143f846faacd405307553d7
Content-Type: text/plain; charset=UTF-8

I am trying to build an imx6 bsp and having a little trouble with the
"repo" command.

Can someone help me understand how to apt-get this package into my
development system, please? "sudo apt-get install repo" fails, so I suspect
it needs a name with version or a slightly different name.

-- 
Charles Krinke

--001a1143f846faacd405307553d7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am trying to build an imx6 bsp and having a little =
trouble with the &quot;repo&quot; command.</div><div><br></div><div>Can som=
eone help me understand how to apt-get this package into my development sys=
tem, please? &quot;sudo apt-get install repo&quot; fails, so I suspect it n=
eeds a name with version or a slightly different name.<br clear=3D"all"><br=
>-- <br></div><div class=3D"gmail_signature">Charles Krinke<br><br></div>
</div>

--001a1143f846faacd405307553d7--
