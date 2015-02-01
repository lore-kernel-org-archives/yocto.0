Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 515E8E0096F; Sun,  1 Feb 2015 12:00:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC836E00961
	for <yocto@yoctoproject.org>; Sun,  1 Feb 2015 12:00:01 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 0281B27E159;
	Sun,  1 Feb 2015 20:00:00 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 2-SOIT5OoJqj; Sun,  1 Feb 2015 19:59:27 +0000 (UTC)
Received: from [192.168.1.39] (AMarseille-651-1-264-196.w90-8.abo.wanadoo.fr
	[90.8.255.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 2883027E152;
	Sun,  1 Feb 2015 19:59:27 +0000 (UTC)
Message-ID: <54CE8551.9090306@dynamicdevices.co.uk>
Date: Sun, 01 Feb 2015 20:58:09 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: peterengcomau001@adam.com.au, Martin Jansa <martin.jansa@gmail.com>, 
	Simon Bolek <simon.bolek@googlemail.com>
References: <b35cd8c63423d3c2fdccbdc99a2a45e5d5221898@webmail.adam.com.au>
In-Reply-To: <b35cd8c63423d3c2fdccbdc99a2a45e5d5221898@webmail.adam.com.au>
Cc: yocto@yoctoproject.org
Subject: Re: meta-qt5 problem in yocto 1.7
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
X-List-Received-Date: Sun, 01 Feb 2015 20:00:09 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit


On 01/02/2015 20:38, peterengcomau001@adam.com.au wrote:
> Hi Alex,
> I have no problem with qt5 with daisy and have been using it fine for
> over 6 months. During that time I have cleaned my tmp file multiple
> times which would force a new reload of the sources.
> Also I dont have a problem with Dizzy when building
> core-image-mininal, core-image-full-cmdline and core-image-sato.
>
> If i bitbake my recipe using the -k option, I only get 3 failed recipes
> 0: qtbase-native-5.4.0-r0 do_fetch (pid 13279)
> 1: qtbase-5.4.0-r0 do_fetch (pid 13280)
> 2: qtdeclarative-5.4.0-r0 do_fetch (pid 13283)
>
> and these relate two 2 failed fetchs:
> ERROR: Function failed: Fetcher failure for URL:
> 'http://download.qt-project.org/official_releases/qt/5.4/5.4.0/submodules/qtdeclarative-opensource-src-5.4.0.tar.xz'.
> Unable to fetch URL from any source.
> ERROR: Function failed: Fetcher failure for URL:
> 'http://download.qt-project.org/official_releases/qt/5.4/5.4.0/submodules/qtbase-opensource-src-5.4.0.tar.xz'.
> Unable to fetch URL from any source.

OK, well I'm not sure but I am going to make some guesses here...

You're building Yocto daisy release/branch which you got from somewhere
then you cloned the meta-qt5 repository or otherwise obtained meta-qt5
meta-data?

You then added that into your bblayers.conf ?

Now the latest meta-qt5 (i.e. master branch) has recipes to build QT
5.4.0 I see

I'm not sure what best practice is here but I tend to try to use the
same branches across the meta-data.

So for example when I am building with Yocto daisy/dizzy I am using the
appropriate branch of meta-qt5 as you saw in my earlier email

For Yocto dizzy, meta-qt5.dizzy =
"dizzy:8b0ffbd849203d07164ccfad2535bdb107eecd08"

If you want to build the meta-qt5 daisy branch then you would go into
the meta-qt5 folder you cloned from the git repo something like this

cd sources/meta-qt5
git branch (to check, probably shows master)
git checkout daisy

Then rebuild. That should be building QT 5.2.1 which is what I am seeing
here

Cheers,

Alex


