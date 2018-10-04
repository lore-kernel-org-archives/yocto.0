Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36B68E00566; Thu,  4 Oct 2018 09:10:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (satya.2891[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-it1-f171.google.com (mail-it1-f171.google.com
	[209.85.166.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00000E00519
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 09:10:46 -0700 (PDT)
Received: by mail-it1-f171.google.com with SMTP id 74-v6so13880211itw.1
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2018 09:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=kpj2JbKkeL1g9vYo8fbYFpTHY3fb23Vhjj+QHlPF2ak=;
	b=ux2fcvOeAngXD0DEoMiE25ZALRUC7bSboZCFGoFbdsEv2dHKJ7d69R7TXQDHXXPI+e
	CVDFj0SvHcdLhznSNofSCo/bf28ZVFMJ0rbsBlzoXC6qXuCsINLaQ3b+4gjNBOyok4GN
	nc0VLIeVKlZ8/Ow2KFsxQh34LboINmICl9Ei2x9rdu+IQy/HEPhp6dKaNttpS8gD9//a
	2ATeVOCRjxZVxz52G57XPAqF/wRyJFPTevE806m4lJXuaMqr1W2017naRnA1tiZC3ikH
	J2iTjUCu4ZGmEt6h2QQw484xvpuqLolpVurY+LR56UsKLl0v48phsj6/Qc3M+pysVLm5
	SkUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=kpj2JbKkeL1g9vYo8fbYFpTHY3fb23Vhjj+QHlPF2ak=;
	b=VvdQAMWX3LPx5u1HpsMDxgkGUgcJIV6I5gQ0jEK2mX9JA2AYb0/+1+OC9W8yHZ2A95
	fGIdKMfOHpRS7hXyoU0pq1suraFNQv+yYti1m37+Gg8fa/R//3FFcqKM3nL33zIglyJw
	Vx3tCspGt9eG1K/CyMB6vBrL4aqChsLE9grwd2G5DKLpR1QZ9t/BMOdOo+utMKfa54XQ
	EreLul6XnnSmbNk+ccZHJxre+ZRaGWkjDQt3F+hogUDi+wNTfSqf9adJOI7Gd1wD1ZX0
	z7QDuYJzNzEqZR+1g9RlwUOB90cc5Oo3CkPHMiYrEBxYR4CoVz4jd1w+jUlOorIOmisG
	cWXA==
X-Gm-Message-State: ABuFfogT/jZ4ztBN7sW+M9qGfAQljya6645zDCOEzSKDppEGbzMeQQzT
	jo8/BmxlyLSy+DRePHv9ps7+OXieIbPL0rsGvGXucTXL
X-Google-Smtp-Source: ACcGV62E00XzrrWzdVnSBlk0yiG1TMN/5WDLKRH3jqkDrQ9lqBNPALlbGkyDAW0vCld9uByLvz7dvEMIPJfZhj7EiY8=
X-Received: by 2002:a05:660c:34d:: with SMTP id
	b13mr4913294itl.55.1538669446018; 
	Thu, 04 Oct 2018 09:10:46 -0700 (PDT)
MIME-Version: 1.0
From: Satya Sampangi <satya.2891@gmail.com>
Date: Thu, 4 Oct 2018 21:40:34 +0530
Message-ID: <CAF1M0z7AtzwysYxnQiQVaJkfuMMa8DrWnqEX4F1kgs2=Zpfm1w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: (No subject)
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
X-List-Received-Date: Thu, 04 Oct 2018 16:10:47 -0000
Content-Type: multipart/alternative; boundary="000000000000c1bab70577696565"

--000000000000c1bab70577696565
Content-Type: text/plain; charset="UTF-8"

Dear All,

How to run the task in the recipe file present in the custom layer,
*which executes all packages*, bypassing the task present in base
layers?

Thanks & Regards,

Satya

--000000000000c1bab70577696565
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear All,<div><br></div><div><pre>How to run the task in t=
he recipe file present in the custom layer, <b>which executes all packages<=
/b>, bypassing the task present in base layers?</pre><pre>Thanks &amp; Rega=
rds,</pre><pre>Satya</pre><pre><br></pre><pre><br></pre></div></div>

--000000000000c1bab70577696565--
