Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00FC7E00922; Fri, 27 Mar 2015 17:23:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 582FDE00906
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 17:23:46 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 8DB58F811D7; Fri, 27 Mar 2015 18:23:46 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E7BAAF811D7;
	Fri, 27 Mar 2015 18:23:45 -0600 (MDT)
Message-ID: <5515F497.3050809@mlbassoc.com>
Date: Fri, 27 Mar 2015 18:23:51 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4B07ADD556F70043925DA2E9C5D4346D2FDC9879D9@MSXBEBVT12.planar.net>
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FDC9879D9@MSXBEBVT12.planar.net>
Subject: Re: Please help me understand these packages
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
X-List-Received-Date: Sat, 28 Mar 2015 00:23:54 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-03-27 18:10, Matt Schuckmann wrote:
> I’ve run into this a couple times now and I still don’t get it so please help me understand.
> I’m trying to understand how to include just the ir-keytable package of the v4l-utils_1.6.2.bb recipe.
> At first I was getting a lot of “Nothing PROVIDES” or “Nothing RPROVIDES” error messages when I tried to add it to a package group or as a dependency of another recipe.
> However, after I added it directly to IMAGE_INSTALL in my image recipe it mostly seems to be working, no matter where I put it, even after I’ve removed it from IMAGE_INSTALL in my
> image recipe. This leads me to believe that maybe I had some sort of database caching problem going on, since I had just back ported the recipe into my branch.
> Where it still fails is from the command line:  “bitbake ir-keytable” I don’t understand why this fails?

The reason is that you bitbake <recipe>, not the package name.  The v4l-utils
recipe creates, among other packages, the ir-keytable package.  It works when
you add it to IMAGE_INSTALL because that contains a list of packages, not recipes.

> I’ve had similar problems with the sub-packages of the boost recipe, I can add it boost-program-options to a packagegroup or as a RDEPENDENCY but I can’t build it from the
> command-line.
> On the other hand I can build net-snmp-server from the command line, which is a sub-package of net-snmp recipe (interestingly there is no net-snmp package)
> I looked at the recipes and they don’t seem all that different as far as how the packages are declared.
> I’m really confused here can anyone enlighten me.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

