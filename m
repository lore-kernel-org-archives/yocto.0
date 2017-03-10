Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51055E00A28; Fri, 10 Mar 2017 05:51:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B594DE00AA7
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 05:50:43 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Mar 2017 05:50:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,141,1486454400"; d="scan'208";a="1120929295"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga001.fm.intel.com with ESMTP; 10 Mar 2017 05:50:42 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>
Message-ID: <f8d87157-8f64-2bab-ac55-6f058c148f08@linux.intel.com>
Date: Fri, 10 Mar 2017 15:49:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
Subject: Supporting MEAN framework in Yocto
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
X-List-Received-Date: Fri, 10 Mar 2017 13:51:04 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I've done some research around MEAN stack and how Yocto could support 
it, and here are the findings.

*What is MEAN*

MEAN (http://mean.io/) is a Javascript framework for writing web 
applications with a client-server architecture. It's comprised of four 
major components:

- Node.js, the standalone Javascript interpreter that does not need a 
browser to run
- MongoDB, a C++ NoSQL database server
- Angular.js, a javascript application framework
- Express.js, another javascript application framework (not sure how the 
two interact - I'm not a JS specialist)

The major selling point of MEAN is that it is a 'full stack'. This means 
that both client and server side code is written using the same 
language, and shares many of the libraries. This is in contrast to the 
traditional LAMP stack, where server code is written in P* (Python, Perl 
or PHP) and client code is written in javascript, and presumably hiring 
developers with the right skillset is harder in such circumstances.

Starting a project in MEAN is very easy - the (slightly exaggerated) 
example from the website frontpage is:

$ sudo npm install -g mean-cli
$ mean init yourNewApp

*Why does Yocto need to support this?*

At the moment, it really does not. But we need to move with the times; 
if Yocto users want to put a MEAN app on their devices, Yocto should not 
get in their way, or declare that it isn't supported. There is a trend 
towards using node.js on the server side, and it will probably trickle 
over into embedded space as well.

*What are the difficulties?*

Placing node.js and Mongodb into images is not complicated. We have 
recipes for both (meta-oe has an outdated version of node.js, but 
there's also meta-node layer, which is totally up to date with 
upstream). The complications arise from the way javascript world handles 
project dependencies (see my previous email for a deeper look into 
this). It works like this:

- after initializing the project like above, you need to change into the 
project directory and do this:

$ npm install

- this recursively pulls all of the dependencies (including angular.js 
and express.js) into the node_modules directory of the project tree. 
Developers don't need to know or care what they are, and where they come 
from (and it's implied that licensing is not a worry either); the 
resulting set of libraries is bundled with the application and is not 
shared with other applications. As long as npm install completes without 
an error, that's all you need to worry about.

- unfortunately for us, the list of dependencies is truly enormous. The 
bare-bones MEAN app pulls in 1087 dependencies - and each of them has 
their own license, version, and upstream repository:

$ ls myNewApp/node_modules/|wc -w
1087

*What do we do with the 1087 dependencies?*

There is support in bitbake/devtool for dealing with npm-based projects 
- I didn't have time to try it (and it's also at the moment broken for 
the master branch due to rss), but it would probably not handle this 
very well:

- it reimplements 'npm install' as a custom fetcher and dependency 
resolver. I believe this is not the right way in the long run: we should 
let 'npm install' do its job, and inspect the tree after it's done to 
get the information we really need.

- the license information for all of the dependencies is written into 
the recipe, which makes it unnecessarily large. It is not clear how that 
information should be updated when needed.

- also, the dependencies are locked down through a separate lockdown 
file created by devtool, but it's not clear what to do when the lockdown 
file doesn't match reality, or when it otherwise needs to be updated. 
There should be a common, documented mechanism for all of this - see my 
previous email :)


Thanks,
Alex

