Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3ABCDE016E4
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 07:54:59 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E6666F81238; Mon, 28 Oct 2013 08:54:58 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3C306F81201;
	Mon, 28 Oct 2013 08:54:58 -0600 (MDT)
Message-ID: <526E7ACD.4030907@mlbassoc.com>
Date: Mon, 28 Oct 2013 08:55:09 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1489979.YGJBfpbiDO@koontz>
In-Reply-To: <1489979.YGJBfpbiDO@koontz>
Subject: Re: Trouble packaging files containing space
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
X-List-Received-Date: Mon, 28 Oct 2013 14:55:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 2013-10-28 00:26, Søren Holm wrote:
> Hi
>
> I have a package containing files that includes spaces in their same.
>
> The files are located in the same directory without a space in their name is
> packages just find.
>
> I specify FILES_$[PN} like this
>
> FILES_${PN} = "${prefix}/local/Mikrofyn"
>
> What might be wrong?
>

It seems to be policy - from http://www.yoctoproject.org/docs/1.5/mega-manual/mega-manual.html#source-directory
   The OpenEmbedded build system does not support file or directory names that contain spaces.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

