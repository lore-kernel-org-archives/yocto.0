Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69FA2E00303
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2011 13:46:54 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pASLknMU004322;
	Mon, 28 Nov 2011 21:46:49 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03924-05; Mon, 28 Nov 2011 21:46:45 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pASLkge2004316
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 28 Nov 2011 21:46:43 GMT
Message-ID: <1322516810.30225.17.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Marc Ferland <marc.ferland@gmail.com>
Date: Mon, 28 Nov 2011 21:46:50 +0000
In-Reply-To: <CAMRMzCDqDjf3jKnGnkFeJUg8N+2gKkumA9fo0TK9ckKan8jvtQ@mail.gmail.com>
References: <CAMRMzCDqDjf3jKnGnkFeJUg8N+2gKkumA9fo0TK9ckKan8jvtQ@mail.gmail.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: Native build tools question
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
X-List-Received-Date: Mon, 28 Nov 2011 21:46:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-11-28 at 16:17 -0500, Marc Ferland wrote:
> Hi,
> 
> I'm currently writing a recipe for the visualization toolkit (vtk). 
> 
> To compile, this library invokes executables that are generated
> on-the-fly by the compilation process (a little bit like Qt and
> qmake). 
> 
> The path to these executables can be specified to cmake when building
> vtk. So far I was able to make it work by hard-coding this "tools"
> directory in my recipe to a path on my local machine. It works, but it
> is not very portable.
> 
> What's the official way to handle such libraries?
> 
> Should I first do a native build, then use this native build directory
> when cross-compiling? If so, is there any examples I should look into?

Yes, a -native recipe to build the tools and then use those native tools
in the cross built is the way to go.

Take a look at any of the recipes which have a DEPENDS on a native
version of themselves. A simple example is say, the bison recipe and the
logic is something like:

DEPENDS = "bison-native"
DEPENDS_virtclass-native = ""

BBCLASSEXTEND = "native"

(simplified slightly)

Cheers,

Richard




