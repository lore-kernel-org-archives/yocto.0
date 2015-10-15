Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E810E00AC1; Thu, 15 Oct 2015 04:03:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
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
	*      [209.85.213.48 listed in list.dnswl.org]
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A873EE00A49
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 04:03:25 -0700 (PDT)
Received: by vkex70 with SMTP id x70so39644391vke.3
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 04:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=m7YM0/mdxaQhAmfq55N2Mkozw5Rr2dhkXxNG8MP7LDk=;
	b=GutZQAqr5uIqZ6KOmBOmarXTdpoSEOMvA9HJhBC8UmIOUZyRHZeEABcFRJj2JPlhCs
	Q5CTKhr/LUyxZgNsrGpnkFoEQ2aC8tHfvXzbio04rfNPyXv/N2adGqrqiYi0GdMrl5dg
	GuhOLkOrPFEpFLtWB6yR76uyvV6sCmQjs1CMuEHeUQMrsO/pk4T40X9Y75ZMvyMHgHaf
	PowQ9HVrEZLJscb2bKLdHAsxYEIA4hYUw6uWYJXwAYbK1i5nCW45dROCaIYs5CfqrXqK
	0ZdUH6rNb7kcFZBD6rfgJuA1ItAplbo5SuXtLRHRA6arq5wP7OveEPf2RcnHCZBsoq1n
	WCuw==
MIME-Version: 1.0
X-Received: by 10.31.107.18 with SMTP id g18mr5424369vkc.6.1444907005264; Thu,
	15 Oct 2015 04:03:25 -0700 (PDT)
Received: by 10.31.179.207 with HTTP; Thu, 15 Oct 2015 04:03:25 -0700 (PDT)
Date: Thu, 15 Oct 2015 16:33:25 +0530
Message-ID: <CALLyC8TnwQ8E6odivqp2XeQ_5DbQTBmNHUsmHQkc2yzV_VdBpA@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: Can i add two git sources in one single recipe
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
X-List-Received-Date: Thu, 15 Oct 2015 11:03:30 -0000
Content-Type: multipart/alternative; boundary=001a1147871ec84fea052222a0ce

--001a1147871ec84fea052222a0ce
Content-Type: text/plain; charset=UTF-8

hi,
      Can i add two git source url in one recipe(SRC_URI).
If so how can i add and how can i give source revision for two these files
in one recipe.
Can any one overcome this iissue.
   Thanks in advance


-vivek

--001a1147871ec84fea052222a0ce
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hi,<div>=C2=A0 =C2=A0 =C2=A0 Can i add two git source url =
in one recipe(SRC_URI).</div><div>If so how can i add and how can i give so=
urce revision for two these files in one recipe.</div><div>Can any one over=
come this iissue.</div><div>=C2=A0 =C2=A0Thanks in advance</div><div><br></=
div><div><br></div><div>-vivek</div></div>

--001a1147871ec84fea052222a0ce--
