Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDCA5E0072A
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 05:06:12 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 8564BF811E6; Thu, 12 Jan 2012 06:06:10 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9DACFF811E5;
	Thu, 12 Jan 2012 06:06:09 -0700 (MST)
Message-ID: <4F0EDAC1.2070805@mlbassoc.com>
Date: Thu, 12 Jan 2012 06:06:09 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Jim Abernathy <jfabernathy@gmail.com>
References: <4F0ED7D2.9050807@gmail.com>
In-Reply-To: <4F0ED7D2.9050807@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: where to put IMAGE_INSTALL??
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
X-List-Received-Date: Thu, 12 Jan 2012 13:06:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-12 05:53, Jim Abernathy wrote:
> There seems to be some sensitivity to where I put the statement IMAGE_INSTALL += "web-webkit".
>
> At first I just modifed the meta/receipes-sato/image/core-image-sato.bb file to include it. That caused the webkit to be built.
>
> Since that is not an ideal location, I removed it and put it into the local.conf file. That also caused the webkit to be built, but I wanted it to be part of my BSP permanently.
>
> I thought about creating a core-image-sato.bbappend file with the IMAGE_INSTALL += "web-webkit" in it and put that into the BSP, but that didn't cause the webkit to be built. Under
> the meta-intel/meta-n450 directory, I created a receipes-jfa directory and put the core-image-sato.bbappend file there.
>
> I must be missing a key rule about directory parsing and .bbappend files.

Look at the how the layers are parsed - this info is in <layer>/conf/layer.conf

Try putting your .bbappend file in
    .../meta-intel/meta-n450/recipes-jfa/images/core-image-sato.bbappend

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

