Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E751CE00CC9; Wed, 30 Sep 2015 06:38:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB324E00992
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 06:38:56 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 19C14F811DC; Wed, 30 Sep 2015 07:38:56 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A6DEBF81188;
	Wed, 30 Sep 2015 07:38:55 -0600 (MDT)
To: yocto@yoctoproject.org
References: <CALLyC8TWtMz2dnMUF47PjhgGHrjuH8zmv61GGBn4GR26V2uTxg@mail.gmail.com>
	<CAMKF1sqc8WG3RvwVuw8nxK1HNSJ5MCxVjN4x_Ep42z3sE3FifA@mail.gmail.com>
	<CALLyC8SVL+Yj1qHQrnPg+8bux5A=xh6qm1DOoFLhK_VvWBgtFw@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <560BE5FC.5030702@mlbassoc.com>
Date: Wed, 30 Sep 2015 07:39:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CALLyC8SVL+Yj1qHQrnPg+8bux5A=xh6qm1DOoFLhK_VvWBgtFw@mail.gmail.com>
Subject: Re: How can i invoke a "particular recipe(.bb)" while building "image recipe(.bb)" without modifying the "image recipe(.bb)" . i only wanted to change "particular recipe(.bb)"
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
X-List-Received-Date: Wed, 30 Sep 2015 13:38:59 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-09-30 05:08, Vivek Per wrote:
> Hi , thanks you for replying,
> but i don't want to make changes to "image" recipe. i only wanted to make changes to "x" recipe that should be invoked when i do bitbake <image recipe>.
> what variable i can put in "x" recipe so that it invokes when is do <bitbake image recipe>

You can't - what you are asking for is "image" to depend on "x" (i.e. include it) and the
only way to do that is relative to "image", not "x".

You can do this non-invasively, e.g. in local.conf:
   IMAGE_INSTALL_append_pn-image = " x"

> On Wed, Sep 30, 2015 at 3:43 PM, Khem Raj <raj.khem@gmail.com <mailto:raj.khem@gmail.com>> wrote:
>
>     On Wed, Sep 30, 2015 at 2:05 AM, Vivek Per <pervivek@gmail.com <mailto:pervivek@gmail.com>> wrote:
>     > hi,
>     >    i want to create a "x" recipe that should automatically get invoke when
>     > "image" recipe( that produces image) is built. How can i modify the "x"
>     > recipe that should be invoked while building image recipe.
>     >
>     > I don't want to do any modifications to the image recipe, i only wanted to
>     > do changes in "x" recipe.
>     > Can any one help on this . thanks in advance
>
>     add one of output package its producing ( ipk)  to IMAGE_INSTALL
>     inside the image recipe.
>
>     >
>     > Thanks and regards
>     > vivek
>     >
>     > --
>     > _______________________________________________
>     > yocto mailing list
>     >yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     >https://lists.yoctoproject.org/listinfo/yocto
>     >
>
>
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

