Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5176CE011AD
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 08:40:31 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7OFeO4d014203;
	Fri, 24 Aug 2012 16:40:24 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 12212-04; Fri, 24 Aug 2012 16:40:20 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7OFeGTC014197
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Fri, 24 Aug 2012 16:40:17 +0100
Message-ID: <1345822818.14369.81.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: =?ISO-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
Date: Fri, 24 Aug 2012 16:40:18 +0100
In-Reply-To: <1345731602-47313-4-git-send-email-bjst@enea.com>
References: <1345731602-47313-1-git-send-email-bjst@enea.com>
	<1345731602-47313-4-git-send-email-bjst@enea.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/3] Enable bash-ptest
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 24 Aug 2012 15:40:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2012-08-23 at 16:20 +0200, Björn Stenberg wrote:
> Patch Makefile.in to allow test programs be built on host and ran on
> target.
> Patch tests/run-all to output PASS/FAIL for each testcase.
> Patch recipe to build and install test programs and test suite.
> 
> ---
>  .../bash/bash-4.2/build-tests.patch                |   29 ++++++++++++++++++++
>  meta/recipes-extended/bash/bash-4.2/run-ptest      |    2 +
>  .../bash/bash-4.2/test-output.patch                |   19 +++++++++++++
>  meta/recipes-extended/bash/bash.inc                |   18 ++++++++++++
>  meta/recipes-extended/bash/bash_4.2.bb             |    5 +++-
>  5 files changed, 72 insertions(+), 1 deletions(-)
>  create mode 100644 meta/recipes-extended/bash/bash-4.2/build-tests.patch
>  create mode 100644 meta/recipes-extended/bash/bash-4.2/run-ptest
>  create mode 100644 meta/recipes-extended/bash/bash-4.2/test-output.patch
> 
> diff --git a/meta/recipes-extended/bash/bash-4.2/build-tests.patch b/meta/recipes-extended/bash/bash-4.2/build-tests.patch
> new file mode 100644
> index 0000000..e92fab3
> --- /dev/null
> +++ b/meta/recipes-extended/bash/bash-4.2/build-tests.patch
> @@ -0,0 +1,29 @@
> +diff -uNr a/Makefile.in b/Makefile.in
> +--- a/Makefile.in	2012-06-14 10:15:15.063465304 +0200
> ++++ b/Makefile.in	2012-06-14 10:47:02.985115849 +0200
> +@@ -827,18 +827,21 @@
> + 	fi
> + 
> + recho$(EXEEXT):		$(SUPPORT_SRC)recho.c
> +-	@$(CC_FOR_BUILD) $(CCFLAGS_FOR_BUILD) -o $@ $(SUPPORT_SRC)recho.c ${LIBS_FOR_BUILD}
> ++	@$(CC) $(CCFLAGS) $(LDFLAGS) -o $@ $<
> + 
> + zecho$(EXEEXT):		$(SUPPORT_SRC)zecho.c
> +-	@$(CC_FOR_BUILD) $(CCFLAGS_FOR_BUILD) -o $@ $(SUPPORT_SRC)zecho.c ${LIBS_FOR_BUILD}
> ++	@$(CC) $(CCFLAGS) $(LDFLAGS) -o $@ $<
> + 
> + printenv$(EXEEXT):	$(SUPPORT_SRC)printenv.c
> +-	@$(CC_FOR_BUILD) $(CCFLAGS_FOR_BUILD) -o $@ $(SUPPORT_SRC)printenv.c ${LIBS_FOR_BUILD}
> ++	@$(CC) $(CCFLAGS) $(LDFLAGS) -o $@ $<
> + 
> + xcase$(EXEEXT):	$(SUPPORT_SRC)xcase.c
> +-	@$(CC_FOR_BUILD) $(CCFLAGS_FOR_BUILD) -o $@ $(SUPPORT_SRC)xcase.c ${LIBS_FOR_BUILD}
> ++	@$(CC) $(CCFLAGS) $(LDFLAGS) -o $@ $<
> + 
> + test tests check:	force $(Program) $(TESTS_SUPPORT)
> ++	$(MAKE) runtest
> ++
> ++runtest:
> + 	@-test -d tests || mkdir tests
> + 	@cp $(TESTS_SUPPORT) tests
> + 	@( cd $(srcdir)/tests && \


As it stands, I can bet on upstream saying "no" to this for good reason.
A better concept might be to introduce $(CC_FOR_TEST) which could
default to CC_FOR_BUILD. This would let us do what you're thinking here
yet keep upstream happy too.

Just thinking out loud really...

Cheers,

Richard


