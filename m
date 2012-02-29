Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26A9FE0030B
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 12:36:00 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A6100F812DD; Wed, 29 Feb 2012 13:35:59 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id B9A21F812C9;
	Wed, 29 Feb 2012 13:35:58 -0700 (MST)
Message-ID: <4F4E8C2E.5030602@mlbassoc.com>
Date: Wed, 29 Feb 2012 13:35:58 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F4E8B62.6010209@gmail.com>
In-Reply-To: <4F4E8B62.6010209@gmail.com>
Subject: Re: building with 1.2_M3
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 29 Feb 2012 20:36:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-02-29 13:32, jfabernathy wrote:
> Just for fun, I thought I'd build meta-cedartrail today since I saw 1.2_M3 branch show up when I did a git pull today. The only thing I did above the basic BSP was to include my
> meta-jfa layer which is nothing more than my hello world application and web-webkit, which is already in the meta layer.
>
> I added to local.conf the following lines, like I alway do:
>
> POKY_EXTRA_INSTALL += "web-webkit"
>
> POKY_EXTRA_INSTALL += "hello"
>
> I also added the meta-intel, meta-intel/meta-cedartrail, and meta-jfa to my bblayers.conf.
>
> However, unlike the last time I ran this against master branch, I didn't get "hello" or "web-webkit" in my image, as I usually do.
>
> Is this just a quirk with 1.2_M3 or did something break?

Looks like this variable was renamed to be CORE_IMAGE_EXTRA_INSTALL

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

