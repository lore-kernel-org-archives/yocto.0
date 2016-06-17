Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF479E00E71; Fri, 17 Jun 2016 15:10:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30001E00E67
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 15:10:36 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u5HMAU6u029730; Fri, 17 Jun 2016 23:10:30 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id woqyai-14MMR; Fri, 17 Jun 2016 23:10:30 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u5HMARqK029725
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 17 Jun 2016 23:10:28 +0100
Message-ID: <1466201427.25557.39.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Christopher Larson <clarson@kergoth.com>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>
Date: Fri, 17 Jun 2016 23:10:27 +0100
In-Reply-To: <CABcZANkPQBWukZTtzz69JQZHOFRpnXyPV1BvP8Bv-CZqqRtSkA@mail.gmail.com>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E5718DD13@fmsmsx111.amr.corp.intel.com>
	<CABcZANkPQBWukZTtzz69JQZHOFRpnXyPV1BvP8Bv-CZqqRtSkA@mail.gmail.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Yocto Project Status WW25
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
X-List-Received-Date: Fri, 17 Jun 2016 22:10:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2016-06-17 at 14:42 -0700, Christopher Larson wrote:
> On Fri, Jun 17, 2016 at 8:31 AM, Jolley, Stephen K <
> stephen.k.jolley@intel.com> wrote:
> > ·        There is a multilib issue related to the layout of the
> > host libraries leaking into python’s build process which we’re
> > struggling to debug
> Could I get some details on this? I've seen something like this where
> cmake and automake are relying on sys.lib from python3-native/python
> -native to determine the sitepackages directory, is that the behavior
> others are hitting? So python modules end up in /usr/lib/ rather than
> /usr/lib64/, for example?
> 
> If that's the issue in question, the issue is the mismatch between
> the native sys.lib and target. We already patch automake to fall back
> to using our libdir + python version to determine the path, but only
> if it wasn't able to use sys.lib to do so. If we change that to
> always use libdir+python version, it should fix the automake
> packages. Then we might need to patch FindPythonLibs in cmake to do
> the same. I'm testing the automake change locally now.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=9717 is the bug

Cheers,

Richard

