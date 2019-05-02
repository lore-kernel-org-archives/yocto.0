Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0CBFE00D2A; Thu,  2 May 2019 07:24:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1007E00C1E
	for <yocto@lists.yoctoproject.org>;
	Thu,  2 May 2019 07:24:00 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id a9so3647612wrp.6
	for <yocto@lists.yoctoproject.org>;
	Thu, 02 May 2019 07:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=ZmdXqO2ZglbfHqV09TtohWKT3aYOgD64DqKZgBbvvns=;
	b=QVGEyDqSpd+6kjp+RwYdZwuyELoYBfetACYrVvKnTC4OSKFMG87/F0ESqI14DCaDkZ
	35DiVa3BCux+XFGEhrBAzUzGaTLO2dN/zEejRwV+F4Df57+6rhDdW6BawgxqtiAL6Jj3
	B69TMakjsuRQpcyHQ8GTn0UtE/fodwZakjtR4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=ZmdXqO2ZglbfHqV09TtohWKT3aYOgD64DqKZgBbvvns=;
	b=SVIweK7Zm7PslRAafdSnFWhaL3NtC1k2k6Gw69k+JVQnPRSgtn4BQnj6+VvJMojN8e
	h4NTv+SrSCWtZVfQ6YLRLet03CnLOXZmUqr9erh6TpK0O34i81TWF+SS71dCbK5bEkgq
	VSMTCWp9uwpsYThwb182FpFpq17JxY0mYcjyVI/GE5J5jjZLfHU96Xd2fBmw6M7zyl/L
	R7FqLx7xYC50yMWJBpBOXMOhXRzufeKMd85qdYutFLQZgN0uCLcQ3HQgiKrftjyz0fEu
	S+OZdGlENOBxUwM+uaucu/28AC2cCGsga2OA7zcNFs9gEl6BwnGVzGq2TZy2G5lWIGuD
	WpCw==
X-Gm-Message-State: APjAAAV3qqb1ZgifvXmldcWQipfro8sWCvlzdEQ5ltfOe8OfoY15mlpi
	RC/u2tf8K5iK1bR0IYlErfT+RIOlH4w=
X-Google-Smtp-Source: APXvYqzB9grO5PcMTRcq89MW15BIo6ewId++FrCA+dbLaWeJOxt3D7fXDqST6os9F3RvPGpHS14zKg==
X-Received: by 2002:a05:6000:10cc:: with SMTP id
	b12mr3226418wrx.182.1556807039989; 
	Thu, 02 May 2019 07:23:59 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	c18sm25131320wrb.16.2019.05.02.07.23.58
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 02 May 2019 07:23:59 -0700 (PDT)
Message-ID: <9d66b2dc947c7368a84285b8c1fb3ef30fdc5220.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>, openembedded-core
	<openembedded-core@lists.openembedded.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Date: Thu, 02 May 2019 15:23:58 +0100
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Subject: Newcomer bugs
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
X-List-Received-Date: Thu, 02 May 2019 14:24:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Apologies for cross posting but I wanted a wider audience to see this.

The triage team is starting to try and collect up and classify bugs
which a newcomer to the project would be able to work on in a way which
means people can find them. They're being listed on the triage page
under the appropriate heading:

https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs

The idea is these bugs should be straight forward for a person to help
work on who doesn't have deep experience with the project.

If anyone can help, please take ownership of the bug and send patches!

If anyone needs help/advice there are people on irc who can likely do
so, or some of the more experienced contributors will likely be happy
to help too.

Also, if there are people interested in helping mentor newcomers and
help develop newcomer suited bugs, please talk to me about it as we
could definitely do with help there. 

Other roles where we could do with particular help are toaster
development, website improvements/maintenance, QA framework
documentation/development + testcases and our CI testing along with the
usual other things but these are not really suited to newcomers.

Cheers,

Richard


