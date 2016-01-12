Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63C19E00A7D; Tue, 12 Jan 2016 03:28:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,KHOP_DYNAMIC
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A3A0E008A5
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 03:27:59 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u0CBR60v029731; Tue, 12 Jan 2016 11:27:55 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id rvUG87b2ywr4; Tue, 12 Jan 2016 11:27:55 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u0CBRnZ5029825
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 12 Jan 2016 11:27:51 GMT
Message-ID: <1452598069.28375.10.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Chris Trobridge <christrobridge@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 12 Jan 2016 11:27:49 +0000
In-Reply-To: <DUB130-W826C28E67F7AA9DF278329DACA0@phx.gbl>
References: <DUB130-W826C28E67F7AA9DF278329DACA0@phx.gbl>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Subject: Re: Sharing a source repository
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
X-List-Received-Date: Tue, 12 Jan 2016 11:28:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2016-01-12 at 09:36 +0000, Chris Trobridge wrote:
> I have a source (git) repository that can build a number of targets
> that could usefully be distributed across a number of recipes to be
> applied in different circumstances.  Is there a preferred method to
> allow multiple recipes to reference the same source without it being
> unpacked etc separately for each recipe (I've not seen evidence of
> any optimisation for this by default?)
> 
> To some extent this situation can be accommodated by producing
> multiple packages from one recipe.  This isn't great, or modular but
> might be mitigated a bit with includes etc.
> 
> I could move specific source to specific recipe folders and version
> control it with the meta data but that would place it outside the
> original repository and break the meta data separation.
> 
> The most promising choice so far is the "subpath" option to the git
> fetcher.  This would appear to let me pick out portions of the
> repository into different recipes that could then be rdepended upon
> (there is one 'project' within the repository that is several GB). 
>  (There are also git sub-projects but I'm not using that.)
> 
> Would using "subpath" be the preferred method for my case?
> 
> Or is there an idiomatic way to pull in a repository in one recipe
> and then reference that from other recipes?  I can think of something
> that would work but would probably be breaking the spirit (eg sym
> -linking the git directory somewhere commonly accessible to the other
> recipes).  This would also have the disadvantage of pulling the whole
> repository in even only small part was actually required.

You could look at what we do with gcc and the gcc-source recipe. Its
works there but its not common place and requires workarounds in some
corner cases like the sstate checksum debugging code.

Cheers,

Richard

