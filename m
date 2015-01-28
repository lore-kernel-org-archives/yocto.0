Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F19C6E008BC; Wed, 28 Jan 2015 13:10:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 712AAE00858
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 13:10:14 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D128DF811DC; Wed, 28 Jan 2015 14:04:39 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8B581F811DA;
	Wed, 28 Jan 2015 14:04:39 -0700 (MST)
Message-ID: <54C94F04.3030605@mlbassoc.com>
Date: Wed, 28 Jan 2015 14:05:08 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CABKVDBCN7ZzjXO7b5nU=jqO3sVpR9b8JtGAtdPfZzRXA99H6nQ@mail.gmail.com>
In-Reply-To: <CABKVDBCN7ZzjXO7b5nU=jqO3sVpR9b8JtGAtdPfZzRXA99H6nQ@mail.gmail.com>
Subject: Re: Not create directory in /
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
X-List-Received-Date: Wed, 28 Jan 2015 21:10:25 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-01-28 13:58, Cleiton Bueno wrote:
> Why can not create directory in the /?
>
> My recipe:
> do_install () {
>       install -d ${D}/datarw
>       install -d ${D}${sysconfdir}/filesbw
> }
>
>
> ERROR bitbake:
>
> QA Issue: ideale: Files/directories were installed but not shipped
>    /datarw [installed-vs-shipped]
>
>
> It's no use:
> INSANE_SKIP_${PN} = "installed-vs-shipped "

Try adding

FILES_${PN} += "/datarw"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

