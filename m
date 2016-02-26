Return-Path: <mdlcameras@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CD3FE00CAD; Fri, 26 Feb 2016 06:55:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mdlcameras[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C79A0E00C30
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 06:55:13 -0800 (PST)
Received: by mail-lb0-f173.google.com with SMTP id bc4so47959906lbc.2
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 06:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=qYq7dMU+ZeB1bQ5df62oHW42fo9bd5Jyil9/+EqKjuU=;
	b=WdHRoSsaY7rMzA22TAnYeH30t9z9NoPLVJnljEk27jXHJG27XQzpgEIx42NFLAfx6d
	Mz0cTNG4oglulSDPjj6M2GHNHpxpBdmCvamk1M5xoe4B/MoNvCRPAUJdqBTemiHu4+0e
	cevj/NcpAo7j9kCa8xD9CGTETr4YBoiFWm7o3AsmN7Z8nNfgj5wdkdYWyMwLZ88s5HLH
	hYtkUJIjvVN/df0He1cBTmeCT3hH2OGriTmpPBKsl76qjlPYBtArJdiyl252rHWYZWjQ
	yatBCV62tfiWC4Cx4OANpzJATzShZm8mIuMIOC+TLxpu3USXGMhkjbsg0zwvaOVYm5+U
	EQ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=qYq7dMU+ZeB1bQ5df62oHW42fo9bd5Jyil9/+EqKjuU=;
	b=RZl+1rmDxqLGSr1WZA2+N/ST9uNiWvnSv8s5BzgPtP4nZL0NpCgSV92SHWx0uFM2VH
	+eqfbwYLjkKRBnnwAbrklj2HOkGfTR2HJyNaI+eUtPe0zVDPNbY8M45tTB0ia0ts+9BM
	7/FCZPUrFUa3+IhsEl0FC/Uxy4hHe1AlgvYNorgDPipFX0SvJX7EILSGZQzDh5IaMNNY
	HFD4FGZs0Ek+GU1dA9Qnb3hzUbTAebmtzI12rTmK7bhYgIymbfMrm8vZ4oBU5Mg2hCHq
	9y5nOFjO4LKIO9vZGKvItSFVy1qMH7cF8tVw5VpntVIvMaAeTntKvX4up3nv3l0V7pNY
	uOuQ==
X-Gm-Message-State: AD7BkJKlVIEogY3IuMs5l9YdXOnYNGEJDz6VI80sOiA2VF6lqJW9SsABz41sW4mHyMyXqnbhxNeHII0hXy37nA==
MIME-Version: 1.0
X-Received: by 10.112.184.133 with SMTP id eu5mr641856lbc.99.1456498511329;
	Fri, 26 Feb 2016 06:55:11 -0800 (PST)
Received: by 10.114.11.1 with HTTP; Fri, 26 Feb 2016 06:55:11 -0800 (PST)
Date: Fri, 26 Feb 2016 16:55:11 +0200
Message-ID: <CAGuQk8r+6GN_Oy9D=e5nGJL4mxNgCR8Xj=N_D38KEKr1j=sj_w@mail.gmail.com>
From: Marius Liebenberg <mdlcameras@gmail.com>
To: yocto@yoctoproject.org
Subject: Source for recipe on local drive
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
X-List-Received-Date: Fri, 26 Feb 2016 14:55:16 -0000
Content-Type: multipart/alternative; boundary=001a11c3cb3462439f052cad7cb7

--001a11c3cb3462439f052cad7cb7
Content-Type: text/plain; charset=UTF-8

Hi
How do I get all the source code for a specific recipe onto my local drive.
That is without sifting through all the config files to try and get url's

Regards
Marius

--001a11c3cb3462439f052cad7cb7
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><div><div><div>Hi<br></div>How do I get all the source code for a specific recipe onto my local drive. That is without sifting through all the config files to try and get url&#39;s<br><br></div>Regards<br></div>Marius<br></div>

--001a11c3cb3462439f052cad7cb7--
