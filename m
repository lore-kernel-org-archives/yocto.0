Return-Path: <bjst@giant.haxx.se>
Received: from giant.haxx.se (giant.haxx.se [80.67.6.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 627AAE013EB
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 01:23:31 -0700 (PDT)
Received: from giant.haxx.se (localhost.localdomain [127.0.0.1])
	by giant.haxx.se (8.14.4/8.14.4/Debian-2) with ESMTP id q5F8NRZR030861
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 15 Jun 2012 10:23:27 +0200
Received: (from bjst@localhost)
	by giant.haxx.se (8.14.4/8.14.4/Submit) id q5F8NRdl030860;
	Fri, 15 Jun 2012 10:23:27 +0200
Date: Fri, 15 Jun 2012 10:23:27 +0200
From: =?iso-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
Message-ID: <20120615082326.GA28297@giant>
References: <20120614132601.GB29124@giant>
	<CACW_hTYR8ceMLFg=cwhM0+ABjN6VndcddWQP8g01mfUDadU3rA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACW_hTYR8ceMLFg=cwhM0+ABjN6VndcddWQP8g01mfUDadU3rA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Discussion: Package testing
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
X-List-Received-Date: Fri, 15 Jun 2012 08:23:31 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Frans Meulenbroeks wrote:
> a run-all-tests.sh script is somewhat problematic as
> different systems have different packages installed so different tests.

The idea is that the top level run-all script looks in the /opt/ptest directory and runs all package tests that are installed there. It has no built-in knowledge of any tests.

> I think testers are mainly interested in success (all tests give ok is
> good, if a test fails, it would be fine with me if I would have to go to a
> package specific place to find log files etc (or it could be written to a
> common log file)

While failing tests are the most interesting during development, keeping track of both failed and successful test cases is important for regression tracking and test development over time. Therefore we want to produce an output that clearly identifies each test case ran and its result.

> The only specific point I can think of is cleaning up after a test is run.

Good point, I forgot to mention that. It is the responsibility of the per-package "run-ptest" script to clean up after the test.

-- 
Björn

