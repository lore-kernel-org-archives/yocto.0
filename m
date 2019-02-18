Return-Path: <luciosantinell@libero.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07306E00CC8; Mon, 18 Feb 2019 07:43:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (luciosantinell[at]libero.it)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [213.209.12.32 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Mon, 18 Feb 2019 07:43:09 PST
Received: from libero.it (smtp-32-i2.italiaonline.it [213.209.12.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 411F6E00CB6
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 07:43:09 -0800 (PST)
Received: from oxapps-10-060.iol.local ([10.101.8.70])
	by smtp-32.iol.local with ESMTPA
	id vl3XgRSvP6rc5vl3XgltW1; Mon, 18 Feb 2019 16:42:07 +0100
x-libjamoibt: 1601
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=libero.it; s=s2014;
	t=1550504527; bh=clpfew8hQwF7G47S7RXqT+v8WB02+H/mSRVLQQHu6zc=;
	h=Date:From:To:Subject;
	b=ihCuVcLVJUNEwQzicdlXUi98/RrZiyiCuDwwkaHlWiqC6Elf/KM7YWgTbynZ2Yw59
	oRefJWQYIfmNgmAaZTlG+XPcRKi5X1qpR7ZT0ANJ5JQpXFrosKRJoli45wkZBFFTD/
	6gnjrI+7FqKtB/4+DPo09+0M65QK0ywTQk0ykqbc3eQ08byZK8pX2cYXMxnADtqviu
	lYgXnB/gTy8PEWi0dJysPAL6qWynI93ZrY1/BC3ukXiWHPeHnORVz/02Wc0D3y1Wjl
	+Ftqhvx1g23B2ohhBJRy1wJVi5QOnNRXq6s0tr3IbHkCOfw0QHZLCbLkeB3sNqv+CZ
	8p/rzwSZUTxHw==
X-CNFS-Analysis: v=2.3 cv=d7kkNirE c=1 sm=1 tr=0
	a=N6tDZBjKOqonna1m1e4Nkw==:117 a=1VHoG3c1NY8A:10 a=1Y-2xJgGt1QA:10
	a=aUS2PXKd9D41fZA20poA:9 a=QEXdDO2ut3YA:10 a=7SgrHd5idjNJQWP2:21
	a=_W_S_7VecoQA:10
Date: Mon, 18 Feb 2019 16:42:07 +0100 (CET)
From: luciosantinell@libero.it
To: yocto@yoctoproject.org
Message-ID: <279332559.340239.1550504527934@mail.libero.it>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev52
X-Originating-IP: 87.9.31.50
X-Originating-Client: open-xchange-appsuite
x-libjamsun: Pavv5qasNc+JVmK69Ilaubp3+wAM0Rxe9KcfXQlJ7Yg=
x-libjamv: V7zdTxlcTvU=
X-CMAE-Envelope: MS4wfBVlsfKwYtNyXflkzOUaalm/UqYz7Yyn2KI4qRKSk1x3kWKWdZJYasbXYSyrfrdBsachJRzYY4JD8qRPTgywoYCiwrXc3OCgnVel+TPzlRa1MKUOQ0Ba
	QJvmI2083YKBG/TYSCHoVaV0prKlTBCzlfWvVby0tLnj5zMBvrTiEvYLubh9mRriMsqGD1TsIF8EGQ==
Subject: Add new compiler macro
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
X-List-Received-Date: Mon, 18 Feb 2019 15:43:10 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_340238_499166145.1550504527931"

------=_Part_340238_499166145.1550504527931
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, i wanted to add a compiler macro (NEW_MACRO) in order to compile all the code hidden beetween
#ifdef NEW_MACRO

#endif
in all my recipes. I think that the right place to do that is in bitbake.conf file present under poky/meta/conf but when i try to do: 

TARGET_CPPFLAGS += "-MMC_WRITE"

I get the error :
configure: error: cannot compute suffix of object files: cannot compile

How can i send the macro to the compiler in the correct way?

Thanks


------=_Part_340238_499166145.1550504527931
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html><head>
    <meta charset="UTF-8">
</head><body><p>Hi, i wanted to add a compiler macro (NEW_MACRO) in order to compile all the code hidden beetween<br>#ifdef NEW_MACRO<br></p><p>#endif<br>in all my recipes. I think that the right place to do that is in bitbake.conf file present under poky/meta/conf but when i try to do:&#160;<br><br>TARGET_CPPFLAGS += &#34;-MMC_WRITE&#34;<br><br>I get the error : <br>configure: error: cannot compute suffix of object files: cannot compile<br><br>How can i send the macro to the compiler in the correct way?<br><br>Thanks<br><br></p></body></html>
 

------=_Part_340238_499166145.1550504527931--
