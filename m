Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B420E00A8C; Sun,  9 Aug 2015 16:41:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1224E006EE
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 16:41:49 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t79Nfmce007266; Mon, 10 Aug 2015 00:41:48 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id jpEu_-C3MvAW; Mon, 10 Aug 2015 00:41:48 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t79NfWes007245
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 10 Aug 2015 00:41:46 +0100
Message-ID: <1439163692.30467.159.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Trevor Woerner <twoerner@gmail.com>
Date: Sun, 09 Aug 2015 16:41:32 -0700
In-Reply-To: <55C277BF.5020309@gmail.com>
References: <55C277BF.5020309@gmail.com>
X-Mailer: Evolution 3.12.10-0ubuntu1~14.10.1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: building an SDK for MacOSX
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
X-List-Received-Date: Sun, 09 Aug 2015 23:41:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2015-08-05 at 16:53 -0400, Trevor Woerner wrote:
> Hi,
> 
> I came across RP's meta-darwin today that I'm hoping will enable me to
> build an OpenEmbedded SDK that can be used by my colleagues who work in
> a MacOSX environment?
> 
> Is my understanding correct?

Yes.

> Has anyone tried this lately? The last commit was from almost exactly a
> year ago.

I believe Juro might have done, I admit I haven't tried it in a while.

> The description in the README is a bit vague. I've never used a MacOSX
> system so I'm not entirely sure of the filesystem layout. What exactly
> is needed to create the OSX-sdk.zip file?
> 	/usr/include
> 	/usr/lib
> 	/lib
> 
> Is that all?

I think so. Sadly the Apple license precludes us from sharing such a
thing :(. Patches to improve the README to be more specific are welcome
though.

Cheers,

Richard


