Return-Path: <wwitzke@asgrp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93267E00EDC; Thu,  8 Mar 2018 14:00:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.170.151.3 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 462 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Mar 2018 14:00:34 PST
Received: from smtp.bestwny.com (smtp.bestwny.com [209.170.151.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3D1AE00E11
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 14:00:34 -0800 (PST)
Received: from www.bestwny.com (localhost [127.0.0.1])
	by smtp.bestwny.com (Postfix) with ESMTP id 9700510EA727
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 16:52:51 -0500 (EST)
Received: from smtp.bestwny.com ([127.0.0.1])
	by www.bestwny.com (www.bestwny.com [127.0.0.1]) (amavisd-new,
	port 10026) with LMTP id wVTGxadurmu1 for <yocto@yoctoproject.org>;
	Thu,  8 Mar 2018 16:52:50 -0500 (EST)
X-Received: From Authenticated User
To: yocto@yoctoproject.org
From: Wayne Witzke <wwitzke@asgrp.com>
Organization: Applied Sciences Group, Inc.
Message-ID: <423f0425-653d-37ab-098d-088466ef280d@asgrp.com>
Date: Thu, 8 Mar 2018 16:52:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
Subject: How and where does yocto find lighttpd-module-fastcgi?
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
X-List-Received-Date: Thu, 08 Mar 2018 22:00:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hello everyone,

I'm very new to Yocto, and I'm currently building an embedded system 
with a web interface. As I worked through the process of creating a 
Yocto configuration and layer to configure the specific build I needed 
(based on core-image-minimal), I discovered that I could add packages to 
my image by adding it to the configuration file via 
CORE_EXTRA_IMAGES_INSTALL. In this way, I was able to add lighttpd, php, 
php-cgi, and lighttpd-module-fastcgi to my build. It worked great!

However, now I am attempting to determine if mod_openssl is installed on 
my server, and using "CORE_EXTRA_IMAGES_INSTALL += 
'lighttpd-module-openssl'" to simply add it does NOT magically work like 
it did with lighttpd-module-fastcgi. My original guess was that adding 
"CORE_EXTRA_IMAGES_INSTALL += 'lighttpd-module-fastcgi'" caused a 
configuration option to be matched in the lighttpd.bb file so that the 
appropriate build option was used when building lighttpd. However, 
fastcgi doesn't actually show up in that file at all, and openssl does, 
so that clearly isn't the option . . . furthermore, mod_fastcgi doesn't 
appear in *any* of the layers I'm using to build, except in the 
lighttpd.conf portion of the recipe-extended/lighttpd directory structure.

So, my question is, how does bitbake know what to do when I add 
lighttpd-module-fastcgi, and where in the world does it find the source 
for mod_fastcgi?

Thank you in advance for your help :)

Wayne

