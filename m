Return-Path: <lukas.bulwahn@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B699EE013DA
	for <yocto@yoctoproject.org>; Sun, 18 Aug 2013 23:50:31 -0700 (PDT)
Received: from [192.168.101.1] (afplatform.bmw-carit.intra [192.168.101.1])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukas.bulwahn)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 4632240059;
	Mon, 19 Aug 2013 07:49:44 +0200 (CEST)
Message-ID: <5211C034.5060701@oss.bmw-carit.de>
Date: Mon, 19 Aug 2013 08:50:28 +0200
From: Lukas Bulwahn <lukas.bulwahn@oss.bmw-carit.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Raul Rosetto Munoz <munoz0raul@gmail.com>
References: <CANmVirhbgQOQa5-6KET9OmyCJcgvBmqppaJnzz9WA4yYBsoqQg@mail.gmail.com>
In-Reply-To: <CANmVirhbgQOQa5-6KET9OmyCJcgvBmqppaJnzz9WA4yYBsoqQg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: xmlsec support
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
X-List-Received-Date: Mon, 19 Aug 2013 06:50:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/14/2013 10:54 PM, Raul Rosetto Munoz wrote:
> Hello all,
>
> Some one know if there is any meta that support xmlsec?
>
Dear Raul,

if I am looking for a recipe out there, I try the following two things:

1. search at http://layers.openembedded.org/layerindex/recipes/
   "xmlsec" does not give any match; so you could simply search "xml" 
and look through if you find something there---unfortunately, nothing 
close to xmlsec is there.

2. search on github.com for files with extension:bb
   you simply write "xmlsec extension:bb" in the search bar or follow 
this link [1]. You will find 50 matches for xmlbench, but none for xmlsec.

So, it seems for xmlsec there is no public recipe available. Probably, 
it is best to write it yourself and submit it to an appropriate layer or 
upload it on github to make it visible to others.

[1] 
https://github.com/search?q=xmlsec+extension%3Abb&type=Code&ref=searchresults


Lukas Bulwahn, BMW Car IT GmbH

