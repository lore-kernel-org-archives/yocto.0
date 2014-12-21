Return-Path: <mike.looijmans@topic.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23C59E009A5; Sun, 21 Dec 2014 05:36:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.134.42.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 434 seconds by postgrey-1.32 at yocto-www;
	Sun, 21 Dec 2014 05:36:46 PST
Received: from smtp07.online.nl (smtp07.online.nl [194.134.42.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2B41E008D9
	for <yocto@yoctoproject.org>; Sun, 21 Dec 2014 05:36:46 -0800 (PST)
Received: from smtp07.online.nl (localhost [127.0.0.1])
	by smtp07.online.nl (Postfix) with ESMTP id C10BA9880D
	for <yocto@yoctoproject.org>; Sun, 21 Dec 2014 14:29:28 +0100 (CET)
Received: from [192.168.1.4] (s55969068.adsl.online.nl [85.150.144.104])
	by smtp07.online.nl (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Sun, 21 Dec 2014 14:29:28 +0100 (CET)
Message-ID: <5496CB38.6080700@topic.nl>
Date: Sun, 21 Dec 2014 14:29:28 +0100
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: Topic
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1328982841.45313.1419156459385.JavaMail.yahoo@jws10916.mail.sg3.yahoo.com>
In-Reply-To: <1328982841.45313.1419156459385.JavaMail.yahoo@jws10916.mail.sg3.yahoo.com>
X-Online-Scanned: by Cloudmark authority (on smtp07.online.nl)
Subject: Re: addiding external driver to minimal image
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
X-List-Received-Date: Sun, 21 Dec 2014 13:36:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Create your own image recipe (hint: "require" another image, or just 
copy it), that reduces the parse time. Creating the image usually takes 
less than a minute.

You can also just build the new package and manually install it on the 
target.


On 12/21/2014 11:07 AM, abhishek srivastava wrote:
> Hi
> How to add external driver (ex:TFT driver) to core-minimal-image.
> After building core -minimal-image, in case I need to add additional
> package to existing image, do i need to modify in .conf file and REBUILD
> IT......every time ?
>
> please clarify !
>
> Thank you
>
>


-- 
Mike Looijmans

