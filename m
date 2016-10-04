Return-Path: <lsorense@csclub.uwaterloo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3938E00724; Tue,  4 Oct 2016 14:55:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
	[129.97.134.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BFCBE00563
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 14:55:06 -0700 (PDT)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
	id 18BE6C006C; Tue,  4 Oct 2016 17:55:06 -0400 (EDT)
Date: Tue, 4 Oct 2016 17:55:06 -0400
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
Message-ID: <20161004215505.GA2084@csclub.uwaterloo.ca>
References: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
	<14908226.eNXmjE9kDk@peggleto-mobl.ger.corp.intel.com>
	<127A78F9-AB8A-467C-AC6B-02DBDDE09EE0@cisco.com>
MIME-Version: 1.0
In-Reply-To: <127A78F9-AB8A-467C-AC6B-02DBDDE09EE0@cisco.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question: xxxx listed in PACKAGES multiple times, this leads to packaging errors
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
X-List-Received-Date: Tue, 04 Oct 2016 21:55:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Tue, Oct 04, 2016 at 07:47:58PM +0000, Dinh Nguyen (dinhn) wrote:
> 
> Hi Paul, thanks much for prompt response. 
> 
> The c-mlib.bb below has the packages var as
> PACKAGES =+ "${PN}” I also tried PACKAGES = "${PN}” 

Don't do that.

In bitbake.conf you have:

PACKAGES = "${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}-doc ${PN}-locale ${PACKAGE_BEFORE_PN} ${PN}"

So all those package names are implied and always exist.  Don't try to
add them yourself.

Only do anything with PACKAGES if you want to add any other package
names or totally override the list of packages (in which case you have
to use PACKAGES = of course)

For example base-files does override the list completely, as does glibc
and a few other ones, but most only add to it.

-- 
Len Sorensen

