Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47C97E008D0; Wed, 15 Feb 2017 06:55:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E44CEE00874
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 06:55:54 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Feb 2017 06:55:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,166,1484035200"; 
	d="scan'208,217";a="934198825"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.30.92])
	by orsmga003.jf.intel.com with ESMTP; 15 Feb 2017 06:55:52 -0800
Message-ID: <1487170551.4342.7.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>, 
	yocto@yoctoproject.org
Date: Wed, 15 Feb 2017 14:55:51 +0000
In-Reply-To: <c5a4c802-163e-6e4b-e7c2-fc2f598c11ec@fridu.net>
References: <c5a4c802-163e-6e4b-e7c2-fc2f598c11ec@fridu.net>
X-Mailer: Evolution 3.22.4 (3.22.4-2.fc25) 
Mime-Version: 1.0
Subject: Re: Changing UID GID
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
X-List-Received-Date: Wed, 15 Feb 2017 14:55:56 -0000
Content-Type: multipart/alternative; boundary="=-BhFr5MYAf8eZrF0n+5OK"

--=-BhFr5MYAf8eZrF0n+5OK
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-02-15 at 15:43 +0100, Dominig ar Foll (Intel Open Source)
wrote:
>     Hello,
> 
>       
> 
>       in AGL project we are facing an issue as when we create new
> images
>       the UID,GID of given packages can (and does) change depending
> of
>       the build.
> 
>       This induces issues when we create partial update file using
> image
>       diffs.
> 
>       
> 
>       Could you let us know if we need to create our own solution, or
> if
>       yocto already has a model to enforce a known UID-GID on
> packages
>       coming from internal or external repo such as Open-Embedded 
>       without patching (or creating a bbappend) for each imported
> package
>       ?

You can use useradd-staticids, which will use a table of known uid/gid
rather than using the next available id.

See the docs:
http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-
classes-useradd

and the commit which introduced the feature:
http://git.yoctoproject.org/clean/cgit.cgi/poky/commit/meta/classes/use
radd-staticids.bbclass?id=4bc6982ea60929226bcd9d206b4879dea2a3157c

Joshua

--=-BhFr5MYAf8eZrF0n+5OK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<html><head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body><div>On Wed, 2017-02-15 at 15:43 +0100, Dominig ar Foll (Intel Open Source) wrote:</div><blockquote type="cite">
    <font size="-1">Hello,<br>
      <br>
      in AGL project we are facing an issue as when we create new images
      the UID,GID of given packages can (and does) change depending of
      the build.<br>
      This induces issues when we create partial update file using image
      diffs.<br>
      <br>
      Could you let us know if we need to create our own solution, or if
      yocto already has a model to enforce a known UID-GID on packages
      coming from internal or external repo such as Open-Embedded&nbsp;
      without patching (or creating a bbappend) for each imported package
      ?<br></font></blockquote><div><br></div><div>You can use useradd-staticids, which will use a table of known uid/gid rather than using the next available id.</div><div><br></div><div>See the docs:</div><div><a href="http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-classes-useradd">http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-classes-useradd</a></div><div><br></div><div>and the commit which introduced the feature:</div><div><a href="http://git.yoctoproject.org/clean/cgit.cgi/poky/commit/meta/classes/useradd-staticids.bbclass?id=4bc6982ea60929226bcd9d206b4879dea2a3157c">http://git.yoctoproject.org/clean/cgit.cgi/poky/commit/meta/classes/useradd-staticids.bbclass?id=4bc6982ea60929226bcd9d206b4879dea2a3157c</a></div><div><br></div><div>Joshua</div></body></html>

--=-BhFr5MYAf8eZrF0n+5OK--
