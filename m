Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C43EE008EA; Wed,  1 Apr 2015 13:28:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 905B2E0056E
	for <yocto@yoctoproject.org>; Wed,  1 Apr 2015 13:28:40 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 60D6DF811DB; Wed,  1 Apr 2015 14:28:39 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CCC67F811DA;
	Wed,  1 Apr 2015 14:28:38 -0600 (MDT)
Message-ID: <551C54FA.4010206@mlbassoc.com>
Date: Wed, 01 Apr 2015 14:28:42 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <60F6FAE47D1BCE4380CC06D18F49789BB9B55D6B@NTXBOIMBX02.micron.com>
In-Reply-To: <60F6FAE47D1BCE4380CC06D18F49789BB9B55D6B@NTXBOIMBX02.micron.com>
Subject: Re: how to build boost_python module
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
X-List-Received-Date: Wed, 01 Apr 2015 20:28:47 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-01 14:08, Andy Falanga (afalanga) wrote:
> Hi,
>
> I'm truly new to embedded systems development so please forgive my ignorance.  I'm working on building an embedded Linux image (of course).  In order to build the software that I'm interested to build for this ARM system (Zynq zc706), I need to build the python interpreter and the Boost libraries.  I've found recipes for these in the system and have used Hob to try to make this happen.  Thus far, no matter what I've tried, I don't see boost_python built.  Currently, in the Hob interface, I'm selecting packages to build into the image and boost-python isn't listed.  The boost.inc file in /opt/yocto/poky-dizzy-12.0.1/meta/recipes-support/boost shows logic to build boost-python.  Since python is being built into this image, shouldn't this package have been built too?
>
> The question is a simple one, how do I get the build to make boost-python?  It's made all of the others I need for my own library: boost-thread, boost-regex, boost-filesystem, etc.  I just can't get it to build boost-python.
>

This feature is controlled by package config in the boost recipe.

Adding this line to your local.conf should get it built.
   PACKAGECONFIG_pn-boost = "python"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

