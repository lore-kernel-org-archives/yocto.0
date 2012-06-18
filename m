Return-Path: <bjst@giant.haxx.se>
Received: from giant.haxx.se (giant.haxx.se [80.67.6.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDDAFE0070B
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 08:04:36 -0700 (PDT)
Received: from giant.haxx.se (localhost.localdomain [127.0.0.1])
	by giant.haxx.se (8.14.4/8.14.4/Debian-2) with ESMTP id q5IF4X3X017274
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 18 Jun 2012 17:04:33 +0200
Received: (from bjst@localhost)
	by giant.haxx.se (8.14.4/8.14.4/Submit) id q5IF4X4b017268;
	Mon, 18 Jun 2012 17:04:33 +0200
Date: Mon, 18 Jun 2012 17:04:33 +0200
From: =?iso-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20120618150433.GC1646@giant>
References: <20120614132601.GB29124@giant>
 <1340019794.8481.10.camel@ted>
MIME-Version: 1.0
In-Reply-To: <1340019794.8481.10.camel@ted>
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
X-List-Received-Date: Mon, 18 Jun 2012 15:04:37 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Richard Purdie wrote:
> > c) (-ptest) Install all test files to /opt/ptest/${PN}-${PV} (for
> > example). Make a package "ptest-runner" that has a
> > script /opt/ptest/run-all-tests to iterate over all installed tests
> > and run them. This is our suggestion.
> 
> Can we suitably extract the tests out of the source code to be able to
> do this? I'm worried a little about the maintenance burden but I do like
> option c). 

Typically the tests don't mix production and test code, since the purpose is to test the production code. Rather the tests are isolated in separate files that we relatively easily can build and install separately from the base package.

However, this is still early in the process. We have only processed a limited number of packages yet. We wanted to involve the community early to align our goals and directions.

-- 
Björn

