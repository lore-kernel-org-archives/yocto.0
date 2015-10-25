Return-Path: <jim.schimpf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31DF9E00B8B; Sun, 25 Oct 2015 11:47:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jim.schimpf[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
Received: from mail-yk0-f171.google.com (mail-yk0-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA13FE00B7F
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 11:47:52 -0700 (PDT)
Received: by yknn9 with SMTP id n9so164457355ykn.0
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 11:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=F9BH0g8+Mr19UefmaYg6F9EeXUteCV14Sj/18g+HDmQ=;
	b=yWtoXe6DJWhnBDGG2LKSOExYRsgyNu7mpdrH+Pf7No/OcsFeLflSu8iSESh53w5cfR
	i01dgSJ+TbmYs6HGsm5zrL0lN1TLM2TSe1Qt0awVBcKpEfc9Ddrkdb2rOthsF+5Oghrl
	haYBdlBn14GgTJuuf3mJgbK4wSXz01oycnDbP3artCmm/1q5MxBjwV3KsWsw5ryChABb
	VUYReEUy8yruF81E7K9dFjSP3jp7cCnYGgH04ES233bmO1kyubXOTmIYLYKlP0gcqy05
	1gUg/2S5cvTSp4Y95YTSkICgq38X8UFF2dJICz00MACLVcgr3MbYZQGbQlox4jehgO1o
	549A==
X-Received: by 10.129.84.8 with SMTP id i8mr25767156ywb.197.1445798871863;
	Sun, 25 Oct 2015 11:47:51 -0700 (PDT)
Received: from [192.168.1.127] (pool-72-95-202-94.pitbpa.east.verizon.net.
	[72.95.202.94]) by smtp.gmail.com with ESMTPSA id
	f67sm22048071ywd.19.2015.10.25.11.47.51 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 25 Oct 2015 11:47:51 -0700 (PDT)
From: jim Schimpf <jim.schimpf@gmail.com>
Message-Id: <BFDFF9FD-8304-404F-829C-FB553C8BCF36@gmail.com>
Date: Sun, 25 Oct 2015 14:47:49 -0400
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: Newby building recipes
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
X-List-Received-Date: Sun, 25 Oct 2015 18:47:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,
	i am a new Yocto user and am attempting to create recipes for =
some projects I would like to add.  Right now the recipes get though the =
fetch,and configure stages but fail respectively at compile and install =
stages. Both are git and autoconfig type projects. Which list should I =
send my detailed questions ?

Thank you for the help.

=E2=80=94jschimpf=

