Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C82B2E006AF; Thu,  4 Oct 2018 09:18:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (satya.2891[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.170 listed in list.dnswl.org]
Received: from mail-it1-f170.google.com (mail-it1-f170.google.com
	[209.85.166.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6E39E00519
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 09:18:48 -0700 (PDT)
Received: by mail-it1-f170.google.com with SMTP id q70-v6so13908255itb.3
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2018 09:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=cAPW1/LT7yl78/MggfnTgc4PTeRaFjQ0lUaxt2r/4G0=;
	b=E0OqYx+7mxlYNVI1zLIVXlxUMofVZgOsxKKWGtX/QoTLaBjbiWrObT9fAAaB8rxmrK
	ujOEPAiaj3MnZcv1V0vynWJydC5TLgj9tPcz9wbglG8zL5ey3NZcqqFDuTZ9SVM+x6JV
	2ZUtDqE/HcSSPSOZALTtvEntIK6LIlROfSMbJptxj0SqlrxD/SazwOl41o0s5KKrHtbk
	/euc/J7Uq3OiWXxdEibq5yeiYsxSbW/ObM7qLvWTmavuO3x+kZJ+sCJeg+OeBQ8frMVa
	O320x9o1y9z3slGlCbn7FSWjesKMwcvF5xhe3omf/IS1Mad+gRDr0C9Vifx7dBCg/QJY
	q88A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=cAPW1/LT7yl78/MggfnTgc4PTeRaFjQ0lUaxt2r/4G0=;
	b=Afw9KJ6hq8sYzXcXiexGZRPErrA2TCvbyHYhWZN0ecqkiVmExjgOlbgqkSFsSAWsYl
	ipyfjmWQocxQykkiUzVtla8NwXqDL5B40eqfe7lo4W/BnGWgxUCKJfCYIXggSbxD9eK1
	UA+TxxDo6xPDq5+7KAZVuj6/RKtPiLEuD0Qes440P2BZVhe6WhcvAK70tXGS2aomUlu0
	br0P/eq5M/DNeYUov5XAQCqBs9YVgAotFJmwqXnweaQFYaomCTDFGtgOiUAJiq/s+kRB
	hIGfs4ya1r4bbYEZC7tDMtWBPd5+3BipIVfdcjgce274Do49ZOF5e7Uey4Zp8tg/xVn1
	WjJA==
X-Gm-Message-State: ABuFfohRBf6JbwbLsCLxfx0wDKkxj4cgI4fi+zbFh1naffcgNRheqr8j
	B78nMvYFNKqDbyul1pHwjp28AEXvRA29JC1etpcURZcT
X-Google-Smtp-Source: ACcGV61C06cQ0ayitijZ9nXhy3it/z3Y064+5nUCu3aC8Wz01ZI8Fg6Vf1I765uufETF9SNCh0gwpysCoTUlQYS62MM=
X-Received: by 2002:a24:37d6:: with SMTP id
	r205-v6mr5546628itr.65.1538669927939; 
	Thu, 04 Oct 2018 09:18:47 -0700 (PDT)
MIME-Version: 1.0
From: Satya Sampangi <satya.2891@gmail.com>
Date: Thu, 4 Oct 2018 21:48:36 +0530
Message-ID: <CAF1M0z7Ufj=R79h69p0fObaQtZNGpizGr+x7Fpwb27XCKQpHqA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Running task in the custom layer
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
X-List-Received-Date: Thu, 04 Oct 2018 16:18:49 -0000
Content-Type: multipart/alternative; boundary="0000000000007b4348057769826b"

--0000000000007b4348057769826b
Content-Type: text/plain; charset="UTF-8"

Dear All,

How to run the task in the recipe file present in the custom layer,
*which executes all packages*, bypassing the task present in base
layers?

Thanks & Regards,

Satya

--0000000000007b4348057769826b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear All,<div><pre style=3D"white-space:pre-wrap">How to r=
un the task in the recipe file present in the custom layer, <b>which execut=
es all packages</b>, bypassing the task present in base layers?</pre><pre s=
tyle=3D"white-space:pre-wrap">Thanks &amp; Regards,</pre><pre style=3D"whit=
e-space:pre-wrap">Satya</pre></div></div>

--0000000000007b4348057769826b--
