Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB762E00C3A; Tue,  5 Sep 2017 07:29:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.171 listed in dnsbl.sorbs.net]
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98207E009F5
	for <yocto@yoctoproject.org>; Tue,  5 Sep 2017 07:29:17 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id b2so17033623iof.1
	for <yocto@yoctoproject.org>; Tue, 05 Sep 2017 07:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=4Xc4AxEISZ/5hGR/h+FTOm8YDsw1ewQ0JvqJ6NocKP8=;
	b=XitIXnMghvb+Jx94VtELUhizxMLIpyEk35qT5cXKExQR1SMdr82v9jRfLTQgiGSTHM
	yN0n1sthKyp0xs8BsBjgzQXp/rDvawN7Fi/AUeT/J5f5nQ/Mg/FEEItPt0lIb6nr6VCI
	kCBmS6W96vi1qgh2QogA1GGGi99jUzcnjGisF2pfbtvaeCh1Kp0J5iPqzJgA73xOpXN/
	dD81hp+1hYnqJkjwJCvMu1apWvkGHE0ZLlXd53ct2fNyepV5gnRY5sxl81R7eZQzsuWS
	sLSi/2njYyw/tAmi2PbwwLql5mD/PUKpz3dvOG8rCvABBo1mACjHOJfqLwg8mtyHaUE1
	oAMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=4Xc4AxEISZ/5hGR/h+FTOm8YDsw1ewQ0JvqJ6NocKP8=;
	b=CqaXXFwma+OylocqgcamVtbscyhCu/EshJMNZnWDlpGxq2a+cPtTbOoAx7P7bfJbBi
	O7ZStrMXwdFqxA19H2S3/p0HjTXiaUCehATA4d8hMULPkvJcw1wr3VNx9rP3tkMtZXnY
	MszxD5XiVY4fTVIRliCtUBxSjppU+NdZ6IjD9Jxi8eRUwi5I5PQsFB8M1eNgyj9AKRAL
	5o/0lnqnlq3mMlE/knFK4BIGsUxec+aBtfgq16y71rcFPBuW/OUt9CA5ixCdsM7isQv8
	umQqZVggxBnNfkWU9CqAl4Fd6UTK+csB0NqHda3E1Zayb8uORGGEm+b/T/5yAw0vcb31
	QfOw==
X-Gm-Message-State: AHPjjUjkyX/Y7F3KlW0Ah2I0j+Pd17kLdEYx05PCGgS/epevPkrGjI0y
	5ExOS+50r32wPdx9Mz78ugJwtsHCLvNx
X-Google-Smtp-Source: ADKCNb4nbMlMQEW3zhKVCc7AaUVyqEdul5ZtjBStrGCN3/FxcTsXy/UlD/OsnrAGR24HRcvFWd6O2DI1UCyFxDJci+o=
X-Received: by 10.36.240.78 with SMTP id p14mr3089042iti.179.1504621756598;
	Tue, 05 Sep 2017 07:29:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.22.3 with HTTP; Tue, 5 Sep 2017 07:28:56 -0700 (PDT)
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Tue, 5 Sep 2017 16:28:56 +0200
Message-ID: <CAB2nKc9yPmU6LzhKB-SQrqDEs62ELpof_3bQJtLhUy-3+BBWYg@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: jan.kiszka@siemens.com
Subject: [meta-oracle-java] Is oracle-jse-jre broken on arm target ?
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
X-List-Received-Date: Tue, 05 Sep 2017 14:29:17 -0000
Content-Type: multipart/alternative; boundary="f403045fb30852d1750558720d45"

--f403045fb30852d1750558720d45
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I'm trying to add embedded JRE to a custom i.MX6 board, and when I
add oracle-jse-jre recipe to my image, it starts to add a lot of native
stuff so I think it's broken?

As I understand it, the recipe downloads JDK and run jrecreate.sh to
generate needed JRE.
For me, the only thing needed by jrecreate is a valid java installation on
host with JAVA_HOME set?

Someone is using that recipe on arm?

Best Regards,
Vincent

--f403045fb30852d1750558720d45
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everyone,=C2=A0<div><br></div><div>I&#39;m trying to=
 add embedded JRE to a custom i.MX6 board, and when I add=C2=A0oracle-jse-j=
re recipe to my image, it starts to add a lot of native stuff so I think it=
&#39;s broken?</div><div><br></div><div>As I understand it, the recipe down=
loads JDK and run jrecreate.sh to generate needed JRE.=C2=A0</div><div>For =
me, the only thing needed by jrecreate is a valid java installation on host=
 with JAVA_HOME set?</div><div><br></div><div>Someone is using that recipe =
on arm?</div><div><br></div><div>Best Regards,</div><div>Vincent</div></div=
>

--f403045fb30852d1750558720d45--
