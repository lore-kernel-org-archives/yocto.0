Return-Path: <gauravpathak129@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A686BE00C46; Tue,  2 Apr 2019 21:44:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gauravpathak129[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
	[209.85.167.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 230E3E00C1E
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 21:44:10 -0700 (PDT)
Received: by mail-lf1-f46.google.com with SMTP id y18so10653499lfe.1
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2019 21:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=qm35b9C3uF0zpTEqsChlV8tumE350r4XiCYPTlz6HcM=;
	b=W9ma9BQlYIuKe291+AUk1qu8u1VHl0EJmxwGQvsCLEWVHugTsufRHk712BkEU2gX+U
	v4vhTyNdEypoplarlmV5BsyTDL3TbU3TO5FkVsDvC45ibfMs09bGxGeNCLdrgL5aqiJy
	eFhPvvKmcwNoC/g1hqitlaPTdeTWmm8i/fIdJTfIyX8NJhA3Ykfnwd0A5qMqOSLSMcKw
	hofncOsgR+Y1HnAZ5ASyZE7O/jIn6n2DuL4Ki1gw0aW9xVa5KQgVFUMWc+pqbitiyE5D
	YSOlyCUUDThxgYgiZHnQ0yjVanhq4WOHseXlJheF8xENOeSGAt6aknND/zd23GJClaHo
	gDDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=qm35b9C3uF0zpTEqsChlV8tumE350r4XiCYPTlz6HcM=;
	b=K3HUKAgE9dHlFQ10exEYExxGItbZLrCJAL16LBK6bMj7a/nDS40CGfkdbcnYj8oECx
	EM1X5iYB5aV3c77QsBpX+f7JKno6oRb0W3hJDTL7ANgnf5l+kW6uKiM3/zjeQtTuB8Hx
	Cp4xj1oJE16AjOAKBcrL3kG7sbWpaJJXTGZQz9vsXDRFK/wKQyWqneJD6kdEPeokakKu
	Jth1BN6FRZLL21j2F9yFQpqYSiuo/yuOUBRbu303cWW1KbeoVT7t/DslW8K1IcdC+/aA
	VFieJS+t2QYQ0LciyvarkJ1NNpEajLHCSlPdoDY0B4Bb2MhxuAvQZOuKrBYEunUovKbV
	MHBw==
X-Gm-Message-State: APjAAAXai1q1Wlhbbpt5BC3uMLElBKu4t6oMRUx595RdJO02mOiFoukv
	j1PVwnivluCDXiAcVJGOfnITf1bVle5iEKChQXgVcpUc
X-Google-Smtp-Source: APXvYqz5OUdXxMg6A74Xmo9RTXpRBMp/GKJZAY313/JtuMmJRlVWqgTle/9QiSh2Sc1FoRvW5sKc76hRvNWc13ReBSY=
X-Received: by 2002:ac2:5638:: with SMTP id b24mr10259815lff.18.1554266649501; 
	Tue, 02 Apr 2019 21:44:09 -0700 (PDT)
MIME-Version: 1.0
From: Gaurav Pathak <gauravpathak129@gmail.com>
Date: Wed, 3 Apr 2019 10:13:32 +0530
Message-ID: <CAMvYpdk69NUphQAVaFNMVRdoonEs9QP8T1zRc4OTHHxwJOTNiQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Error during qtbase compilation on "thud" branch
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
X-List-Received-Date: Wed, 03 Apr 2019 04:44:11 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I am getting an error "undefined reference to main" during qtbase compilation.
I am not getting any idea about how this error.

The error log is here: https://pastebin.com/Wt0SXH4M



Thanks,
Gaurav

